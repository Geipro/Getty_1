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
        <div class="container">
          <div class="text-center mt-5 pb-2">
            <div class="custom-file form-check form-check-inline mb-5">
              <div class="float-left text-right col-md-5">
                <b-button class="btn btn-warning btn-lg text-light" v-if="hasFile">서류 확인하기</b-button>
                <b-button class="btn btn-warning btn-lg text-light" v-else>서류 제출하기</b-button>
              </div>
              <div class="float-right text-left col-md-7">
                <div class="text-left">
                  <h6>서류를 무작위로 제출하여</h6>
                </div>
                <div class="text-left">
                  <h5 class="ml-5">"나의 조건"에 맞는 대출상품을 확인해보세요!</h5>
                </div>
              </div>
            </div>
          </div>
          <div class="logo md-5 mb-5 text-left">
              <h1>★ 신용 대출 상품</h1>
          </div>
          <div v-for="(item, idx) in this.loanlist"
          :key="idx"
          :value="item.value">
              <div class="text-left">
                <div class="text-secondary">
                    <h6 calss="text-secondary">인터넷 | 모바일 | 영업점</h6>
                </div>
                <div class="mt-3">
                    <h2> {{ item.loan_name }}</h2>
                </div>
                <br>
                <div>
                    <h5>지정업체에 재직중인 직장인에게 한도와 금리를 우대해드리는 신용대출</h5>
                </div>
                <div class="row">
                  <b-button pill variant="secondary" class="text-left ml-3">
                      대출조건>
                  </b-button>
                  <router-link :to="{ name: 'ProductApply' }" class="pa-5 mr-2 btn btn-primary btn-md offset-8">
                    신청하기
                  </router-link>
                  <b-button variant="dark" class="mr-2 ml-1">
                      상세보기
                  </b-button>
                  <b-button variant="secondary" class="ml-1">
                      ♡
                  </b-button>
                </div>
            </div>
          <hr>
          </div>
      </div>
    </div>
</template>

<script>
//  1. mounted에서 해당 페이지가 열릴 때 데이터에서 상품 목록들을 가져옴.
//  2. 가져온 상품 목록 데이터를 for문으로 Product.vue에 넘겨줌
//      => 이전 프로젝트 프로필카드 참고하기.
//  3. 넘긴 데이터를 형식에 맞게 가져와서 for문으로 출력 및 페이지네이션?   => 배운 페이지네이션은 SPring에서 하는거엿는데 찾아보기.
//import Product from '@/components/User/Product.vue'
import Navbar from '@/components/MainPage/Navbar.vue'
import axios from 'axios';

export default {
    name: 'LoanList',
    components: {
        //Product,
        Navbar,
//        axios
    },
    data: function(){
      return{
        loanlist: [],
        hasFile : false
      }
    },
    created(){
      /*
      axios({
        method: 'get',
        url: 'http://j5a205.p.ssafy.io/
      })
      */
    },
    mounted(){
      axios({
        method: 'get',
        url: `http://j5a205.p.ssafy.io/read_loan`,
      }).then((res) => {
        this.loanlist = res.data
      }).catch((err) => {
        console.log(err.headers)
      })
    },
    methods:{

    }
}
</script>
