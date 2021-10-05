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
        <div class="container">
            <div class="logo md-5 mb-5 text-left">
                <h1>★ 나의 서류 제출하기</h1>
            </div>
        </div>
    </div>
</template>