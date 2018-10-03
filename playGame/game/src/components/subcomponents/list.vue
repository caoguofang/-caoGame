<template>
  <div>
    <div class="title1">
      <p style="color:#fff;margin-top:6px;">
        <span class="mui-icon mui-icon-arrowleft back" @mousedown="back"></span>
        <span @mousedown="back">游戏列表</span>
      </p>
    </div>
    <div  class="box" style="margin-top:42px;">
      <GameList :list="list"></GameList>
    </div>
  </div>
</template>

<script>
  import  GameList from './gameList'
  export default {
    data: function () {
      return {
        list:[]
      }
    },
    created(){
      this.getList();
    },
    methods: {
      getList(){
        this.$http.get('index/gameList').then((result)=>{
          if(result.body.code==1)
            this.list=result.body.msg;
        });
      },
      back(){
    this.$router.go(-1);
  }
    },
    components:{
      GameList
    }
  }
</script>

<style scoped>
  .box{
    padding:15px;
  }
  .title1{
    position:fixed;
    top:0;
    background-color: #3cc068;
    display: block;
    width:100%;
    z-index:1000;
    align-items: center;
  }
</style>
