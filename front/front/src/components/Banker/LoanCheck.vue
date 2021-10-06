<template>
  <div>
    <b-button pill variant="secondary" class="mr-1">신용대출</b-button>
    <hr>
    <!-- <b-button-group>
      <b-button pill variant="secondary" class="mr-1">주택자금대출</b-button>
      <b-button pill variant="secondary" class="mr-1">예/적금 담보대출</b-button>
      <b-button pill variant="secondary" class="mr-1">MY CAR</b-button>
    </b-button-group> -->
    <!-- 대출별로 연동되고 고객별로 연동되는것 어려울 듯 -->

    <div class="card text-center mt-5">
      <div class="card-header row">
        <ul class="nav nav-tabs card-header-tabs">
          <li class="nav-item">
            <a class="nav-link active" aria-current="true" href="#">신청 고객</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#">적합 대상</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">부적합 대상</a>
          </li>
        </ul>
      </div>

      <div v-for="(product, index) in loanlist" :key="index">
        <div class="card mt-4">
          <div class="row mb-4">
          <div v-if="product.is_suitable == '부적합 판정'" class="col-2 offset-1 bg-danger">
          <!-- <span v-if="product.is_suitable == '부적합'" class="col-2 offset-1 bg-danger"> -->
          <!-- <div class="col-2 offset-1 bg-primary"> -->
            <br>
            <br>
              <h3 style="color:white">{{ product.is_suitable }}</h3>
          </div>
            <div v-else>
                <h3 class="col-2 offset-1 bg-primary" style="color:white">{{ product.is_suitable }}</h3>
            </div>
          </div>
          <div class="col-8">
            <div class="card-body">
              <h5 class="card-title">{{ product.user_name }} 고객님</h5>
              <p class="card-text">{{ product.loan_name }} 상품 신청</p>
              <router-link :to="{ name: 'UserCheck' }" class="pa-5 btn btn-primary btn-sm">
                고객정보 확인
              </router-link>
              <router-link :to="{ name: 'FileCheck' }" class="pa-5 btn btn-danger btn-sm offset-1">
                제출서류 확인
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>

    <!-- pagination -->
    <!-- footer 겹쳐서 제외 우선순위가 낮아서 일단 제외 -->
    <!-- footer 하단 고정하기  -->
    <!-- <footer class="fixed-bottom d-flex justify-content-center align-items-center text-white-50 py-2">
      <nav nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
    </footer> -->


</template>

<script>
import axios from 'axios';

export default {
  name: 'LoanCheck',
   data: function () {
    return {
      loanlist:[],
    }
  },
  mounted(){
    axios({
      method: 'get',
      url: 'http://j5a205.p.ssafy.io/loan/user/list',
    })
    .then((res) =>{
      this.loanlist = res.data
      // console.log(this.loanlist)
    }).catch((err) =>{
      console.log(err)
    })
  },
}

</script>

<style>
.card-horizontal {
    display: flex;
    flex: 1 1 auto;
}

</style>
