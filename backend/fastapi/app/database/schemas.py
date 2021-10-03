from datetime import date
from typing import List, Optional
from enum import Enum
from pydantic import BaseModel


class User(BaseModel):
    user_id: str
    user_name: str
    phone_number: str
    create_date: date
    address: str
    job: str
    birth: str
    sex: int
    salary: int

    class Config:
        orm_mode = True


# 회원가입
class UserCreate(BaseModel):
    user_id: str
    user_pw: str
    user_name: str
    phone_number: str
    job: str
    birth: str
    sex: int
    salary: int


# 로그인
class UserLogin(BaseModel):
    user_id: str
    user_pw: str


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


# 행원
class BankerCreate(BaseModel):
    banker_name: str
    lid: int
    banker_id: str
    banker_pw: str
    local: str

    class Config:
        orm_mode = True


# Combine loan_id, client_id, banker_id
class CombineID(BaseModel):
    lid: int
    cid: int
    bid: int


# loan_id
class LoanID(BaseModel):
    lid: int


# client_id
class ClientID(BaseModel):
    cid: int


# banker_id
class BankerID(BaseModel):
    bid: int
