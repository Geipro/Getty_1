<template>
  <nav class="navbar navbar-expand-lg navbar-success bg-primary">
  <div class="container-fluid">
    <div style="color: white">
      <router-link :to="{ name: 'Home' }">
        <img src="@/assets/logo.png" style="width:70px">
      </router-link>
      <!-- 싸피은행 -->
    </div>
    <!-- 없어도 될 듯 -->
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <!-- localstorage 에 id, token 있는지 확인해서 만들기-->
      <span v-if="isLogin">
        <ul class="navbar-nav">
          <li class="nav-item">
            <router-link :to="{ name: 'LoanList' }" class="text-light nav-link">금융서비스</router-link>
          </li>
          <li class="nav-item">
            <router-link @click.native="logout" to="#" class="text-light nav-link" text-decoration: none>Logout</router-link>
          </li>
        </ul>
      </span>
      <span v-else>
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
      </span>
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
  },
  data: function () {
    return {
      isLogin: false,
    }
  },
  methods: {
    logout: function () {
      this.isLogin = false
      localStorage.removeItem('Token')
      localStorage.removeItem('ID')
      this.$router.push({ name: 'Home'})
    },
  },
  created: function () {
    const token = localStorage.getItem('Token')
    if (token != null) {
      this.isLogin = true
    }
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
