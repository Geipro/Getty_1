from PIL import Image, ImageFont, ImageDraw
import random

Name_First = ['김', '이', '박', '최', '신', '석', '목', '맹', '윤', '정', '장']
Name_Second = ['', '창', '정', '상', '명', '지', '범', '우', '유', '익', '지']
Name_Last = ['숙', '영', '준', '원', '지', '훈', '수', '진', '림', '선', '우']

Comp_First = ['주식회사']
Comp_Second = ['삼성', '현대', '에스케이', '엘지', '케이티', '네이버', '카카오', '넥슨', '라인', '포스코', '한국', '롯데', '기아', '한화']
Comp_Last = ['전자', '중공업', '상사', '물산', '건설', '카드', '증권', '보험', '캐피탈']

Num_Month = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
Num_Day = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15',
           '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28']

PerNum_Year = ['85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95']
PerNum_Month = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
PerNum_Day = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15',
           '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28']
PerNum_Sex = ['1', '2']

Num_Year = ['2020', '2021']

Address_First = ['서울특별시']
Address_Second = ['강남구','강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구',
                 '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구']

CarNum = ['가', '나', '다', '라', '마', '거', '너', '더', '러', '머', '버', '서', '어', '저', '고', '노', '도', '로', '모', '보', '소', '오', '조', '구', '누', '두', '루', '무', '부', 

          '수', '우', '주']

CarList = ['GV70', 'GV80', '소나타', '아반떼', 'K3', 'K5', 'K7', 'K8', 'K9', '그랜저', '아이오닉5', '모델3', '모델S', '모델Y']


newName1 = []
newName2 = []
newComp = []
newNum = []
newPer1 = []
newPer2 = []

newAddress1 = []
newAddress2 = []
newReciptNum = []
newPhoneNum1 = []
newPhoneNum2 = []

newCarNum = []
newCarList = []
newDate = []



for i in range(1000):
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName1.append(st)
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName2.append(st)
    st = Comp_First[0] + ' ' + random.choice(Comp_Second) +  random.choice(Comp_Last)
    newComp.append(st)
    st = str(random.randint(0000, 9999)) + '-' + str(random.randint(000, 999)) + '-' + str(random.randint(0000, 9999))
    newNum.append(st)

    st = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day) +\
         '-' + random.choice(PerNum_Sex) + '******'
    newPer1.append(st)
    st = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day) +\
         '-' + random.choice(PerNum_Sex) + '******'
    newPer2.append(st)

    st = random.choice(Num_Year) + '-' + random.choice(Num_Month) + '-' + random.choice(Num_Day)
    newDate.append(st)

    st = Address_First[0] + ' ' + random.choice(Address_Second) + ' ' + '*********'
    newAddress1.append(st)
    st = Address_First[0] + ' ' + random.choice(Address_Second) + ' ' + '*********'
    newAddress2.append(st)

    st = str(random.randint(500000000000, 599999999999))
    newReciptNum.append(st)
    st = '010' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum1.append(st)
    st = '010' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum2.append(st)

    st = str(random.randint(100, 999)) + random.choice(CarNum) + ' ' + str(random.randint(0000, 9999))
    newCarNum.append(st)
    st = random.choice(CarList)
    newCarList.append(st)





bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)


for i in range(10):
    img = Image.open("../creteDatesets/자동차매매계약서/car_form.JPG")
    draw = ImageDraw.Draw(img)
    # 접수번호
    draw.text((241, 219), newNum[i], (0, 0, 0), font=normal_font)
    # 접수일자
    draw.text((838,219), newDate[i], (0, 0, 0), font=normal_font)

    # 갑 - 주소
    draw.text((345,390), newAddress1[i], (0, 0, 0), font=normal_font)
    # 갑 - 이름
    draw.text((398,286), newName1[i], (0, 0, 0), font=normal_font)
    # 갑 - 주민등록 번호
    draw.text((1062,285), newPer1[i], (0, 0, 0), font=normal_font)
    # 갑 - 연락처
    draw.text((391,337), newPhoneNum1[i], (0, 0, 0), font=normal_font)
    # 을 - 주소
    draw.text((345,553), newAddress2[i], (0, 0, 0), font=normal_font)
    # 을 - 이름
    draw.text((398,455), newName2[i], (0, 0, 0), font=normal_font)
    # 을 - 주민등록 번호
    draw.text((1060,455), newPer2[i], (0, 0, 0), font=normal_font)
    # 을 - 연락처
    draw.text((387,505), newPhoneNum2[i], (0, 0, 0), font=normal_font)
    # 양도인 - 이름
    draw.text((274,1495), newName1[i], (0, 0, 0), font=normal_font)
    # 양도인 - 이름(서명)
    draw.text((615,1509), newName1[i], (0, 0, 0), font=normal_font)
    # 양수인 - 이름
    draw.text((859,1495), newName2[i], (0, 0, 0), font=normal_font)
    # 양수인 - 이름(서명)
    draw.text((1200,1509), newName2[i], (0, 0, 0), font=normal_font)


    # 자동차 등록번호
    draw.text((467, 621), newCarNum[i], (0, 0, 0), font=normal_font)
    # 차종
    draw.text((1041,621), newCarList[i], (0, 0, 0), font=normal_font)
    # 차대번호
    draw.text((395,670), "WP0CB2988HS240439", (0, 0, 0), font=normal_font)
    # 매매일
    draw.text((995,670), newDate[i], (0, 0, 0), font=normal_font)
    # 매매금액
    draw.text((395,721), "80000000원", (0, 0, 0), font=normal_font)
    # 잔금지급일 ( 당일로)
    draw.text((995,721), newDate[i], (0, 0, 0), font=normal_font)
    # 자동차 인도일
    draw.text((447,774), newDate[i], (0, 0, 0), font=normal_font)
    # 주행거리
    draw.text((1050,770), "0", (0, 0, 0), font=normal_font)
    
    # 연도
    draw.text((920,1451), "2021", (0, 0, 0), font=normal_font)
    # 월
    draw.text((1060,1451), "09", (0, 0, 0), font=normal_font)
    # 일자
    draw.text((1180,1451), "15", (0, 0, 0), font=normal_font)

    img.save(f"car_form_{i+1}.jpg")
