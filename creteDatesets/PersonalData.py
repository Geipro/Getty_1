from PIL.Image import new
from tqdm import tqdm
import random
from 자격득실확인 import main1 as form1
from 건강보험료납부확인 import main2 as form2

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

Address_First = ['서울특별시']
Address_Second = ['강남구','강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구',
                 '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구']

newName = []
newComp = []
newNum = []
newPer = []


newNum2 = []
newPer2 = []
newNum3 = []

new

newAddr = []
newTotal = []
# tax 생각 해보기
newTax = []
newReciptNum = []
newPhoneNum = []
for i in range(1000):
    birthDay = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day)
    nowDate = random.choice(PerNum_Month) + random.choice(PerNum_Day)
    # 랜덤 이름, 회사명, 자격득실번호, 주민등록번호, 주소
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName.append(st)
    st = Comp_First[0] + random.choice(Comp_Second) + random.choice(Comp_Last)
    newComp.append(st)
    st = 'G2021' + nowDate + str(random.randint(0000000, 9999999))
    newNum.append(st)
    st = birthDay + \
        '-' + random.choice(PerNum_Sex) + '******'
    newPer.append(st)
    st = Address_First[0] + ' ' + random.choice(Address_Second) + ' ' + '*********'
    newAddr.append(st)

    # 문서번호
    st = '11-2021' + nowDate + '-' + str(random.randint(0000000, 9999999))
    newNum2.append(st)


    # 1995.05.11 포맷 생일
    st = '19' + birthDay
    st = st[:4]+'.'+st[4:6]+'.'+st[6:]
    newPer2.append(st)
    # 납부자 번호
    st = str(random.randint(80000000000, 89999999999))
    newNum3.append(st)

    # 신용대출 범위 소득 1천만원 ~ 1억 5천만원으로 함 ,
    st = str(random.randint(10000000, 150000000))
    newTotal.append(st)
    st = str(random.randint(500000000000, 599999999999))
    newReciptNum.append(st)
    st = '02' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum.append(st)



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
            for i in tqdm(range(1000)):
                form1.makedata1(number=newNum[i], name=newName[i], personal=newPer[i], company=newComp[i], index=i)
                form2.makedata2(number=newNum2[i], name=newName[i], personal=newPer2[2], company=newComp[i],
                                num1=newNum3[i], tax1='54520', tax2='4630', index=i)
        elif cmd2 == 2:
            print('건강보험자격득실 확인서, 건강장기요양보험료 납부확인서 생성')
            for i in tqdm(range(1000)):
                form1.makedata1(number=newNum[i], name=newName[i], personal=newPer[i], company=newComp[i], index=i)
                form2.makedata2(number=newNum2[i], name=newName[i], personal=newPer2[2], company=newComp[i],
                                num1=newNum3[i], tax1='54520', tax2='4630', index=i)

        elif cmd2 == 3:
            print('건강보험자격득실 확인서, 소득금액증명원, 근로소득원천징수영수증 생성')
            for i in tqdm(range(100)):
                form1.makedata1(number=newNum[i], name=newName[i], personal=newPer[i], company=newComp[i], index=i)

    elif cmd1 == 2:
        print('1. 신한 MY CAR 신차 대출')
        print('2. 신한 MY CAR 중고차 대출')
        cmd2 = int(input())
        if cmd2 == 1:
            print('자동차 매매 계약서, 자동차 등록원부 생성')
        
        elif cmd2 == 2:
            print('자동차 매매 계약서, 자동차 등록증 생성')

createDataSets()