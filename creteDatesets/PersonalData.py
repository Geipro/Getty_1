from PIL.Image import new
from tqdm import tqdm
import random
from 자격득실확인 import main1 as form1
from 건강보험료납부확인 import main2 as form2
from 근로소득원천징수 import main3 as form3
from 소득금액증명서 import main4 as form4
from 자동차등록증 import main5 as form5
from 자동차매매계약서 import main6 as form6
from 자동차등록원부 import main7 as form7

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

CarList = ['GV70', 'GV80', '쏘나타', '아반떼', 'K3', 'K5', 'K7', 'K8', 'K9', '그랜저']
CarNum = ['가', '나', '다', '라', '마', '거', '너', '더', '러', '머', '버', '서', '어', '저', '고', '노', '도', '로', '모', '보', '소', '오', '조', '구', '누', '두', '루', '무', '부',

          '수', '우', '주']

CarRegNum =[]

newName = []
newComp = []
newNum = []
newPer = []
newPer3 = []

newName2 = []

newNum2 = []
newPer2 = []
newNum3 = []

newCarList = []
newCarNum = []
newCarType = []

newAddr = []
newAddr2 = []

newTotal = []
# tax 생각 해보기
newtotTax = []
newTax = []
newReciptNum = []
newPhoneNum = []
newPhoneNum1 = []
newPhoneNum2 = []

newJaeone = []
onedong = []
modyear = []
carHeight = []
carWeight = []
carLength = []
chaDaeNum = []
income = []
geonbo = []
yobo = []

for i in range(1000):
    jaeone1 = str(1000+i)
    jaeone2 = str(2000+i)
    jaeone3 = str(3000+i)
    cn = 6100+i
    birthDay = random.choice(PerNum_Year) + random.choice(PerNum_Month) + random.choice(PerNum_Day)
    nowDate = random.choice(PerNum_Month) + random.choice(PerNum_Day)
    # 랜덤 이름, 회사명, 자격득실번호, 주민등록번호, 주소
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName.append(st)
    st = random.choice(Name_First) + random.choice(Name_Second) + random.choice(Name_Last)
    newName2.append(st)
    st = Comp_First[0] + random.choice(Comp_Second) + random.choice(Comp_Last)
    newComp.append(st)
    st = 'G2021' + nowDate + str(random.randint(0000000, 9999999))
    newNum.append(st)
    st = birthDay + \
        '-' + random.choice(PerNum_Sex) + '******'
    newPer.append(st)
    st = birthDay + \
         '-' + random.choice(PerNum_Sex) + '******'
    newPer3.append(st)
    st = Address_First[0] + ' ' + random.choice(Address_Second) + ' ' + '*********'
    newAddr.append(st)

    st = Address_First[0] + ' ' + random.choice(Address_Second) + ' ' + '*********'
    newAddr2.append(st)
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
    st = str(random.randint(20000000, 150000000))
    newTotal.append(st)
    
    
    geonbo.append(int(int(newTotal[i])*0.00343))
    yobo.append(int(geonbo[i]*0.1152))

    st = str(random.randint(500000000000, 599999999999))
    newReciptNum.append(st)
    st = '02' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum.append(st)
    st = '010' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum1.append(st)
    st = '010' + '-' + str(random.randint(1000, 9999)) + '-' + str(random.randint(0000, 9999))
    newPhoneNum2.append(st)
    st = random.choice(CarList)
    newCarList.append(st)
    st = str(random.randint(100, 999)) + random.choice(CarNum) + ' ' + str(random.randint(0000, 9999))
    newCarNum.append(st)

    CarRegNum.append('00'+str(cn))
    newJaeone.append(f'A01-1-0{jaeone1}-{jaeone2}-{jaeone3}')

    modyear.append(random.choice(['2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019', '2020']))
    income.append(random.choice(['60000000', '55000000', '50000000', '45000000', '40000000', '35000000']))
    newtotTax.append(f'{int(income[i][:2])*440000}')
    if 'GV70' == newCarList[i]:
        onedong.append('G4DB')
        carHeight.append('1,630')
        carWeight.append('1,910')
        carLength.append('4,715')
        newCarType.append('중형 SUV')
        chaDaeNum.append('KMH'+'EL44'+str(i))

    elif 'GV80' == newCarList[i]:
        onedong.append('D4HB')
        carHeight.append('1,715')
        carWeight.append('1,975')
        carLength.append('4,945')
        newCarType.append('대형 SUV')
        chaDaeNum.append('KMH'+'GL44'+str(i))

    elif '쏘나타' == newCarList[i]:
        onedong.append('G4NG')
        carHeight.append('1,445')
        carWeight.append('1,860')
        carLength.append('4,900')
        newCarType.append('중형 승용')
        chaDaeNum.append('KMH'+'EL44'+str(i))

    elif '아반떼' == newCarList[i]:
        onedong.append('G4FD')
        carHeight.append('1,395')
        carWeight.append('1,700')
        carLength.append('4,420')
        newCarType.append('준중형 승용')
        chaDaeNum.append('KMH'+'DL44'+str(i))

    elif 'K3' == newCarList[i]:
        onedong.append('D4FB')
        carHeight.append('1,440')
        carWeight.append('1,800')
        carLength.append('4,640')
        newCarType.append('준중형 승용')
        chaDaeNum.append('KNH'+'DL44'+str(i))

    elif 'K5' == newCarList[i]:
        onedong.append('D4FB')
        carHeight.append('1,475')
        carWeight.append('1,860')
        carLength.append('2,850')
        newCarType.append('중형 승용')
        chaDaeNum.append('KNH'+'EL44'+str(i))

    elif 'K7' == newCarList[i]:
        onedong.append('G4KK')
        carHeight.append('1,470')
        carWeight.append('1,870')
        carLength.append('4,995')
        newCarType.append('준대형 승용')
        chaDaeNum.append('KNH'+'FL44'+str(i))

    elif 'K8' == newCarList[i]:
        onedong.append('G4FT')
        carHeight.append('1,455')
        carWeight.append('1,875')
        carLength.append('5,015')
        newCarType.append('준대형 승용')
        chaDaeNum.append('KNH'+'FL44'+str(i))

    elif 'K9' == newCarList[i]:
        onedong.append('G6DH')
        carHeight.append('1,490')
        carWeight.append('1,915')
        carLength.append('5,090')
        newCarType.append('대형 승용')
        chaDaeNum.append('KNH'+'GL44'+str(i))

    elif '그랜저' == newCarList[i]:
        onedong.append('L6DB')
        carHeight.append('1,470')
        carWeight.append('1,875')
        carLength.append('4,990')
        newCarType.append('준대형 승용')
        chaDaeNum.append('KMH'+'FL44'+str(i))


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
                form2.makedata2(number=newNum2[i], name=newName[i], personal=newPer2[i], company=newComp[i],
                                num1=newNum3[i], tax1=str(geonbo[i]), tax2=str(yobo[i]), index=i)
        elif cmd2 == 2:
            print('건강보험자격득실 확인서, 건강장기요양보험료 납부확인서 생성')
            for i in tqdm(range(1000)):
                form1.makedata1(number=newNum[i], name=newName[i], personal=newPer[i], company=newComp[i], index=i)
                form2.makedata2(number=newNum2[i], name=newName[i], personal=newPer2[i], company=newComp[i],
                                num1=newNum3[i], tax1=str(geonbo[i]), tax2=str(yobo[i]), index=i)

        elif cmd2 == 3:
            print('건강보험자격득실 확인서, 소득금액증명원, 근로소득원천징수영수증 생성')
            for i in tqdm(range(1000)):
                form1.makedata1(number=newNum[i], name=newName[i], personal=newPer[i], company=newComp[i], index=i)
                form3.makedata3(name=newName[i], personal=newPer[i], company=newComp[i],
                                income=income[i], tax=newtotTax[i], index=i)
                form4.makedata4(name=newName[i], address=newAddr[i], personal=newPer[i], company=newComp[i],
                                income=income[i], tax=newtotTax[i], index=i)
    elif cmd1 == 2:
        print('1. 신한 MY CAR 신차 대출')
        print('2. 신한 MY CAR 중고차 대출')
        cmd2 = int(input())
        if cmd2 == 1:
            print('자동차 매매 계약서, 자동차 등록원부 생성')
            for i in tqdm(range(1000)):
                form6.makedata6(name=newName[i], name2=newName2[i], address=newAddr[i], address2=newAddr2[i],
                                personal=newPer[i], personal2=newPer3[i], phone=newPhoneNum1[i], phone2=newPhoneNum2[i],
                              carnum=newCarNum[i], carlist=newCarList[i], chadae=chaDaeNum[i], index=i)

                form7.makedata7(name=newName[i], address=newAddr[i], personal=newPer[i], carnum=newCarNum[i],
                                carlist=newCarList[i], cartype=newCarType[i], chadae=chaDaeNum[i], jaewon=newJaeone[i],
                                wondong=onedong[i], modelyear=modyear[i], index=i)


        elif cmd2 == 2:
            print('자동차 매매 계약서, 자동차 등록증 생성')
            for i in tqdm(range(1000)):
                form6.makedata6(name=newName[i], name2=newName2[i], address=newAddr[i], address2=newAddr2[i],
                                personal=newPer[i], personal2=newPer3[i], phone=newPhoneNum1[i], phone2=newPhoneNum2[i],
                                carnum=newCarNum[i], carlist=newCarList[i], chadae=chaDaeNum[i], index=i)
                form5.makedata5(name=newName[i], address=newAddr[i], personal=newPer[i], carnum=newCarNum[i],
                                carlist=newCarList[i], jaeone=newJaeone[i], height=carHeight[i], weight=carWeight[i],
                                length=carWeight[i], chadae=chaDaeNum[i], cartype=newCarType[i], regnum=CarRegNum[i],
                                onedong=onedong[i], modyear=modyear[i], index=i)

createDataSets()