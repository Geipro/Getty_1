<template>
  <!-- signup box start -->
  <div class="text-center row h-80 align-items-center" id="second">
    <div class="myform form col-md-4 mx-auto">
      <div class="logo mb-3">
        <div class="col-md-12 text-center mt-1">
          <h1>Signup</h1>
        </div>
      </div>
      <form 
        @submit.prevent="onSubmit" 
        name="registration"
      >
        <div class="text-left form-group justify-content-between">
          <label for="username">이름</label>
          <input type="text"  name="username" v-model="userinfo.name"
          class="form-control" id="username" aria-describedby="nameHelp" placeholder="Enter Username">
          <span class="error" v-if="errors.has('name')">{{errors.first('name')}}</span>
        </div>
        <!-- <div class="form-group">
          <div class="d-flex justify-content-between">
            <label for="exampleInputEmail1">닉네임</label> 
            <button id="nicknameCheck" 
              v-if="!duplicate.nicknameCheck" 
              @click="nicknameDuplicateCheck" 
              class="border-0 bg-transparent text-primary" 
              v-bind="{ 'disabled' : duplicate.nicknameCheck }">
              닉네임 중복확인
            </button>
            <button id="nicknameCheck"
              v-if="duplicate.nicknameCheck"
              class="border-0 bg-transparent text-success" disabled>
              중복확인 완료
            </button>
          </div>
          <input type="text"  name="nickname" v-model="credential.nickname"
          class="form-control" id="nickname" aria-describedby="nicknameHelp" placeholder="Enter Nickname">
        </div> -->
        <div class="form-group">
          <div class="d-flex justify-content-between">
            <label for="id">아이디</label>
            <!-- <button id="emailCheck" 
              v-if="!duplicate.emailCheck" 
              @click="emailDuplicateCheck" 
              class="border-0 bg-transparent text-primary" 
              v-bind="{ 'disabled' : duplicate.emailCheck }">
              이메일 중복확인
            </button> -->
            <!-- <button id="emailCheck"
              v-if="duplicate.emailCheck"
              class="border-0 bg-transparent text-success" disabled>
              중복확인 완료
            </button> -->
          </div>
          <input type="id" name="id" v-validate="'required'" v-model="userinfo.id" data-vv-as="ID"
          class="form-control" :class="{error: errors.has('id')}"  id="id" aria-describedby="IdHelp" placeholder="Enter ID">
          <span class="error" v-if="errors.has('id')">{{errors.first('id')}}</span>
          <!-- <input type="email" name="email" v-validate="'required|email'" v-model="credential.email" data-vv-as="Email"
          class="form-control" :class="{error: errors.has('email')}"  id="email" aria-describedby="emailHelp" placeholder="Enter email">
          <span class="error" v-if="errors.has('email')">{{errors.first('email')}}</span> -->
        </div>


        <!-- 생년월일 -->
        <div class="col-md-12"></div>
          <div class="form-group mb-3">
            <div class="text-left justify-content-between">
              <label for="exampleInputBirthday">출생연도</label>
              <div class="row_fluid">
                <div class="float-left">
                  <span class="">
                    <select
                    id="yy"
                    class="form-select form-select-sm"
                    v-model="userinfo.year"
                    @focus="checkFlag = false"
                    >
                      <option value="">2021</option>
                      <option
                      v-for="(item, index) in yyyyList"
                      :key="index"
                      :value="item.value"
                      >
                      {{ item.text }}
                      </option>
                    </select>
                  </span>
                  년
                </div>
                <div class="float-left mr-3 ml-3">
                  <span class="form-select">
                    <select
                    id="mm"
                    class="selectpicker"
                    v-model="userinfo.month"
                    @focus="checkFlag = false"
                    >
                      <option value="01">01</option>
                      <option
                      v-for="(item, index) in mmlist"
                      :key="index"
                      :value="item.value"
                      >
                      {{ item.text }}
                      </option>
                    </select>
                  </span>
                  월
                </div>
                <div class="float-left mr-3">
                  <span class="form-select">
                    <select
                    id="dd"
                    class="selectpicker"
                    v-model="userinfo.day"
                    @focus="checkFlag = false"
                    >
                      <option value="01">01</option>
                      <option
                      v-for="(item, index) in ddlist"
                      :key="index"
                      :value="item.value"
                      >
                        {{ item.text }}
                      </option>
                    </select>
                  </span>
                  일
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="form-group text-left">
            <label for="sex">성별</label><br> 
            <label class="radio is-inline" v-for="sex in sexs" :key="sex">
              <input type="radio" :value="sex" class="radio-input" v-validate="'required'" data-vv-as="성별" v-model="userinfo.sex" name="sex">
              <span class="radio-label mr-3"> {{ sex }} </span>
            </label>
            <br>
            <span class="error" v-if="errors.has('sex')">{{errors.first('sex')}}</span>
          </div>

          <!-- <div class="form-group text-left">
            <label for="inlineRadio">성별</label><br> 
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sex" id="inlineRadio1" value="man" v-model="userinfo.sex">
                <label class="form-check-label" for="inlineRadio1">남성</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sex" id="inlineRadio2" value="woman" v-model="userinfo.sex">
                <label class="form-check-label" for="inlineRadio2">여성</label>
              </div>
          </div> -->


        <div class="form-group text-left">
          <label for="phone">전화번호</label> 
          <input type="tel" name="phone" v-validate="'required|digits:11'" v-model="userinfo.phoneNum" data-vv-as="전화번호"
          class="form-control" :class="{error: errors.has('phone')}" id="phone" aria-describedby="phoneHelp" placeholder="01012345678">
          <span class="error" v-if="errors.has('phoneNumber')">{{errors.first('phoneNumber')}}</span>
        </div>
        <div class="form-group text-left">
          <label for="salary">연봉(단위 : 만 원)</label> 
          <input type="digit" name="salary" v-model="userinfo.salary" data-vv-as="연봉" v-validate="'required'"
          class="form-control" :class="{error: errors.has('salary')}" id="salary" aria-describedby="salaryHelp" placeholder="ex) 4500(만원)">
          <span class="error" v-if="errors.has('salary')">{{errors.first('salary')}}</span>
        </div>
        <div class="form-group text-left">
          <label for="password">Password</label>
          <input type="password" ref="password" name="password" v-validate="'required|min:6'" v-model="userinfo.password" data-vv-as="Password"
          class="form-control" :class="{error: errors.has('password')}"  id="password" aria-describedby="password" placeholder="Enter Password">
          <span class="error" v-if="errors.has('password')">{{errors.first('password')}}</span>
        </div>
        <div class="form-group text-left">
          <label for="passwordConfirmation">Password Confirmation</label>
          <input type="password" name="passwordConfirmation" v-validate="'confirmed:password'" v-model="userinfo.passwordConfirmation" data-vv-as="Password Confirmation"
          class="form-control" :class="{error: errors.has('passwordConfirmation')}"  id="passwordConfirmation" aria-describedby="passwordConfirmationHelp" placeholder="Enter Password One More">
          <span class="error" v-if="errors.has('passwordConfirmation')">{{errors.first('passwordConfirmation')}}</span>
        </div>
        <div class="text-center mb-3">
          <button type="submit" @click="signupCheck" class=" btn btn-block mybtn btn-primary tx-tfm">Get Started!</button>
        </div>
        <div class="col-md-12 ">
          <div class="form-group">
            <p class="text-center"><router-link  :to="{ name: 'About' }"><a>Already have an account?</a> </router-link> </p>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!-- signup box end -->
</template>

<script>
import Vue from 'vue'
import axios from 'axios'

// const AUTH_SERVER_URL = process.env.VUE_APP_SERVER_URL

import VeeValidate from 'vee-validate';
import ko from 'vee-validate/dist/locale/ko.js'

const VUE_APP_SERVER_URL = process.env.VUE_APP_SERVER_URL
ko.messages.required = (field) => `${field} 이/가 필요합니다.`

ko.messages.password = (field) => `${field}는 최소 6글자 여야합니다.`
ko.messages.passwordConfirmation = (field) => `${field}는 최소 6글자 여야합니다.`


const config = {
  locale: 'ko',
  dictionary: {
    ko
  }
}

Vue.use(VeeValidate, config)

export default {
  name: 'Signup',

  data: function () {
    return {
      sexs: [
      '남성',
      '여성'
      ],
      userinfo:{
        name:'',
        id:'',
        date:'',
        year: "",
        month: "",
        day: "",
        sex:'',
        salary:'',
        phoneNum:'',
        password:'',
        passwordConfirmation: null
      },
      yyyyList: [],
      mmlist: [],
      ddlist: [],
    };
  },
  created() {
    const nowYear = new Date().getFullYear();
    for (let i = 1; i < 100; i++) {
      let date = nowYear - i;
      this.yyyyList.push({ value: date, text: date });
    }
    for (let i = 2; i < 13; i++) {
      if(i > 9){
        this.mmlist.push({
          value: i,
          text: i,
        });
      }else{
        this.mmlist.push({
          value: '0' + i,
          text: '0' + i,
        });
      }
    }
    for(let i = 2; i < 32; i++){
      if(i > 9){
        this.ddlist.push({
          value:i,
          text:i
        })
      }else{
        this.ddlist.push({
          value:'0' + i,
          text: '0' + i
        })
      }
    }
  },  
  methods: {
    onSubmit() {
      this.$validator.validateAll()
      if (!this.errors.any()) {
          return true
      }
      return false
    },

    // nicknameDuplicateCheck() {
    //   axios({
    //     method: 'get',
    //     url: `${VUE_APP_SERVER_URL}:8000/api/auth/checkNickname/${this.credential.nickname}`,
    //     data: this.credential.nickname
    //   })
    //     .then((res) => {
    //       if (!res.data) {
    //         this.duplicate.nicknameCheck = true
    //         alert('닉네임 중복체크 완료!')
    //       }
    //       else {
    //         alert('다른 닉네임을 입력해주세요!')
    //       }
    //     })
    // },
    
    // emailDuplicateCheck() {
    //   axios({
    //     method: 'get',
    //     url: `${VUE_APP_SERVER_URL}:8000/api/auth/checkEmail/${this.credential.email}`,
    //   })
    //     .then((res) => {
    //       if (!res.data) {
    //         this.duplicate.emailCheck = true
    //         alert('이메일 중복체크 완료!')
    //       }
    //       else {
    //         alert('다른 이메일을 입력해주세요!')
    //       }
    //     })
    // },

    signupCheck() {
      var sumDate = this.userinfo.year
      sumDate = String(sumDate) + String(this.userinfo.month) + String(this.userinfo.day)
      this.userinfo.date = sumDate
      // alert("이름 : " + this.userinfo.name)
      // alert("아이디 : " + this.userinfo.id)
      // alert("생년월일 : " + this.userinfo.year + "년" + this.userinfo.month + "월" + this.userinfo.day + "일")
      // alert("성별 : " + this.userinfo.sex)
      // alert("생년월일2 : " + this.userinfo.date)
      if (this.onSubmit()) {
        if (this.userinfo.passwordConfirmation) {
          axios({
            method: 'post',
            url: `${VUE_APP_SERVER_URL}:8000/api/auth/signup`,
            data: this.userinfo
          }).then((res) => {
            console.log(res)
            alert('회원가입이 완료되었습니다~!')
            this.login()
          }).catch((err) =>{
            alert(err)
          })
        }else {
          alert('비밀번호 확인하여주세요!')
        }
      }
    }
  }
}

</script>

<style>
@import url('https://unpkg.com/semantic-ui-css@2.2.9/semantic.css');

</style>