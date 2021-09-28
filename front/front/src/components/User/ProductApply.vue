<template>
    <div id="first">
        <div class="logo mt-3 mb-3">
            <h1>★ 대출 신청하기</h1>
        </div>
        <div class="mt-3 mb-3">
            <p class="text-secondary">신청 상품 : </p>
            <!-- 아래는 후에 '신청하기' 버튼 클릭 후 해당하는 이름 전달하기.  -->
            <h3> 싹편한 직장인 대출 </h3>
        </div>
        <div class="mt-3 mb-3">
            <p>01. 대출 대상이 맞는지 확인 진행하겠습니다.</p>
        </div>
        <div class="bg-primary mb-5">
            <!--아마 아래 내용들도 보험 종류에 따라 달라질 듯? -->
            <b-check>만 19세 이상인가요?</b-check><br>
            <b-check>직장인으로 건강보험료를 납부 중이신가요?</b-check><br>
            <b-check>납부한 건강보험료로 추정한 소득이 2,800만원 이상인가요?</b-check><br>
        </div>
        <div class="text-center">
            <b-button class="mr-3" variant="primary">진행하기</b-button>
            <b-button class="ml-3" variant="dark">돌아가기</b-button>
        </div>
    </div>
</template>
    
<script>
    export default {
    
    }
</script>