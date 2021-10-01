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
