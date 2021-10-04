<template>
    <div id="first">
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
      <div class="container text-left">
        <div class="logo mt-5 md-5 mb-5">
            <h1>★ 대출 신청하기</h1>
        </div>
        <div class="mt-3 mb-5 row">
            <p class="text-secondary mr-3">신청 상품 : </p>
            <!-- 아래는 후에 '신청하기' 버튼 클릭 후 해당하는 이름 전달하기.  -->
            <h5> 싹편한 직장인 대출 </h5>
        </div>
        <div class="mt-3 mb-3">
            <p>01. 대출 대상이 맞는지 확인 진행하겠습니다.</p>
        </div>
        <div class="product mb-5">
            <!--아마 아래 내용들도 보험 종류에 따라 달라질 듯? -->
            <b-check class="offset-1">만 19세 이상인가요?</b-check><br>
            <b-check class="offset-1">직장인으로 건강보험료를 납부 중이신가요?</b-check><br>
            <b-check class="offset-1">납부한 건강보험료로 추정한 소득이 2,800만원 이상인가요?</b-check><br>
        </div>
        <div class="text-center">
            <router-link :to="{ name: 'ApplyDetail' }" class="pa-5 mr-3 btn btn-primary btn-md offset-1">
              진행하기
            </router-link>
            <b-button @click="$router.go(-1)" class="ml-3" variant="dark">돌아가기</b-button>
        </div>
      </div>
    </div>
</template>

<script>
import Navbar from '@/components/MainPage/Navbar.vue'

    export default {
      name: 'ProductApply',
      components: {
        Navbar,
    },
  }
</script>

<style>
.product  {
  background-color:	#87CEFA;
}
</style>
