<template>
    <div id="first" class="col-md-12 form-group">
        <div class="text-left">
            <div class="text-secondary">
                <h6 calss="text-secondary">인터넷 | 모바일 | 영업점</h6>
            </div>
            <div class="mt-3">
                <h2>싹편한 직장인 대출</h2>
            </div>
            <br>
            <div>
                <h5>지정업체에 재직중인 직장인에게 한도와 금리를 우대해드리는 신용대출</h5>
            </div>
            <div class="row">
              <b-button pill variant="secondary" class="text-left">
                  대출조건>
              </b-button>
              <router-link :to="{ name: 'ProductApply' }" class="pa-5 mr-3 btn btn-primary btn-md offset-8">
                신청하기
              </router-link>
              <b-button variant="dark" class="mr-3">
                  상세보기
              </b-button>
              <b-button variant="secondary">
                  ♡
              </b-button>
            </div>
        </div>
    </div>
</template>

<script>
// 1.데이터를 받아와서 해당 Product.vue가 실행되면, 받아온 데이터를 위 h2~h5까지의 글들은 db로 교체.
// 2.버튼 눌렀을 때 페이지 이동.
    export default {
      name: 'Product',
    }
</script>
