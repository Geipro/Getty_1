from PIL import Image, ImageFont, ImageDraw
import random
bold_font1 = ImageFont.truetype(font="./소득금액증명서/HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./소득금액증명서/HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./소득금액증명서/HANBatang.ttf", size=20)
def makedata4(name, address, personal, company, income, tax, index):
    img = Image.open("./소득금액증명서/소득금액증명서_국세청_양식.jpg")
    draw = ImageDraw.Draw(img)
    st = str(random.randint(0000, 9999)) + '-' + str(random.randint(000, 999)) + '-' + str(random.randint(0000, 9999))
    phone = '010-' + str(random.randint(0000, 9999)) + str(random.randint(0000, 9999))

    # 발급번호
    draw.text((88, 285), st, (0, 0, 0), font=normal_font)
    # 주소
    draw.text((170,388), address, (0, 0, 0), font=normal_font)
    # 이름
    draw.text((175,443), name, (0, 0, 0), font=normal_font)
    # 주민등록 번호
    draw.text((826,443), personal, (0, 0, 0), font=normal_font)
    # 법인명(상호)
    draw.text((302,638), company, (0, 0, 0), font=normal_font)
    # 소득금액(과세대상급여액) - 3자리마다 , 있어야됨
    draw.text((680,665), income, (0, 0, 0), font=normal_font)
    # 총결정세액 3자리마다 , 있어야됨
    draw.text((920,665), tax, (0, 0, 0), font=normal_font)
    # 귀속연도(시작)
    draw.text((632,880), '2020 ', (0, 0, 0), font=normal_font)
    # 귀속연도(완료) - 신용대출이니까 가장 최근 귀속연도 측정
    draw.text((710,880), '2020', (0, 0, 0), font=normal_font)
    # 접수번호
    draw.text((170,1097), f'{str(502537588018+index)}', (0, 0, 0), font=normal_font)
    # 연락처
    draw.text((170,1252), phone, (0, 0, 0), font=normal_font)
    img.save(f"./소득금액증명서/datasets/소득금액증명서{index+1}.png")