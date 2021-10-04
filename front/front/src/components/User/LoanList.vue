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
          <div class="logo mt-5 md-5 mb-5 text-left">
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
                  <b-button pill variant="secondary" class="text-left">
                      대출조건>
                  </b-button>
                  <router-link :to="{ name: 'ProductApply' }" class="pa-5 mr-3 btn btn-primary btn-md offset-8">
                    신청하기
                  </router-link>
                  <b-button variant="dark" class="mr-3">
                      상세보기
                  </b-button>
                  <b-button variant="secondary">
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
        loanlist: []
      }
    },
    mounted(){
      axios({
        method: 'get',
        url: `http://j5a205.p.ssafy.io/read_loan`,
      }).then((res) => {
        alert("성공")
        this.loanlist = res.data
        console.log(this.loanlist)
      }).catch((err) => {
        console.log(err.headers)
      })
    },
    methods:{

    }
}
</script>
