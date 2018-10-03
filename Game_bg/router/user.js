var express=require("express");
var router=express.Router();
var  pool=require("../pool");

router.get('/has',(req,res)=>{
  var uname = req.query.uname;
  console.log(uname);
  var sql = "SELECT * FROM users WHERE uname=?";
  pool.query(sql,uname,(err,result)=>{
    if(err)throw  err;
    if(result.length>0){
      res.send({code:1});
    }else{
      res.send({code:0});
    }
  });
});

router.post('/register',(req,res)=>{
  var {uname,upwd}=req.body;
  var sql = "INSERT INTO users (uname,upwd) VALUES(?,?)";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
    res.send({code:1});
  });
});

router.get('/login',(req,res)=>{
  var {uname,upwd}=req.query;
  var sql="SELECT * FROM users WHERE uname=? AND upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
    if(result.length>0)
      res.send({code:1,msg:result});
    else
      res.send({code:0});
  });
});

module.exports=router;