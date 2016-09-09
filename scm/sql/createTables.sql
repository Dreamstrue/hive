
###########################
修改时间:		2016-09-07
修改人：		yyf
修改内容：		创建用户表
SQL:     
  
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `age` varchar(3) DEFAULT NULL,
  `auditTime` date NOT NULL,
  `createTime` date NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `idCard` varchar(20) DEFAULT NULL,
  `isValid` varchar(1) NOT NULL,
  `mobilePhone` varchar(12) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `userAccount` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

修改原因：		
是否测试：		本地已测试
是否更新现网：	无
更新现网时间：	无
###########################

###########################
修改时间:		2016-09-08
修改人：		yyf
修改内容：		创建菜单表
SQL:     
  
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menuIcon` varchar(200) DEFAULT NULL,
  `parentMenuId` bigint(20) NOT NULL,
  `orderNum` int(11) NOT NULL,
  `menuName` varchar(40) NOT NULL,
  `menuUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




修改原因：		
是否测试：		本地已测试
是否更新现网：	无
更新现网时间：	无
###########################



