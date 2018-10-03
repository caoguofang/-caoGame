<template>
  <div class="login">
    <div class="title">
      <p>
        <span class="mui-icon mui-icon-arrowleft back" @mousedown="back"></span>
        <span @mousedown="back">注册登录</span>
      </p>
    </div>
    <div class="bd" :style="log">
      <form action="" class="F1">
        <p>
          <input type="text"  v-model="uname" placeholder="请输入手机号/邮箱/用户名">
          <span class="mui-icon mui-icon-contact"></span>
        </p>
        <p>
          <input type="password" v-model="upwd" placeholder="输入密码">
          <span class="mui-icon mui-icon-locked"></span>
        </p>
      </form>
      <button class="ldeng" @click="loginPost">立即登录</button>
      <p>
        <a>找回密码</a>
        <a @click="regShow">新用户注册</a>
      </p>
    </div>
    <div class="bd" :style="reg">
      <form action="" class="F1">
        <p>
          <input type="text" v-model="uname" placeholder="请输入手机号/邮箱/用户名">
          <span class="mui-icon mui-icon-contact"></span>
        </p>
        <p>
          <input v-model="upwd" type="password" placeholder="输入密码">
          <span class="mui-icon mui-icon-locked"></span>
        </p>
      </form>
      <button class="ldeng" @click="registerPost">立即注册</button>
      <p>
        <a>找回密码</a>
        <a @click="logShow">密码登录</a>
      </p>
    </div>
    <footer :style="footerH">
      <span>其它登录方式</span>
      <p class="icon">
        <span class="mui-icon mui-icon-qq"></span>
        <span class="mui-icon mui-icon-weixin"></span>
        <span class="mui-icon mui-icon-weibo"></span>
      </p>
    </footer>
  </div>
</template>

<script>
  export default {
    data:function(){
      return {
        screenH:window.screen.height,
        reg:'display:none',
        log:'display:block',
        uname:'',
        upwd:''
      }
    },
    computed:{
      footerH(){return `position:absolute;top:${this.screenH-150}px;`}
    },
    methods:{
      back(){
        var back=location.search.split("=")[1];
        this.$router.push(`/${back}`);
      },
      regShow(){
        this.log='display:none';
        this.reg='display:block';
        this.uname=this.upwd='';
      },
      logShow(){
        this.log='display:block';
        this.reg='display:none';
        this.uname=this.upwd='';
      },
      loginPost(){
        this.$http.get('user/login?uname='+this.uname+'&upwd='+this.upwd).then((result)=>{
          if(result.body.code==1){
            window.sessionStorage.setItem('id',result.body.msg[0].id);
            this.uname=this.upwd='';
            this.$toast("登录成功！");
          }else{
           this.$toast("用户名或密码错误，且不能为空，请检查！");
          }
        });
      },
      registerPost(){
        var regL=/^[0-9a-zA-Z]{3,9}$/;
        if(regL.test(this.uname)&&regL.test(this.upwd)){
          this.$http.get('user/has?uname='+this.uname).then((result)=>{
            if(result.body.code==0){
              this.$http.post('user/register',{uname:this.uname,upwd:this.upwd},{emulateJSON: true}).then((result)=>{
                if(result.body.code==1){
                  this.$toast("注册成功！")
                }
              });
            }else{
              this.$toast('用户名已存在，请更换！');
            }
          });
        }else{
          this.$toast('请检查用户名和密码，不能为空，且至少为三位！');
        }
      }
    }
  }
</script>

<style scoped>
 .title{background-color: #4cd964;padding-left:15px;}
.title>p{padding:15px 0;margin:0;}
.title>p>span{color:#fff;}
.title>p>span:last-child{font-size: 16px;}
.bd{padding:10px 15px 0 15px;}
.bd input{font-size: 14px;border-top:0;border-left:0;border-right:0;padding-left:34px;font-weight: lighter;}
.F1 p{margin:0 0 10px 0;padding:0;position:relative;}
.F1 span{position:absolute;top:6px;left:2px;}
button.ldeng{width:100%;padding:10px;background-color: #4cd964;color:#fff;font-size: 16px;}
.bd>p{display: flex;justify-content: space-between;margin-top:20px;}
.bd>p>a{color:#4cd964;font-size: 16px;}
footer{border-top:1px solid #EAEAEA;position:relative;height:100px;width:100%;}
footer>span:first-child{position:absolute;top:-10px;left:40%;background-color:#fff;}
footer>p>span.mui-icon-qq{font-size: 36px;border: 1px solid #007aff;border-radius: 50%;padding:7px;color:#007aff;}
footer>p>span.mui-icon-weixin{font-size: 36px;border: 1px solid #4cd964;border-radius: 50%;padding:7px;color:#4cd964;}
footer>p>span.mui-icon-weibo{font-size: 36px;border: 1px solid #ff5053;border-radius: 50%;padding:7px;color:#ff5053;}
footer>p{display: flex;justify-content: space-around;padding-top:30px;}
</style>
