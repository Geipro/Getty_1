<template>
    <div id="first" class="row">
        <div class="mx-auto col-6">
            <div class="myform form">
                <div class="logo mb-3">
                    <h1>Login</h1>
                </div>
                <form action="#" method="post" name="login" class=" form-signin ">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" name="email" v-validate="'required|email'" v-model="credential.email" data-vv-as="Email"
                        class="form-control" :class="{error: errors.has('email')}"  id="email" aria-describedby="emailHelp" placeholder="Enter email">
                        <span class="error" v-if="errors.has('email')">{{errors.first('email')}}</span>
                    </div>
                    <div class="form-group">
                        <label for="">Password</label>
                        <input type="password" ref="password" name="password" v-validate="'required|min:6'" v-model="credential.password" data-vv-as="Password"
                        class="form-control" :class="{error: errors.has('password')}"  id="password" aria-describedby="password" placeholder="Enter Password">
                        <span class="error" v-if="errors.has('password')">{{errors.first('password')}}</span>
                    </div>
                    <div class="text-center">
                        <!--
                        <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm" @click.prevent="getJWT">Login</button>
                        -->
                        <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                    </div>
                    <div class="links">
                        <!--
                        <p class="text-center">Don't have account? <a href="#" id="signup" @click="signup">Sign up here</a></p>
                        -->
                        <p class="member text-center mt-3">
                            <a id="goSignup" @click="signup" href="Signup">  회원가입</a>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
import Vue from 'vue'
//import VueRouter from 'vue-router'

import * as VeeValidate from 'vee-validate';
import ko from 'vee-validate/dist/locale/ko.js'
import axios from 'axios';

ko.messages.email = (field) => `${field}은/는 올바른 이메일 형식이어야 합니다.`
ko.messages.required = (field) => `${field}이/가 필요합니다.`
ko.messages.password = (field) => `${field}는 최소 6글자 여야합니다.`

const VUE_APP_SERVER_URL = process.env.VUE_APP_SERVER_URL

const config = {
    locale: 'ko',
    dictionary: {
        ko
    }
}

Vue.use(VeeValidate, config)

export default {
    name: 'Login',
    data: function () {
        return {
            credential: {
                email: '',
                password: '',
            }
        }
    },
    methods: {
        change: function () {
            this.$emit('change')
        },
        signup: function(){
            this.$emit('signup')
        },
        changePw: function(){
            this.$emit('pw')
        },
        getJWT: function () {
            axios({
                method: 'put',
                url: `${VUE_APP_SERVER_URL}:8000/api/auth/login`,
                data: this.credential
            }).then((res) => {
                // console.log(res)
                localStorage.setItem('nickname', res.data.message)
                localStorage.setItem('JWT_TOKEN', res.data.accessToken)
                alert(`${localStorage.getItem('nickname')} 님 반갑습니다!`)
                this.$router.push({ name: 'User' })
            }).catch((err) => {
                alert("탈퇴한 회원이거나 아이디 혹은 비밀번호가 일치하지 않습니다.")
                console.log(err.headers)
            })
        },
        onSubmit() {
            this.$validator.validateAll()
            if (!this.errors.any()) {
                alert('submit!')
            }
        }
    }
}
</script>
<style>
@import url('https://unpkg.com/semantic-ui-css@2.2.9/semantic.css');
span.error {
    color: #9F3A38;
}
</style>
