<template>
  <div class="h-100" id="app">
    <router-view/>
    <footer class="fixed-bottom d-flex justify-content-center align-items-center text-white-50 bg-secondary py-4">
      <div class="float-right text-left col-md-7 row">
        <div class="text-left col-4">
          <h5>고객센터 1599-8000</h5>
        </div>
        <div class="col-8">
          <h5>평일 09:00 ~ 18:00 (은행휴무일 제외)</h5>
        </div>
        <div class="text-left">
          <h6>&copy;SSAFY BANK. All rights reserved</h6>
        </div>
      </div>
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
