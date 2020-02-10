-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cakeshop
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'冰雪之恋5645645','/picture/1580362759974.jpg','/picture/1-2.jpg','/picture/1-3.jpg',50.2,'香浓巧克力，浓浓安慕兮啊，，，',789,1),(2,'浪漫甜心101','/picture/2-1.jpg','/picture/2-2.jpg','/picture/2-3.jpg',229,'圣洁的白色玫瑰，烘托着光亮饱满的红艳果实，烂漫的色彩，惹人无比爱怜。新鲜草莓和特调淡奶油混合而成的松软的蛋糕坯，美丽纯净，充满了幸福甜蜜的味道主口味：草莓口味 主要原料：新西兰乳脂奶油，古巴朗姆酒，韩国幼砂糖，鲜草莓。 甜度： 三星（满五星） 最佳食用温度：6-10摄氏度',10,8),(3,'留恋之恋','/picture/3-1.jpg','/picture/3-2.jpg','/picture/3-3.jpg',229,'主口味:榴莲奶油味(原味蛋糕胚+榴莲酱+乳脂奶油)主要原料：新西兰乳脂奶油，古巴朗姆酒，韩国幼砂糖，鲜草莓。 甜度： 三星（满五星） 最佳食用温度：5-7摄氏度',10,5),(4,'玫瑰物语','/picture/4-1.jpg','/picture/4-2.jpg','/picture/4-3.jpg',299,'一座小小的花园 一场优美的缄默 色彩的冲撞带来幻美的视觉享受 自制的玫瑰酱调配而成的玫瑰慕斯蛋糕 口感丰富 异香诱人 忠贞的爱情充溢了玫瑰的内心,因而更加美丽\r\n主口味:玫瑰慕斯 主要原料:糖渍玫瑰,奶油芝士,乳脂奶油,朗姆酒,白巧克力软糖 甜度:三星（满五星） 最佳食用温度：5-7摄氏度',10,5),(5,'芒果列车','/picture/5-1.jpg','/picture/5-2.jpg','/picture/5-3.jpg',269,'黄橙橙的时光列车,散发出温暖的灯光,连接着过去与未来.这是一款纯慕斯型的蛋糕,芒果慕斯镶嵌芒果果冻丁,不含蛋糕胚体,均匀莫斯体和果冻,口感细腻嫩滑,酸甜适口零脂肪,美容又零脂肪\r\n主口味: 芒果慕斯 主要原料:芒果果溶,芒果果冻,乳脂奶油,法国君度力娇酒  甜度:三星（满五星） 最佳食用温度：5-7摄氏度',10,5),(6,'夜礼服','/picture/6-1.jpg','/picture/6-2.jpg','/picture/6-3.jpg',299,'空气中流动着的厚重巧克力气息,一切在夜色下坡上银装.可可野性的诱惑,加之朗姆酒的浪漫清冽,传递出来自神秘过度的魅惑与力量.\r\n主口味:香浓巧克力 主要原料:黑巧克力,乳脂奶油,大黄油,朗姆酒,巧克力果仁脆,黑巧克力软糖 甜度:四星（满五星） 最佳食用温度：5-7摄氏度',10,5),(7,'爱之玫瑰','/picture/7-1.jpg','/picture/7-2.jpg','/picture/7-3.jpg',299,'爱之魅力,悄然跃于玫瑰之上,包裹时光,翩翩起舞,让这一切置身于梦幻旅途之中邂逅玫瑰,享受梦境一刻.\r\n主口味:玫瑰奶油味 主要原料:云南玫瑰,澳洲奶油芝士,澳洲乳脂奶油,古巴朗姆酒,白巧克力软糖 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,4),(8,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(9,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(10,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(11,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(12,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(13,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(14,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(15,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(16,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(17,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(18,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(19,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(20,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(21,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(22,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(23,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(24,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(25,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(26,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(27,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(28,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(29,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(30,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(31,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(32,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(33,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(34,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(35,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(36,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(37,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(38,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(39,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(40,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(41,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(42,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(43,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(44,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(45,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(46,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(47,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(48,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(49,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(50,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(51,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(52,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(53,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(54,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(55,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(56,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(57,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(58,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(59,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(60,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(61,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(62,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(63,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(64,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(65,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(66,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(67,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(68,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(69,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(70,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(71,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(72,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(73,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(74,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(75,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(76,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(77,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(78,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(79,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(80,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(81,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(82,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(83,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(84,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(85,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(86,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(87,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(88,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(89,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(90,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(91,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(92,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(93,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(94,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(95,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(97,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(98,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(99,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(100,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(101,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(102,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(103,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(104,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(105,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(106,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(108,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(109,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(110,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(111,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(112,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(113,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(114,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(115,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(116,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(117,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(118,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(119,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(120,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(121,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(122,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(123,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(124,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(125,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(126,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(127,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(128,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(129,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(130,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(131,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(132,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(133,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(134,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(135,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(136,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(137,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(138,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(139,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(140,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(141,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(142,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(143,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(144,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(145,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(146,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(147,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(148,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(149,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(150,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(151,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(152,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(153,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(154,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(155,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(156,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(157,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(158,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(159,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(160,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(161,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(162,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(163,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(164,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(165,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(166,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(167,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(168,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(169,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(170,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(171,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2),(172,'蜂蜜蛋糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(173,'意大利芝士饼干','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(174,'小熊乐园','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度',10,3),(175,'草莓冰淇淋','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度',10,1),(176,'玫瑰舒芙蕾','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(177,'半熟芝士','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(178,'青森芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.',10,2);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (4,558.4,4,2,2,'bian','123','fsdf','2020-01-28 09:09:45',3),(5,1026,4,2,3,'bian','123','fsdf','2020-01-28 09:10:09',3),(6,36,1,2,1,'sdf','sdfsd','fsd','2020-01-29 02:48:17',4),(7,598,2,2,1,'erwe','rewrw','wer','2020-01-29 02:48:57',4),(8,897,3,2,1,'erwe','rewrw','wer','2020-01-29 02:49:04',4),(9,897,3,2,1,'erwe','rewrw','wer','2020-01-29 02:49:10',4),(10,229,1,2,3,'erwe','rewrw','wer','2020-01-29 02:49:17',4),(15,1196,4,2,2,'1','1','1','2020-01-29 06:25:21',1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (11,50.2,2,1,4),(12,229,2,2,4),(13,229,1,2,5),(14,229,1,3,5),(15,269,1,5,5),(16,299,1,6,5),(17,36,1,19,6),(18,299,2,22,7),(19,299,3,22,8),(20,299,3,22,9),(21,229,1,2,10),(36,299,4,22,15);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,3,19),(20,3,20),(21,1,22);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'冰淇淋系列'),(2,'零食系列'),(3,'儿童系列'),(4,'法式系列'),(5,'经典系列'),(8,'节日系列'),(9,'成人系列');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1','1@qq.com','1','1','1','1',_binary '\0',_binary '\0'),(3,'bian','bian@qq.com','123','bian','123','dsfsdfsd粉色地方',_binary '\0',_binary '\0'),(4,'admin','admin@qq.com','admin','erwe','rewrw','wer',_binary '',_binary '\0'),(6,'b','b','b','b','b','b',_binary '\0',_binary '\0'),(7,'c','c','c','c','c','c',_binary '\0',_binary '\0'),(8,'d','d','d','d','d','d',_binary '\0',_binary '\0'),(9,'e','e','e','e','e','e',_binary '\0',_binary '\0'),(10,'f','f','f','f','f','f',_binary '\0',_binary '\0'),(11,'g','g','g','g','g','g',_binary '\0',_binary '\0'),(12,'h','h','h','h','h','h',_binary '\0',_binary '\0'),(13,'rwe','rwerw','wer','werwer','werwerwer','ewrwer',_binary '\0',_binary '\0'),(14,'3','3','3','3','3','3',_binary '\0',_binary '\0'),(15,'7','7','7','7','77','7',_binary '\0',_binary '\0'),(16,'123','123','321','123','312','312',_binary '\0',_binary '\0'),(17,'12345','12','1','1','11','1',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 16:46:48
