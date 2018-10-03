var express=require("express");
var router=express.Router();
var  pool=require("../pool");

router.get('/list',(req,res)=>{
  var sql="SELECT * FROM wangyou";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:result});
  });
});

router.get('/sList',(req,res)=>{
  var sql="SELECT * FROM carousel2";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:result});
  });
});
module.exports=router;

