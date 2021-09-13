FamilyName = ['김', '이', '박', '최', '신', '석', '목', '맹', '정']
from PIL import Image, ImageFont, ImageDraw

img = Image.open("자격득실확인서.png")

bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)

draw = ImageDraw.Draw(img)
# 발급번호
draw.text((254, 162), "G202109131234567", (0, 0, 0), font=bold_font1)
# 이름
draw.text((373,359), "맹창영", (0, 0, 0), font=bold_font2)
# 주민등록 번호
draw.text((786,362), "950511-1******", (0, 0, 0), font=bold_font1)
# 사업장 명칭
draw.text((328,556), "주식회사삼성전자", (0, 0, 0), font=normal_font)
# 자격취득일
draw.text((826,556), "2020.12.28", (0, 0, 0), font=normal_font)
# 자격상실일
draw.text((1022,556), "2021.01.29", (0, 0, 0), font=normal_font)

draw = ImageDraw.Draw(img)
img.save("자격after.png")
new_img = Image.open("자격after.png")
new_img.show()
print(img.size, new_img.size)