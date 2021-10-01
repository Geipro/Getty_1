<template>
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <!-- <div class="carousel-inner" style="height: 600px"> -->
    <div class="carousel-inner mb-5 mt-3" style="height: mx-auto">
        <div class="carousel-item active">
            <img src="@/assets/loan1.png" class="d-block w-100" alt="...">
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
</div>
</template>

<script>
export default {
    name: 'MainPageCenter',
}
</script>

<style>

</style>
