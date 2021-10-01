from datetime import datetime, timedelta
import bcrypt
import jwt
from typing import List

from fastapi import Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session

from .database import crud, schemas, models
from .common.consts import JWT_SECRET, JWT_ALGORITHM
from .database.database import SessionLocal, engine


models.Base.metadata.create_all(bind=engine)

app = FastAPI()


# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# def create_app():
#     """
#     앱 함수 실행
#     :return:
#     """
#     app = FastAPI()
    
#     # 라우터 정의
#     app.include_router(auth.router, tags=["Authentication"], prefix="/auth")
#     return app


# app = create_app()


# if __name__ == "__main__":
#     uvicorn.run("main:app", reload=conf().PROJ_RELOAD)

@app.post("/signup", status_code=200, response_model= schemas.User)
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
async def signup(user_info: schemas.UserLogin, db: Session = Depends(get_db)):
    """
    `로그인 API`\n
    :param user_info:
    :param db:
    :return:
    """
    if not user_info.user_id or not user_info.user_pw:
        raise HTTPException(status_code=400, detail="user_id and user_pw must be provided")
    is_exist = crud.get_user_by_userid(db, user_id=user_info.user_id)
    if not is_exist:
        raise HTTPException(status_code=400, detail="NO_MATCH_USER")
    is_verified = bcrypt.checkpw(user_info.user_pw.encode('utf-8'),is_exist.user_pw.encode('utf-8'))
    if not is_verified:
        raise HTTPException(status_code=400, detail="NO_MATCH_USER: Wrong Password")

    print(schemas.UserToken.from_orm(is_exist).dict(exclude={'user_pw','create_date'}))
    token = dict(Authorization=f"Bearer {create_access_token(data=schemas.UserToken.from_orm(is_exist).dict(exclude={'user_pw','create_date'}),)}")
    return token

def create_access_token(*, data: dict = None, expires_delta: int = None):
    to_encode = data.copy()
    if expires_delta:
        to_encode.update({"exp": datetime.utcnow() + timedelta(hours=expires_delta)})
    encoded_jwt = jwt.encode(to_encode, JWT_SECRET, algorithm=JWT_ALGORITHM)
    return encoded_jwt

@app.get("/user_loan", status_code=200)
async def read_loan_list(db: Session = Depends(get_db)):
    """
    `대출 상품 리스트 가져오기`
    :param db:
    :return:
    """
    db_loan_list = crud.get_loan(db)
    if db_loan_list:
        raise HTTPException(status=400, detail="loan error")
    return db_loan_list

@app.post("/user_loan", status_code=200, response_model=schemas.LoanCreate)
async def create_loan(req_info:schemas.LoanCreate, db:Session=Depends(get_db)):
    """
    `대출 상품 리스트 추가`
    :param req_info:
    :param db:
    :return:
    """
    return crud.create_loan(db=db, loan=req_info)
