SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS mylogin;
#创建新的数据库，设置存储编码
CREATE DATABASE mylogin CHARSET=UTF8;
#进入该数据库
USE mylogin;
#创建保存部门数据的表
CREATE TABLE login(
  -- did INT PRIMARY KEY AUTO_INCREMENT, NOT NULL UNIQUE
  uname VARCHAR(30) CHARACTER SET utf8,
  upwd VARCHAR(8) CHARACTER SET utf8);
#插入数据
INSERT INTO login VALUES('zeng','123456');
INSERT INTO login VALUES('xiaoming','123');
INSERT INTO login VALUES('xiaoqi','1234');
INSERT INTO login VALUES('xiaohong','12345');

DELETE  FROM  login  WHERE  uname='xiaoqi';

CREATE TABLE goods(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  gname VARCHAR(100) CHARACTER SET utf8,
  gdes VARCHAR(200) CHARACTER SET utf8,
  gimg CHAR(50) CHARACTER SET utf8,
  gprice CHAR(20) CHARACTER SET utf8,
  gdct CHAR(20) CHARACTER SET utf8
  
);

CREATE TABLE xiangqi(
  qid INT PRIMARY KEY AUTO_INCREMENT,
  qdec CHAR(20) CHARACTER SET utf8,
  qyou CHAR(20) CHARACTER SET utf8,
  qdian CHAR(20) CHARACTER SET utf8,
  qliwai CHAR(20) CHARACTER SET utf8,
  qxia CHAR(80) CHARACTER SET utf8,
  qcity CHAR(20) CHARACTER SET utf8,
  qshi CHAR(20) CHARACTER SET utf8,
  qxian CHAR(20) CHARACTER SET utf8,
  qcolor CHAR(80) CHARACTER SET utf8,
  gname VARCHAR(100) CHARACTER SET utf8,
  gdes VARCHAR(200) CHARACTER SET utf8,
  gimg CHAR(50) CHARACTER SET utf8,
  gprice CHAR(20) CHARACTER SET utf8,
  gdct CHAR(20) CHARACTER SET utf8
  -- goodId INT,
  -- FOREIGN KEY(goodId) REFERENCES goods(gid)
);

CREATE TABLE miaos(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  mname VARCHAR(100) CHARACTER SET utf8,
  mdes VARCHAR(200) CHARACTER SET utf8,
  mimg CHAR(50) CHARACTER SET utf8,
  mprice1 CHAR(20) CHARACTER SET utf8,
  mprice2 CHAR(20) CHARACTER SET utf8
  
);

CREATE TABLE xinps(
  xid INT PRIMARY KEY AUTO_INCREMENT,
  xname VARCHAR(100) CHARACTER SET utf8,
  xdes VARCHAR(200) CHARACTER SET utf8,
  ximg CHAR(50) CHARACTER SET utf8,
  xprice1 CHAR(20) CHARACTER SET utf8
  
);



  INSERT INTO goods VALUES(1,'Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO goods VALUES(2,'美国Calvin Klein凯文克莱FREE 自由男士 淡香水 100ml','木质芳香调 清新明亮 带来一种随性自信与独立','./image/goods2.webp','216','特价');
  INSERT INTO goods VALUES(3,'Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods3.webp','2999',"");
  INSERT INTO goods VALUES(4,'Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods3.webp','2999',"");
  INSERT INTO goods VALUES(5,'美国Calvin Klein凯文克莱FREE 自由男士 淡香水 100ml','木质芳香调 清新明亮 带来一种随性自信与独立','./image/goods5.webp','216',"特价");
  INSERT INTO goods VALUES(6,'Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO goods VALUES(7,'美国Calvin Klein凯文克莱FREE 自由男士 淡香水 100ml','木质芳香调 清新明亮 带来一种随性自信与独立','./image/goods2.webp','216','特价');
  INSERT INTO goods VALUES(8,'SNK NEOGEO游戏机 迷你街机','SNK40周年纪念 拳皇怀旧游戏机 可投','./image/goods6.webp','199','特价');
  INSERT INTO goods VALUES(9,'叮零智能视频门铃 增强版','小爱音箱互动，变声对讲，超长续航','./image/goods7.webp','269','特价');
  INSERT INTO goods VALUES(10,'美国Calvin Klein凯文克莱FREE 自由男士 淡香水 100ml','木质芳香调 清新明亮 带来一种随性自信与独立','./image/goods2.webp','216','特价');
  INSERT INTO goods VALUES(11,'美国Calvin Klein凯文克莱FREE 自由男士 淡香水 100ml','木质芳香调 清新明亮 带来一种随性自信与独立','./image/goods2.webp','216','特价');


  INSERT INTO xiangqi VALUES(1,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO xiangqi VALUES(2,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','美国Calvin Klein凯文克莱FREE 自由男士 淡香水 100ml','木质芳香调 清新明亮 带来一种随性自信与独立','./image/goods2.webp','216','特价');
  INSERT INTO xiangqi VALUES(3,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO xiangqi VALUES(4,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods2.webp','2999','特价');
  INSERT INTO xiangqi VALUES(5,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO xiangqi VALUES(6,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods2.webp','2999','特价');
  INSERT INTO xiangqi VALUES(7,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO xiangqi VALUES(8,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods2.webp','2999','特价');
  INSERT INTO xiangqi VALUES(9,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  INSERT INTO xiangqi VALUES(10,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods2.webp','2999','特价');
  INSERT INTO xiangqi VALUES(11,'30元饮食老用户专享优惠券',"包邮","三方店铺",'不支持7天无理由','由米旗食品股份有限公司发货并提供售后','江西','赣州','于都','蓝色','Apple/苹果 10.2 英寸 iPad 7 平板电脑','视网膜显示屏，内置摄像头，触控ID，便于携带','./image/goods1.webp','2999','特价');
  

  INSERT INTO miaos VALUES(1,'安慕斯牙刷牙膏',"",'./image/miao1.jpg','9.9','39');
  INSERT INTO miaos VALUES(2,'舒服宝冷敷贴',"",'./image/miao2.jpg','19','57');
  INSERT INTO miaos VALUES(3,'雪花秀滋阴套盒',"",'./image/miao3.jpg','375','840');
  INSERT INTO miaos VALUES(4,'云米来电热棒',"",'./image/miao4.jpg','899','1799');
  INSERT INTO miaos VALUES(5,'全自动机械手表',"",'./image/miao5.jpg','930','2080');
  INSERT INTO miaos VALUES(6,'迷你无线烫熨机',"",'./image/miao6.jpg','99','199');
  INSERT INTO miaos VALUES(7,'洋仔绒牛仔外套',"",'./image/miao7.jpg','159','299');
  INSERT INTO miaos VALUES(8,'云米无线吸尘器',"",'./image/miao8.jpg','799','1299');

  INSERT INTO xinps VALUES(1,'台湾绿柠檬萃取液',"台湾原产天然绿柠檬 每瓶含100颗柠檬萃取，1分钟速成柠檬水",'./image/xin1.jpg','269');
  INSERT INTO xinps VALUES(2,'秒秒测内衣消毒机',"三重除菌，多模式选择，一机多用，免打孔壁挂式",'./image/xin2.jpg','599');
  INSERT INTO xinps VALUES(3,"真无线蓝牙耳机","真无线立体声，戴上即听，摘下就停，拿起自动回连，支持无线充电",'./image/xin3.jpg','229');
  INSERT INTO xinps VALUES(4,'棉羊皮皮克夹',"法国设计，立领有型，时尚百搭",'./image/xin4.jpg','899');
  