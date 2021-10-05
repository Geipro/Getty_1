from datetime import datetime, timedelta
import bcrypt
import jwt
import os
from typing import List

from fastapi import Depends, FastAPI, HTTPException, Header, UploadFile, File, Body
from sqlalchemy.orm import Session

from database import crud, schemas, models, s3_utils
from common.consts import (
    JWT_SECRET,
    JWT_ALGORITHM,
    AWS_ACCESS_KEY_ID,
    AWS_REGION,
    AWS_SECRET_ACCESS_KEY,
    S3_Bucket,
)
from database.database import SessionLocal, engine

from fastapi.middleware.cors import CORSMiddleware

models.Base.metadata.create_all(bind=engine)

app = FastAPI()

# Cors
origins = [
    "http://localhost.tiangolo.com",
    "https://localhost.tiangolo.com",
    "http://localhost",
    "http://localhost:8080",
    "http://localhost:8000",
]

# Cors
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


# Object of S3_SERVICE Class
s3_client = s3_utils.S3_SERVICE(AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION)


@app.post("/signup", status_code=200, response_model=schemas.User)
async def signup(user_info: schemas.UserCreate, db: Session = Depends(get_db)):
    """
    `회원가입 API`\n
    :param user:s
    :param db:
    :return:
    """
    db_user = crud.get_user_by_userid(db, user_id=user_info.user_id)
    if db_user:
        raise HTTPException(status_code=400, detail="user_id already registered")
    return crud.create_user(db=db, user=user_info)


@app.post("/signin", status_code=200, response_model=schemas.Token)
async def signin(user_info: schemas.UserLogin, db: Session = Depends(get_db)):
    """
    `로그인 API`\n
    :param user_info:
    :param db:
    :return:
    """
    if not user_info.user_id or not user_info.user_pw:
        raise HTTPException(
            status_code=400, detail="user_id and user_pw must be provided"
        )
    is_exist = crud.get_user_by_userid(db, user_id=user_info.user_id)
    if not is_exist:
        raise HTTPException(status_code=400, detail="NO_MATCH_USER")
    is_verified = bcrypt.checkpw(
        user_info.user_pw.encode("utf-8"), is_exist.user_pw.encode("utf-8")
    )
    if not is_verified:
        raise HTTPException(status_code=400, detail="NO_MATCH_USER: Wrong Password")

    print(schemas.UserToken.from_orm(is_exist).dict(exclude={"user_pw", "create_date"}))
    token = dict(
        Authorization=f"{create_access_token(data=schemas.UserToken.from_orm(is_exist).dict(exclude={'user_pw','create_date'}),)}"
    )
    return token


def create_access_token(*, data: dict = None, expires_delta: int = None):
    to_encode = data.copy()
    if expires_delta:
        to_encode.update({"exp": datetime.utcnow() + timedelta(hours=expires_delta)})
    encoded_jwt = jwt.encode(to_encode, JWT_SECRET, algorithm=JWT_ALGORITHM)
    return encoded_jwt


@app.get("/get_user", status_code=200)
async def get_user(db: Session = Depends(get_db), token: str = Header(None)):
    """
    `토큰 decode TEST API`\n
    :header token:
    :return:
    """
    if token == None:
        raise HTTPException(status_code=400, detail="Header doesn't have Auth Token")
    payload = jwt.decode(token, JWT_SECRET, algorithms=JWT_ALGORITHM)
    user_id = payload.get("user_id")
    if user_id is None:
        raise HTTPException(status_code=400, detail="NO_MATCH_USER")
    user = crud.get_user_by_userid(db, user_id=user_id)
    return user


@app.post("/upload", status_code=200, description="Upload png asset to S3")
async def upload(fileobject: UploadFile = File(...)):
    """
    `파일 저장 TEST API`\n
    :fileobject File:
    :return:
    """
    filename = fileobject.filename
    current_time = datetime.now()
    split_file_name = os.path.splitext(
        filename
    )  # split the file name into two different path (string + extention)
    file_name_unique = str(current_time.timestamp()).replace(
        ".", ""
    )  # for realtime application you must have genertae unique name for the file
    file_extension = split_file_name[1]  # file extention
    data = (
        fileobject.file._file
    )  # Converting tempfile.SpooledTemporaryFile to io.BytesIO
    uploads3 = await s3_client.upload_fileobj(
        bucket=S3_Bucket, key=file_name_unique + file_extension, fileobject=data
    )
    if uploads3:
        s3_url = f"https://{S3_Bucket}.s3.{AWS_REGION}.amazonaws.com/{file_name_unique +  file_extension}"
        return {"status": "success", "image_url": s3_url}  # response added
    else:
        raise HTTPException(status_code=400, detail="Failed to upload in S3")


@app.get("/read_loan", status_code=200)
async def read_loan(db: Session = Depends(get_db)):
    """
    `대출 상품 리스트 가져오기`
    :param db:
    :return:
    """
    db_loan_list = crud.get_loan(db)
    if not db_loan_list:
        raise HTTPException(status_code=400, detail="loan error")
    return db_loan_list


@app.get("/read_user_loan", status_code=200)
async def read_user_loan(db: Session = Depends(get_db), token: str = Header(None)):
    """
    `대출 상품 리스트 가져오기`
    :param db:
    :return:
    """
    if token == None:
        raise HTTPException(status_code=400, detail="Header doesn't have Auth Token")
    payload = jwt.decode(token, JWT_SECRET, algorithms=JWT_ALGORITHM)
    user_id = payload.get("user_id")
    if user_id is None:
        raise HTTPException(status_code=400, detail="NO_MATCH_USER")
    user = crud.get_user_by_userid(db, user_id=user_id)

    db_user_loan_list = crud.get_user_loan(db, user)
    # print(db_loan_list)
    if not db_user_loan_list:
        raise HTTPException(status_code=400, detail="loan error")
    return db_user_loan_list
    # return {}


@app.post("/create_loan", status_code=200, response_model=schemas.LoanCreate)
async def create_loan(req_info: schemas.LoanCreate, db: Session = Depends(get_db)):
    """
    `대출 상품 리스트 추가`
    :param req_info:
    :param db:
    :return:
    """
    return crud.create_loan(db=db, loan=req_info)


@app.get("/read_banker", status_code=200)
async def read_banker(db: Session = Depends(get_db)):
    """
    `행원 리스트 보기`
    :param db:
    :return:
    """
    db_banker_list = crud.get_banker(db)
    if not db_banker_list:
        raise HTTPException(status_code=400, detail="banker error")
    return db_banker_list


@app.post("/create_banker", status_code=200, response_model=schemas.BankerCreate)
async def create_banker(req_info: schemas.BankerCreate, db: Session = Depends(get_db)):
    """
    `행원 추가`
    :param req_info:
    :param db:
    :return:
    """
    return crud.create_banker(db=db, banker=req_info)


@app.post("/create_relation", status_code=200, response_model=schemas.CombineID)
async def create_relation(
    combine_info: schemas.CombineID, db: Session = Depends(get_db)
):
    """
    `고객 <-> 대출 상품 연결`
    `고객 <-> 행원 연결`
    :param req_info:
    :param db:
    :return:
    """
    # return crud.create_relation(
    #     db=db, client=req_info.cid, banker=req_info.bid, loan=req_info.lid
    # )

    return [
        crud.create_user_loan(db=db, id_info=combine_info),
        crud.create_banker_client(db=db, id_info=combine_info),
    ]
    # return crud.create_user_loan(db=db, client=req_info.cid, loan=req_info.lid)
