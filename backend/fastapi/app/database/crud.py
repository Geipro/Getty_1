from sqlalchemy.orm import Session

from . import models, schemas
from datetime import date
import bcrypt


def get_user(db: Session, user_id: int):
    return db.query(models.Client).filter(models.Client.cid == user_id).first()


def get_user_by_userid(db: Session, user_id: str):
    return db.query(models.Client).filter(models.Client.user_id == user_id).first()


def create_user(db: Session, user: schemas.UserCreate):
    # fake_hashed_password = user.user_pw + "notreallyhashed"
    hashed_password = bcrypt.hashpw(user.user_pw.encode("utf-8"), bcrypt.gensalt())
    print(1234, "   ", hashed_password)
    # 현재 날짜 가져오기
    create_at = date.today()

    db_user = models.Client(
        user_id=user.user_id,
        user_pw=hashed_password,
        user_name=user.user_name,
        phone_number=user.phone_number,
        create_date=create_at,
        job=user.job,
        birth=user.birth,
        sex=user.sex,
        salary=user.salary,
        address="",
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user


def get_loan(db: Session):
    # print(f"db.query(models.LoanProduct).all() = {db.query(models.LoanProduct).all()}")
    return db.query(models.LoanProduct).all()


def get_loan_by_user(db: Session, user_id: str):
    return db.query(models.LoanProduct).filter()


def get_banker(db: Session):
    return db.query(models.Banker).all()


# 대출 상품 생성
def create_loan(db: Session, loan: schemas.LoanCreate):
    db_loan = models.LoanProduct(
        loan_name=loan.loan_name,
        loan_age=loan.loan_age,
        loan_salary=loan.loan_salary,
        loan_address=loan.loan_address,
        loan_job=loan.loan_job,
        interest_rate=loan.interest_rate,
        loan_amount=loan.loan_amount,
    )
    db.add(db_loan)
    db.commit()
    db.refresh(db_loan)
    return db_loan


# 행원 생성
def create_banker(db: Session, banker: schemas.BankerCreate):
    db_banker = models.Banker(
        banker_name=banker.banker_name,
        lid=banker.lid,
        banker_id=banker.banker_id,
        banker_pw=banker.banker_pw,
        local=banker.local,
    )
    db.add(db_banker)
    db.commit()
    db.refresh(db_banker)
    return db_banker


# 고객 <-> 대출 상품 관계 생성
def create_user_loan(db: Session, id_info: schemas.CombineID):
    db_user_loan = models.UserLoan(
        cid=id_info.cid,
        lid=id_info.lid,
    )
    db.add(db_user_loan)
    db.commit()
    db.refresh(db_user_loan)
    return db_user_loan


# 고객 <-> 행원 관계 생성
def create_banker_client(db: Session, id_info: schemas.CombineID):
    db_banker_client = models.BankerClient(
        bid=id_info.bid,
        cid=id_info.cid,
    )
    db.add(db_banker_client)
    db.commit()
    db.refresh(db_banker_client)
    return db_banker_client


# Combine create_user_loan, cretae_banker_client
def create_relation(
    db: Session,
    client: schemas.ClientID,
    banker: schemas.BankerID,
    loan: schemas.LoanID,
):
    create_info = []
    create_info.append(create_user_loan(db, client, loan))
    create_info.append(create_banker_client(db, client, banker))

    return create_info
