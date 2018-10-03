// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
//引入mint-ui 并注册
import MintUi from 'mint-ui'
import "mint-ui/lib/style.css"
Vue.use(MintUi);
//引入mui
import './assets/mui/css/mui.min.css'
import "./assets/mui/css/icons-extra.css"
//将VueResource 注册Vue
import VueResource from 'vue-resource'
Vue.use(VueResource);
//设置请求的根路径
Vue.http.options.root='http://127.0.0.1:4000/';
Vue.config.productionTip = false;

//将游戏内存项的小数点四舍五入取整
Vue.filter("storage",(val)=>{
  return val=Math.round(val);
});

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
});
