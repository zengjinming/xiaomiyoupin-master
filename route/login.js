const express = require('express');
const sql = require('../sql/sql');
const formidable = require('formidable');

// 创建router服务器
const router = express.Router();

router.post('/login', (req, res) => {
    // 创建表单解析对象
    var form = formidable.IncomingForm();
    // 解析表单
    form.parse(req, (err, fields, file) => {
        // 接收客户端传递过来的用户名和密码
        const { username, password } = fields;
        //2.3执行SQL命令
        //到数据中查询是否有用户名和密码同时匹配的数据
        sql.login(username, password, (result) => {
            if (result) {
                res.send('登录成功');
            } else {//查询到了匹配的用户，登录是成功
                // 失败
                res.send("用户名或者密码错误");
            }
        })


    })
})

module.exports = router