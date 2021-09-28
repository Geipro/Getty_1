<template>
  <div class="home container">
    <Navbar />
    <MainPageCenter />
    <MainPageBottom />
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue'
import MainPageCenter from './components/MainPageCenter.vue'
import MainPageBottom from './components/MainPageBottom.vue'

export default {
  name: 'Home',
  components: {
    Navbar,
    MainPageCenter,
    MainPageBottom
  }
}
</script>

