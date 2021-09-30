from sqlalchemy.orm import Session

from . import models, schemas
from datetime import date


def get_user(db: Session, user_id: int):
    return db.query(models.Client).filter(models.Client.cid == user_id).first()

def get_user_by_userid(db: Session, user_id: str):
    return db.query(models.Client).filter(models.Client.user_id == user_id).first()

def create_user(db: Session, user: schemas.UserCreate):
    fake_hashed_password = user.user_pw + "notreallyhashed"
    # 현재 날짜 가져오기
    create_at = date.today()

    db_user = models.Client(
        user_id=user.user_id, 
        user_pw=fake_hashed_password, 
        user_name=user.user_name,
        phone_number=user.phone_number,
        create_date=create_at
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user