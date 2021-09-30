from enum import Enum

from pydantic.main import BaseModel
from sqlalchemy import Boolean, Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

class UserRegister(BaseModel):
    userID: str = None
    userPW: str = None
    userName: str = None
    phone_number: str = None



class Token(BaseModel):
    Authorization: str = None


class UserToken(BaseModel):
    CID: int
    userPW: str = None
    userID: str = None
    userName: str = None
    phone_number: str = None

    class Config:
        orm_mode = True
