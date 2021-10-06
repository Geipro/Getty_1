<template>
  <!-- <div class="h-100" id="app"> -->
  <div id="app">
    <section>
      <router-view/>
    </section>




<!-- 3조 참고 -->
    <div class="footer" id="footer">
      <div class="footer-container">
        <div style="display: flex;">
          고객센터 1599-8000
        </div>
      </div>
    </div>









    <!-- 토스 스타일 -->
    <!-- <footer class="p-footer p-footer--dark css-1mm6e6n">
      <div class="p-footer__inner">
        <div class="p-footer__site-group-list">
          <ul class="p-footer__site-group">
            <li>
              <div class="p-footer__site-group-title">
                고객센터 1599-8000
              </div>
            </li>
            <li class="p-footer__site-group-item">평일 09:00 ~ 18:00 (은행휴무일 제외)</li>
            <li class="p-footer__site-group-item">고객센터 1599-8000</li>
          </ul>
        </div>
      </div>
  </footer> -->




    <!-- KB국민은행 스타일 -->
    <!-- <div class="footWrap">
      <div id="FOOTER">
        <div class="foot_area_2015">
          <ul class="nav-fnb">
            <li>고객센터 1599-8000</li>
            <li>평일 09:00 ~ 18:00 (은행휴무일 제외)</li>
            <li>고객센터 1599-8000</li>
          </ul>
        </div>
      </div>
    </div> -->

  </div>
</template>

<style>
/* #app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  min-height: 100vh;
  position: relative;
  width: 100%;
} */
#app {
    font-family: Noto Sans KR,sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    box-sizing: border-box;
    text-align: center;
    color: #2c3e50;
    display: flex;
    flex-direction: column;
    height: 100%;
    position: relative;
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

#footer {
    min-width: 1190px;
}
.footer {
    background-color: #efedf2;
    display: flex;
    justify-content: center;
    padding: 30px 0 30px 0;
}

.footer-container {
    text-align: left;
    width: 1100px;
}

/* footer {
  width: 100%;
  height: 80px;
  bottom: 0px;
  position: absolute;
  border-top: 1px solid #c4c4c4;
  padding-top: 15px;
  color: #808080;
  font-size: 11px;
} */
.css-1mm6e6n {
    background-color: #f9fafb;
    color: #6b7684;
    padding: 50px 40px 50px 40px;
}


.footWrap {
    position: relative;
    border-top: 1px solid #e5e5e5;
    z-index: 50;
}
.foot_area_2015 {
    position: relative;
    width: 980px;
    height: 145px;
    margin: 0 auto;
    padding: 20px 0;
    font-size: 13px;
    color: #333;
}
.nav-fnb {
    margin-left: -9px !important;
}

section {
  padding-bottom: 80px;
}
</style>
