# FamilyName = ['김', '이', '박', '최', '신', '석', '목', '맹', '정']
# from PIL import Image, ImageFont, ImageDraw

# img = Image.open("소득금액증명서_국세청_양식.jpg")

# bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
# bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

# normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)

# draw = ImageDraw.Draw(img)
# # 발급번호
# draw.text((65, 285), "8017-255-8925-052", (0, 0, 0), font=normal_font)
# # 주소
# draw.text((170,388), "서울특별시 싸피구 ********", (0, 0, 0), font=normal_font)
# # 이름
# draw.text((175,443), "김싸피", (0, 0, 0), font=normal_font)
# # 주민등록 번호
# draw.text((826,443), "950511-1******", (0, 0, 0), font=normal_font)
# # 법인명(상호)
# draw.text((302,638), "주식회사 삼성전자", (0, 0, 0), font=normal_font)
# # 소득금액(과세대상급여액) - 3자리마다 , 있어야됨
# draw.text((680,665), "202,016,168", (0, 0, 0), font=normal_font)
# # 총결정세액 3자리마다 , 있어야됨
# draw.text((934,665), "20,210,129", (0, 0, 0), font=normal_font)
# # 귀속연도(시작)
# draw.text((632,880), "2020", (0, 0, 0), font=normal_font)
# # 귀속연도(완료)
# draw.text((710,880), "2020", (0, 0, 0), font=normal_font)
# # 접수번호
# draw.text((170,1097), "502537588018", (0, 0, 0), font=normal_font)
# # 연락처
# draw.text((170,1252), "02-2610-8222", (0, 0, 0), font=normal_font)

# draw = ImageDraw.Draw(img)
# img.save("소득after.jpg")
# new_img = Image.open("소득after.jpg")
# new_img.show()
# print(img.size, new_img.size)




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
# 서울 이외의 지역도 하고싶지만 second 부분에서 '서울시 00구', 경기도 00시 라 '구'와 '시'가 맞지않아 일단 서울만 함 / 그리고 전국이 너무 많아서 서울만 먼저.
Address_Second = ['강남구','강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구',
                 '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구']

# Year_Start = ['2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019', '2020']
# Year_End = ['2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019', '2020']

newName = []
newComp = []
newNum = []
newPer = []

newAddress = []
newTotal = []
newTax = []
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

    # 신용대출 범위 소득 1천만원 ~ 1억 5천만원으로 함 ,
    st = str(random.randint(10000000, 150000000))
    newTotal.append(st)

    # newTax = int(float(newTotal) * 0.1)
    # new = map(int, newTotal)
    # st = new / 10
    # newTax.append(st)

    st = str(random.randint(500000000000, 599999999999))
    newReciptNum.append(st)

    st = '02' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum.append(st)

bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)


for i in range(10):
    img = Image.open("소득금액증명서_국세청_양식.jpg")
    draw = ImageDraw.Draw(img)
    # 발급번호
    draw.text((88, 285), newNum[i], (0, 0, 0), font=normal_font)
    # 주소
    draw.text((170,388), newAddress[i], (0, 0, 0), font=normal_font)
    # 이름
    draw.text((175,443), newName[i], (0, 0, 0), font=normal_font)
    # 주민등록 번호
    draw.text((826,443), newPer[i], (0, 0, 0), font=normal_font)
    # 법인명(상호)
    draw.text((302,638), newComp[i], (0, 0, 0), font=normal_font)
    # 소득금액(과세대상급여액) - 3자리마다 , 있어야됨
    draw.text((680,665), newTotal[i], (0, 0, 0), font=normal_font)
    # 총결정세액 3자리마다 , 있어야됨
    draw.text((934,665), '111111 ', (0, 0, 0), font=normal_font)
    # 귀속연도(시작)
    draw.text((632,880), '2020 ', (0, 0, 0), font=normal_font)
    # 귀속연도(완료) - 신용대출이니까 가장 최근 귀속연도 측정
    draw.text((710,880), '2020', (0, 0, 0), font=normal_font)
    # 접수번호
    draw.text((170,1097), newReciptNum[i], (0, 0, 0), font=normal_font)
    # 연락처
    draw.text((170,1252), newPhoneNum[i], (0, 0, 0), font=normal_font)
    img.save(f"소득금액증명서_{i+1}.jpg")
