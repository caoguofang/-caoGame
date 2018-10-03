<template>
  <div class="swipe">
    <mt-swipe :auto="3000" :speed=1000>
      <mt-swipe-item v-for="item in list" :key="item.id">
        <img :src="item.img_url">
      </mt-swipe-item>
    </mt-swipe>
  </div>
</template>

<script>
  export default {
    props:["list"]
  }
</script>

<style scoped>
  div.swipe>.mint-swipe{height:200px;}
  div.swipe>.mint-swipe img{width:100%;height:300px;}
  div.swipe>.mint-swipe>.mint-swipe-items-wrap>.mint-swipe-item{float:left;}
</style>
