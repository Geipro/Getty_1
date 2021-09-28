<template>
  <nav class="navbar navbar-expand-lg navbar-success bg-info">
  <div class="container-fluid">
    <div class="offset-5">
      <img src="@/assets/logo.png" style="width:70px"> 싸피은행
    </div>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">금융서비스</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">고객센터</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">회사소개</a>
        </li>
      </ul>
    </div>
  </div>
  <br>
</nav>
</template>

<script>
export default {
  name: 'Navbar',
  props: {
    msg: String
  }
}
</script>

<style scoped>
/* h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
} */
</style>
