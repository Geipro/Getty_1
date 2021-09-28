<template>
  <div>
    <b-button-group>
      <b-button pill variant="secondary">신용대출</b-button>
      <b-button pill variant="secondary">주택자금대출</b-button>
      <b-button pill variant="secondary">예/적금 담보대출</b-button>
      <b-button pill variant="secondary">MY CAR</b-button>
    </b-button-group>
    <!-- 대출별로 연동되고 고객별로 연동되는것 어려울 듯 -->
    <hr>

    <div class="card text-center mt-5">
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
      <div class="card mt-4">
        <div class="row mb-4">
          <div class="col-2 offset-1 bg-primary">
            <br>
            <br>
            <h3>적합</h3>
          </div>
          <div class="col-8">
            <div class="card-body">
              <h5 class="card-title">김싸피 고객님</h5>
              <p class="card-text">싹편한 직장인 대출 상품 신청</p>
              <router-link :to="{ name: 'UserCheck' }" class="pa-5 btn btn-primary btn-sm">
                고객정보 확인
              </router-link>
              <router-link :to="{ name: 'FileCheck' }" class="pa-5 btn btn-danger btn-sm offset-1">
                제출서류 확인
              </router-link>
            </div>
          </div>
        </div>
        <div class="row mb-4">
          <div class="col-2 offset-1 bg-danger">
            <br>
            <br>
            <h3>부적합</h3>
          </div>
          <div class="col-8">
            <div class="card-body">
              <h5 class="card-title">이싸피 고객님</h5>
              <p class="card-text">싹편한 직장인 대출 상품 신청</p>
              <router-link :to="{ name: 'UserCheck' }" class="pa-5 btn btn-primary btn-sm">
                고객정보 확인
              </router-link>
              <router-link :to="{ name: 'FileCheck' }" class="pa-5 btn btn-danger btn-sm offset-1">
                제출서류 확인
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- pagination -->
    <!-- footer 하단 고정하기  -->
    <footer class="fixed-bottom d-flex justify-content-center align-items-center text-white-50 py-2">
      <nav nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
    </footer>
  </div>

</template>

<script>
export default {
  name: 'LoanCheck',
}
</script>

<style>

</style>
