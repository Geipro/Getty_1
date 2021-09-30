<template>
  <!-- signup box start -->
  <div id="second">
    <div class="myform form">
      <div class="logo mb-3">
        <div class="col-md-12 text-center">
          <h1>Signup</h1>
        </div>
      </div>
      <form 
        @submit.prevent="onSubmit" 
        name="registration"
      >
        <div class="form-group">
          <label for="exampleInputEmail1">이름</label>
          <input type="text"  name="username" v-model="credential.username"
          class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter Username">
        </div>
        <div class="form-group">
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
        </div>
        <div class="form-group">
          <div class="d-flex justify-content-between">
            <label for="exampleInputEmail1">이메일</label>
            <button id="emailCheck" 
              v-if="!duplicate.emailCheck" 
              @click="emailDuplicateCheck" 
              class="border-0 bg-transparent text-primary" 
              v-bind="{ 'disabled' : duplicate.emailCheck }">
              이메일 중복확인
            </button>
            <button id="emailCheck"
              v-if="duplicate.emailCheck"
              class="border-0 bg-transparent text-success" disabled>
              중복확인 완료
            </button>
          </div>
          <input type="email" name="email" v-validate="'required|email'" v-model="credential.email" data-vv-as="Email"
          class="form-control" :class="{error: errors.has('email')}"  id="email" aria-describedby="emailHelp" placeholder="Enter email">
          <span class="error" v-if="errors.has('email')">{{errors.first('email')}}</span>
        </div>
        <!-- 생년월일 -->
        <div class="form-group mr-3 mb-4 col-md-12">
          <div class="d-flex justify-content-between mr-3 ml-3">
            <label for="exampleInputBirthday">출생연도</label>
            <div class="row_fluid">
              <div class="float-left">
                <span class="ps_box">
                  <select
                  id="mm"
                  class="form-select form-select-sm"
                  v-model="signup.yyyy"
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
                  v-model="signup.mm"
                  @focus="checkFlag = false"
                  >
                    <option value="">1</option>
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
              <div class="float-left ml-3 mr-3">
                <span class="form-select">
                  <select
                  id="dd"
                  class="selectpicker"
                  v-model="signup.dd"
                  @focus="checkFlag = false"
                  >
                    <option value="">1</option>
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
        <div class="form-group">
          <label for="exampleInputEmail1">전화번호</label> 
          <input type="tel" name="phone" v-validate="'digits:11'" v-model="credential.phoneNum" data-vv-as="PhoneNumber"
          class="form-control" :class="{error: errors.has('phone')}" id="phone" aria-describedby="phoneHelp" placeholder="01012345678">
        </div>
        <div class="form-group">
          <label for="">Password</label>
          <input type="password" ref="password" name="password" v-validate="'required|min:6'" v-model="credential.password" data-vv-as="Password"
          class="form-control" :class="{error: errors.has('password')}"  id="password" aria-describedby="password" placeholder="Enter Password">
          <span class="error" v-if="errors.has('password')">{{errors.first('password')}}</span>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Password Confirmation</label>
          <input type="password" name="passwordConfirmation" v-validate="'confirmed:password'" v-model="credential.passwordConfirmation" data-vv-as="Password Confirmation"
          class="form-control" :class="{error: errors.has('passwordConfirmation')}"  id="passwordConfirmation" aria-describedby="passwordConfirmationHelp" placeholder="Enter Password One More">
          <span class="error" v-if="errors.has('passwordConfirmation')">{{errors.first('passwordConfirmation')}}</span>
        </div>
        <div class="col-md-12 text-center mb-3">
          <button type="submit" @click="signup" class=" btn btn-block mybtn btn-primary tx-tfm">Get Started!</button>
        </div>
        <div class="col-md-12 ">
          <div class="form-group">
              <p class="text-center"><a href="#" @click="login">Already have an account?</a></p>
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

ko.messages.email = (field) => `${field}은/는 올바른 이메일 형식이어야 합니다.`
ko.messages.required = (field) => `${field}이/가 필요합니다.`

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
      userinfo:{
        name:'',
        id:'',
        password:'',
        born:'',
        sex:'',
        salary:'',
        phoneNum:''
      },
      credential: {
        username: null,
        nickname: null,
        email: null,
        phoneNum: null,
        password: null,
        passwordConfirmation: null,
      },
      duplicate: {
        emailCheck: false,
        nicknameCheck: false
      },
      signup: {
                    // id: this.propSignup.id,
                    // password: this.propSignup.password,
                    // pwhint: this.propSignup.pwhint,
                    // pwhintans: this.propSignup.pwhintans,
                    name: "",
                    yyyy: "",
                    mm: "",
                    dd: "",
                    gender: "",
                    email: "",
                    address: "",
                    phoneNum: "",
                },
          genderList: [
          {
            value: "M",
            text: "남성",
          },
          {
            value: "F",
            text: "여성",
          },
        ],
        yyyyList: [],
        mmlist: [],
        ddlist: [],
    };
  },
  created() {
  // console.log(this.$store.state.todos.list[0]);
    const nowYear = new Date().getFullYear();
    for (let i = 1; i < 100; i++) {
      let date = nowYear - i;
      this.yyyyList.push({ value: date, text: date });
    }
    for (let i = 2; i < 13; i++) {
      this.mmlist.push({
        value: i,
        text: i,
      });
    }
    var day = 31;
    // 나중에 달을 선택하면 이 변화에 따라 이 함수를 실행하도록 바꿔야 함.
    if(this.signup.mm == 1 || this.signup.mm == 3 || this.signup.mm == 5 || this.signup.mm == 7 || this.signup.mm == 8 || this.signup.mm == 10 || this.signup.mm == 12){
      day = 31;
    }else if(this.signup.mm == 2){
      day = 29;
    }else{
      day = 30;
    }
    
    for(let i = 2; i < day + 1; i++){
      this.ddlist.push({
        value:i,
        text:i
      })
    }
  },

  methods: {
    change: function () {
      this.$emit('change')
    },

    login:function(){
      this.$emit('login')
    },

    onSubmit() {
      this.$validator.validateAll()

      if (!this.errors.any()) {
          return true
        }
    },

    nicknameDuplicateCheck() {
      axios({
        method: 'get',
        url: `${VUE_APP_SERVER_URL}:8000/api/auth/checkNickname/${this.credential.nickname}`,
        data: this.credential.nickname
      })
        .then((res) => {
          if (!res.data) {
            this.duplicate.nicknameCheck = true
            alert('닉네임 중복체크 완료!')
          }
          else {
            alert('다른 닉네임을 입력해주세요!')
          }
        })
    },
    
    emailDuplicateCheck() {
      axios({
        method: 'get',
        url: `${VUE_APP_SERVER_URL}:8000/api/auth/checkEmail/${this.credential.email}`,
      })
        .then((res) => {
          if (!res.data) {
            this.duplicate.emailCheck = true
            alert('이메일 중복체크 완료!')
          }
          else {
            alert('다른 이메일을 입력해주세요!')
          }
        })
    },

    signupCheck() {
      console.log(this.passwordConfirmation)
      if (this.onSubmit()) {
        if (this.credential.passwordConfirmation) {
          if (this.duplicate.nicknameCheck) {
            if (this.duplicate.emailCheck) {
              axios({
                method: 'post',
                url: `${VUE_APP_SERVER_URL}:8000/api/auth/signup`,
                data: this.credential
              })
                .then((res) => {
                  console.log(res)
                  alert('회원가입이 완료되었습니다~!')
                  this.login()
                })
            }
            else {
              alert('이메일 중복체크를 완료해주세요!')
            }
          }
          else {
            alert('닉네임 중복체크를 완료해주세요!')
          }
        } else {
          alert('비밀번호를 한번 더 입력해주세요!')
        }
      }
    }
  }
}

</script>

<style>
@import url('https://unpkg.com/semantic-ui-css@2.2.9/semantic.css');

</style>