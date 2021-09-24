from PIL import Image, ImageFont, ImageDraw
import random

bold_font1 = ImageFont.truetype(font="./자격득실확인/HANBatangB.ttf", size=23)
bold_font2 = ImageFont.truetype(font="./자격득실확인/HANBatangB.ttf", size=26)

normal_font = ImageFont.truetype(font="./자격득실확인/HANBatang.ttf", size=20)


def makedata1(number, name, personal, company, index):
    img = Image.open("./자격득실확인/자격득실확인서.png")
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

    newName = []
    newComp = []
    newNum = []
    newPer = []
    for i in range(1000):
        st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
        newName.append(st)
        st = Comp_First[0] + random.choice(Comp_Second) + random.choice(Comp_Last)
        newComp.append(st)
        st = 'G2021' + random.choice(Num_Month) + random.choice(Num_Day) + str(random.randint(0000000, 9999999))
        newNum.append(st)
        st = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day) + \
             '-' + random.choice(PerNum_Sex) + '******'
        newPer.append(st)

    bold_font1 = ImageFont.truetype(font="./HANBatangB.ttf", size=23)
    bold_font2 = ImageFont.truetype(font="./HANBatangB.ttf", size=26)

    normal_font = ImageFont.truetype(font="./HANBatang.ttf", size=20)

    for i in range(10):
        img = Image.open("자격득실확인서.png")
        draw = ImageDraw.Draw(img)
        # 발급번호
        draw.text((254, 162), newNum[i], (0, 0, 0), font=bold_font1)
        # 이름
        draw.text((373, 359), newName[i], (0, 0, 0), font=bold_font2)
        # 주민등록 번호
        draw.text((786, 362), newPer[i], (0, 0, 0), font=bold_font1)
        # 사업장 명칭
        draw.text((328, 556), newComp[i], (0, 0, 0), font=normal_font)
        # 자격취득일
        draw.text((826, 556), "2015.12.28", (0, 0, 0), font=normal_font)
        img.save(f"자격득실확인서{i + 1}.png")