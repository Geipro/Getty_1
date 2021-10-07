<template>
<div>
  <div class="row" v-if="!isLogin">
    <router-link :to="{ name: 'About' }" class="pa-5 btn btn-warning offset-3" style="height: auto">
      <h4 class="content" style="text-align:center">
        <b-icon class="float-left" font-scale="2" icon="box-arrow-in-right" style="text-align:center" aria-hidden="true"></b-icon><br>
        <br>뱅킹 로그인</h4>
    </router-link>
    <div class="col ml-5">
      <h3 class="mb-4 text-center w-50">싸피 은행의 대출 추천 상품을 소개합니다.</h3>
      <ul class="align-items-center text-center list-group list-group-horizontal">
        <li class="list-group-item">
          <h5 style="color: blue">싹편한 언택트 대출</h5><br>
          365일 언제 어디서나<br>
          내가 필요한 시점에 신청
        </li>
        <li class="list-group-item">
          <h5 style="color: blue">싹편한 전세 대출</h5><br>
          온라인으로 한도 확인하고<br>
          실제 대출 여부 선택 가능
        </li>
        <li class="list-group-item">
          <h5 style="color: blue">싸피주택대출</h5><br>
          최대 30년까지 분할상환<br>
          가능한 담보대출
        </li>
      </ul>
    </div>
  </div>
  <div class="row" v-if="isLogin">
    <div class="col ml-5">
      <h3 class="mb-4 text-center">싸피 은행의 대출 추천 상품을 소개합니다.</h3>
      <ul class="align-items-center text-center list-group list-group-horizontal offset-4">
        <li class="list-group-item">
          <h5 style="color: blue">싹편한 언택트 대출</h5><br>
          365일 언제 어디서나<br>
          내가 필요한 시점에 신청
        </li>
        <li class="list-group-item">
          <h5 style="color: blue">싹편한 전세 대출</h5><br>
          온라인으로 한도 확인하고<br>
          실제 대출 여부 선택 가능
        </li>
        <li class="list-group-item">
          <h5 style="color: blue">싸피주택대출</h5><br>
          최대 30년까지 분할상환<br>
          가능한 담보대출
        </li>
      </ul>
    </div>
	</div>
</div>
</template>

<script>
export default {
    name: 'MainPageBottom',
    data: function () {
    return {
      isLogin: false,
    }
  },
  methods: {
  },
  created: function () {
    const token = localStorage.getItem('Token')
    if (token != null) {
      this.isLogin = true
    }
  }
}
</script>

<style>
.content {
    /* background: #f2f2f2; */
    padding: 50px;
    text-align: center;
    display: table-cell;
    vertical-align: middle;
}
</style>
