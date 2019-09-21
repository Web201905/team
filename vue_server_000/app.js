//app.js 服务器端项目
//1:下载第三方模块 
//express/express-session/cors/mysql
//2:将第三方模块引入到当前程序中
const express= require("express");
const session = require("express-session");
const cors = require("cors");
const mysql = require("mysql");
//3:创建数据库连接池
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   connectionLimit:20,
   database:"xiaozhu"
})

//4:创建web服务器监听 8080 端口
var server = express();
server.listen(8080);
//5:处理跨域 cors 
//5.1：配置允许访问程序地址(脚手架)
//     http://127.0.0.1:5050  (ok)
//     http://localhost:5050
//5.2:每请求是否验证true
server.use(cors({
  origin:["http://127.0.0.1:5050","http://localhost:5050"],
  credentials:true
}))
//6:配置session
//#session配置一定要在所有请求之前
server.use(session({
   secret:"128位字符串",    //#安全字符串
   resave:true,            //#每次请求保存数据 
   saveUninitialized:true  //#保存初始化数据
}));
//7:配置静态目录
//http://127.0.0.1:8080/01.jpg
server.use(express.static("public"));

//功能一:完成用户登录
//启动服务器app.js/启动数据库
//打开浏览器
//http://127.0.0.1:8080/login?uname=tom&upwd=123
//http://127.0.0.1:8080/login?uname=tom&upwd=122
//功能二:商品分页显示77~109
//1:接收客户请求 /product GET
// http://127.0.0.1:8080/product
// http://127.0.0.1:8080/product?pno=2
// http://127.0.0.1:8080/product?pno=3&pageSize=5
server.get("/index",(req,res)=>{
 //2:接收客户请求数据 
 //4:创建sql语句
 var sql = "SELECT img_url";
 sql+=" FROM xiaozhu_index_carousel";
 //5:发送sql语句
 pool.query(sql,(err,result)=>{
   //6:获取返回结果发送客户端
   if(err)throw err;
   res.send({code:1,msg:"查询成功",
   data:result});
 });
})
//2.请求首页
server.get("/indexFour",(req,res)=>{
  //2:接收客户请求数据 
  //4:创建sql语句
  var sql = "SELECT img_url";
  sql+=" FROM  xiaozhu_index_shenfen";
  //5:发送sql语句
  pool.query(sql,(err,result)=>{
    //6:获取返回结果发送客户端
    if(err)throw err;
    res.send({code:1,msg:"查询成功",
    data:result});
  });
 })
 //3.请求底部录播
server.get("/bottomSwi",(req,res)=>{
  //2:接收客户请求数据 
  //4:创建sql语句
  var sql = "SELECT *";
  sql+=" FROM  xiaozhu_bottom_swi";
  //5:发送sql语句
  pool.query(sql,(err,result)=>{
    //6:获取返回结果发送客户端
    if(err)throw err;
    res.send({code:1,msg:"查询成功",
    data:result});
  });
 })



