<template>
  <nav class="navbar navbar-expand-lg navbar-success bg-light">
  <div class="container-fluid">
    <div class="offset-5">
      <img src="@/assets/logo.png" style="width:70px"> 싸피은행
    </div>
  </div>
  <br>
</nav>
</template>

<script>
export default {
  name: 'BankerNavbar',
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
