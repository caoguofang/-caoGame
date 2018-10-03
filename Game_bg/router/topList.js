var express=require("express");
var router=express.Router();
var  pool=require("../pool");

router.get('/list',(req,res)=>{
  var table=req.query.table;
  var pno=parseInt(req.query.pno);
  if(!pno)pno=1;
  var pageSize=parseInt(req.query.pageSize);
  if(!pageSize)pageSize=8;
  var offset=(pno-1)*pageSize;
  var pageCount=0;
  var progress=0;
  var arr={};
  var sql="SELECT * FROM topList WHERE class=?";
  pool.query(sql,[table],(err,result)=>{
    if(err)throw err;
    pageCount=Math.ceil(result.length/pageSize);
    arr.pageCount=pageCount;
    progress+=50;
    if(progress==100){
      res.send(arr);
    }
  });
  var sql1="SELECT * FROM topList WHERE class=? LIMIT ? ,? ";
  pool.query(sql1,[table,offset,pageSize],(err,result)=>{
    if(err)throw err;
    arr.msg=result;
    progress+=50;
    if(progress==100){
      res.send(arr);
    }
  });
});

module.exports=router;