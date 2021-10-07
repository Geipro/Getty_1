<template>
<!-- <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner" style="height: 600px">
    <div class="carousel-inner mb-5" style="height: mx-auto">
        <div class="carousel-item active">
          <router-link :to="{ name: 'LoanList' }" style="height: auto">
            <img src="@/assets/loan1.png" class="d-block w-100" alt="...">
          </router-link>
        </div>
        <div class="carousel-item">
            <img src="@/assets/logo.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="@/assets/fish2.png" class="d-block w-100" alt="...">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div> -->
<div>
  <router-link :to="{ name: 'LoanList' }" style="height: auto">
    <img src="@/assets/loan1.png" class="d-block w-100" alt="...">
  </router-link>

  <!-- test1 : color: #559CDE  -->
  <div style="height: auto; background-color: #559CDE; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1&loop=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>

  <!-- test2 : color: #5ED7E7  -->
  <div style="height: auto; background-color: #5ED7E7; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>

    <!-- test11 : color: 흰색   -->
  <div style="height: auto; text-align: center;">
    <h3 class="pt-5" >복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: grey">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>

  <!-- test3 : color: #CBE6E5  -->
  <div style="height: auto; background-color: #CBE6E5; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test4 : color: #84AFE6  -->
  <div style="height: auto; background-color: #84AFE6; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test5 : color: #B284E6  -->
  <div style="height: auto; background-color: #B284E6; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test6 : color: #46D0FA  -->
  <div style="height: auto; background-color: #46D0FA; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test7 : color: #46D0FA  -->
  <div style="height: auto; background-color: #34E3B4; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test8 : color: #F39C12   -->
  <div style="height: auto; background-color: #F39C12 ; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test9 : color: #F3F35B  -->
  <div style="height: auto; background-color: #F3F35B; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
    <!-- test10 : color: #5DADE2   -->
  <div style="height: auto; background-color: #5DADE2 ; text-align: center;">
    <h3 class="pt-5" style="color: white">복잡한 서류 제출을 내가 원하는 시간에 간편하게</h3>
    <p class="pb-3 pt-3" style="color: white">주말이나 공휴일에도 신청할 수 있습니다.</p>
    <iframe width="900px" height="560px" src="https://www.youtube.com/embed/pQN9rTUBIG8?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>






  <div>
    <img src="https://img.icons8.com/office/300/000000/money--v2.png"/>
    <!-- <iframe src="https://giphy.com/embed/72HahsJD4atSE" width="480" height="360" frameBorder="0" class="giphy-embed" allowFullScreen></iframe> -->
  </div>



</div>


</template>

<script>
export default {
    name: 'MainPageCenter',
}
</script>

<style>

</style>
