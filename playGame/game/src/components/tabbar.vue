<template>
  <div>
    <nav class="mui-bar mui-bar-tab">
      <router-link class="mui-tab-item  mui-active" @click.native="alive"  to="/index">
        <span class="mui-icon mui-icon-home"></span>
        <span class="mui-tab-label">首页</span>
      </router-link>
      <router-link class="mui-tab-item "   @click.native="alive" to="/dyGame">
        <span class="mui-icon mui-icon-extra mui-icon-extra-gold"></span>
        <span class="mui-tab-label">网游</span>
      </router-link>
      <router-link class="mui-tab-item"   @click.native="alive" to="/stand">
        <span class="mui-icon mui-icon-extra mui-icon-extra-grech"></span>
        <span class="mui-tab-label">单机</span>
      </router-link>
      <router-link class="mui-tab-item"   @click.native="alive" to="/class">
      <span class="mui-icon mui-icon-extra mui-icon-extra-class"></span>
      <span class="mui-tab-label">分类</span>
      </router-link>
      <router-link class="mui-tab-item"  @click.native="alive" to="/top">
        <span class="mui-icon mui-icon-extra mui-icon-extra-like"></span>
        <span class="mui-tab-label">排行</span>
      </router-link>
    </nav>
  </div>
</template>

<script>
  export default {
    data:function(){
      return {}
    },
    methods: {
      alive(e){
        var tab=e.target.parentElement;
        var xiong=tab.parentElement.children;
        for(var i=0;i<xiong.length;i++){
          xiong[i].classList.remove("mui-active");
        }
        tab.classList.add("mui-active");
      }
    }
  }
</script>

<style scoped>

</style>