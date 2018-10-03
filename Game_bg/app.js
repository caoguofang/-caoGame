//引入express框架
const express=require('express');
//引入第三方bodyParser中间件
const session = require('express-session');
//引入跨域请求模块
const cors =require('cors');
const topList=require('./router/topList');
const Index=require('./router/index');
const WangYou=require('./router/wangYou');
const Stand=require('./router/stand');
const User = require('./router/user');

const bodyParser=require('body-parser');
//引入admin路由
//使用express框架
var app=express();
//建立监听端口号
var server=app.listen(4000);
app.use(cors({
  origin:['http://localhost:8080','*','http://localhost:8081'],
  credential:true
}));
//使用bodyParser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到admin目录下的pulic文件中
app.use(express.static(__dirname+'/public'));

app.use('/topList',topList);
app.use('/index',Index);
app.use('/wy',WangYou);
app.use('/stand',Stand);
app.use('/user',User);

console.log('服务器启动成功...');