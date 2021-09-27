from PIL import Image, ImageFont, ImageDraw
import random


def makedata3(number, name, personal, company, ):

    print('hi')


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
Address_Second = ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구',
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


bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)
small_font = ImageFont.truetype(font="./HANBatang.ttf", size=14)


if __name__ == '__main__':
    bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
    bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

    normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)
    small_font = ImageFont.truetype(font="./HANBatang.ttf", size=14)


    img = Image.open("./근로소득원천징수영수증_양식.JPG")
    draw = ImageDraw.Draw(img)

    # # 주소 - 안해도 됨
    # draw.text((391,431), newAddress[i], (0, 0, 0), font=normal_font)
    # 대표자 이름
    draw.text((919, 325), 'newName[i]', (0, 0, 0), font=normal_font)
    # 소득자 이름
    draw.text((418, 463), 'newName', (0, 0, 0), font=normal_font)
    # 주민등록 번호
    draw.text((1053, 463), 'newPer', (0, 0, 0), font=normal_font)
    # 법인명(상호)
    draw.text((409, 325), 'newComp', (0, 0, 0), font=normal_font)
    # 사업자등록번호
    draw.text((409, 363), "695-81-00374", (0, 0, 0), font=normal_font)
    # 종사업장 일련번호
    draw.text((1005, 397), "0005", (0, 0, 0), font=normal_font)

    # 근무처명
    draw.text((420, 570), "2******", (0, 0, 0), font=normal_font)
    # 사업자등록번호
    draw.text((415, 606), "695-81-00374", (0, 0, 0), font=normal_font)

    # 근무기간
    draw.text((410, 639), "2019-01-01 ~  12-31", (0, 0, 0), font=small_font)
    # 감면기간
    draw.text((410, 681), "2019-01-01 ~  12-31", (0, 0, 0), font=small_font)
    # 급여
    draw.text((421, 714), '50000000 ', (0, 0, 0), font=normal_font)
    # 합계
    draw.text((1091, 714), '50000000 ', (0, 0, 0), font=normal_font)
    # 계
    draw.text((421, 965), '50000000 ', (0, 0, 0), font=normal_font)
    # 합계(계)
    draw.text((1098, 965), '50000000 ', (0, 0, 0), font=normal_font)
    # 감면소득 계
    draw.text((437, 1370), '4500000 ', (0, 0, 0), font=normal_font)
    # 합계(감면소득)
    draw.text((1102, 1370), '4500000 ', (0, 0, 0), font=normal_font)

    # 결정세액 - 소득세
    draw.text((650, 1445), '50000000 ', (0, 0, 0), font=normal_font)
    # 결정세액 - 지방소득세
    draw.text((850, 1445), '50000000 ', (0, 0, 0), font=normal_font)
    # 근무지 - 소득세
    draw.text((650, 1587), '4500000 ', (0, 0, 0), font=normal_font)
    # 근무지 - 지방소득세
    draw.text((850, 1587), '4500000 ', (0, 0, 0), font=normal_font)
    # 차감징수세액 - 소득세
    draw.text((650, 1658), '4500000 ', (0, 0, 0), font=normal_font)
    # 차감징수세액 - 지방소득세
    draw.text((850, 1658), '4500000 ', (0, 0, 0), font=normal_font)

    # 법인명(상호)
    draw.text((680, 1750), 'newComp', (0, 0, 0), font=normal_font)
    # 연도
    draw.text((1000, 1717), "2021", (0, 0, 0), font=normal_font)
    # 월
    draw.text((1086, 1717), "09", (0, 0, 0), font=normal_font)
    # 일자
    draw.text((1160, 1717), "15", (0, 0, 0), font=normal_font)

    img.save(f"근로소득원천징수영수증_after.jpg")
