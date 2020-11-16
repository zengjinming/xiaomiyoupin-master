const express = require('express');
const sql = require('../sql/sql');
const formidable = require('formidable');

// 创建router服务器
const router = express.Router();

router.post('/goods', (req, res) => {
        //2.3执行SQL命令
        //到数据中查询是否有用户名和密码同时匹配的数据
        sql.goods((result) => {
            if(result){
                res.send(result);
            }
             
        });


    })


module.exports = router