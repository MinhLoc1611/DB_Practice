-- -------------------------------------------------------------
-- TablePlus 5.5.2(512)
--
-- https://tableplus.com/
--
-- Database: db_practice
-- Generation Time: 2023-10-24 19:09:49.0090
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `estimatedConversion`;
CREATE TABLE `estimatedConversion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `low` int DEFAULT NULL,
  `medium` int DEFAULT NULL,
  `high` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `estimatedConversion_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` tinyint(1) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `spend` float DEFAULT NULL,
  `clicks` int DEFAULT NULL,
  `eyeMetric` varchar(100) DEFAULT NULL,
  `metric1` int DEFAULT NULL,
  `metric2` float DEFAULT NULL,
  `metric3` float DEFAULT NULL,
  `eyeMetric2` varchar(100) DEFAULT NULL,
  `metric5` int DEFAULT NULL,
  `metric6` float DEFAULT NULL,
  `metric7` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;;

INSERT INTO `estimatedConversion` (`id`, `low`, `medium`, `high`, `id_user`) VALUES
(1, 15, 40, 60, 1),
(2, 10, 60, 45, 2),
(3, 0, 0, 0, 3),
(4, 20, 35, 60, 4),
(5, 40, 30, 20, 5),
(6, 20, 35, 50, 6),
(7, 30, 40, 20, 7),
(8, 50, 20, 40, 8),
(9, 30, 40, 30, 9),
(10, 20, 50, 15, 10),
(11, 10, 30, 70, 11),
(12, 14, 36, 60, 12),
(13, 0, 0, 0, 13),
(14, 15, 35, 50, 14),
(15, 40, 10, 50, 15),
(16, 25, 10, 45, 16),
(17, 35, 15, 40, 17),
(18, 20, 30, 50, 18),
(19, 0, 0, 0, 19),
(20, 10, 30, 60, 20),
(21, 40, 20, 30, 21);

INSERT INTO `users` (`id`, `header`, `name`, `spend`, `clicks`, `eyeMetric`, `metric1`, `metric2`, `metric3`, `eyeMetric2`, `metric5`, `metric6`, `metric7`) VALUES
(1, 1, 'DT-Brand-campaign', 1719.23, 12345, NULL, 12, 1049.64, 110.2, NULL, 3, 1355.46, 652.45),
(2, 1, 'new_offer_8735', 1572.74, 12345, NULL, 12, 1049.43, 116.13, NULL, 8, 1109.35, 434.51),
(3, 0, 'spring_2020', 957.26, 12345, NULL, 13, 1055.36, 147.75, NULL, 6, 1080.24, 180.26),
(4, 1, 'Victor', 1719.35, 12378, NULL, 18, 1123.74, 110.56, NULL, 5, 1335.46, 457.73),
(5, 1, 'Timber', 1370.62, 12456, NULL, 14, 1643.43, 157.87, NULL, 4, 1596.74, 490.73),
(6, 1, 'Alen', 1561.72, 12345, NULL, 15, 1534.74, 123.45, NULL, 5, 1354.15, 268.56),
(7, 1, 'Micheal', 1254.7, 13542, NULL, 13, 1364.45, 144.71, NULL, 7, 1253.63, 255.52),
(8, 0, 'Alien', 1342.71, 13512, NULL, 11, 1254.45, 123.35, NULL, 4, 1353.26, 424.74),
(9, 1, 'spring_2823', 1533.74, 12445, NULL, 12, 1524.23, 116.75, NULL, 5, 1352.73, 488.46),
(10, 1, 'new_5397', 1636.84, 15323, NULL, 14, 1857.67, 144.45, NULL, 6, 1635.35, 487.73),
(11, 1, 'spring_2724', 1524.23, 15323, NULL, 15, 1764.45, 134.86, NULL, 7, 1423.72, 368.26),
(12, 0, 'DT_5286', 899.74, 12452, NULL, 13, 1432.74, 165.34, NULL, 5, 1245.61, 454.74),
(13, 1, 'spring_3414', 699.56, 13512, NULL, 15, 1353.54, 155.67, NULL, 8, 1425.53, 538.86),
(14, 1, 'new_4242', 1157.73, 13253, NULL, 14, 1532.54, 127.74, NULL, 6, 1352.64, 347.36),
(15, 1, 'spring_2415', 1374.73, 13135, NULL, 13, 1346.23, 136.25, NULL, 5, 1365.24, 464.84),
(16, 1, 'new_6242', 1526.12, 13574, NULL, 13, 1653.71, 156.76, NULL, 7, 1353.57, 475.84),
(17, 0, 'spring_5325', 1353.63, 13532, NULL, 12, 1245.74, 132.78, NULL, 5, 1242.57, 532.24),
(18, 1, 'DT_5351', 1246.83, 12462, NULL, 13, 1352.35, 164.93, NULL, 7, 1351.25, 536.64),
(19, 1, 'spring_6235', 1247.86, 12546, NULL, 15, 1526.6, 125.57, NULL, 6, 1352.64, 626.73),
(20, 1, 'new_46242', 1836.21, 14325, NULL, 14, 1633.03, 136.98, NULL, 8, 1267.36, 536.24),
(21, 1, 'spring_6132', 1247.74, 12462, NULL, 15, 1258.07, 125.35, NULL, 5, 1263.74, 463.74);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;