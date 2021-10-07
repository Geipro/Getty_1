<template>
  <div>
    <BankerNavbar />
    <div class="row mt-5">
      <h3 class="col-5">고객정보확인</h3>
    </div>
    <!-- 고객데이터 table -->
    <div class="row mt-3">
      <table class="table offset-1 col-10">
        <tbody>
          <tr>
            <th scope="row" class="table-active col-3">이름</th>
            <td>{{ userInfo.user_name }}</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">연락처</th>
            <td>{{ userInfo.phone_number }}</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">직장/직무</th>
            <td>{{ userInfo.job }}</td>
          </tr>
          <tr>
            <th scope="row" class="table-active">소득규모</th>
            <td>{{ userInfo.salary }}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <hr style="border: solid 1px grey; width: 85%" />

    <div class="row mt-5">
      <h5 class="col-4">대출신청한 상품</h5>
    </div>
    <div class="row">
      <h6 class="col-3 offset-1">1. 싹편한 직장인대출</h6>
      <router-link
        :to="{ name: 'FileCheck' }"
        class="pa-5 btn btn-danger btn-sm offset-4 mr-3"
      >
        제출서류 확인
      </router-link>
      <div class="">
        <select class="form-control ml-3" aria-label="Is_Suitable" v-model="checkSuitable" @change="changeSuit">
          <option value="yes">적합 판정</option>
          <option value="no">부적합 판정</option>
        </select>
      </div>
    </div>

    <div class="row mt-3">
      <table class="table offset-1 col-10">
        <thead>
          <tr class="table-active">
            <th scope="col">No.</th>
            <th scope="col">서류내용</th>
            <th scope="col">제출서류</th>
          </tr>
        </thead>
        <tbody>
          <tr
            v-for="(item, idx) in this.userInfo.user_file"
            :key="idx"
            :value="item.value"
            scope="row"
            class="table-active align-self-center align-items-center"
          >
            <th scope="row" class="table-active align-self-center align-items-center">{{ idx + 1 }}</th>
            <td class="align-self-center align-items-center">{{ item.file_name }}</td>
            <b-button variant="gray"  class="btn align-self-center align-items-center" v-on:click="download(item.file_url)">다운로드 받기</b-button>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="row mt-5">
      <b-button variant="primary" class="pa-3 btn col-1 mr-4 offset-5" @click="modify">
        수정
      </b-button>
      <router-link
        :to="{ name: 'BankerLoan' }"
        class="pa-3 btn btn-secondary btn-sm col-1"
      >
        목록
      </router-link>
    </div>
  </div>
</template>

<script>
import BankerNavbar from "@/components/Banker/BankerNavbar.vue";
import axios from "axios";

export default {
  name: "FileCheck",
  components: {
    BankerNavbar,
  },
  data: function () {
    return {
      userInfo: {
        user_name: "",
        loan_name: "",
        lid: "",
        cid: "",
        is_suitable: "",
        phone_number: "",
        address: "",
        job: "",
        salary: "",
        user_file: [],
      },
      checkSuitable:'check',
      send_data :{
        cid : localStorage.getItem("cid"),
        lid : localStorage.getItem("lid"),
        is_suitable : ''
      }
    };
  },
  mounted() {
    console.log(
      `cid, lid : ${localStorage.getItem("cid")}, ${localStorage.getItem(
        "lid"
      )}`
    );
    axios({
      method: "get",
      url: `http://j5a205.p.ssafy.io:3000/detail/user/${localStorage.getItem(
        "cid"
      )}/loan/${localStorage.getItem("lid")}`,
    })
      .then((res) => {
        console.log(res.data);
        this.userInfo.user_name = res.data.user_detail.user_name;
        this.userInfo.loan_name = res.data.user_detail.loan_name;
        this.userInfo.cid = localStorage.getItem("cid");
        this.userInfo.lid = localStorage.getItem("lid");
        this.userInfo.is_suitable = res.data.user_detail.is_suitable;
        this.userInfo.phone_number = res.data.user_detail.phone_number;
        this.userInfo.address = res.data.user_detail.address;
        this.userInfo.job = res.data.user_detail.job;
        this.userInfo.salary = res.data.user_detail.salary;

        res.data.user_files.forEach((element) => {
          this.userInfo.user_file.push(element);
        });

        console.log(this.userInfo.user_file);
      })
      .catch((err) => {
        console.log(err);
      });
  },
  methods: {
    download(url) {
      window.open(url);
    },

    changeSuit(){
      if(this.checkSuitable == "yes"){
        this.send_data.is_suitable = "적합 판정"
      }else if(this.checkSuitable == "no"){
        this.send_data.is_suitable = "부적합 판정"
      }else{
        alert("적합 판정을 선택해주세요! " + this.checkSuitable)
      }
    },
    modify(){
      if(this.send_data != null){
        axios({
          method:"PATCH",
          url:`http://j5a205.p.ssafy.io:3000/user/loan/status`,
          data : this.send_data
        }).then(res =>{
          console.log(res)
          alert("적합 판정이 완료되었습니다!")
        })
      }else{
        alert("적합 판정을 해주셔야 합니다!")
      }
    }
  },
};
</script>

<style>
</style>

