<template>
    <div id="sumbitPage">
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
                    Y CAR
                </router-link>
            </div>
        </nav>
        <div class="container mt-5">
            <div class="logo md-5 mb-5 text-left">
                <h1>★ 나의 서류 제출하기</h1>
            </div>
            <div>
                <h3 class="text-left">개인정보처리 동의서</h3>
                <hr>
                <div class="mt-1 ml-1 mr-2 mb-1 pt-4 pl-4 pr-4 pb-4 text-left" style="background-color:#f8f8d9">
                    <a class="text-left text-dark pl-3 pt-2 pb-2 pr-3 ">싸피 은행은 개인정보보허법 제 30조에 따라 고객의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 고객의 고층을 원활하게 처리할 수 있도록 다음과 같은 처리 방침을 두고 있습니다.</a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Navbar from '@/components/MainPage/Navbar.vue'
//import axios from 'axios';
export default {
    name: 'SumbitDoc',
    components: {
        //Product,
        Navbar,
//        axios
    },
}
</script>
