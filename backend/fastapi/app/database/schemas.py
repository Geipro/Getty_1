from datetime import date
from typing import List, Optional
from enum import Enum
from pydantic import BaseModel

class User(BaseModel):
    user_id: str 
    user_name: str 
    phone_number: str 
    create_date: date
    class Config:
        orm_mode = True


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
