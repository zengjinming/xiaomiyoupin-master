const express = require('express');
const sql = require('../sql/sql');
// path
const path = require('path');
const formidable = require('formidable');

const router = express.Router();

router.post('/register',(req,res)=>{
    // 创建表单解析对象
    var form = formidable.IncomingForm();
    // 解析表单
    form.parse(req, (err, fields, file) => {
        // 接收客户端传递过来的用户名和密码
        const { username, password } = fields;
        if (!username) {
            res.send({ code: 401, msg: 'uname required' });
            return;
          }
          if (!password) {
            res.send({ code: 402, msg: 'upwd required' });
            return;
          }
        //2.3执行SQL命令
        //到数据中查询是否有用户名和密码同时匹配的数据
        sql.register(username, password, (result) => {
            if (result) {
                res.send("注册成功");
                return;
            } else {//
                // 失败
                res.send("该用户存在");
                return;
            }
        })


    })
})

module.exports = router