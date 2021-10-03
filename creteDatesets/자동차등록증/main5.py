from PIL import Image, ImageFont, ImageDraw
import random

bold_font1 = ImageFont.truetype(font="./자동차등록증/HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./자동차등록증/HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./자동차등록증/HANBatang.ttf", size=20)
small_font = ImageFont.truetype(font="./자동차등록증/HANBatang.ttf", size=14)

def makedata5(name, address, personal, carnum, carlist, jaeone, height, weight, length,
              chadae, cartype, regnum, onedong, modyear, index):

    if onedong[0] == 'G':
        yeon = '가솔린'
    elif onedong[0] == 'D':
        yeon = '디젤'
    elif onedong[0] == 'L':
        yeon = 'LPG'
    img = Image.open("./자동차등록증/자동차등록증_양식.JPG")
    draw = ImageDraw.Draw(img)
    # 번호
    draw.text((160, 167), regnum, (0, 0, 0), font=small_font)
    # 최초등록일 연도
    draw.text((721, 165), modyear, (0, 0, 0), font=normal_font)
    # 월
    draw.text((817, 165), "09", (0, 0, 0), font=normal_font)
    # 일자
    draw.text((905, 165), "15", (0, 0, 0), font=normal_font)

    # 자동차등록번호
    draw.text((340, 202), carnum, (0, 0, 0), font=normal_font)

    # 차명
    draw.text((342, 238), carlist, (0, 0, 0), font=normal_font)
    # 용도
    draw.text((900, 202), "자가용", (0, 0, 0), font=normal_font)
    # 차종
    draw.text((690, 202), cartype, (0, 0, 0), font=normal_font)
    # 차대번호
    draw.text((325, 275), chadae, (0, 0, 0), font=small_font)
    # 원동기형식
    draw.text((692, 273), onedong, (0, 0, 0), font=normal_font)
    # 연식(모델연도)
    draw.text((692, 238), modyear, (0, 0, 0), font=normal_font)
    # 사용본거지(주소)
    draw.text((330, 308), address, (0, 0, 0), font=normal_font)
    # 이름
    draw.text((343, 364), name, (0, 0, 0), font=normal_font)
    # 주소
    draw.text((336, 433), address, (0, 0, 0), font=normal_font)
    # 주민(법인)등록번호
    draw.text((695, 364), personal, (0, 0, 0), font=normal_font)

    # 연도
    draw.text((363, 525), "2021", (0, 0, 0), font=normal_font)
    # 월
    draw.text((507, 525), "09", (0, 0, 0), font=normal_font)
    # 일자
    draw.text((597, 525), "15", (0, 0, 0), font=normal_font)

    # 제원관리번호
    draw.text((250, 710), jaeone, (0, 0, 0), font=small_font)
    # 길이
    draw.text((233, 755), length, (0, 0, 0), font=small_font)
    # 너비
    draw.text((425, 755), height, (0, 0, 0), font=small_font)
    # 높이
    draw.text((233, 790), weight, (0, 0, 0), font=small_font)
    # # 총중량
    # draw.text((425, 790), "1590", (0, 0, 0), font=small_font)
    # # 배기량
    # draw.text((237, 833), "2497", (0, 0, 0), font=small_font)
    # # 정격 출력
    # draw.text((418, 848), "350/6500", (0, 0, 0), font=small_font)
    # # 승차 정원
    # draw.text((260, 881), "2", (0, 0, 0), font=small_font)
    # # 최대 적재량
    # draw.text((445, 881), "0", (0, 0, 0), font=small_font)
    # # 기통수
    # draw.text((250, 940), "4", (0, 0, 0), font=small_font)
    # 연료의 종류
    draw.text((425, 920), yeon, (0, 0, 0), font=small_font)
    # # 연비
    # draw.text((440, 962), "10", (0, 0, 0), font=small_font)

    # 검사유효기간 - 시작
    draw.text((520, 784), "2019-12-20", (0, 0, 0), font=small_font)
    # 검사유효기간 - 끝
    draw.text((603, 784), "2023-12-19", (0, 0, 0), font=small_font)

    img.save(f"./자동차등록증/datasets/자동차등록증{index + 1}.jpg")