import tqdm
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
