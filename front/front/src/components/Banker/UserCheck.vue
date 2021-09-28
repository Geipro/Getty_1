<template>
  <div>
    <b-button-group>
      <b-button pill variant="primary">신용대출</b-button>
      <!-- mockup 처럼 회색으로 한 것  -->
      <!-- <b-button pill >신용대출</b-button> -->
      <b-button pill variant="primary">주택자금대출</b-button>
      <b-button pill variant="primary">예/적금 담보대출</b-button>
      <b-button pill variant="primary">MY CAR</b-button>
    </b-button-group>
    <!-- 대출별로 연동되고 고객별로 연동되는것 어려울 듯 -->
    <div class="card text-center">
      <div class="card-header row">
        <ul class="nav nav-tabs card-header-tabs">
          <li class="nav-item">
            <a class="nav-link active" aria-current="true" href="#">신청 고객</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">적합 대상</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">부적합 대상</a>
          </li>
        </ul>
        <!-- 검색 -->
        <form class="d-flex offset-5">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>

      <!-- for문? -->
      <div class="card mb-3" style="max-width: 540px;">
        <div class="row">
          <div class="col-4 bg-primary">
            <br>
            <br>
            <h3>적합</h3>
          </div>
          <div class="col-8">
            <div class="card-body">
              <h5 class="card-title">김싸피 고객님</h5>
              <p class="card-text">싹편한 직장인 대출 상품 신청</p>
              <router-link :to="{ name: '#' }" class="pa-5 btn btn-primary btn-sm">
                고객정보 확인
              </router-link>
              <router-link :to="{ name: '#' }" class="pa-5 btn btn-danger btn-sm">
                제출서류 확인
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</template>

<script>
export default {
  name: 'UserCheck',
}
</script>

<style>

</style>
