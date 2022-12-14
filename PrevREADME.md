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
