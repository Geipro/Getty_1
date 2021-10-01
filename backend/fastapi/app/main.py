from typing import List

from fastapi import Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session

from database import crud, schemas, models
from database.database import SessionLocal, engine


models.Base.metadata.create_all(bind=engine)

app = FastAPI()


# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.post("/signup", status_code=200, response_model=schemas.User)
async def signup(reg_info: schemas.UserCreate, db: Session = Depends(get_db)):
    """
    `회원가입 API`\n
    :param reg_info:
    :param db:
    :return:
    """
    db_user = crud.get_user_by_userid(db, user_id=reg_info.user_id)
    if db_user:
        raise HTTPException(status_code=400, detail="user_id already registered")
    return crud.create_user(db=db, user=reg_info)


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