<template>
  <div style="padding:54px 0;">
    <TopControl></TopControl>
    <MySwipe :list="sList"></MySwipe>
    <ul>
      <li>推荐</li>
      <li>礼包</li>
      <li>预告</li>
      <li class="active">活动</li>
    </ul>
    <div class="list" v-for="item in list" :key="item.id">
      <img :src="item.img_url">
      <div class="title"><span>{{item.title}}</span></div>
      <div class="bottom">
        <p>活动时间：2018-09-30至2018-10-31</p>
        <div>立即参与</div>
      </div>
    </div>
    <div class="loadmore loading" v-if="hasMore">正在加载...</div>
    <div class="loadmore" v-else>数据已经加载完毕...</div>
  </div>
</template>

<script>
  import TopControl from './subcomponents/topControl';
  import MySwipe from './subcomponents/my_swipe';
  export default {
    data:function(){
      return{
        list:[],
        sList:[],
        hasMore:true
      }
    },
    created(){
      this.getList();
      this.getSwipeList();
    },
    methods:{
      getList(){
        this.$http.get('wy/list').then((result)=>{
          if(result.body.code==1){
            this.list=result.body.msg;
          }
        });
      },
      getSwipeList(){
        this.$http.get('wy/sList').then((result)=>{
          if(result.body.code==1){
            this.sList=result.body.msg;
          }
        });
      }
    },
    components:{
      TopControl,
      MySwipe
    }
  }
</script>

<style scoped>
  .list{
    margin:0 15px;
    padding:10px 0;
    border-bottom:1px solid #ddd;
  }
  .list>img{
    width:100%;
    height:150px;
    border-radius: 5px;
  }
  .bottom>p{
    margin:0;
  }
  .bottom{
    display: flex;
    font-size:12px;
    justify-content: space-between;
    align-items: center;
  }
  .bottom>div{
    padding:3px 15px;
    border-radius: 10px;
    border:1px solid #3cc068;
    color:#3cc068;
    font-size:12px;
  }
  .bottom>p{
    font-size:12px;
  }
  ul{
    list-style: none;
    display: flex;
    width:100%;
    padding:0;
    margin:0;
    background-color: #F4F4F4;
  }
  ul>li{
    width:25%;
    text-align: center;
    padding:10px 0;
  }
  .active{
    background-color: #fff;
    color:#3CC068;
  }
</style>
