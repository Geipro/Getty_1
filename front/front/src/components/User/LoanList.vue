<template>
    <div id="first">
        <div class="logo mt-3 md-5 text-left">
            <h1>★ 신용 대출 상품</h1>
        </div>
        <div>
            <Product />
        </div>
        <hr>
        <div>
            <Product />
        </div>
    </div>
</template>

<script>
//  1. mounted에서 해당 페이지가 열릴 때 데이터에서 상품 목록들을 가져옴.
//  2. 가져온 상품 목록 데이터를 for문으로 Product.vue에 넘겨줌
//      => 이전 프로젝트 프로필카드 참고하기.
//  3. 넘긴 데이터를 형식에 맞게 가져와서 for문으로 출력 및 페이지네이션?   => 배운 페이지네이션은 SPring에서 하는거엿는데 찾아보기.
import Product from '@/components/User/Product.vue'
//import axios from 'axios';

export default {
    name: 'List',
    components: {
        Product,
//        axios
    },
    mounted:{

    },
    methods:{

    }
}
</script>