<template>
  <div>
    <Navbar />
    <nav nav class="bg-primary">
      <div style="height: 30px">
        <router-link :to="{ name: 'LoanList' }" class="pa-5" style="color: white">
          신용대출
        </router-link>
        <router-link :to="{ name: 'FileCheck' }" class="pa-5 offset-1" style="color: white">
          주택자금대출
        </router-link>
        <router-link :to="{ name: 'FileCheck' }" class="pa-5 offset-1" style="color: white">
          예/적금 담보대출
        </router-link>
        <router-link :to="{ name: 'FileCheck' }" class="pa-5 offset-1" style="color: white">
          MY CAR
        </router-link>
      </div>
    </nav>
    <div class="row mt-4">
      <h4 class="col-5">마이페이지</h4>
    </div>
    <!-- 고객데이터 table -->
    <div  class="row mt-3">
      <table class="table offset-1 col-5 ">
        <tbody>
          <tr>
            <th scope="row" class="table-active">이름</th>
            <td>Mark</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">연락처</th>
            <td>010-1234-5678</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">주소</th>
            <td>서울특별시 강남구 역삼동 701</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">직장전화번호</th>
            <td>02-1544-9001</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">직장/직무</th>
            <td>싸피금융/SW개발</td>
          </tr>
        </tbody>
      </table>
      <table class="table offset-1 col-4">
        <tbody>
          <tr>
            <th scope="row" class="table-active">신용등급</th>
            <td>2등급 우량신용자</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">자산규모</th>
            <td>554,500,000원 (상위 5%)</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">소득규모</th>
            <td>6500만원/년</td>
          </tr>
        </tbody>
      </table>
    </div>
    <hr style="border: solid 2px grey; width: 85%">
    <div class="row mt-5">
      <h4 class="col-4">제출 서류 확인</h4>
    </div>
    <div  class="row mt-3">
      <table class="table offset-1 col-10">
        <thead>
          <tr class="table-active">
            <th scope="col">No.</th>
            <th scope="col">서류이름</th>
            <th scope="col">파일확인</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row" class="table-active">1</th>
            <td>재직증명서</td>
            <td><button type="button" class="btn btn-warning">확인하기</button></td>
          </tr>
          <tr>
            <th scope="row" class="table-active">2</th>
            <td>소득증명서</td>
            <td><button type="button" class="btn btn-warning">확인하기</button></td>
          </tr>
          <!-- <tr>
            <th scope="row" class="table-active">3</th>
            <td>건강보험자격득실증명서</td>
            <td>건강보험자격득실확인서.pdf</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">4</th>
            <td>건강장기요양보험료 납부확인서</td>
            <td>건강장기요양보험료_납부확인서.pdf</td>
          </tr> -->
        </tbody>
      </table>
    </div>
    <hr style="border: solid 2px grey; width: 85%">

    <div class="row mt-5">
      <h4 class="col-4">신청한 대출 상품</h4>
    </div>
    <div  class="row mt-3">
      <table class="table offset-1 col-10">
        <thead>
          <tr class="table-active">
            <th scope="col">No.</th>
            <th scope="col">대출상품</th>
            <th scope="col">적부판정</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row" class="table-active">1</th>
            <td>재직증명서</td>
            <td><button type="button" class="btn btn-primary">적합</button></td>
          </tr>
          <tr>
            <th scope="row" class="table-active">2</th>
            <td>소득증명서</td>
            <td><button type="button" class="btn btn-danger">부적합</button></td>
          </tr>
          <!-- <tr>
            <th scope="row" class="table-active">3</th>
            <td>건강보험자격득실증명서</td>
            <td>건강보험자격득실확인서.pdf</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">4</th>
            <td>건강장기요양보험료 납부확인서</td>
            <td>건강장기요양보험료_납부확인서.pdf</td>
          </tr> -->
        </tbody>
      </table>
    </div>
    <!-- <div class="row mt-5">
      <router-link :to="{ name: 'BankerLoan' }" class="pa-5 btn btn-secondary btn-sm col-2 offset-5">
        목록
      </router-link>
    </div> -->
  </div>

</template>

<script>
import Navbar from '@/components/MainPage/Navbar.vue'

export default {
  name: 'Mypage',
  components: {
    Navbar,
  }
}
</script>

<style>

</style>

