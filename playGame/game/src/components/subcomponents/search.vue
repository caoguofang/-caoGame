<template>
  <div class="bd">
    <div class="search">
      <div class="topSearch">
        <span class="mui-icon mui-icon-arrowleft back" @mousedown="back"></span>
        <input type="text" :placeholder="pla">
        <span>搜索</span>
      </div>
    </div>
    <div class="body">
      <div class="hotSearch">
        <!--搜索记录-->
        <div id="record" class="record">
          <p>
            <span>搜索记录</span>
            <span @click="clearLS">
              <span class="mui-icon mui-icon-trash"></span>清空记录
            </span>
          </p>
          <div class="reList">
            <button v-for="btn in record">{{btn}}</button>
          </div>
        </div>
        <span class="hotTitle">热门搜索</span>
        <ul class="list">
          <li v-for="item in list"><button @mouseover="mouDown">{{item}}</button></li>
        </ul>
      </div>
    </div>
    <MyConfirm :title="constr1" :content="constr2" @yesa="shan"></MyConfirm>
  </div>
</template>

<script>
  import MyConfirm from './my_confirm'
  export default {
    data:function(){
      return{
        constr1:"清除搜索记录",
        constr2:"是否确定清除搜素记录？",
        conYes:0,
        list:["实况足球","王者荣耀","穿越火线：枪战王者","无限纷争-死神觉醒","模拟城市：我是市长","荒野行动","火影忍者","明日决胜","绝地求生 刺激战场","梦幻西游","最终幻想","万王之王","第五人格"],
        pla:"大家正在搜：穿越火线：...",
        record:[],
      }
    },
    created(){
      this.getLS();

    },
    mounted(){
      this.plas();
      this.reS();
    },
    methods:{
      reS(){
        var R=document.getElementById("record");
        if(this.record.length===0){
          R.style.display="none";
        }else{
          R.style.display="block";
        }
      },
      shan(i){
        this.conYes=i;
        if(this.conYes==1){
          localStorage.removeItem("btn");
          this.record=[];
          this.reS()
        }
      },
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
      mouDown(e){
        var btn=e.target.innerHTML;
        var ls=localStorage.getItem("btn");
        if(btn.length>5){
          var str=btn.slice(5);
          btn=btn.replace(str,"...");
        }
        if(ls==null){
          localStorage.setItem("btn",btn);
          this.record.push(btn);
          setTimeout(()=>{
            this.reS();
          },50)
        }else{
          if(ls.indexOf(btn)==-1){
            ls=`${btn},`+ls;
            localStorage.setItem("btn",ls);
            this.record=ls.split(",");
          }
        }
      },
      getLS(){
        var ls=localStorage.getItem("btn");
        if(ls!==null){
          this.record=ls.split(",");
        }
      },
      clearLS(){
        var con=document.getElementsByClassName("bd")[0];
        con.lastChild.classList.remove("show");
      },
      back(){
        var back=location.search.split("=")[1];
        this.$router.push(`/${back}`);
      }
    },
    components:{
      MyConfirm
    }
  }
</script>

<style scoped>
  body{font-family: 'Avenir', Helvetica, Arial, sans-serif;}
  div.search>div.topSearch{
    padding:5px 8px 5px 5px;
    background-color: #4cd964;
    display: flex;
    justify-content: space-between;
    align-items:center;
    color:#fff;
    margin-bottom:15px;
  }
  div.search>div.topSearch input{margin:0;width:80%;font-size:14px;color:#000;border-radius: 5px;}
  div.search>div.topSearch .back{font-size: 28px;}
  div.body{padding:0 20px;color:#000;}
  div.body>.hotSearch>.hotTitle{display:block;padding:5px 0;margin-bottom:10px;border-bottom:1px solid #D0D0D0;}
  div.body>.hotSearch>ul.list{list-style: none;margin:0;padding:0;display:flex;flex-wrap:wrap;}
  div.body>.hotSearch>ul.list>li{margin:4px;border-radius: 3px;font-size:14px;font-family: 'Avenir'}
  button:active{background-color: #4cd964}
  div.body>.hotSearch>.record>p{padding-bottom:5px;border-bottom:1px solid #d0d0d0;display: flex;justify-content:
    space-between;}
  div.body>.hotSearch>.record>p>span{color:#000;font-size:16px;}
  div.body>.hotSearch>.record>.reList{display: flex;flex-wrap:wrap;}
  div.body>.hotSearch>.record>.reList>button{margin:5px;}
</style>