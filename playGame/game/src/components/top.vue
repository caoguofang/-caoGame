<template>
  <div style="padding:54px 0;">
    <TopControl></TopControl>
    <div class="title" style="z-index: 1000;">
      <p>
        <span class="tActive">单机</span>
        <span>网游</span>
      </p>
      <!--列表-->
      <div class="listTitle">
        <div>
          <button class="active" @click="huan('newGame',$event)">新游榜</button>
          <button @click="huan('downGame',$event)">下载榜</button>
          <button @click="huan('moodsGame',$event)">人气榜</button>
          <button @click="huan('demandGame',$event)">畅销榜</button>
        </div>
      </div>
    </div>
      <router-view></router-view>
  </div>
</template>

<script>
  import TopControl from './subcomponents/topControl'
  import GameList from './subcomponents/topGameList'
  export default {
    data:function(){
      return {
        width:document.documentElement.clientWidth
      }
    },
    computed:{
      titleWidth(){return `width:${this.width*2}px;`}
    },
    methods:{
      huan(table,e){
        var btn = e.target;
        var btns= btn.parentElement.children;
        for(var i=0;i<btns.length;i++){
          btns[i].classList.remove('active');
        }
        btn.classList.add('active');
        this.$router.push('/GameList/' + table );
     }
    },
    components:{
      TopControl
    }
  }
</script>

<style scoped>
  .title{position:fixed;width:100%;background-color: #fff;}
  .title>p:first-child{width:100%;background-color: #eee;display: flex;justify-content: space-around;margin:0;}
  .title>p:first-child>span{width:50%;padding:10px 0;color:#222;text-align: center;}
  div.listTitle{width:100%;margin:10px 0 5px 0;}
  div.listTitle>div{display: flex;justify-content:center;width:100%;}
  div.listTitle>div>button{font-size: 12px;width:20%;border-radius: 0;}
  .tActive{background-color: #fff;color:#4cd964 !important;}
  .active{background-color: #4cd964;border:1px solid #4cd964;color:#fff;}
  .translate{position:absolute;top:41px;transform: translate(150px)}
</style>
