<template>
  <div class="h-100" id="app">
    <!-- <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
    </div> -->
    <router-view/>
    <footer class="fixed-bottom d-flex justify-content-center align-items-center text-white-50 bg-secondary py-4">
      <div>
        <!-- <p class="m-0">고객센터 1599-8000</p> -->
        <h4 class="m-2">고객센터 1599-8000</h4>
        <p class="m-0">&copy;SSAFY BANK. All rights reserved</p>
      </div>
        <p class="m-2"> 평일 09:00 ~ 18:00 (은행휴무일 제외)</p>
    </footer>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
