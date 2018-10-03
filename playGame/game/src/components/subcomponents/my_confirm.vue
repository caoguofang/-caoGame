<template>
  <div :style="Cconfirm" class="show" id="confirm">
    <div class="kkk" :style="kuang">
      <h4>{{title}}</h4>
      <p>{{content}}</p>
      <p>
        <button class="b0" @mousedown="cancel">取消</button>
        <button class="b1" @mousedown="cance2">确定</button>
      </p>
    </div>
  </div>
</template>

<script>
  export default {
    data:function(){
      return{
        screenH:window.screen.height,
        screenW:window.screen.width
      }
    },
    props:["title","content"],
    computed:{
      /*清除记录确认框*/
      Cconfirm(){return`width:100%;height:${this.screenH}px;background-color:rgba(0,0,0,0.5);position:absolute;top:0;`},
      kuang(){return `margin-top:${this.screenH/2-75}px;margin-left:5%;}`},
    },
    methods:{
      cancel(e){
        e.stopPropagation();
        var father=document.getElementById("confirm");
        father.classList.add("show");
      },
      cance2(e){
        e.stopPropagation();
        this.$emit("yesa",1);
        var father=document.getElementById("confirm");
        setTimeout(function(){
          father.classList.add("show");
        },100)
      }
    }
  }
</script>

<style scoped>
  .show{
    display:none;
  }
  .b0{border:1px solid #4cd964;color:#4cd964}
  .b1,.b0:active{background-color: #4cd964;color:#fff;}
  .kkk{
    width:90%;height:150px;
    background-color:#fff;
    display: flex;
    flex-direction: column;
    justify-content: center;align-items: center;
    padding:10px;
    box-sizing: border-box;
  }
  .kkk>p{width:100%;display: flex;justify-content: space-around;margin-top:15px;}
  .kkk>p>button{width:40%;padding:8px;}
</style>