#设置连接的字符编码
SET NAMES UTF8;
#删除数据库
DROP DATABASE IF EXISTS game;
#创建数据库book
CREATE DATABASE game CHARSET=UTF8;
#使用数据库
USE game;
#创建轮播数据表
#创建user数据表
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(20),
  upwd VARCHAR(20)
);


#轮播1
CREATE TABLE carousel(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  img_url VARCHAR(255)
);
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sc1.jpg');
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sc5.jpg');
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sc6.jpg');
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sw1.jpg');
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sw2.jpg');
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sw3.jpg');
INSERT INTO carousel VALUES(NULL,'全民砰砰砰','http://127.0.0.1:4000/img/desw/sw4.png');
#轮播2
CREATE TABLE carousel2(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/4.jpg');
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/5.jpg');
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/6.jpg');
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/7.jpg');
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/8.jpg');
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/9.jpg');
INSERT INTO carousel2 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/10.jpg');
#轮播3
CREATE TABLE carousel3(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO carousel3 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/11.jpg');
INSERT INTO carousel3 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/12.jpg');
INSERT INTO carousel3 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/13.jpg');
INSERT INTO carousel3 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/14.jpg');
INSERT INTO carousel3 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/15.jpg');
INSERT INTO carousel3 VALUES(NULL,'http://127.0.0.1:4000/img/swipe/16.jpg');

#排行榜列表
CREATE TABLE topList(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  top INT,
  title VARCHAR(128),
  family VARCHAR(20),
  storage DECIMAL(10,2), #占用内存
  intro VARCHAR(255), #简介
  class VARCHAR(20)
);
#newGame
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/0.jpg',1,'来自星星的僵尸','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/1.jpg',2,'万人扎金花','棋牌游戏','12.45','不一样的画面，不一样的风格，快来加入万人炸金花','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/2.jpg',3,'3D狂野飞车','赛车竞速','17.26','速度与激情的展示，其是一款可玩性极高的赛车游戏','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/3.jpg',4,'嘉米麻将','棋牌游戏','20.65','麻将麻将麻将麻将麻将麻将麻将麻将麻将麻将','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/4.jpg',5,'万人斗地主','棋牌游戏','14.32','斗地主斗地主斗地主斗地主斗地主斗地主斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/5.jpg',6,'女神斗地主','动作射击','25.65','女神斗地主女神斗地主女神斗地主女神斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/6.jpg',7,'天天爱闯关','动作射击','35.23','天天爱闯关天天爱闯关天天爱闯关天天爱闯关','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/7.jpg',8,'天天美女','角色模拟','27.65','天天美女天天美女天天美女天天美女天天美女','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/8.jpg',9,'吸血鬼日记','动作射击','27.65','吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记','newGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/0.jpg',10,'来自星星的僵尸','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/1.jpg',11,'万人扎金花','棋牌游戏','12.45','不一样的画面，不一样的风格，快来加入万人炸金花','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/2.jpg',12,'3D狂野飞车','赛车竞速','17.26','速度与激情的展示，其是一款可玩性极高的赛车游戏','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/3.jpg',13,'嘉米麻将','棋牌游戏','20.65','麻将麻将麻将麻将麻将麻将麻将麻将麻将麻将','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/4.jpg',14,'万人斗地主','棋牌游戏','14.32','斗地主斗地主斗地主斗地主斗地主斗地主斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/5.jpg',15,'女神斗地主','动作射击','25.65','女神斗地主女神斗地主女神斗地主女神斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/6.jpg',16,'天天爱闯关','动作射击','35.23','天天爱闯关天天爱闯关天天爱闯关天天爱闯关','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/7.jpg',17,'天天美女','角色模拟','27.65','天天美女天天美女天天美女天天美女天天美女','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/8.jpg',18,'吸血鬼日记','动作射击','27.65','吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记','newGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/0.jpg',19,'来自星星的僵尸','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/1.jpg',20,'万人扎金花','棋牌游戏','12.45','不一样的画面，不一样的风格，快来加入万人炸金花','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/2.jpg',21,'3D狂野飞车','赛车竞速','17.26','速度与激情的展示，其是一款可玩性极高的赛车游戏','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/3.jpg',22,'嘉米麻将','棋牌游戏','20.65','麻将麻将麻将麻将麻将麻将麻将麻将麻将麻将','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/4.jpg',23,'万人斗地主','棋牌游戏','14.32','斗地主斗地主斗地主斗地主斗地主斗地主斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/5.jpg',24,'女神斗地主','动作射击','25.65','女神斗地主女神斗地主女神斗地主女神斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/6.jpg',25,'天天爱闯关','动作射击','35.23','天天爱闯关天天爱闯关天天爱闯关天天爱闯关','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/7.jpg',26,'天天美女','角色模拟','27.65','天天美女天天美女天天美女天天美女天天美女','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/8.jpg',27,'吸血鬼日记','动作射击','27.65','吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记','newGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/0.jpg',28,'来自星星的僵尸','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/1.jpg',29,'万人扎金花','棋牌游戏','12.45','不一样的画面，不一样的风格，快来加入万人炸金花','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/2.jpg',30,'3D狂野飞车','赛车竞速','17.26','速度与激情的展示，其是一款可玩性极高的赛车游戏','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/3.jpg',31,'嘉米麻将','棋牌游戏','20.65','麻将麻将麻将麻将麻将麻将麻将麻将麻将麻将','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/4.jpg',32,'万人斗地主','棋牌游戏','14.32','斗地主斗地主斗地主斗地主斗地主斗地主斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/5.jpg',33,'女神斗地主','动作射击','25.65','女神斗地主女神斗地主女神斗地主女神斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/6.jpg',34,'天天爱闯关','动作射击','35.23','天天爱闯关天天爱闯关天天爱闯关天天爱闯关','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/7.jpg',35,'天天美女','角色模拟','27.65','天天美女天天美女天天美女天天美女天天美女','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/8.jpg',36,'吸血鬼日记','动作射击','27.65','吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记','newGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/0.jpg',37,'来自星星的僵尸','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/1.jpg',38,'万人扎金花','棋牌游戏','12.45','不一样的画面，不一样的风格，快来加入万人炸金花','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/2.jpg',39,'3D狂野飞车','赛车竞速','17.26','速度与激情的展示，其是一款可玩性极高的赛车游戏','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/3.jpg',40,'嘉米麻将','棋牌游戏','20.65','麻将麻将麻将麻将麻将麻将麻将麻将麻将麻将','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/4.jpg',41,'万人斗地主','棋牌游戏','14.32','斗地主斗地主斗地主斗地主斗地主斗地主斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/5.jpg',42,'女神斗地主','动作射击','25.65','女神斗地主女神斗地主女神斗地主女神斗地主','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/6.jpg',43,'天天爱闯关','动作射击','35.23','天天爱闯关天天爱闯关天天爱闯关天天爱闯关','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/7.jpg',44,'天天美女','角色模拟','27.65','天天美女天天美女天天美女天天美女天天美女','newGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/rec/8.jpg',45,'吸血鬼日记','动作射击','27.65','吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记吸血鬼日记','newGame');

#downGame
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/0.jpg',1,'黄金矿工3','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/1.jpg',2,'水果爱消除','动作射击','12.45','不一样的画面，不一样的风格，快来加入水果爱消除','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/2.jpg',3,'熊出没之森林保卫','动作射击','17.26','熊出没之森林保卫游戏熊出没之森林保卫游戏','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/3.jpg',4,'酷酷斗地主','棋牌游戏','20.65','酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/4.jpg',5,'千炮激射捕鱼','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/5.jpg',6,'开心消消乐迷你版','动作射击','25.65','开心消消乐迷你版开心消消乐迷你版','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/6.jpg',7,'逃脱本色','动作射击','35.23','逃脱本色逃脱本色逃脱本色逃脱本色','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/7.jpg',8,'命运之谜','角色模拟','27.65','命运之谜命运之谜命运之谜命运之谜','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/8.jpg',9,'刺客信条','动作射击','27.65','刺客信条刺客信条刺刺刺刺刺刺刺刺','downGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/0.jpg',10,'黄金矿工3','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/1.jpg',11,'水果爱消除','动作射击','12.45','不一样的画面，不一样的风格，快来加入水果爱消除','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/2.jpg',12,'熊出没之森林保卫','动作射击','17.26','熊出没之森林保卫游戏熊出没之森林保卫游戏','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/3.jpg',13,'酷酷斗地主','棋牌游戏','20.65','酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/4.jpg',14,'千炮激射捕鱼','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/5.jpg',15,'开心消消乐迷你版','动作射击','25.65','开心消消乐迷你版开心消消乐迷你版','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/6.jpg',16,'逃脱本色','动作射击','35.23','逃脱本色逃脱本色逃脱本色逃脱本色','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/7.jpg',17,'命运之谜','角色模拟','27.65','命运之谜命运之谜命运之谜命运之谜','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/8.jpg',18,'刺客信条','动作射击','27.65','刺客信条刺客信条刺刺刺刺刺刺刺刺','downGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/0.jpg',19,'黄金矿工3','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/1.jpg',20,'水果爱消除','动作射击','12.45','不一样的画面，不一样的风格，快来加入水果爱消除','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/2.jpg',21,'熊出没之森林保卫','动作射击','17.26','熊出没之森林保卫游戏熊出没之森林保卫游戏','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/3.jpg',22,'酷酷斗地主','棋牌游戏','20.65','酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/4.jpg',23,'千炮激射捕鱼','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/5.jpg',24,'开心消消乐迷你版','动作射击','25.65','开心消消乐迷你版开心消消乐迷你版','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/6.jpg',25,'逃脱本色','动作射击','35.23','逃脱本色逃脱本色逃脱本色逃脱本色','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/7.jpg',26,'命运之谜','角色模拟','27.65','命运之谜命运之谜命运之谜命运之谜','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/8.jpg',27,'刺客信条','动作射击','27.65','刺客信条刺客信条刺刺刺刺刺刺刺刺','downGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/0.jpg',28,'黄金矿工3','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/1.jpg',29,'水果爱消除','动作射击','12.45','不一样的画面，不一样的风格，快来加入水果爱消除','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/2.jpg',30,'熊出没之森林保卫','动作射击','17.26','熊出没之森林保卫游戏熊出没之森林保卫游戏','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/3.jpg',31,'酷酷斗地主','棋牌游戏','20.65','酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/4.jpg',32,'千炮激射捕鱼','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/5.jpg',33,'开心消消乐迷你版','动作射击','25.65','开心消消乐迷你版开心消消乐迷你版','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/6.jpg',34,'逃脱本色','动作射击','35.23','逃脱本色逃脱本色逃脱本色逃脱本色','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/7.jpg',35,'命运之谜','角色模拟','27.65','命运之谜命运之谜命运之谜命运之谜','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/8.jpg',36,'刺客信条','动作射击','27.65','刺客信条刺客信条刺刺刺刺刺刺刺刺','downGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/0.jpg',37,'黄金矿工3','动作射击','27.65','抵抗外来侵略者看，共同来捍卫属于我们的家园','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/1.jpg',38,'水果爱消除','动作射击','12.45','不一样的画面，不一样的风格，快来加入水果爱消除','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/2.jpg',39,'熊出没之森林保卫','动作射击','17.26','熊出没之森林保卫游戏熊出没之森林保卫游戏','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/3.jpg',40,'酷酷斗地主','棋牌游戏','20.65','酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主酷酷斗地主','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/4.jpg',41,'千炮激射捕鱼','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/5.jpg',42,'开心消消乐迷你版','动作射击','25.65','开心消消乐迷你版开心消消乐迷你版','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/6.jpg',43,'逃脱本色','动作射击','35.23','逃脱本色逃脱本色逃脱本色逃脱本色','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/7.jpg',44,'命运之谜','角色模拟','27.65','命运之谜命运之谜命运之谜命运之谜','downGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/8.jpg',45,'刺客信条','动作射击','27.65','刺客信条刺客信条刺刺刺刺刺刺刺刺','downGame');
#moodsGame
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/9.jpg',1,'Blendoku','动作射击','27.65','BlendokuBlendokuBlendokuBlendoku','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/10.jpg',2,'看你有多色','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/11.jpg',3,'么么哒','动作射击','17.26','么么哒么么哒么么哒么么哒么么哒么么哒','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/12.jpg',4,'暗影格斗','动作射击','20.65','动作射击动作射击动作射击动作射击动作射击动作射击','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/14.jpg',5,'who stole me','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/15.jpg',6,'谁是卧底','动作射击','25.65','谁是卧底谁是卧底谁是卧底谁是卧底','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/16.jpg',7,'国宝三国','动作射击','35.23','国宝三国国宝三国国宝三国国宝三国国宝三国','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/17.jpg',8,'怪物猎人','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/13.jpg',9,'暗影之刃破解版','动作射击','27.65','暗影之刃破解版暗影之刃破解版暗影之刃破解版','moodsGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/9.jpg',10,'Blendoku','动作射击','27.65','BlendokuBlendokuBlendokuBlendoku','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/10.jpg',11,'看你有多色','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/11.jpg',12,'么么哒','动作射击','17.26','么么哒么么哒么么哒么么哒么么哒么么哒','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/12.jpg',13,'暗影格斗','动作射击','20.65','动作射击动作射击动作射击动作射击动作射击动作射击','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/14.jpg',14,'who stole me','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/15.jpg',15,'谁是卧底','动作射击','25.65','谁是卧底谁是卧底谁是卧底谁是卧底','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/16.jpg',16,'国宝三国','动作射击','35.23','国宝三国国宝三国国宝三国国宝三国国宝三国','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/17.jpg',17,'怪物猎人','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/13.jpg',18,'暗影之刃破解版','动作射击','27.65','暗影之刃破解版暗影之刃破解版暗影之刃破解版','moodsGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/9.jpg',19,'Blendoku','动作射击','27.65','BlendokuBlendokuBlendokuBlendoku','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/10.jpg',20,'看你有多色','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/11.jpg',21,'么么哒','动作射击','17.26','么么哒么么哒么么哒么么哒么么哒么么哒','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/12.jpg',22,'暗影格斗','动作射击','20.65','动作射击动作射击动作射击动作射击动作射击动作射击','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/14.jpg',23,'who stole me','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/15.jpg',24,'谁是卧底','动作射击','25.65','谁是卧底谁是卧底谁是卧底谁是卧底','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/16.jpg',25,'国宝三国','动作射击','35.23','国宝三国国宝三国国宝三国国宝三国国宝三国','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/17.jpg',26,'怪物猎人','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/13.jpg',27,'暗影之刃破解版','动作射击','27.65','暗影之刃破解版暗影之刃破解版暗影之刃破解版','moodsGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/9.jpg',28,'Blendoku','动作射击','27.65','BlendokuBlendokuBlendokuBlendoku','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/10.jpg',29,'看你有多色','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/11.jpg',30,'么么哒','动作射击','17.26','么么哒么么哒么么哒么么哒么么哒么么哒','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/12.jpg',31,'暗影格斗','动作射击','20.65','动作射击动作射击动作射击动作射击动作射击动作射击','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/14.jpg',32,'who stole me','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/15.jpg',33,'谁是卧底','动作射击','25.65','谁是卧底谁是卧底谁是卧底谁是卧底','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/16.jpg',34,'国宝三国','动作射击','35.23','国宝三国国宝三国国宝三国国宝三国国宝三国','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/17.jpg',35,'怪物猎人','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/13.jpg',36,'暗影之刃破解版','动作射击','27.65','暗影之刃破解版暗影之刃破解版暗影之刃破解版','moodsGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/9.jpg',37,'Blendoku','动作射击','27.65','BlendokuBlendokuBlendokuBlendoku','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/10.jpg',38,'看你有多色','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/11.jpg',39,'么么哒','动作射击','17.26','么么哒么么哒么么哒么么哒么么哒么么哒','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/12.jpg',40,'暗影格斗','动作射击','20.65','动作射击动作射击动作射击动作射击动作射击动作射击','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/14.jpg',41,'who stole me','动作射击','14.32','千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼千炮激射捕鱼','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/15.jpg',42,'谁是卧底','动作射击','25.65','谁是卧底谁是卧底谁是卧底谁是卧底','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/16.jpg',43,'国宝三国','动作射击','35.23','国宝三国国宝三国国宝三国国宝三国国宝三国','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/17.jpg',44,'怪物猎人','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','moodsGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/list/13.jpg',45,'暗影之刃破解版','动作射击','27.65','暗影之刃破解版暗影之刃破解版暗影之刃破解版','moodsGame');
#demandGame
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/0.jpg',1,'纪念碑谷','动作射击','27.65','纪念碑谷纪念碑谷纪念碑谷纪念碑谷纪念碑谷','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/1.jpg',2,'围住神经猫','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/2.jpg',3,'狂野飙车','赛车竞速','17.26','狂野飙车狂野飙车狂野飙车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/3.jpg',4,'3D狂热飞车','赛车竞速','20.65','3D狂热飞车3D狂热飞车3D狂热飞车3D狂热飞车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/4.jpg',5,'天天老虎机','动作射击','14.32','天天老虎机天天老虎机','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/5.jpg',6,'变形金刚','动作射击','25.65','变形金刚变形金刚变形金刚变形金刚','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/6.jpg',7,'拳皇98','动作射击','35.23','拳皇98拳皇98拳皇98拳皇98拳皇98拳皇98','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/7.jpg',8,'街头霸王','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/8.jpg',9,'全民狂飙','赛车竞速','27.65','全民狂飙全民狂飙全民狂飙全民狂飙','demandGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/0.jpg',10,'纪念碑谷','动作射击','27.65','纪念碑谷纪念碑谷纪念碑谷纪念碑谷纪念碑谷','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/1.jpg',11,'围住神经猫','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/2.jpg',12,'狂野飙车','赛车竞速','17.26','狂野飙车狂野飙车狂野飙车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/3.jpg',13,'3D狂热飞车','赛车竞速','20.65','3D狂热飞车3D狂热飞车3D狂热飞车3D狂热飞车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/4.jpg',14,'天天老虎机','动作射击','14.32','天天老虎机天天老虎机','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/5.jpg',15,'变形金刚','动作射击','25.65','变形金刚变形金刚变形金刚变形金刚','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/6.jpg',16,'拳皇98','动作射击','35.23','拳皇98拳皇98拳皇98拳皇98拳皇98拳皇98','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/7.jpg',17,'街头霸王','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/8.jpg',18,'全民狂飙','赛车竞速','27.65','全民狂飙全民狂飙全民狂飙全民狂飙','demandGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/0.jpg',19,'纪念碑谷','动作射击','27.65','纪念碑谷纪念碑谷纪念碑谷纪念碑谷纪念碑谷','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/1.jpg',20,'围住神经猫','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/2.jpg',21,'狂野飙车','赛车竞速','17.26','狂野飙车狂野飙车狂野飙车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/3.jpg',22,'3D狂热飞车','赛车竞速','20.65','3D狂热飞车3D狂热飞车3D狂热飞车3D狂热飞车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/4.jpg',23,'天天老虎机','动作射击','14.32','天天老虎机天天老虎机','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/5.jpg',24,'变形金刚','动作射击','25.65','变形金刚变形金刚变形金刚变形金刚','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/6.jpg',25,'拳皇98','动作射击','35.23','拳皇98拳皇98拳皇98拳皇98拳皇98拳皇98','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/7.jpg',26,'街头霸王','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/8.jpg',27,'全民狂飙','赛车竞速','27.65','全民狂飙全民狂飙全民狂飙全民狂飙','demandGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/0.jpg',28,'纪念碑谷','动作射击','27.65','纪念碑谷纪念碑谷纪念碑谷纪念碑谷纪念碑谷','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/1.jpg',29,'围住神经猫','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/2.jpg',30,'狂野飙车','赛车竞速','17.26','狂野飙车狂野飙车狂野飙车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/3.jpg',31,'3D狂热飞车','赛车竞速','20.65','3D狂热飞车3D狂热飞车3D狂热飞车3D狂热飞车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/4.jpg',32,'天天老虎机','动作射击','14.32','天天老虎机天天老虎机','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/5.jpg',33,'变形金刚','动作射击','25.65','变形金刚变形金刚变形金刚变形金刚','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/6.jpg',34,'拳皇98','动作射击','35.23','拳皇98拳皇98拳皇98拳皇98拳皇98拳皇98','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/7.jpg',35,'街头霸王','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/8.jpg',36,'全民狂飙','赛车竞速','27.65','全民狂飙全民狂飙全民狂飙全民狂飙','demandGame');

INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/0.jpg',37,'纪念碑谷','动作射击','27.65','纪念碑谷纪念碑谷纪念碑谷纪念碑谷纪念碑谷','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/1.jpg',38,'围住神经猫','动作射击','12.45','不一样的画面，不一样的风格，快来加入看你有多色','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/2.jpg',39,'狂野飙车','赛车竞速','17.26','狂野飙车狂野飙车狂野飙车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/3.jpg',40,'3D狂热飞车','赛车竞速','20.65','3D狂热飞车3D狂热飞车3D狂热飞车3D狂热飞车','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/4.jpg',41,'天天老虎机','动作射击','14.32','天天老虎机天天老虎机','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/5.jpg',42,'变形金刚','动作射击','25.65','变形金刚变形金刚变形金刚变形金刚','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/6.jpg',43,'拳皇98','动作射击','35.23','拳皇98拳皇98拳皇98拳皇98拳皇98拳皇98','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/7.jpg',44,'街头霸王','角色模拟','27.65','怪物猎人怪物猎人怪物猎人怪物猎人怪物猎人','demandGame');
INSERT INTO topList VALUES(NULL,'http://127.0.0.1:4000/img/classics/8.jpg',45,'全民狂飙','赛车竞速','27.65','全民狂飙全民狂飙全民狂飙全民狂飙','demandGame');

CREATE TABLE wangYou(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(255)
);
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sc1.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sw5.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sc2.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sc3.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sc4.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sc5.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sc6.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sw1.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sw2.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sw3.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sw4.png','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/sw6.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/w1.png','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/w2.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');
INSERT INTO wangYou VALUES(NULL,'http://127.0.0.1:4000/img/desw/w3.jpg','上岛咖啡简单概括附加费的规避可能肯定是那个迪卡侬');


