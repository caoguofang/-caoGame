<template>
  <div class="gameList" ref="box">
    <div class="main-body" ref="wrapper" :style="{ height: (wrapperHeight-50) + 'px' }">
    <mt-loadmore  :top-method="loadTop" bottomLoadingText="加载中" bottomPullText="上拉加载更多" :bottom-method="loadBottom" :bottom-all-loaded="allLoaded" ref="loadmore" :autoFill="isAutoFill">
      <div v-if="list.length>0">
        <div class="list"  @click="goDetail(list[0].id)">
          <!--列表布局左部分-->
          <div class="left">
            <div class="first">{{list[0].top}}</div>
            <img :src="list[0].img_url" alt="">
          </div>
          <!--列表右部分-->
          <div class="right">
            <div class="R_top">
              <div>
                <div><span>{{list[0].title}}</span></div>
                <p><span>{{list[0].family}}</span>|<span>{{list[0].storage}}MB</span></p>
              </div>
              <div class="down">
                <span>下载</span>
              </div>
            </div>
            <div class="R_bottom">
              <span class="intro">{{list[0].intro}}</span>
            </div>
          </div>
        </div>
        <div class="list"  @click="goDetail(list[1].id)">
          <!--列表布局左部分-->
          <div class="left">
            <div class="second">{{list[1].top}}</div>
            <img :src="list[1].img_url" alt="">
          </div>
          <!--列表右部分-->
          <div class="right">
            <div class="R_top">
              <div>
                <div><span>{{list[1].title}}</span></div>
                <p><span>{{list[1].family}}</span>|<span>{{list[1].storage}}MB</span></p>
              </div>
              <div class="down">
                <span>下载</span>
              </div>
            </div>
            <div class="R_bottom">
              <span class="intro">{{list[1].intro}}</span>
            </div>
          </div>
        </div>
        <div class="list"  @click="goDetail(list[2].id)">
          <!--列表布局左部分-->
          <div class="left">
            <div class="thirdly">{{list[2].top}}</div>
            <img :src="list[2].img_url" alt="">
          </div>
          <!--列表右部分-->
          <div class="right">
            <div class="R_top">
              <div>
                <div><span>{{list[2].title}}</span></div>
                <p><span>{{list[2].family}}</span>|<span>{{list[2].storage}}MB</span></p>
              </div>
              <div class="down">
                <span>下载</span>
              </div>
            </div>
            <div class="R_bottom">
              <span class="intro">{{list[2].intro}}</span>
            </div>
          </div>
        </div>
        <div class="list" v-for="item in list" v-if="item.top>3"   @click="goDetail(item.id)">
          <!--列表布局左部分-->
          <div class="left">
            <div class="fff">{{item.top}}</div>
            <img :src="item.img_url" alt="">
          </div>
          <!--列表右部分-->
          <div class="right">
            <div class="R_top">
              <div>
                <div><span>{{item.title}}</span></div>
                <p><span>{{item.family}}</span>|<span>{{item.storage}}MB</span></p>
              </div>
              <div class="down">
                <span>下载</span>
              </div>
            </div>
            <div class="R_bottom">
              <span class="intro">{{item.intro}}</span>
            </div>
          </div>
        </div>
      </div>
      <div class="loadmore" v-if="hasMore==false">数据已经加载完毕...</div>
    </mt-loadmore>
    </div>
   </div>
</template>

<script>
  export default {
    data:function(){
      return {
        table:'newGame',
        pno:0,
        pageSize:15,
        list:[],
        pageCount:0,
        hasMore:true,
        wrapperHeight: 0,
        allLoaded: false,
        //是否自动触发上拉函数
        isAutoFill:false
      }
    },
    watch:{
      '$route'(to,from){//下面存放要监听的方法，参数等都可以
        var table=this.$route.params.table;
        if(table!=null){
          this.table=table;
          this.list=[];
          this.pno=0;
          this.hasMore=true;
          this.getList();
        }
      }
    },
    created(){
      this.getList();
    },
    mounted(){
      this.wrapperHeight =
        document.documentElement.clientHeight -
        this.$refs.wrapper.getBoundingClientRect().top;
  
    },
    methods:{
      getList(){
        if(!this.hasMore)return;
        var pno=++this.pno;
        var pageSize=this.pageSize;
        var table=this.table;
        this.$http.get('topList/list?pno='+pno+'&pageSize='+pageSize+'&table='+table).then((result)=>{
          this.list=this.list.concat(result.body.msg);
          this.pageCount=result.body.pageCount;
          var flag = this.pno<this.pageCount;
          if(!flag){
            this.allLoaded =true;
            this.hasMore=false;
          }
        })
      },
      loadTop() {
        this.list=[];
        this.pno=0;
        this.hasMore=true;
        this.getList();
        if(this.list!=[])
        this.$refs.loadmore.onTopLoaded();
      },
      loadBottom() {
        this.allLoaded = false;// 若数据已全部获取完毕
        this.$refs.loadmore.onBottomLoaded();
        this.getList();
      },
      goDetail(id){
        this.$router.push('/detail/'+id);
      }
    }
  }
</script>

<style scoped>
  p{
    margin:0;
  }
  .R_bottom{
    color:#8f8f94;
    font-size:14px;
  }
  .gameList{
    padding:0 10px;
    margin-top:100px;
  }
  .list{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 10px;
    border-bottom:1px solid #ddd;
  }
  .list .left{
    display: flex;
    justify-content: center;
    align-items:center;
  }
  .list .left img{
    width:72px;
    height:72px;
  }
  .list .left>div.first,div.second,div.thirdly,div.fff{
    width:20px;
    height:20px;
    border-radius:50%;
    background-color: red;
    color:#fff;
    text-align:center;
    margin-right:5px;
  }
  div.second{background-color: #FC7821}
  div.thirdly{background-color:#FFC21F}
  div.fff{background-color: #fff;color:#333;}
  .list .right{
    width:68%;
  }
  .list .right .R_top{
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .list .right .R_top .down{
    border:1px solid #4cd964;
    color:#4cd964;
    padding:5px 15px;
    font-size:14px;
  }
  .intro{
    display: inline-block;
    width:80%;
    overflow: hidden;
    white-space:nowrap;
    -ms-text-overflow:ellipsis;
    -o-text-overflow:ellipsis;
    text-overflow:ellipsis;
  }
  .main-body{
    overflow: scroll;
  }
</style>
