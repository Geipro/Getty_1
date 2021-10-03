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

Address_First = ['서울특별시']
Address_Second = ['강남구','강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구',
                 '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구']

newName = []
newComp = []
newNum = []
newPer = []

newAddress = []
newReciptNum = []
newPhoneNum = []

for i in range(1000):
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName.append(st)
    st = Comp_First[0] + ' ' + random.choice(Comp_Second) +  random.choice(Comp_Last)
    newComp.append(st)
    st = str(random.randint(0000, 9999)) + '-' + str(random.randint(000, 999)) + '-' + str(random.randint(0000, 9999))
    newNum.append(st)
    st = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day) +\
         '-' + random.choice(PerNum_Sex) + '******'
    newPer.append(st)

    st = Address_First[0] + ' ' + random.choice(Address_Second) + ' ' + '*********'
    newAddress.append(st)

    st = str(random.randint(500000000000, 599999999999))
    newReciptNum.append(st)

    st = '010' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum.append(st)

bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)
small_font = ImageFont.truetype(font="./HANBatang.ttf", size=14)


for i in range(10):
    img = Image.open("../creteDatesets/자동차등록원부/자동차등록원부_양식.jpg")
    draw = ImageDraw.Draw(img)
    # 접수번호
    draw.text((116, 273), "006100", (0, 0, 0), font=normal_font)
    # 문서확인번호 
    draw.text((359,48), "1631-6071-3650-2060", (0, 0, 0), font=normal_font)

    # 자동차등록번호
    draw.text((220,332), "123가 4567", (0, 0, 0), font=normal_font)
    # 재원관리번호
    draw.text((483,332), "A011-00057-0200-1222", (0, 0, 0), font=normal_font)
    # 차명
    draw.text((645,377), "그랜저", (0, 0, 0), font=normal_font)
    # 차종
    draw.text((960,377), "승용 중형", (0, 0, 0), font=normal_font)
    # 차대번호
    draw.text((170,424), "WP0CB2988HS240439", (0, 0, 0), font=normal_font)
    # 원동기형식
    draw.text((650,424), "DDN", (0, 0, 0), font=normal_font)
    # 연식(모델연도)
    draw.text((325,474), "2020", (0, 0, 0), font=normal_font)
    # 색상
    draw.text((645,474), "검정색", (0, 0, 0), font=normal_font)
    # 최초등록일
    draw.text((265,524), "2019-12-20", (0, 0, 0), font=normal_font)
    # 제작연월일
    draw.text((940,505), "2019-11-20", (0, 0, 0), font=small_font)
    # 최초 양도연월일
    draw.text((940,527), "2019-12-19", (0, 0, 0), font=small_font)
    # 최종소유자
    draw.text((580,560), "김싸피(100%)", (0, 0, 0), font=normal_font)
    # 주민(법인)등록번호
    draw.text((892,566), newPer[i], (0, 0, 0), font=normal_font)
    # 사용본거지(주소)
    draw.text((208,603), newAddress[i], (0, 0, 0), font=normal_font)
    # 검사유효기간
    draw.text((200,644), "2019-12-20 ~ 2023-12-19", (0, 0, 0), font=normal_font)




    # 이름
    draw.text((332,820), newName[i], (0, 0, 0), font=small_font)
    # 주소
    draw.text((285,833), newAddress[i], (0, 0, 0), font=small_font)
    # 주민(법인)등록번호
    draw.text((676,831), newPer[i], (0, 0, 0), font=small_font)
    # 등록일자
    draw.text((832,831), "2019-12-20", (0, 0, 0), font=small_font)
    # 접수번호
    draw.text((960,831), "021289", (0, 0, 0), font=small_font)
    # 주소
    draw.text((288,909), newAddress[i], (0, 0, 0), font=small_font)
    # 등록일자
    draw.text((832,901), "2019-12-21", (0, 0, 0), font=small_font)
    # 접수번호
    draw.text((960,901), "021230", (0, 0, 0), font=small_font)

    # 대표소유자
    draw.text((340,1030), newName[i], (0, 0, 0), font=small_font)
    # 주민(법인)등록번호
    draw.text((432,1030), newPer[i], (0, 0, 0), font=small_font)
    # 일자
    draw.text((550,1231), "2019-12-21", (0, 0, 0), font=normal_font)


    img.save(f"자동차등록원부_{i+1}.jpg")
