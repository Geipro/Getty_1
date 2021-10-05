<template>
  <div>
    <BankerNavbar />
    <div class="row mt-3">
      <h3 class="col-5">고객정보확인</h3>
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
    <hr style="border: solid 1px grey; width: 85%">

    <div class="row mt-5">
      <h5 class="col-4">대출신청한 상품</h5>
    </div>
    <div class="row">
      <h6 class="col-3 offset-1">1. 싹편한 직장인대출</h6>
      <router-link :to="{ name: 'FileCheck' }" class="pa-5 btn btn-danger btn-sm offset-4">
        제출서류 확인
      </router-link>
      <a href="#" class="btn btn-primary btn-sm col-1 offset-1">적합판정</a>
    </div>


 <div  class="row mt-3">
      <table class="table offset-1">
        <thead>
          <tr class="table-active">
            <th scope="col">No.</th>
            <th scope="col">서류내용</th>
            <th scope="col">제출서류</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row" class="table-active">1</th>
            <td>재직증명서</td>
            <td>싸피금융_재직증명서.pdf</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">2</th>
            <td>소득증명서</td>
            <td>김싸피_소득증명서.pdf</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">3</th>
            <td>건강보험자격득실증명서</td>
            <td>건강보험자격득실확인서.pdf</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">4</th>
            <td>건강장기요양보험료 납부확인서</td>
            <td>건강장기요양보험료_납부확인서.pdf</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="row mt-5">
      <router-link :to="{ name: '#' }" class="pa-3 btn btn-primary btn-sm col-1 mr-4 offset-5">
        수정
      </router-link>
      <router-link :to="{ name: 'BankerLoan' }" class="pa-3 btn btn-secondary btn-sm col-1">
        목록
      </router-link>
    </div>
  </div>

</template>

<script>
import BankerNavbar from '@/components/Banker/BankerNavbar.vue'

export default {
  name: 'FileCheck',
  components: {
    BankerNavbar,
  }
}
</script>

<style>

</style>

