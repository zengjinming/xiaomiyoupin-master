
// 引入连接池模块
const pool = require('../pool');

// 登录模块
const login = function (username, password, callBack) {
    pool.query('SELECT * FROM login WHERE uname=? AND upwd=?', [username, password], (err, result) => {
        if (err) throw err;
        console.log(result);
        if (result.length === 0) {
            callBack && callBack(false);
        } else {//查询到了匹配的用户，登录是成功
            callBack && callBack(true)
        }

    });
}

// 注册模块
const register=function(username,password,callBack){
    pool.query('SELECT * FROM login WHERE uname=?', [username], (err, result) => {
        if (err) throw err;
        console.log(result);
        if (result.length > 0 && result !='') {
          callBack && callBack(false);
       }else{
        pool.query('INSERT INTO login(uname,upwd) VALUES("' + username + '", "' + password + '")', [username, password], (err, result) => {
            if (err) throw err;
            // console.log(result);
            //注册成功
          }); 
          callBack && callBack(true);
        }
      });
}

// 查询商品模块
//2.查询所有用户
const goods=function(callBack){
         pool.query("select * from goods",(err,result)=>{
            if(err) throw err;
            callBack && callBack(true);
            // res.send(result);
         });
}
module.exports = {
    login,
    register,
    goods
    // del
};
