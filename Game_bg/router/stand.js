var express=require("express");
var router=express.Router();
var  pool=require("../pool");

router.get('/sList',(req,res)=>{
  var sql="SELECT * FROM carousel3";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:result});
  });
});

router.get('/will',(req,res)=>{
  var pno=parseInt(req.query.pno);
  if(!pno)pno=1;
  var pageSize=parseInt(req.query.pageSize);
  if(!pageSize)pageSize=4;
  var offset=(pno-1)*pageSize;
  var pageCount=0;
  var progress=0;
  var arr={};
  var sql="SELECT * FROM topList";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    pageCount=Math.ceil(result.length/pageSize);
    arr.pageCount=pageCount;
    progress+=50;
    if(progress==100){
      res.send(arr);
    }
  });
  var sql1="SELECT * FROM topList  LIMIT ? ,? ";
  pool.query(sql1,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    arr.msg=result;
    progress+=50;
    if(progress==100){
      res.send(arr);
    }
  });
});

router.get('/list',(req,res)=>{
  var sql="SELECT * FROM toplist LIMIT 8,10";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:result});
  });
});
module.exports=router;

