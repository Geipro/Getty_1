from PIL import Image, ImageFont, ImageDraw
import random
#
# bold_font1 = ImageFont.truetype(font="./건강보험료납부확인/GodicB.ttf", size=23)
# bold_font2 = ImageFont.truetype(font="./건강보험료납부확인/GodicB.ttf", size=26)
#
# normal_font = ImageFont.truetype(font="./건강보험료납부확인/Godic.ttf", size=20)


def makefile2(number, name, personal, company, index):
    img = Image.open("./건강보험료납부확인/건강보험료납부확인서.jpg")
    draw = ImageDraw.Draw(img)
    # 발급번호
    draw.text((254, 162), number[index], (0, 0, 0), font=bold_font1)
    # 이름
    draw.text((373, 359), name[index], (0, 0, 0), font=bold_font2)
    # 주민등록 번호
    draw.text((786, 362), personal[index], (0, 0, 0), font=bold_font1)
    # 사업장 명칭
    draw.text((328, 556), company[index], (0, 0, 0), font=normal_font)
    # 자격취득일
    draw.text((826, 556), "2015.12.28", (0, 0, 0), font=normal_font)
    img.save(f"./자격득실확인/datasets/자격득실확인서{index+1}.png")


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
    img.save(f"건강보험after.jpg")
    img.show()