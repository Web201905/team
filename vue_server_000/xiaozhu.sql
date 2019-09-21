set names UTF8;
DROP database if exists xiaozhu;
CREATE database xiaozhu CHARSET UTF8;
use xiaozhu;
CREATE TABLE xiaozhu_index(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname varchar(100),
  img_url varchar(255)
);
CREATE TABLE xiaozhu_collect(
  coid INT PRIMARY KEY AUTO_INCREMENT,
  cname varchar(100),
  rent_way varchar(200),
  uid int(11)
);
CREATE TABLE xiaozhu_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  oname varchar(200),
  image varchar(255),
  rent_way varchar(200),
  price decimal(10,0),
  cid int(11),
  uid int(11)
);
CREATE TABLE xiaozhu_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname varchar(50),
  phone smallint(6),
  head_img varchar(255),
  nickname varchar(30)
);
CREATE TABLE xiaozhu_index_carousel(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img_url varchar(255)
);
CREATE TABLE xiaozhu_index_shenfen(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img_url varchar(255)
);
CREATE TABLE xiaozhu_bottom_swi(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  ltitle varchar(50),
  lname varchar(50),
  ldate DATE, 
  ldetails varchar(255),
  img_url varchar(255)
);
INSERT INTO  xiaozhu_bottom_swi VALUES(null,'房客点评','王帅','2019/9/21','看见这家民宿就被吸引了，感觉很有情调，来了果然没有失望。小院设计的很漂亮，也很用心，硬件设施很好。吃完饭天色渐暗，在小院品茶，乘凉，烧烤，闲谈，真的很惬意。本来想第二天一早去青龙峡的，可小院里能玩的东西太多了，早上感觉没玩够就又玩了一上午，下午才去的青龙峡。只住了一天，真的有点没住够。有K歌房，还有一台街机，童年回忆啊。老人们都在打麻将，反正我看没有闲着的，大家难得聚在一起，玩的都很开心。','details1_small.jpg');
INSERT INTO  xiaozhu_bottom_swi VALUES(null,'房客点评','彭于晏','2019/9/21','我出生在美丽的洱海边，步入社会后开过服装店，开过饭店，最后回到洱海边做了一位迎五湖四海客人的房东。我爱好不多，平时喜欢清晨环海路跑跑步，看看美丽的日出，也喜欢开着小车兜兜风，中午在家品品茶，再照顾一下满院子的小萌肉。超喜欢养猫咪，可是它们后来都跑了！还喜欢用镜头留下每一个美好的瞬间，喜欢用脚步去丈量景区的每一个角落。欢迎加入我的队伍，我在苍山脚下洱海边等着你哦。','details2_small.jpg');
INSERT INTO  xiaozhu_bottom_swi VALUES(null,'房客点评','成龙','2019/9/21','看见这家民宿就被吸引了，感觉很有情调，来了果然没有失望。小院设计的很漂亮，也很用心，硬件设施很好。吃完饭天色渐暗，在小院品茶，乘凉，烧烤，闲谈，真的很惬意。本来想第二天一早去青龙峡的，可小院里能玩的东西太多了，早上感觉没玩够就又玩了一上午，下午才去的青龙峡。只住了一天，真的有点没住够。有K歌房，还有一台街机，童年回忆啊。老人们都在打麻将，反正我看没有闲着的，大家难得聚在一起，玩的都很开心。','small.jpg');
INSERT INTO  xiaozhu_bottom_swi VALUES(null,'房客点评','杨小同','2019/9/21','看见这家民宿就被吸引了，感觉很有情调，来了果然没有失望。小院设计的很漂亮，也很用心，硬件设施很好。吃完饭天色渐暗，在小院品茶，乘凉，烧烤，闲谈，真的很惬意。本来想第二天一早去青龙峡的，可小院里能玩的东西太多了，早上感觉没玩够就又玩了一上午，下午才去的青龙峡。只住了一天，真的有点没住够。有K歌房，还有一台街机，童年回忆啊。老人们都在打麻将，反正我看没有闲着的，大家难得聚在一起，玩的都很开心。','51,0,34,31824,132,132,4601acbd.jpg');
INSERT INTO  xiaozhu_index_shenfen(img_url) VALUES('2019-09-20_101729.png');
INSERT INTO  xiaozhu_index_shenfen(img_url) VALUES('2019-09-20_101815.png');
INSERT INTO  xiaozhu_index_shenfen(img_url) VALUES('2019-09-20_101834.png');
INSERT INTO  xiaozhu_index_shenfen(img_url) VALUES('2019-09-20_101848.png');
INSERT INTO xiaozhu_index(img_url) VALUES('bao.svg');
INSERT INTO xiaozhu_index(img_url) VALUES('bg_comment.jpg');
INSERT INTO xiaozhu_index_carousel(img_url) VALUES('carousel1.jpg');
INSERT INTO xiaozhu_index_carousel(img_url) VALUES('carousel2.jpg');
INSERT INTO xiaozhu_index_carousel(img_url) VALUES('carousel3.jpg');
INSERT INTO xiaozhu_index_carousel(img_url) VALUES('carousel4.jpg');
INSERT INTO xiaozhu_index_carousel(img_url) VALUES('carousel5.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('city_cq.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('city_hz_big.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('city_qd_big.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('city_sz.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('code_pic.png');
INSERT INTO xiaozhu_index(img_url) VALUES('connect2.svg');
INSERT INTO xiaozhu_index(img_url) VALUES('conntect1.png');
INSERT INTO xiaozhu_index(img_url) VALUES('details1.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('details1_small.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('details2.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('details2_small.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('govRecord_icon.png');
INSERT INTO xiaozhu_index(img_url) VALUES('iphoto.svg');
INSERT INTO xiaozhu_index(img_url) VALUES('details2.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('loadApp.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('open.png');
INSERT INTO xiaozhu_index(img_url) VALUES('person.svg');
INSERT INTO xiaozhu_index(img_url) VALUES('regbanner.png');
INSERT INTO xiaozhu_index(img_url) VALUES('small.jpg');
INSERT INTO xiaozhu_index(img_url) VALUES('weChat.png');
INSERT INTO xiaozhu_index(img_url) VALUES('weibo.png');
INSERT INTO xiaozhu_index(img_url) VALUES('wx_1.png');
INSERT INTO xiaozhu_index(img_url) VALUES('wx_2.png');
INSERT INTO xiaozhu_index(img_url) VALUES('photo.jpg');





