from datetime import datetime, timedelta

import bcrypt
import jwt
from fastapi import APIRouter, Depends

# TODO:
from sqlalchemy.orm import Session
from starlette.responses import JSONResponse

from app import models
from app.common.consts import JWT_SECRET, JWT_ALGORITHM
from app.database.conn import db
from app.database.schema import Users
from app.models import Token, UserToken

"""
1. 구글 로그인을 위한 구글 앱 준비 (구글 개발자 도구)
2. FB 로그인을 위한 FB 앱 준비 (FB 개발자 도구)
3. 카카오 로그인을 위한 카카오 앱준비( 카카오 개발자 도구)
4. 이메일, 비밀번호로 가입 (v)
5. 가입된 이메일, 비밀번호로 로그인, (v)
6. JWT 발급 (v)

7. 이메일 인증 실패시 이메일 변경
8. 이메일 인증 메일 발송
9. 각 SNS 에서 Unlink 
10. 회원 탈퇴
11. 탈퇴 회원 정보 저장 기간 동안 보유(법적 최대 한도차 내에서, 가입 때 약관 동의 받아야 함, 재가입 방지 용도로 사용하면 가능)
"""


router = APIRouter()


@router.post("/register", status_code=200, response_model=Token)
async def register(reg_info: models.UserRegister, session: Session = Depends(db.session)):
    """
    `회원가입 API`\n
    :param reg_info:
    :param session:
    :return:
    """
    is_exist = await is_userID_exist(reg_info.userID)
    if not reg_info.userID or reg_info.userPW:
        return JSONResponse(status_code=400, content=dict(msg="user's ID and PW must be provided'"))
    if is_exist:
        return JSONResponse(status_code=400, content=dict(msg="userID_EXISTS"))
    hash_pw = bcrypt.hashpw(reg_info.userPW.encode("utf-8"), bcrypt.gensalt())
    new_user = Users.create(session, auto_commit=True, userPW=hash_pw, userID=reg_info.userID, userName=reg_info.userName, phone_number=reg_info.phone_number)
    token = dict(Authorization=f"Bearer {create_access_token(data=UserToken.from_orm(new_user).dict(exclude={'userPW'}))}")
    return token


@router.post("/login", status_code=200)
async def login(user_info: models.UserRegister):
    ...


async def is_userID_exist(userID: str):
    get_userID = Users.get(userID=userID)
    if get_userID:
        return True
    return False


def create_access_token(*, data: dict = None, expires_delta: int = None):
    to_encode = data.copy()
    if expires_delta:
        to_encode.update({"exp": datetime.utcnow() + timedelta(hours=expires_delta)})
    encoded_jwt = jwt.encode(to_encode, JWT_SECRET, algorithm=JWT_ALGORITHM)
    return encoded_jwt
