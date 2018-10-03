var express=require("express");
var router=express.Router();
var  pool=require("../pool");

router.get('/swipe',(req,res)=>{
  var sql="SELECT * FROM carousel";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  });
});

router.get('/list',(req,res)=>{
  var pno=parseInt(req.query.pno);
  var pageSize=parseInt(req.query.pageSize);
  if(!pno)pno=1;
  if(!pageSize)pageSize=10;
  var offset=(pno-1)*pageSize;
  var pageCount=0;
  var progress=0;
  var arr={};
  var sqlp="SELECT * FROM topList";
  pool.query(sqlp,(err,result)=>{
    if(err)throw err;
    pageCount=Math.ceil(result.length/pageSize);
    arr.pageCount=pageCount;
    progress+=50;
    if(progress==100){
      res.send(arr);
    }
  });
  var sql="SELECT * FROM topList LIMIT ? ,?";
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    arr.msg=result;
    progress+=50;
    if(progress==100){
      res.send(arr);
    }
  });
});
router.get('/detail',(req,res)=>{
  var id=req.query.id;
  var sql="SELECT * FROM topList WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result[0]});
  });
});

router.get('/gameList',(req,res)=>{
  var sql = "SELECT * FROM topList";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:result});
  });
});
module.exports=router;
