<template>
  <div class="home video-background">
    <Navbar />
    <MainPageCenter />
    <!-- <div class="video-foreground"> -->
      <iframe width="560" height="315" src="https://www.youtube.com/embed/pQN9rTUBIG8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <!-- </div> -->
    <MainPageBottom />
  </div>
</template>

<script>
import Navbar from '@/components/MainPage/Navbar.vue'
import MainPageCenter from '@/components/MainPage/MainPageCenter.vue'
import MainPageBottom from '@/components/MainPage/MainPageBottom.vue'

export default {
  name: 'Home',
  components: {
    Navbar,
    MainPageCenter,
    MainPageBottom
  }
}
</script>

<style scoped>

</style>
