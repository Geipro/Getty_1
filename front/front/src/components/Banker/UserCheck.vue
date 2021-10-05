<template>
  <div>
    <BankerNavbar />
    <div class="row mt-3">
      <h3 class="col-5">고객정보확인</h3>
    </div>
    <!-- 고객데이터 table -->
    <div  class="row mt-3">
      <table class="table offset-1 col-10 ">
        <tbody>
          <tr>
            <th scope="row" class="table-active col-3">이름</th>
            <!-- <td>{{ userinfo.user_name }}</td> -->
            <td>이름</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">연락처</th>
            <!-- <td>{{ userinfo.phone_number }}</td> -->
            <td>연락처</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">주소</th>
            <td>주소</td>
            <!-- <td>{{ userinfo.address }}</td> -->
          </tr>
          <tr>
            <th scope="row" class="table-active">직장/직무</th>
            <!-- <td>{{ userinfo.job }}</td> -->
            <td>직장</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">소득규모</th>
            <!-- <td>{{ userinfo.salary }}</td> -->
            <td>소득규모</td>
          </tr>
        </tbody>
      </table>
    </div>
    <hr style="border: solid 1px grey; width: 85%">
    <div class="row mt-5">
      <h5 class="col-5">대출신청한 상품</h5>
    </div>
    <div class="row">
      <h6 class="col-3 offset-2">1. 싹편한 직장인대출</h6>
      <router-link :to="{ name: 'FileCheck' }" class="pa-5 btn btn-danger btn-sm">
        제출서류 확인
      </router-link>
      <!-- <a href="#" class="btn btn-primary btn-sm col-1 offset-1">적합판정</a> -->
      <!-- <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown button
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </div> -->
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
import axios from 'axios';

export default {
  name: 'UserCheck',
  components: {
    BankerNavbar,
  },
  data: function () {
    return {
      userdata:{
        user_name:'',
        loan_name:'',
        lid:'',
        cid:'',
        is_suitable: "",
      },
    };
  },
  mounted(){
    axios({
      method: 'get',
      url: 'http://j5a205.p.ssafy.io/loan/user/list',
    })
    .then((res) =>{
      console.log(res.data)
      // this.userdata = res.data.user
    }).catch((err) =>{
      console.log(err)
    })
  },
}
</script>

<style>

</style>
