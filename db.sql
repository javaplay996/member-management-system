/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - huiyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huiyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huiyuanguanli`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615340285615 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1615289160912,'2021-03-09 19:26:00',1614430386281,'河南省郑州市金水区杜岭街道西太康路360广场','zhang','17703998887','是'),(1615339448401,'2021-03-10 09:24:07',1614431342348,'河南省郑州市二七区铭功路街道人民公园新水上乐园','王先生','17703789898','是'),(1615340285614,'2021-03-10 09:38:05',1615339905628,'河南省郑州市金水区经八路街道经五路13号院河南省通信公司家属院','wang','17789898797','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615340190184 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1615271226330,'2021-03-09 14:27:06','shangpinxinxi',1614430386281,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',1,100,10),(1615339468120,'2021-03-10 09:24:27','shangpinxinxi',1614431342348,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',2,100,10);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (14,'picture2','http://localhost:8080/huiyuanguanli/upload/1615270854586.jpg'),(15,'picture2','http://localhost:8080/huiyuanguanli/upload/1615340103954.jpg');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (20,1614430386281,1615270508272,'使用',124,'2021-03-09 20:02:31','2021-03-09 20:02:31'),(21,1614430386281,1615270508272,'添加',36,'2021-03-09 20:02:31','2021-03-09 20:02:31'),(22,1614430386281,1615270508272,'使用',36,'2021-03-09 20:04:34','2021-03-09 20:04:34'),(23,1614430386281,1615270508272,'添加',24,'2021-03-09 20:04:34','2021-03-09 20:04:34'),(24,1614430386281,1615270508272,'添加',24,'2021-03-09 20:07:51','2021-03-09 20:07:51'),(25,1614430386281,1615270508272,'添加',24,'2021-03-09 20:15:04','2021-03-09 20:15:06'),(26,1614430386281,1615270508272,'添加',24,'2021-03-09 20:16:51','2021-03-09 20:16:52'),(27,1614430386281,1615270645648,'添加',20,'2021-03-09 20:36:37','2021-03-09 20:36:38'),(28,1614430386281,1615270421725,'添加',2,'2021-03-09 20:40:34','2021-03-09 20:40:34'),(29,1614430386281,1615270421725,'添加',2,'2021-03-09 20:41:56','2021-03-09 20:41:56'),(30,1614430386281,1615270421725,'添加',1,'2021-03-09 20:48:51','2021-03-09 20:48:52'),(31,1614430386281,1615270421725,'使用',10,'2021-03-09 21:18:49','2021-03-09 21:18:49'),(32,1614430386281,1615270421725,'添加',1,'2021-03-09 21:18:49','2021-03-09 21:18:51'),(33,1614431342348,1615270421725,'使用',20,'2021-03-10 09:24:34','2021-03-10 09:24:34'),(34,1614431342348,1615270421725,'添加',2,'2021-03-10 09:24:34','2021-03-10 09:24:34'),(35,1615339905628,1615270379153,'添加',1,'2021-03-10 09:38:49','2021-03-10 09:38:49'),(36,1615339905628,1615270421725,'添加',1,'2021-03-10 09:39:43','2021-03-10 09:39:43'),(37,1615339905628,1615270421725,'使用',1,'2021-03-10 09:39:43','2021-03-10 09:39:43');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-09 22:39:58','新闻标题1','http://localhost:8080/huiyuanguanli/upload/news_picture1.jpg','内容1'),(82,'2021-03-09 22:39:58','新闻标题2','http://localhost:8080/huiyuanguanli/upload/news_picture2.jpg','内容2'),(83,'2021-03-09 22:39:58','新闻标题3','http://localhost:8080/huiyuanguanli/upload/news_picture3.jpg','内容3'),(84,'2021-03-09 22:39:58','新闻标题4','http://localhost:8080/huiyuanguanli/upload/news_picture4.jpg','内容4'),(85,'2021-03-09 22:39:58','新闻标题5','http://localhost:8080/huiyuanguanli/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615340383225 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615291474147,'2021-03-09 20:04:33','2021392043347647771','shangpinxinxi',1614430386281,1615270508272,'金龙鱼油','http://localhost:8080/huiyuanguanli/upload/1615270471576.jpg',2,100,80,200,160,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615291670366,'2021-03-09 20:07:49','2021392074987134642','shangpinxinxi',1614430386281,1615270508272,'金龙鱼油','http://localhost:8080/huiyuanguanli/upload/1615270471576.jpg',2,100,80,200,160,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615292105235,'2021-03-09 20:15:04','2021392014407118880','shangpinxinxi',1614430386281,1615270508272,'金龙鱼油','http://localhost:8080/huiyuanguanli/upload/1615270471576.jpg',2,100,80,200,160,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615292211883,'2021-03-09 20:16:51','20213920163591439674','shangpinxinxi',1614430386281,1615270508272,'金龙鱼油','http://localhost:8080/huiyuanguanli/upload/1615270471576.jpg',2,100,80,200,160,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615293397677,'2021-03-09 20:36:37','20213920361673833802','shangpinxinxi',1614430386281,1615270645648,'普通花生油','http://localhost:8080/huiyuanguanli/upload/1615270520442.jpg',2,60,30,120,60,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615293634857,'2021-03-09 20:40:34','20213920403425133906','shangpinxinxi',1614430386281,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',2,100,10,200,20,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615293717263,'2021-03-09 20:41:56','20213920415668188509','shangpinxinxi',1614430386281,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',2,100,10,200,20,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615293759041,'2021-03-09 20:42:38','20213920422916042688','shangpinxinxi',1614430386281,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',1,100,10,100,10,1,'未支付','河南省郑州市金水区杜岭街道西太康路360广场'),(1615294131525,'2021-03-09 20:48:51','2021392048512667349','shangpinxinxi',1614430386281,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',1,100,10,100,10,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615295929904,'2021-03-09 21:18:49','20213921184941908922','shangpinxinxi',1614430386281,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',1,100,10,100,10,1,'已发货','河南省郑州市金水区杜岭街道西太康路360广场'),(1615339475661,'2021-03-10 09:24:34','20213109243474707747','shangpinxinxi',1614431342348,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',2,100,10,200,20,1,'已发货','河南省郑州市二七区铭功路街道人民公园新水上乐园'),(1615340303650,'2021-03-10 09:38:22','20213109382281860060','shangpinxinxi',1615339905628,1615270379153,'橙子','http://localhost:8080/huiyuanguanli/upload/1615270346951.jpg',1,100,90,100,90,1,'未支付','河南省郑州市金水区经八路街道经五路13号院河南省通信公司家属院'),(1615340330357,'2021-03-10 09:38:49','20213109384962091409','shangpinxinxi',1615339905628,1615270379153,'橙子','http://localhost:8080/huiyuanguanli/upload/1615270346951.jpg',1,100,90,100,90,1,'已完成','河南省郑州市金水区经八路街道经五路13号院河南省通信公司家属院'),(1615340383224,'2021-03-10 09:39:43','20213109394296069534','shangpinxinxi',1615339905628,1615270421725,'苹果','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg',1,100,10,100,10,1,'已完成','河南省郑州市金水区经八路街道经五路13号院河南省通信公司家属院');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615339929671 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-09 22:39:58','商品分类1'),(22,'2021-03-09 22:39:58','商品分类2'),(23,'2021-03-09 22:39:58','商品分类3'),(24,'2021-03-09 22:39:58','商品分类4'),(25,'2021-03-09 22:39:58','商品分类5'),(26,'2021-03-09 22:39:58','商品分类6'),(1615339929670,'2021-03-10 09:32:09','分类78');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615339992093 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1615270379153,'2021-03-09 14:12:58','1615270334','橙子','商品分类2','98','','大','萨达萨达是\r\n','http://localhost:8080/huiyuanguanli/upload/1615270346951.jpg','2021-03-10 09:38:49',17,100,90,1,1),(1615270421725,'2021-03-09 14:13:41','1615270385','苹果','商品分类2','93','富士山','大','撒大苏打\r\n','http://localhost:8080/huiyuanguanli/upload/1615270394487.jpg','2021-03-10 09:39:42',44,100,10,1,1),(1615270461631,'2021-03-09 14:14:20','1615270425','大米','商品分类3','','金龙鱼大米','大','啊啊\r\n','http://localhost:8080/huiyuanguanli/upload/1615270431456.jpg','2021-03-09 19:46:26',6,80,50,10,1),(1615270508272,'2021-03-09 14:15:07','1615270464','金龙鱼油','商品分类1','100','金龙鱼','大','撒大大撒\r\n','http://localhost:8080/huiyuanguanli/upload/1615270471576.jpg','2021-03-10 09:39:08',12,100,80,12,1),(1615270645648,'2021-03-09 14:17:25','1615270513','普通花生油','商品分类2','50','普通花生油','','撒旦\r\n','http://localhost:8080/huiyuanguanli/upload/1615270520442.jpg','2021-03-09 20:36:16',11,60,30,10,1),(1615270686401,'2021-03-09 14:18:05','1615270648','干果','商品分类2','','好','小','很好\r\n','http://localhost:8080/huiyuanguanli/upload/1615270655626.jpg',NULL,0,90,66,13,1),(1615270810979,'2021-03-09 14:20:10','1615270769','干果拼接','商品分类3','90','拼盘干果','小','87\r\n','http://localhost:8080/huiyuanguanli/upload/1615270777653.jpg','2021-03-10 09:33:52',4,100,10,1,1),(1615339992092,'2021-03-10 09:33:11','1615339941','鱼鱼鱼','分类78','90','好吃的鱼','大','好吃的鱼\r\n','http://localhost:8080/huiyuanguanli/upload/1615339948487.jpg','2021-03-10 09:34:16',2,30,10,1,2);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1369464861450084354 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1369463797770395649,'20213109394296069534','质量不好','2021-03-10 09:43:07',1,1,'挪出来','2021-03-10 09:48:53','2021-03-10 09:43:07'),(1369464861450084353,'20213109384962091409','999','2021-03-10 09:47:21',2,NULL,NULL,NULL,'2021-03-10 09:47:21');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','u808v5bz8namgq45uo29y5e0ga2e8hj4','2021-01-25 10:11:10','2021-03-10 10:31:11'),(6,1614430386281,'a2','yonghu','用户','r2qtii1vaq4dwb1yxt14192tn59v5otx','2021-03-09 14:21:31','2021-03-09 21:34:52'),(7,1614431342348,'a4','yonghu','用户','hdyvlynurwk0esgqqj7eu95qqsb9sv2v','2021-03-10 09:22:03','2021-03-10 10:29:37'),(8,1615339905628,'a3','yonghu','用户','ceosgwydwe2wqt9npjfsqx825csaruoq','2021-03-10 09:33:19','2021-03-10 10:33:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615339905629 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','a2','男','13823888883','229992@qq.ccom',1286,112),(1614431342348,'2021-02-27 21:09:02','a4','a4','a4','男','a41','22850@qq.com',98,52),(1615339905628,'2021-03-10 09:31:45','a3','a3','a3','男','13823888883','77389000222@qq.com',1991,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
