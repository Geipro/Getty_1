from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base


engine = create_engine(
    "mysql+pymysql://j5a205:1234@j5a205.p.ssafy.io:3306/test", convert_unicode=False
)

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

# Base.metadata.create_all(engine)
# Input Code
# put = """
# INSERT INTO items(id, title, description, owner_id)
# VALUES(NULL, 'Wa@!', 'WA@#!', NULL)
# """
# print(f"put = {put}")
# gg = engine.execute(put)
# print(f"gg = {gg}")

# Read Code
# df = pd.read_sql("SELECT * FROM items", engine)
# print(df)

# put = """
# INSERT INTO items(title, description, owner_id)
# VALUES('Wa!', 'WA#!', 3)
# """
# df = pd.DataFrame.to_sql("items", put, con=engine)
# print(df)
