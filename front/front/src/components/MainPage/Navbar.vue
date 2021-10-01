<template>
  <nav class="navbar navbar-expand-lg navbar-success bg-primary">
  <div class="container-fluid">
    <div style="color: white">
      <router-link :to="{ name: 'Home' }">
        <img src="@/assets/logo.png" style="width:70px">
      </router-link>

    </div>
    <!-- 없어도 될 듯 -->
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="nav">
        <li class="nav-item">
          <!-- url 변경해야됨 -->
          <a class="nav-link active" aria-current="page" href="http://localhost:8080/loanList" style="color: white">금융서비스</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://www.shinhan.com/hpe/index.jsp#050000000000" style="color: white">고객센터</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://www.shinhan.com/hpe/index.jsp#300000000000" style="color: white">회사소개</a>
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
