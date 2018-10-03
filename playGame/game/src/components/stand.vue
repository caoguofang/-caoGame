<template>
  <div style="padding:54px 0;">
    <TopControl></TopControl>
    <MySwipe :list="sList"></MySwipe>
    <GameList></GameList>
    <ul>
      <li class="active">推荐</li>
      <li>新游</li>
      <li>榜单</li>
    </ul>
    <div class="box">
      <div class="top">
        <span>每日必玩</span>
        <span class="active" @click="willMore">换一换</span>
      </div>
      <div class="willPlay">
        <div class="firstList">
          <div class="willList" v-for="item in willList" @click="goDetail">
            <img :src="item.img_url">
            <span class="title">{{item.title}}</span>
            <span>{{item.family}}|{{item.storage | storage}}M</span>
            <div>下载</div>
          </div>
        </div>
      </div>
    </div>
    <div class="borderS"></div>
    <div class="box">
      <div class="top">
        <span>精品单机</span>
        <span class="active" @click="goList">更多</span>
      </div>
      <GameList :list="list"></GameList>
    </div>
    <div class="borderS"></div>
    <div class="box headline">
      <div class="top">
        <span>头条快讯</span>
        <span class="active">更多</span>
      </div>
      <div>
        <div>
          <img src="http://127.0.0.1:4000/img/desw/sc1.jpg">
          <div>
            <span>《穿越火线：枪战王者 之团战大攻略》</span>
          </div>
        </div>
        <div>
        <img src="http://127.0.0.1:4000/img/desw/w1.png">
        <div>
          <span>《破箭？》王者荣耀—新英雄-破魔之箭伽罗</span>
        </div>
      </div>
      </div>
      <ul>
        <li v-for="item in sList">
          <div>
            <span>攻略</span>
            <span>京东数科两个女生的可能</span>
          </div>
          <span>2018-10-21</span>
        </li>
      </ul>
    </div>
    <div class="loadmore loading" v-if="true">正在加载...</div>
    <div class="loadmore" v-else>数据已经加载完毕...</div>
  </div>
</template>

<script>
  import TopControl from './subcomponents/topControl'
  import GameList from './subcomponents/gameList'
  import MySwipe from './subcomponents/my_swipe';
  export default {
    data:function(){
      return {
        sList:[],
        willList:[],
        willCount:0,
        willPno:3,
        willPageSize:4,
        list:[]
      }
    },
    created(){
      this.getList();
      this.getWillList();
      this.getStandList();
    },
    methods:{
      getList(){
        this.$http.get('stand/sList').then((result)=>{
          if(result.body.code==1){
            this.sList=result.body.msg;
          }
        });
      },
      getWillList(){
        var pno=++this.willPno;
        var pageSize=this.willPageSize;
        this.$http.get('stand/will?pno='+pno+'&pageSize='+pageSize).then((result)=>{
          this.willList=result.body.msg;
          this.willCount=result.body.pageCount;
          var flag=this.willPno<this.willCount;
          if(!flag){
            this.willPno=0;
          }
        });
      },
      willMore(){
        this.getWillList();
      },
      getStandList(){
        this.$http.get('stand/list').then((result)=>{
          if(result.body.code==1){
            this.list=result.body.msg;
          }
        })
      },
      goDetail(){
        this.$router.push('/detail');
      },
      goList(){
        this.$router.push('/list');
      }
    },
    components:{
      TopControl,
      GameList,
      MySwipe
    }
  }
</script>

<style scoped>
  ul{
    list-style: none;
    display: flex;
    width:100%;
    padding:0;
    margin:0;
    background-color: #F4F4F4;
  }
  ul>li{
    width:33.333333%;
    text-align: center;
    padding:10px 0;
  }
  .active{
    background-color: #fff;
    color:#3CC068;
  }
  .box{
    padding:15px;
  }
  div.box>.top{
    display: flex;
    justify-content: space-between;
  }
  .firstList{
    display: flex;
    margin-top:15px;
  }
  .willList{
    display: flex;
    flex-direction: column;
    align-items: center;
    letter-spacing: 1px;
    width:25%;
  }
  .willList  .title{
    width:70%;
    white-space:nowrap;
    overflow:hidden;
    -ms-text-overflow:ellipsis;
    -o-text-overflow:ellipsis;
    text-overflow:ellipsis;
    text-align: center;
  }
  .willList>img{
    width:72px;
    height:72px;
    border-radius: 5px;
    margin-bottom:5px;
  }
  .willList>span{
    color:#ddd;
  }
  .willList>span:nth-child(3){
    font-size: 10px;
  }
  .willList>div{
    color:#3cc068;
    border:1px solid #3cc068;
    padding:3px 15px;
    font-size:12px;
  }
  .headline>div:nth-child(2){
    display: flex;
    justify-content: space-between;
    margin-top:15px;
    width:100%;
  }
  .headline>div:nth-child(2)>div{
    width:49%;
  }
  .headline>div:nth-child(2)>div>img{
    border-radius: 10px;
    width:100%;
    height:100px;
  }
  .headline>ul{
    display:block;
    margin:0;
    padding-top:15px;
    list-style: none;
    width:100%;
    background-color: #fff;
  }
  .headline>ul>li{
    width:100%;
    display: flex;
    justify-content: space-between;
    border-top:1px solid #ddd;
  }
  .headline>ul>li>div>span:first-child{
    display: inline-block;
    background-color: #3cc068;
    color:#fff;
    padding:0 2px;
  }
</style>
