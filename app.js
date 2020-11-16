// express模块
const express = require('express');
// path
const path = require('path');
const formidable = require('formidable');

// 实现session功能
var session = require('express-session');

const loginRouter = require('./route/login');
const registerRouter=require('./route/register');
const goodsRouter=require('./route/goods');


// 引入连接池模块
const pool = require('./pool');
// 创建web服务器
const app = express();

// 接收post请求参数
// 实现session功能
app.use(session({
  secret: 'keyboard cat',
  resave: false,
  saveUninitialized: false
}));

// 静态资源访问服务功能
app.use(express.static(path.join(__dirname, 'public')));
app.get("/goods",(req,res)=>{
	var sql="select * from goods";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});

app.get("/goodsid",(req,res)=>{
	// var diid=req.query.diid;
	var sql="select * from goods";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		// console.log(result);
	});
});

app.get("/miaos",(req,res)=>{
	var sql="select * from miaos";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});

app.get("/xinps",(req,res)=>{
	var sql="select * from xinps";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});

app.get("/xiangqi",(req,res)=>{
	var sql="select * from xiangqi";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});

app.use(loginRouter);
app.use(registerRouter);
// app.use(goodsRouter);

// 监听端口
app.listen(8080);
console.log('完美');