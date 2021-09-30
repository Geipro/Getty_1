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
