from PIL.Image import new
import tqdm
import random
from 자격득실확인 import main as form1

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
for i in range(100):
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName.append(st)
    st = Comp_First[0] + random.choice(Comp_Second) + random.choice(Comp_Last)
    newComp.append(st)
    st = 'G2021' + random.choice(Num_Month) + random.choice(Num_Day) + str(random.randint(0000000, 9999999))
    newNum.append(st)
    st = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day) + \
        '-' + random.choice(PerNum_Sex) + '******'
    newPer.append(st)

def createDataSets():
    print('만들 데이터 양식을 선택하세요.')
    print('1. 신용 대출 관련 서류')
    print('2. MY CAR 대출 관련 서류')

    cmd1 = int(input())
    if cmd1 == 1:
        print('1. 쏠편한 직장인대출S')
        print('2. 쏠편한 직장인대출')
        print('3. 샐러리론')
        cmd2 = int(input())
        if cmd2 == 1:
            print('건강보험자격득실 확인서, 건강장기요양보험료 납부확인서 생성')
            for i in tqdm(range(100)):
                form1.makedata1(number=newNum[i], name=newName[i], personal=newPer[i], company=newComp[i], index=i)
        elif cmd2 == 2:
            print('건강보험자격득실 확인서, 건강장기요양보험료 납부확인서 생성')

        elif cmd2 == 3:
            print('건강보험자격득실 확인서, 소득금액증명원, 근로소득원천징수영수증 생성')

    elif cmd1 == 2:
        print('1. 신한 MY CAR 신차 대출')
        print('2. 신한 MY CAR 중고차 대출')
        cmd2 = int(input())
        if cmd2 == 1:
            print('자동차 매매 계약서, 자동차 등록원부 생성')
        
        elif cmd2 == 2:
            print('자동차 매매 계약서, 자동차 등록증 생성')
