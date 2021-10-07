

# Getty

 ## 신한은행 대출 서비스 자동 문서 분류 시스템

 ## 👨‍👩‍👦팀원 소개 및 역할 소개

**맹창영**

 🎃 AI 

**목상원**

 🧙‍♂️ 백엔드 

**정명지**

 🍒 백엔드

 **신숙**

🐶 프론트엔드

 **석정준**

🌰 프론트엔드



 ## 📆 프로젝트 개요

- **진행 기간**: 2021.08.30 ~ 2021.10.08
- **목표**
  - 사용자의 대출상품을 머신러닝을 이용해 자동적으로 문서를 분류한다.
  - 불필요한 행원의 데이터 기입을 **OCR**을 이용해 최소화하고 고객정보를 데이터화하여 행원에게 제공
  - **담당 행원에게** **자동적으로 포워딩** 상담을 위한 대기 등 불필요한 시간 최소화
  - 사회적으로 온라인 서비스가 익숙한 연령층의 **대출 규모 증가** **간편한 대출 프로세스의 필요**



## **✨3가지 장점**

- 고객 : 서류 분류에 대한 시간소모 줄임
  - 대출상품에 상관없이 고객이 서류를 제출하면  알아서 해주는 편리함
- 고객 : 나에게 맞는 대출 상품을 제공(찾는 시간을 줄임)

- 행원: 대출 서류를 확인하는데 시간을 줄임
  - 고객의 악필 등도 OCR로 정돈된 데이터를 제공



## ✍ 프로젝트 소개

- 창영님





##  ⭐️ 기능

### 시장에 온 듯 한 느낌이 드는 화상 서비스

> - 보장은 고객과 판매자가 서로 떨어져 있지만, 시장 분위기를 공유하며 구매와 판매를 동시에 느낄 수 있게 하는 기능을 제공합니다.
> - 보장 서비스의 차별점인 픽업매니저를 운영하여 주문이 들어온 것들을 한번에 픽업하여 고객이 주문한 제품을 찾아가기 편리하도록 서비스를 개발하였습니다.







## ⚙ 개발 환경 및 IDE

## Dependencies

- Swagger 3.0.0

- Vue.js : 2.6.11

- axios: 0.21.4

- bootstrap: 4.6.0,

- vee-validate: 2.2.15

- bcrypt            3.2.0

- cryptography      3.4.8

- fastapi           0.68.1

- jwt               1.2.0

- multidict         5.2.0

- mypy-extensions   0.4.3

- numpy             1.21.2

- pandas            1.3.3

- pip               21.2.4

- pydantic          1.8.2

- PyJWT             2.1.0

- PyMySQL           1.0.2

- python-multipart  0.0.5

- regex             2021.8.28

- starlette         0.14.2

- uvicorn           0.15.0

  

### Database

- Mysql 
- SQLAlchemy        1.4.25



### Test Id

- 



























신한은행 대출 서비스 자동 문서 분류 시스템 (프로젝트명 미정)
============= 


스토리
----


### 고객

1. 회원 가입 후 로그인을 한다
2. 현재 내가 대출을 어느 정도 까지 받을 수 있는지 조회한다.
3. 다양한 대출 상품을 볼 수 있다.
4. 대출 서류를 제출하면 어느 부분에 정보가 누락됬는지 보여준다.

### 은행 (주기능)

1. 고객이 스캔한 서류들을 분류한다.
2. 분류된 서류를 DB에서 담당 행원을 검색해, fowarding 해준다.
3. OCR 과 같은 기능을 이용해 고객의 자산정보 등 중요 정보를 간편한 형태로 제공한다.

### 확장기능

1. 미기입된 부분 자동적으로 체크
2. 재판, 부동산 등 다양한 분야로 확장성 고려
3. 제출전 미리 체크 → 어느정도 까지 대출이 나올 수 있을지
4. 솔루션화 해서 만들어 놓는다면 어필이 될 것
5. 공공기관용 대출문서
6. 글을 잘 모르는 분들을 위한 서비스

사용 기술
-------

### frontend : Vue.js

https://kr.vuejs.org/v2/guide/index.html

### backend : fast API

https://fastapi.tiangolo.com/ko/

### deep learning backend : tensorflow

https://www.tensorflow.org/?hl=ko

### deep learning model : VGG16

https://velog.io/@dltjrdud37/CNNVGGNet-Tensorflow%EB%A1%9C-%EC%8B%A4%EC%8A%B5

https://deep-eye.tistory.com/41

https://ichi.pro/ko/chobojaleul-wihan-keras-ui-dangyebyeol-vgg16-guhyeon-184940327513708

### datasets : 신한은행 대출 시 심사 서류기반으로 자동 생성

### database : mySQL (고객계정, 은행직원), MongoDB (고객의 서류 정보)

### 사용 패키지 : fastapi, selenium, tensorflow, keras, pandas, numpy, seaborn, svg, python-docx, Ward

### tool : JIRA, GITLAB, anaconda, jupyter nootbook, colab


해야할 것
------- 
1. DB 스키마 정의
![DB 이미지](./img/DB이미지.JPG)

2. UI 디자인

  ### 홈화면

  ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\01_홈화면.png)

  ### 고객

  1. 로그인화면

     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\02_로그인화면.png)

  2. 대출상품화면

     - "서류 제출 전" 화면

     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\03_대출상품화면2.png)

     - "서류 제출 후" 화면

     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\06_대출상품화면(나의조건에맞는).png)

     

  3. 서류제출화면
     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\04_서류제출화면1.png)
     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\05_서류제출화면2.png)

  

  4. 마이페이지

     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\customer\07_마이페이지.png)

  

  

  ### 은행 (주기능)

  1. 행원화면

     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\bank\08_행원화면.png)

  2. 고객정보확인

     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\bank\09_고객정보확인.png)

  3. 제출서류확인
     ![홈화면](C:\Users\multicampus\Documents\PJT2-ai\PJT1\S05P21A205\UI-mockup\bank\10_제출서류확인.png)

  



3. 신한은행의 대출 상품 정보 (금리, 한도, 필요 서류, 조건) 조사
4. 적절한 datasets 생성

QnA
---
문서의 특정 부분만을 인식하려하는데 OCR이나 AI중 어떤 것을 사용한는 것이 나을지 궁금합니다.

학습된 모델을 실제로 사용할 때 workflow 가 어떻게 흘러가는지 궁금합니다. 문서 input -> TF model -> backend -> frontend 순서가 맞나요?

프로젝트를 진행 시 주의해야 할 점 혹은 어려울 것으로 예상되는 부분이 있는지 궁금합니다.



### 감사합니다
