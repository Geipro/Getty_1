FamilyName = ['김', '이', '박', '최', '신', '석', '목', '맹', '정']
from PIL import Image, ImageFont, ImageDraw

img = Image.open("소득금액증명서_국세청_양식.jpg")

bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)

draw = ImageDraw.Draw(img)
# 발급번호
draw.text((65, 285), "8017-255-8925-052", (0, 0, 0), font=normal_font)
# 주소
draw.text((170,388), "서울특별시 싸피구 ********", (0, 0, 0), font=normal_font)
# 이름
draw.text((175,443), "김싸피", (0, 0, 0), font=normal_font)
# 주민등록 번호
draw.text((826,443), "950511-1******", (0, 0, 0), font=normal_font)
# 법인명(상호)
draw.text((302,638), "주식회사 삼성전자", (0, 0, 0), font=normal_font)
# 소득금액(과세대상급여액) - 3자리마다 , 있어야됨
draw.text((680,665), "202,016,168", (0, 0, 0), font=normal_font)
# 총결정세액 3자리마다 , 있어야됨
draw.text((934,665), "20,210,129", (0, 0, 0), font=normal_font)
# 귀속연도(시작)
draw.text((632,880), "2020", (0, 0, 0), font=normal_font)
# 귀속연도(완료)
draw.text((710,880), "2020", (0, 0, 0), font=normal_font)
# 접수번호
draw.text((170,1097), "502537588018", (0, 0, 0), font=normal_font)
# 연락처
draw.text((170,1252), "02-2610-8222", (0, 0, 0), font=normal_font)

draw = ImageDraw.Draw(img)
img.save("소득after.jpg")
new_img = Image.open("소득after.jpg")
new_img.show()
print(img.size, new_img.size)