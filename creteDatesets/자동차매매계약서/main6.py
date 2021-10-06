from PIL import Image, ImageFont, ImageDraw
import random

bold_font1 = ImageFont.truetype(font="./자동차매매계약서/HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./자동차매매계약서/HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./자동차매매계약서/HANBatang.ttf", size=20)

def makedata6(name, name2, address, address2, personal, personal2, phone, phone2,
              carnum, carlist, chadae, index):
    img = Image.open("./자동차매매계약서/car_form.JPG")
    draw = ImageDraw.Draw(img)
    # 접수번호
    draw.text((241, 219), f'{str(10000+index)}', (0, 0, 0), font=normal_font)
    # 접수일자
    draw.text((838, 219), '2021.09.15', (0, 0, 0), font=normal_font)

    # 갑 - 주소
    draw.text((345, 390), address2, (0, 0, 0), font=normal_font)
    # 갑 - 이름
    draw.text((398, 286), name2, (0, 0, 0), font=normal_font)
    # 갑 - 주민등록 번호
    draw.text((1062, 285), personal2, (0, 0, 0), font=normal_font)
    # 갑 - 연락처
    draw.text((391, 337), phone2, (0, 0, 0), font=normal_font)
    # 을 - 주소
    draw.text((345, 553), address, (0, 0, 0), font=normal_font)
    # 을 - 이름
    draw.text((398, 455), name, (0, 0, 0), font=normal_font)
    # 을 - 주민등록 번호
    draw.text((1060, 455), personal, (0, 0, 0), font=normal_font)
    # 을 - 연락처
    draw.text((387, 505), phone, (0, 0, 0), font=normal_font)
    # 양도인 - 이름
    draw.text((274, 1495), name2, (0, 0, 0), font=normal_font)
    # 양도인 - 이름(서명)
    draw.text((615, 1509), name2, (0, 0, 0), font=normal_font)
    # 양수인 - 이름
    draw.text((859, 1495), name, (0, 0, 0), font=normal_font)
    # 양수인 - 이름(서명)
    draw.text((1200, 1509), name, (0, 0, 0), font=normal_font)

    # 자동차 등록번호
    draw.text((467, 621), carnum, (0, 0, 0), font=normal_font)
    # 차종
    draw.text((1041, 621), carlist, (0, 0, 0), font=normal_font)
    # 차대번호
    draw.text((395, 670), chadae, (0, 0, 0), font=normal_font)
    # 매매일
    draw.text((995, 670), '2021.09.15', (0, 0, 0), font=normal_font)
    # 매매금액
    draw.text((395, 721), random.choice(['50000000원', '45000000원', '40000000원', '35000000원', '30000000원', '55000000원',
                                         '65000000원', '60000000원']), (0, 0, 0), font=normal_font)
    # 잔금지급일 ( 당일로)
    draw.text((995, 721), '2021.11.15', (0, 0, 0), font=normal_font)
    # 자동차 인도일
    draw.text((447, 774), '2021.10.15', (0, 0, 0), font=normal_font)
    # 주행거리
    draw.text((1050, 770), random.choice(['1,000km', '1,500km', '2,000km', '2,500km', '3,000km', '3,500km', '4,000km',
                                          '4,500km', '5,000km', '5,500km', ]), (0, 0, 0), font=normal_font)

    # 연도
    draw.text((920, 1451), "2021", (0, 0, 0), font=normal_font)
    # 월
    draw.text((1060, 1451), "09", (0, 0, 0), font=normal_font)
    # 일자
    draw.text((1180, 1451), "15", (0, 0, 0), font=normal_font)

    img.save(f"./자동차매매계약서/datasets/자동차매매계약서{index + 1}.png")
