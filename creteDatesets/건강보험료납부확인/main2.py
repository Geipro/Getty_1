from PIL import Image, ImageFont, ImageDraw
import random

Lbold_font1 = ImageFont.truetype(font="./건강보험료납부확인/GodicB.ttf", size=22)

Lnormal_font = ImageFont.truetype(font="./건강보험료납부확인/Godic.ttf", size=22)

def makedata2(number, name, personal, company, num1, tax1, tax2, index):
    img = Image.open("./건강보험료납부확인/건강보험료납부확인서.jpg")
    draw = ImageDraw.Draw(img)
    # 발급번호
    draw.text((241, 169), number, (0, 0, 0), font=Lbold_font1)
    # 이름
    draw.text((465, 290), name, (0, 0, 0), font=Lnormal_font)
    # 생년월일
    draw.text((948, 290), personal, (0, 0, 0), font=Lbold_font1)
    # 사업장 명칭
    draw.text((400, 340), company, (0, 0, 0), font=Lnormal_font)
    # 납부자 번호
    draw.text((936, 340), num1, (0, 0, 0), font=Lbold_font1)

    for i in range(9):
        draw.text((270, 539+i*33), tax1, (0, 0, 0), font=Lbold_font1)
        draw.text((395, 539+i*33), tax2, (0, 0, 0), font=Lbold_font1)
        draw.text((718, 539+i*33), tax1, (0, 0, 0), font=Lbold_font1)
        draw.text((843, 539+i*33), tax2, (0, 0, 0), font=Lbold_font1)

    img.save(f"./건강보험료납부확인/datasets/건강보험료납부확인서{index+1}.png")


if __name__ == "__main__":

    Lbold_font1 = ImageFont.truetype(font="./GodicB.ttf", size=22)

    Lnormal_font = ImageFont.truetype(font="./Godic.ttf", size=22)


    img = Image.open("건강보험료납부확인서.jpg")
    draw = ImageDraw.Draw(img)
    # 발급번호
    draw.text((241, 169), '11-20210914-8962025', (0, 0, 0), font=Lbold_font1)
    # 이름
    draw.text((465, 290), '맹창영', (0, 0, 0), font=Lnormal_font)
    # 생년월일
    draw.text((948, 290), '1995.05.11', (0, 0, 0), font=Lbold_font1)
    # 사업장 명칭
    draw.text((400, 340), '주식회사삼성전자', (0, 0, 0), font=Lnormal_font)
    # 자격취득일
    draw.text((936, 340), "81059742887", (0, 0, 0), font=Lbold_font1)

    for i in range(9):
        draw.text((270, 539+i*33), "54520", (0, 0, 0), font=Lbold_font1)
        draw.text((395, 539+i*33), "4630", (0, 0, 0), font=Lbold_font1)
        draw.text((718, 539+i*33), "54520", (0, 0, 0), font=Lbold_font1)
        draw.text((843, 539+i*33), "4630", (0, 0, 0), font=Lbold_font1)

    img.save(f"건강보험after.jpg")
    img.show()