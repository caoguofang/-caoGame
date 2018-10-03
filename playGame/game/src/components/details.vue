<template>
  <div class="details" style="padding-bottom:50px;">
    <div class="title1">
      <p style="color:#fff;">
        <span class="mui-icon mui-icon-arrowleft back" @mousedown="back"></span>
        <span @mousedown="back">详情</span>
      </p>
    </div>
    <MySwipe :list="sList"></MySwipe>
    <div class="box">
      <div class="top">
        <img :src="detail.img_url">
        <div>
          <h4>{{detail.title}}</h4>
          <div>
            <div>
              <div>
                <span  style="color:#3cc068;padding-right:21px;">角色扮演</span>
                <span>2018人在玩</span>
              </div>
              <div>
                <span style='padding-right:20px;'>{{detail.storage}}MB</span>
                <span>v1.25.21</span>
              </div>
            </div>
            <div>
              <span class="mui-icon-extra mui-icon-extra-heart-filled" style="color:red;display:block"></span>
              <span>215</span>
            </div>
          </div>
        </div>
      </div>
      <div class="top1">
        <div>
          <span>RPG</span>
          <span>二次元</span>
          <span>奇幻</span>
          <span>3D</span>
          <span>中国风</span>
        </div>
      </div>
    </div>
    <div class="class">
      <span>简介</span>
      <span>评论(2112)</span>
    </div>
    <div class="container">
      <ul>
        <li><img src="http://127.0.0.1:4000/img/0.jpg"></li>
        <li><img src="http://127.0.0.1:4000/img/1.jpg"></li>
        <li><img src="http://127.0.0.1:4000/img/2.jpg"></li>
        <li><img src="http://127.0.0.1:4000/img/3.jpg"></li>
        <li><img src="http://127.0.0.1:4000/img/1.jpg"></li>
      </ul>
    </div>
    <div class="box">
      <div class="dTitle"><span>简介</span></div>
      <p>福建省凯迪拉克龙女卡独守空房进口量的伤口上的的健身卡刚加快速度速度快搞飞机撒打开四大皆空范德萨小菜鸟疯狂的时间内可怜可怜虫不能表现出开始的结果反馈</p>
      <div class="dTitle"><span>更新说明</span></div>
      <p>是的科技股份肯定是你就开始了多年打开GV看了下大V肯德基GV跨境电商仙女ckdvnxcknbvxm金山毒霸北方国际都是GV借款收到呢吧；是的女</p>
    </div>
    <div class="box">
      <div class="top dTitle">
        <span>同类型游戏推荐</span>
        <span class="active" @click="willMore" style="color:#3cc068">换一换</span>
      </div>
      <div class="willPlay">
        <div class="firstList">
          <div class="willList" v-for="item in willList">
            <img :src="item.img_url">
            <span class="title">{{item.title}}</span>
            <span>{{item.family}}|{{item.storage | storage}}M</span>
            <div>下载</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import MySwipe from './subcomponents/my_swipe'
  export default {
    data:function(){
      return {
        sList:[
          {img_url:"http://127.0.0.1:4000/img/desw/sc1.jpg"},
          {img_url:"http://127.0.0.1:4000/img/desw/sc5.jpg"},
          {img_url:"http://127.0.0.1:4000/img/desw/sw1.jpg"},
          {img_url:"http://127.0.0.1:4000/img/desw/sw2.jpg"}
        ],
        willList:[],
        willCount:0,
        willPno:3,
        willPageSize:4,
        id:this.$route.params.id,
        detail:{}
      }
    },
    components:{
      MySwipe
    },
    created(){
      this.getWillList();
      this.getDetail();
    },
    methods:{
      back(){
        this.$router.go(-1);
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
      getDetail(){
        this.$http.get('index/detail?id='+this.id).then((result)=>{
          if(result.body.code==1)
            this.detail=result.body.msg;
        });
      }
    }
  }
</script>

<style scoped>
  .title1{
    position:absolute;
    top:10px;
    z-index:1000;
  }
  .box{
    padding:10px;
  }
  .top{
    display: flex;
  }
  .top>img{
    width:72px;
    height:72px;
    border-radius: 10px;
    margin-right:10px;
  }
  .top>div:nth-child(2){
    display: flex;
    width:100%;
    flex-direction: column;
  }
  .top>div:nth-child(2)>div{
    width:100%;
    display: flex;
    justify-content: space-between;
  }
  .top1>div{
    margin:10px 0;
    display: flex;
    justify-content:center;
  }
  .top1>div>span{
    padding:3px 5px;
    border:1px solid #3cc068;
    border-radius: 5px;
    margin:0 5px;
  }
  .class{
    display: flex;
    border-top:1px solid #ddd;
    border-bottom:1px solid #ddd;
    text-align: center;
  }
  .class>span:first-child{
    color:#3cc068;
  }
  .class>span:last-child{
    background-color: #f4f4f4;
  }
  .class>span{
    width:50%;
    padding:10px 0;
  }
  .container{
    padding:10px 0 0 10px;
  }
  .container>ul{
    margin:0;
    padding:0;
    display: flex;
    list-style: none;
    overflow:hidden;
    overflow-x:auto;
    white-space:nowrap;
  }
  .container>ul>li{
    float:left;
    margin-right:10px;
  }
  .container>ul>li>img{
    width:150px;
    height:200px;
  }
  .dTitle{
    padding-bottom:5px;
    border-bottom:1px solid #ddd;
    margin-bottom:10px;
  }
  .dTitle>span:first-child{
    border-left:3px solid #3cc068;
    padding-left:5px;
    font-size:16px;
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
</style>
