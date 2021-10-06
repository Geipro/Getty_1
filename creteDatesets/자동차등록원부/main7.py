from PIL import Image, ImageFont, ImageDraw
import random

bold_font1 = ImageFont.truetype(font="./자동차등록원부/HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./자동차등록원부/HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./자동차등록원부/HANBatang.ttf", size=20)
small_font = ImageFont.truetype(font="./자동차등록원부/HANBatang.ttf", size=14)


def makedata7(name, address, personal, carnum, carlist, cartype, chadae, jaewon, wondong, modelyear, index):
    img = Image.open("./자동차등록원부/자동차등록원부_양식.JPG")
    draw = ImageDraw.Draw(img)
    # 접수번호
    draw.text((241, 219), f'{str(123456+index)}', (0, 0, 0), font=normal_font)
    # 문서확인번호
    draw.text((359, 48), f"{str(random.randint(1000, 9999))+'-'+str(random.randint(1000, 9999))}"
              +'-'+f"{str(random.randint(1000, 9999))+'-'+str(random.randint(1000, 9999))}", (0, 0, 0), font=normal_font)

    # 자동차등록번호
    draw.text((220, 332), carnum, (0, 0, 0), font=normal_font)
    # 재원관리번호
    draw.text((483, 332), jaewon, (0, 0, 0), font=normal_font)
    # 차명
    draw.text((645, 377), carlist, (0, 0, 0), font=normal_font)
    # 차종
    draw.text((960, 377), cartype, (0, 0, 0), font=normal_font)
    # 차대번호
    draw.text((170, 424), chadae, (0, 0, 0), font=normal_font)
    # 원동기형식
    draw.text((650, 424), wondong, (0, 0, 0), font=normal_font)
    # 연식(모델연도)
    draw.text((325, 474), modelyear, (0, 0, 0), font=normal_font)
    # 색상
    draw.text((645, 474), random.choice(['검은색', '빨강색', '파란색', '흰색', '노란색', '회색', '초록색']), (0, 0, 0), font=normal_font)
    # 최초등록일
    draw.text((265, 524), modelyear+'.09.15', (0, 0, 0), font=normal_font)
    # 제작연월일
    draw.text((940, 505), modelyear+'.01.01', (0, 0, 0), font=small_font)
    # 최초 양도연월일
    draw.text((940, 527), modelyear+'.10.15', (0, 0, 0), font=small_font)
    # 최종소유자
    draw.text((580, 560), name+'(100%)', (0, 0, 0), font=normal_font)
    # 주민(법인)등록번호
    draw.text((892, 566), personal, (0, 0, 0), font=normal_font)
    # 사용본거지(주소)
    draw.text((208, 603), address, (0, 0, 0), font=normal_font)
    # 검사유효기간
    draw.text((200, 644), "2019-12-20 ~ 2023-12-19", (0, 0, 0), font=normal_font)

    # 이름
    draw.text((332, 820), name, (0, 0, 0), font=small_font)
    # 주소
    draw.text((285, 833), address, (0, 0, 0), font=small_font)
    # 주민(법인)등록번호
    draw.text((676, 831), personal, (0, 0, 0), font=small_font)
    # 등록일자
    draw.text((832, 831), "2019-12-20", (0, 0, 0), font=small_font)
    # 접수번호
    draw.text((960, 831), f"{str(121289+index)}", (0, 0, 0), font=small_font)
    # 주소
    draw.text((288, 909), address, (0, 0, 0), font=small_font)
    # 등록일자
    draw.text((832, 901), "2019-12-21", (0, 0, 0), font=small_font)
    # 접수번호
    draw.text((960, 901), f"{str(121230+index)}", (0, 0, 0), font=small_font)

    # 대표소유자
    draw.text((340, 1030), name, (0, 0, 0), font=small_font)
    # 주민(법인)등록번호
    draw.text((432, 1030), personal, (0, 0, 0), font=small_font)
    # 일자
    draw.text((550, 1231), "2019-12-21", (0, 0, 0), font=normal_font)

    img.save(f"./자동차등록원부/datasets/자동차등록원부{index + 1}.png")