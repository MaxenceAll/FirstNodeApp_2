-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2023 at 07:29 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `img_src` varchar(50) DEFAULT NULL,
  `Id_theme` int DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `content`, `img_src`, `Id_theme`, `isDeleted`) VALUES
(1, 'Ice Soldiers', 'lorem lorem', 'https://picsum.photos/id/101/600/400', 1, 0),
(2, 'Time to Kill, A', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu', 'https://picsum.photos/id/102/600/400', 3, 0),
(3, 'Passengers', 'fusce posuere felis sed lacus morbi sem', 'https://picsum.photos/id/103/600/400', 1, 0),
(4, 'Captain Thunder (Capitán Trueno y el Santo Grial, ', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', 'https://picsum.photos/id/104/600/400', 2, 0),
(5, 'Crime of Passion', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'https://picsum.photos/id/295/600/400', 5, 0),
(6, 'Hit the Bank (Vabank)', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 'https://picsum.photos/id/106/600/400', 1, 0),
(7, 'She Hate Me', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla', 'https://picsum.photos/id/107/600/400', 5, 0),
(8, 'Hollywood Party', 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', 'https://picsum.photos/id/108/600/400', 4, 0),
(9, 'Go West', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', 'https://picsum.photos/id/109/600/400', 4, 0),
(10, 'Hellraiser: Bloodline', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', 'https://picsum.photos/id/1010/600/400', 4, 0),
(11, 'Benigni', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', 'https://picsum.photos/id/1011/600/400', 4, 0),
(12, 'Who Is Cletis Tout?', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam', 'https://picsum.photos/id/1012/600/400', 3, 0),
(13, 'From the Earth to the Moon', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus', 'https://picsum.photos/id/1013/600/400', 1, 0),
(14, 'Racing Dreams', 'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', 'https://picsum.photos/id/1014/600/400', 2, 0),
(15, 'Destroyer', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', 'https://picsum.photos/id/1015/600/400', 3, 0),
(16, 'Love, etc.', 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', 'https://picsum.photos/id/1016/600/400', 3, 0),
(17, 'Rollerball', 'vestibulum proin eu mi nulla', 'https://picsum.photos/id/847/600/400', 5, 0),
(18, 'Errors of the Human Body ', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum', 'https://picsum.photos/id/1018/600/400', 2, 0),
(19, 'Deceit', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 'https://picsum.photos/id/1019/600/400', 3, 0),
(20, 'Solaris (Solyaris)', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 'https://picsum.photos/id/1020/600/400', 2, 0),
(21, 'Breaking the Silence: Truth and Lies in the War on', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', 'https://picsum.photos/id/1021/600/400', 4, 0),
(22, 'Blow-Up (Blowup)', 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', 'https://picsum.photos/id/1022/600/400', 4, 0),
(23, 'Human Resources (Ressources humaines)', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 'https://picsum.photos/id/1023/600/400', 2, 0),
(24, 'Digging Up the Marrow', 'aliquam augue quam sollicitudin vitae consectetuer', 'https://picsum.photos/id/1024/600/400', 2, 0),
(25, 'Watchmen', 'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', 'https://picsum.photos/id/1025/600/400', 5, 0),
(26, 'Newsfront', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', 'https://picsum.photos/id/1026/600/400', 3, 0),
(27, '300 Miles to Heaven (300 Mil do Nieba)', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 'https://picsum.photos/id/1027/600/400', 2, 0),
(28, 'Sleepy Hollow', 'ut nunc vestibulum ante ipsum primis in faucibus orci', 'https://picsum.photos/id/1028/600/400', 1, 0),
(29, 'Hot Pepper', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis', 'https://picsum.photos/id/1029/600/400', 3, 0),
(30, 'Mystery of the Yellow Room, The (Mystère de la cha', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'https://picsum.photos/id/38/600/400', 3, 0),
(31, 'Playmobil: The Secret of Pirate Island', 'mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 'https://picsum.photos/id/1031/600/400', 1, 0),
(32, 'Naked Lunch', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', 'https://picsum.photos/id/1032/600/400', 3, 0),
(33, 'Happy We (Två killar och en tjej)', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum', 'https://picsum.photos/id/1033/600/400', 3, 0),
(34, 'So Young (Zhi wo men zhong jiang shi qu de qing ch', 'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', 'https://picsum.photos/id/834/600/400', 2, 0),
(35, 'Young Ones', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', 'https://picsum.photos/id/1035/600/400', 3, 0),
(36, 'The Boy in the Mirror', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 'https://picsum.photos/id/1036/600/400', 1, 0),
(38, 'New produit', 'c\'est un test !', 'https://picsum.photos/id/237/600/400', 4, 0),
(39, 'Testor !', 'Encore un test ', 'https://picsum.photos/id/237/600/400', 5, 0),
(40, 'Encore un test :\'(', 'description test', 'https://picsum.photos/id/238/600/400', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `img_src` varchar(50) DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `title`, `description`, `img_src`, `isDeleted`) VALUES
(1, 'europe', 'lacinia sapien quis', '../img/europe.svg.png', 0),
(2, 'asie', 'faucibus orci luctus et', '../img/asie.svg.png', 0),
(3, 'afrique', 'sed vel enim sit', '../img/afrique.svg.png', 0),
(4, 'amerique', 'lorem ipsum dolor', '../img/amerique.svg.png', 0),
(5, 'oceanie', 'vestibulum quam sapien', '../img/oceanie.svg.png', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
