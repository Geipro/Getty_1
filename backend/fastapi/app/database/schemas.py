from datetime import date
from typing import List, Optional
from enum import Enum
from pydantic import BaseModel
from sqlalchemy.sql.sqltypes import Integer


class User(BaseModel):
    user_id: str
    user_name: str
    phone_number: str
    create_date: date

    class Config:
        orm_mode = True


# 회원가입
class UserCreate(BaseModel):
    user_id: str
    user_pw: str
    user_name: str
    phone_number: str


class Token(BaseModel):
    Authorization: str


class UserToken(BaseModel):
    cid: int
    user_id: str
    user_pw: str
    user_name: str
    phone_number: str
    create_date: date

    class Config:
        orm_mode = True


# 대출 상품 리스트
class LoanCreate(BaseModel):
    loan_name: str
    loan_age: str
    loan_salary: str
    loan_address: str
    loan_job: str
    interest_rate: int
    loan_amount: int

    class Config:
        orm_mode = True
