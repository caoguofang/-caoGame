
<template>
  <div style="padding:54px 0;">
    <TopControl></TopControl>
    <div class="box">
      <ul class="navList" :style="hei">
        <li class="lActive"><span class="active" @click="qieHuan">推荐</span></li>
        <li v-for="item in navList"><span @click="qieHuan">{{item}}</span></li>
      </ul>
      <div class="container" :style="hei">
        <div>
          <img src="http://127.0.0.1:4000/img/desw/w3.jpg">
          <img src="http://127.0.0.1:4000/img/desw/sc5.jpg">
        </div>
        <div class="ClassList">
          <div>
            <span>小编推荐</span>
            <span  @click="goList">更多&nbsp;&gt</span>
          </div>
          <div>
            <div v-for="item in recommendList"  @click="goDetail(item.id)" >
              <img :src="item.img_url">
              <span class="title">{{item.title}}</span>
            </div>
          </div>
        </div>
        <div class="ClassList">
          <div>
            <span>武侠江湖</span>
            <span  @click="goList">更多&nbsp;&gt</span>
          </div>
          <div>
            <div v-for="item in recommendList1"  @click="goDetail(item.id)">
              <img :src="item.img_url">
              <span class="title">{{item.title}}</span>
            </div>
          </div>
        </div>
        <div class="ClassList">
          <div>
            <span>生存创造</span>
            <span  @click="goList">更多&nbsp;&gt</span>
          </div>
          <div>
            <div v-for="item in recommendList2" @click="goDetail(item.id)">
              <img :src="item.img_url">
              <span class="title">{{item.title}}</span>
            </div>
          </div>
        </div>
        <div class="ClassList">
          <div>
            <span>棋牌桌游</span>
            <span  @click="goList">更多&nbsp;&gt</span>
          </div>
          <div>
            <div v-for="item in recommendList"  @click="goDetail(item.id)">
              <img :src="item.img_url">
              <span class="title">{{item.title}}</span>
            </div>
          </div>
        </div>
        <div><span>没有更多了...</span></div>
      </div>
    </div>
  </div>
</template>

<script>
  import TopControl from './subcomponents/topControl'
  export default {
    data:function(){
      return {
        navList:[
          '射击','模拟','动作','角色','策略','竞技','卡牌','魔幻','仙侠','回合','消除','足球','传奇','赛车','休闲','女生','体育','经营','魔性','音乐','三国','二次元','棋牌','IO'
        ],
        height:document.documentElement.clientHeight,
        recommendList:[],
        recommendList1:[],
        recommendList2:[]
      }
    },
    computed: {
      hei(){return `height:${this.height-108}px`}
    },
    created(){
      this.recommend();
      this.recommend1();
      this.recommend2();
    },
    methods:{
      qieHuan(e){
        e. stopPropagation();
        var spans=document.querySelectorAll('.navList>li>span');
        for(var j=0;j<spans.length;j++){
          spans[j].classList.remove('active');
        }
        var span=e.target;
        var lis=span.parentElement.parentElement.children;
        for(var i=0;i<lis.length;i++){
          lis[i].classList.remove('lActive');
        }
        span.parentElement.classList.add('lActive');
        span.classList.add('active');
      },
      recommend(){
        this.$http.get('index/list?pno=2&pageSize=6').then((result)=>{
          this.recommendList=result.body.msg;
        });
      },
      recommend1(){
        this.$http.get('index/list?pno=3&pageSize=6').then((result)=>{
          this.recommendList1=result.body.msg;
        });
      },
      recommend2(){
        this.$http.get('index/list?pno=1&pageSize=6').then((result)=>{
          this.recommendList2=result.body.msg;
        });
      },
      goDetail(id){
        this.$router.push('/detail/'+id);
      },
      goList(){
        this.$router.push('/list');
      }
    },
    components:{
      TopControl
    }
  }
</script>

<style scoped>
  .box{
    display:flex;
    justify-content: space-between;
  }
  .navList{
    list-style:none;
    margin:0;
    padding:0;
    width:22%;
    overflow-y:auto;
    text-align: center;
  }
  .navList>li{
    padding:15px 0;
    background-color: #F7F7F7;
    border-top:1px solid #fff;
    box-sizing:border-box;
  }
  .navList>li>span{
    width:100%;
    display: inline-block;
  }
  .lActive{
    background-color: #fff !important;
    color:#3cc068;
  }
  .active{
    border-left:5px solid #3cc068;
  }
  ::-webkit-scrollbar {display:none}
  .container{
    width:78%;
    padding:10px;
    overflow-y:auto;
  }
  .container>div:first-child{
    display: flex;
    justify-content: space-between;
  }
  .container>div:first-child>img{
    width:48%;
    height:100px;
    border-radius: 5px;
  }
  .ClassList{
    margin-top:10px;
    padding-bottom:10px;
    border-bottom:1px solid #ddd;
  }
  .ClassList>div:first-child{
    display: flex;
    justify-content: space-between;
    margin-bottom:10px;
  }
  .ClassList>div:first-child>span:first-child{
    font-size: 16px;
    font-weight:bold;
  }
  .ClassList>div:nth-child(2){
    display: flex;
    flex-wrap:wrap;
    width:100%;
  }
  .ClassList>div:nth-child(2)>div{
    width:33.33333%;
    text-align: center;
  }
  .ClassList>div:nth-child(2)>div>img{
    width:72px;
    height:72px;
  }
  .title{
    display: inline-block;
    white-space: nowrap;
    width:100%;
    overflow: hidden;
    -ms-text-overflow:ellipsis;
    -o-text-overflow:ellipsis;
    text-overflow:ellipsis;
  }
  .container>div:last-child{
    text-align: center;
    vertical-align: center;
  }
  .container>div:last-child>span{
    padding-top:10px;
    display: inline-block;
  }
</style>
