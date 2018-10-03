<template>
  <div class="topIcon">
    <!--左右图标-->
    <span>
      <a id="icon-icon-contact">
        <span class="mui-icon mui-icon-contact"  @mousedown="login" ></span>
      </a>
    </span>
    <!--顶部搜索框-->
      <input type="search" @mousedown="goSearch" :placeholder="pla">
    <span class="mui-icon mui-icon-search"></span>
    <span>
        <a>
          <span class="mui-icon mui-icon-download"></span>
        </a>
        <a id="icon-gear">
          <span class="mui-icon mui-icon-gear"></span>
        </a>
      </span>

  </div>
</template>

<script>
  export default {
    data:function(){
      return {
        pla:"大家正在搜：穿越火线：..."
      }
    },
    mounted(){
      this.plas();
    },
    methods:{
      plas(){
        var plas=["绝地求生：刺激战场","王者荣耀","光荣使命:使命行动","武动乾坤(正版手游)","穿越火线：枪战王者"];
        var t=0;
        setInterval(()=>{
          this.pla="大家正在搜："+plas[t];
          var l=this.pla.length;
          if(l>10){
            var lll=this.pla.slice(10);
            this.pla=this.pla.replace(lll,"...");
          }
          t++;
          if(t>=plas.length)t=0;
        },2000);
      },
      goSearch(){
        var search=location.href.split("/");
        search=search[search.length-1];
        this.$router.push("/search?back="+search);
      },
      login(){
        var search=location.href.split("/");
        search=search[search.length-1];
        this.$router.push("/login?back="+search);
      }
    }
  }
</script>

<style scoped>
  div.topIcon{
    width:100%;
    padding:10px;
    position:fixed;
    top:0;
    background-color: #4cd964;
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    z-index: 1000;
  }
  div.topIcon>span:first-child{float:left;}
  div.topIcon>span:last-child{float:right;}
  div.topIcon>span span{color:#fff;font-size:30px;}
  div.topIcon  input {
    width:60%;padding:0 0 0 10%;
    margin:0;
    background-color: #fff;
    box-sizing: border-box;
    height: 34px;
    text-align: left;
    border: 0;
    border-radius: 6px;
    font-size:14px;
  }
  div.topIcon .mui-icon-search{position:absolute;left:20%;top:25%;}
</style>
