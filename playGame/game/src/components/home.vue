<template>
  <div style="padding:54px 0;">
    <div class="main-body">
      <TopControl></TopControl>
      <MySwipe :list="swipeList"></MySwipe>
      <div class="container">
        <ul>
          <li class="active">精品</li>
          <li>新游</li>
          <li>专辑</li>
        </ul>
        <div class="box">
          <div class="top">
            <span>编辑精选</span>
            <span class="active" @click="goList">更多</span>
          </div>
          <div>
            <img src="http://127.0.0.1:4000/img/desw/sc1.jpg">
            <img src="http://127.0.0.1:4000/img/desw/w1.png">
          </div>
          <div ref="wrapper" :style="{ height: (wrapperHeight-50) + 'px' }">
            <mt-loadmore  :top-method="loadTop" bottomLoadingText="加载中" bottomPullText="上拉加载更多" :bottom-method="loadBottom" :bottom-all-loaded="allLoaded" ref="loadmore" :autoFill="isAutoFill">
              <GameList :list="List"></GameList>
            </mt-loadmore>
          </div>
          <div class="loadmore" v-if="hasMore==false">数据已经加载完毕...</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import TopControl from './subcomponents/topControl'
  import MySwipe from './subcomponents/my_swipe'
  import GameList from './subcomponents/gameList'
  export default {
    data:function(){
      return {
        swipeList:[],
        List:[],
        pno:0,
        pageSize: 8,
        pageCount:0,
        hasMore:true,
        wrapperHeight: 0,
        allLoaded: false,
        //是否自动触发上拉函数
        isAutoFill:false
      }
    },
    created(){
      this.getSwipeList();
      this.getList();
    },
    mounted(){
      this.wrapperHeight =
        document.documentElement.clientHeight -
        this.$refs.wrapper.getBoundingClientRect().top;
  
    },
    methods:{
      getSwipeList(){
        this.$http.get('index/swipe').then((result)=>{
          this.swipeList=result.body;
        });
      },
      getList(){
        if(!this.hasMore)return;
        var pno=++this.pno;
        var pageSize=this.pageSize;
        this.$http.get('index/list?pno'+pno+'&pageSize='+pageSize).then((result)=>{
          this.List=this.List.concat(result.body.msg);
          this.pageCount=result.body.pageCount;
          var flag=this.pno<this.pageCount;
          if(!flag){
            this.allLoaded =true;
            this.hasMore=false;
          }
        })
      },
      goList(){
        this.$router.push('/list');
      },
      loadTop() {
        this.List=[];
        this.pno=0;
        this.hasMore=true;
        this.getList();
        if(this.List!=[])
          this.$refs.loadmore.onTopLoaded();
      },
      loadBottom() {
        this.allLoaded = false;// 若数据已全部获取完毕
        this.$refs.loadmore.onBottomLoaded();
        this.getList();
      }
    },
    components:{
      MySwipe,
      TopControl,
      GameList
    }
  }
</script>

<style scoped>
  div.container>ul{
    list-style: none;
    display: flex;
    width:100%;
    padding:0;
    margin:0;
    background-color: #F4F4F4;
  }
  div.container>ul>li{
    width:33.33333%;
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
  div.box>div:nth-child(2){
    display: flex;
    width:100%;
    justify-content: space-between;
    margin-top:15px;
  }
  div.box>div:nth-child(2)>img{
    width:49%;
    height:100px;
    border-radius: 10px;
  }
  .main-body{
    overflow: scroll;
  }
</style>
