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
    <br>
    <div class="card text-center">
      <div class="card-header">
        <ul class="nav nav-tabs card-header-tabs">
          <li class="nav-item">
            <a class="nav-link active" aria-current="true" href="#">Active</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li>
        </ul>
      </div>
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'LoanCheck',
}
</script>

<style>

</style>
