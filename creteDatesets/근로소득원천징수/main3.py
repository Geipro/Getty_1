from PIL import Image, ImageFont, ImageDraw
bold_font1 = ImageFont.truetype(font="./근로소득원천징수/HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./근로소득원천징수/HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./근로소득원천징수/HANBatang.ttf", size=20)
small_font = ImageFont.truetype(font="./근로소득원천징수/HANBatang.ttf", size=14)



def makedata3(number, name, personal, company, index):
    img = Image.open("./근로소득원천징수/근로소득원천징수영수증_양식.JPG")
    draw = ImageDraw.Draw(img)
    ceo = ''
    comnum = '631-'
    if '삼성' in company:
        comnum += '11-00100'
        ceo = '김삼성'
    elif '현대' in company:
        comnum += '11-00200'
        ceo = '김현대'

    elif '에스케이' in company:
        comnum += '11-00300'
        ceo = '김에스케이'

    elif '엘지' in company:
        comnum += '11-00400'
        ceo = '김엘지'

    elif '케이티' in company:
        comnum += '11-00500'
        ceo = '김케이티'

    elif '네이버' in company:
        comnum += '11-00600'
        ceo = '김네이버'

    elif '카카오' in company:
        comnum += '11-00700'
        ceo = '김카카오'

    elif '넥슨' in company:
        comnum += '11-00800'
        ceo = '김넥슨'

    elif '라인' in company:
        comnum += '11-00900'
        ceo = '김라인'

    elif '포스코' in company:
        comnum += '11-01000'
        ceo = '김포스코'

    elif '한국' in company:
        comnum += '11-01100'
        ceo = '김한국'

    elif '롯데' in company:
        comnum += '11-01200'
        ceo = '김롯데'

    elif '기아' in company:
        comnum += '11-01300'
        ceo = '김기아'

    elif '한화' in company:
        comnum += '11-01400'
        ceo = '김한화'

    jong = ''
    if '전자' in company:
        jong = '0001'
    elif '중공업' in company:
        jong = '0002'
    elif '상사' in company:
        jong = '0003'
    elif '물산' in company:
        jong = '0004'
    elif '건설' in company:
        jong = '0005'
    elif '카드' in company:
        jong = '0006'
    elif '증권' in company:
        jong = '0007'
    elif '보험' in company:
        jong = '0008'
    elif '캐피탈' in company:
        jong = '0009'
    # # 주소 - 안해도 됨
    # draw.text((391,431), newAddress[i], (0, 0, 0), font=normal_font)
    # 대표자 이름
    draw.text((919, 325), ceo, (0, 0, 0), font=normal_font)
    # 소득자 이름
    draw.text((418, 463), name, (0, 0, 0), font=normal_font)
    # 주민등록 번호
    draw.text((1053, 463), personal, (0, 0, 0), font=normal_font)
    # 법인명(상호)
    draw.text((409, 325), company, (0, 0, 0), font=normal_font)
    # 사업자등록번호
    draw.text((409, 363), comnum, (0, 0, 0), font=normal_font)
    # 종사업장 일련번호
    draw.text((1005, 397), jong, (0, 0, 0), font=normal_font)

    # 근무처명
    draw.text((420, 570), company, (0, 0, 0), font=normal_font)
    # 사업자등록번호
    draw.text((415, 606), comnum, (0, 0, 0), font=normal_font)

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
    draw.text((680, 1750), company, (0, 0, 0), font=normal_font)
    # 연도
    draw.text((1000, 1717), "2021", (0, 0, 0), font=normal_font)
    # 월
    draw.text((1086, 1717), "09", (0, 0, 0), font=normal_font)
    # 일자
    draw.text((1160, 1717), "15", (0, 0, 0), font=normal_font)

    img.save(f"./근로소득원천징수/datasets/근로소득원천징수영수증{index+1}.png")


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
