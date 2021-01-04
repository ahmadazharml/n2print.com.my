-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2020 at 09:42 AM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iparwelf_n2print`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `customerid` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `company` varchar(255) NOT NULL,
  `addr1` text NOT NULL,
  `addr2` text NOT NULL,
  `city` varchar(60) NOT NULL,
  `province` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `postzip` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `default1` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customerid`, `fname`, `lname`, `company`, `addr1`, `addr2`, `city`, `province`, `country`, `postzip`, `phone`, `default1`) VALUES
(3, '1', 'Ahmad', 'Azhar', 'Ezek technologies', 'No.36 Lorong Pinang 3 Kampung Melayu', '', 'Ampang', 'Selangor', 'MY', '68000', '178708115', 'Default'),
(2, '2', 'MOHAMMAD', 'NAZRIN', 'N2 NETWORK MEDIA', 'No 24 Jalan PBS 14/4', 'TAMAN PERINDUSTRIAN BUKIT SERDANG', 'Seri Kembangan', 'Selangor', 'MY', '43300', '0194349214', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cartid` varchar(60) NOT NULL,
  `cartpic` varchar(60) NOT NULL,
  `cartname` varchar(60) NOT NULL,
  `price` varchar(60) NOT NULL,
  `quantity` varchar(60) NOT NULL,
  `subtotal` varchar(60) NOT NULL,
  `summary` varchar(60) NOT NULL,
  `localip` varchar(60) NOT NULL,
  `wideip` varchar(60) NOT NULL,
  `clientip` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cartid`, `cartpic`, `cartname`, `price`, `quantity`, `subtotal`, `summary`, `localip`, `wideip`, `clientip`) VALUES
(1, '9', '9', 'T-Shirt - Cotton', '20.00', '2', '40', 'T-Shirt Cotton', '2001:e68:6600:a300:d14f:85ff:72a4:8ded', '192.168.0.13', '2001:e68:6600:a300:d14f:85ff:72a4:8ded192.168.0.13'),
(4, '6', '6', 'Rollup Bunting', '90.00', '1', '90', '', '202.60.56.231', 'undefined', '202.60.56.231undefined'),
(8, '10', '10', 'T-Shirt - POLO', '35.00', '2', '70', '', 'undefined', '192.168.0.186', 'undefined192.168.0.186'),
(9, '8', '8', 'Billboard', '00.00', '1', '0', '', 'undefined', '192.168.0.186', 'undefined192.168.0.186'),
(10, '9', '9', 'T-Shirt - Cotton', '20.00', '1', '20', '', '2001:d08:d8:6d9f:75a0:6936:ea64:f444', '2001:d08:d8:6d9f:75a0:6936:ea64:f444', '2001:d08:d8:6d9f:75a0:6936:ea64:f4442001:d08:d8:6d9f:75a0:69'),
(11, '9', '9', 'T-Shirt - Cotton', '20.00', '1', '20', '', '2001:d08:d8:6d9f:75a0:6936:ea64:f444', '2001:d08:d8:6d9f:75a0:6936:ea64:f444', '2001:d08:d8:6d9f:75a0:6936:ea64:f4442001:d08:d8:6d9f:75a0:69'),
(12, '10', '10', 'T-Shirt - POLO', '35.00', '1', '35', '', '2405:3800:480:538a:3914:1b1b:43b0:6d60', '2405:3800:480:538a:3914:1b1b:43b0:6d60', '2405:3800:480:538a:3914:1b1b:43b0:6d602405:3800:480:538a:391'),
(13, '5', '5', 'Xstand bunting', '00.00', '1', '0', '', '115.164.204.230', '192.168.8.100', '115.164.204.230192.168.8.100'),
(16, '10', '10', 'T-Shirt - POLO', '35.00', '1', '35', '', '2405:3800:381:2a56:7d48:ff55:e1b2:da8c', '2405:3800:381:2a56:7d48:ff55:e1b2:da8c', '2405:3800:381:2a56:7d48:ff55:e1b2:da8c2405:3800:381:2a56:7d4'),
(17, '10', '10', 'T-Shirt - POLO', '35.00', '1', '35', '', '2405:3800:381:2a56:7d48:ff55:e1b2:da8c', '2405:3800:381:2a56:7d48:ff55:e1b2:da8c', '2405:3800:381:2a56:7d48:ff55:e1b2:da8c2405:3800:381:2a56:7d4'),
(20, '9', '9', 'T-Shirt - Cotton', '20.00', '1', '20', 'T-Shirt Cotton', '123.136.118.18', '172.20.10.2', '123.136.118.18172.20.10.2'),
(21, '5', '5', 'Xstand bunting', '00.00', '1', '0', 'Xstand bunting', '2001:e68:6409:2200:5cc5:b875:d2da:6869', 'undefined', '2001:e68:6409:2200:5cc5:b875:d2da:6869undefined'),
(22, '10', '10', 'T-Shirt - POLO', '35.00', '2', '70', 'T-Shirt - POLO', '2001:e68:6409:2200:5cc5:b875:d2da:6869', 'undefined', '2001:e68:6409:2200:5cc5:b875:d2da:6869undefined'),
(24, '6', '6', 'Rollup Bunting', '90.00', '1', '90', 'Rollup Bunting', '115.164.92.141', 'undefined', '115.164.92.141undefined');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `fax` varchar(60) NOT NULL,
  `company` varchar(60) NOT NULL,
  `addr1` varchar(60) NOT NULL,
  `addr2` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `postcode` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password2` varchar(255) NOT NULL,
  `regtime` varchar(60) NOT NULL,
  `regdate` varchar(60) NOT NULL,
  `regmon` varchar(60) NOT NULL,
  `regyear` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `email`, `phone`, `fax`, `company`, `addr1`, `addr2`, `city`, `postcode`, `state`, `password`, `password2`, `regtime`, `regdate`, `regmon`, `regyear`) VALUES
(1, 'Ahmad', 'Azhar', 'eayzac@gmail.com', '', '', '', '', '', '', '', '', '704b339a54f44b3511cabd26c0406718', '', '17:57', '06-01-2018', 'January', '2018'),
(2, 'Mohammad ', 'Nazrin', 'nazrin@n2print.com.my', '', '', '', '', '', '', '', '', '11f0120551fa7f0b5e4a4d927124571b', '', '06:43', '13-01-2018', 'January', '2018'),
(3, 'Ezek', 'Azaruz', 'ezek19@mail.com', '', '', '', '', '', '', '', '', 'fc1c34805888b208b0a85c7665b672a9', 'azaruz1234', '18:10', '03-02-2018', 'February', '2018'),
(4, 'Mohammad ', 'Nazrin', 'nazanazrin91@gmail.com', '0194349214', '', '', '', '', '', '', '', '11f0120551fa7f0b5e4a4d927124571b', 'nazrin15', '04:09', '09-02-2018', 'February', '2018'),
(5, 'genk', 'print', 'genk.print@gmail.com', '', '', '', '', '', '', '', '', '5265a6dde66c1b5926f294263f6d6e88', 'rahsia13', '06:24', '15-03-2018', 'March', '2018'),
(6, 'Ahmad Azhar', 'Bin Ramli', 'ezek79@yahoo.com', '01785994532', '476236478', 'esdfg', 'aafffas', 'rewr', 'agfag', '68000', 'Selangor', '704b339a54f44b3511cabd26c0406718', 'ezek1234', '09:24', '16-07-2018', 'July', '2018'),
(7, 'Mohammad ', 'Nazrin', 'nazanazrin91@gmail.com', '0194349214', '', '', 'No 24 Jalan PBS 14/4', 'Taman Perindustrian Bukit Serdang', 'Seri Kembangan', '43000', 'Selangor', '11f0120551fa7f0b5e4a4d927124571b', 'nazrin15', '09:42', '22-07-2018', 'July', '2018'),
(8, 'dsxtyjp', 'dsxtyjp', '', '63905284749', '46108520531', 'QtZilcLDkuY', 'BkhqRMenBMmRFombERP', 'ecyGHCrrUxqHo', 'New York', '6979', '--- Please Select ---', '397db4d64754fb02174d5410c2792292', 'gqLITB', '04:32', '21-01-2019', 'January', '2019'),
(9, 'tbulwvardwz', 'tbulwvardwz', '', '45487545724', '20679011328', 'ePedKEASgkyHntQtjj', 'qMxgDjCNYyE', 'tqNFHgFqgZ', 'New York', '4068', '--- Please Select ---', '249f7d3330680735ca24648595a84fe9', 'Rhk7S', '09:35', '21-01-2019', 'January', '2019'),
(10, 'cdajevl', 'cdajevl', '', '63818685817', '69347514852', 'JQtWhoSKEzdk', 'QrhtHEvOAWZQDrkMr', 'HInjcnlcznn', 'New York', '6255', '--- Please Select ---', '30c605d1461a6f61e76c4adcc7ff0bce', '2clqSQ', '12:07', '21-01-2019', 'January', '2019'),
(11, 'wjhflwb', 'wjhflwb', '', '45079957086', '83488818684', 'xklSyADqcFRTTw', 'ptmUsuJZElKM', 'mIeLWbXtHXgUPWjCLrK', 'New York', '1803', '--- Please Select ---', 'f97f2b56db0b6761f3e12434f7b7f00b', 'tbn1v', '18:35', '21-01-2019', 'January', '2019'),
(12, 'XenBUM', 'XenBUM', '4e7dfdg@yandex.com', '87359789333', '86597946923', 'google', 'NY', 'NY', 'NY', '152214', 'Wilayah Persekutuan', 'a38cd93be03e642aa4c78829735ad2b9', '#l3negU2h9Z', '16:44', '29-04-2019', 'April', '2019'),
(13, 'Danielbeick', 'Danielbeick', 'yourmail240@gmail.com', '87629887251', '85231374462', 'google', 'Keflavik', 'Keflavik', 'Keflavik', '122555', 'Melaka', '40aacc678e9d813e85b7b633d27d1bcb', '&Skb5w6x8gS', '10:59', '24-11-2019', 'November', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(32) NOT NULL,
  `version` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `currency` varchar(32) NOT NULL,
  `mcurrency` varchar(32) NOT NULL,
  `price` varchar(32) NOT NULL,
  `myrprice` varchar(32) NOT NULL,
  `cancel_price` varchar(32) NOT NULL,
  `category` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `stocks` varchar(32) NOT NULL,
  `status` varchar(32) NOT NULL,
  `stars` varchar(255) NOT NULL,
  `main_pic` varchar(255) NOT NULL,
  `pic1` varchar(255) NOT NULL,
  `pic2` varchar(255) NOT NULL,
  `pic3` varchar(255) NOT NULL,
  `pic4` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `version`, `description`, `currency`, `mcurrency`, `price`, `myrprice`, `cancel_price`, `category`, `code`, `stocks`, `status`, `stars`, `main_pic`, `pic1`, `pic2`, `pic3`, `pic4`) VALUES
(4, 'Accesories - Round & Tripod', '', 'Accesories Round -Tripod	', 'RM', 'RM', '35.00', '35.00', '42.00	', '', '', '', '', '', 'public/uploads/inkjet/accesories.jpg', 'public/uploads/inkjet/accesories.jpg', 'public/uploads/inkjet/accesories.jpg', 'public/uploads/inkjet/accesories.jpg', 'public/uploads/inkjet/accesories.jpg'),
(5, 'Xstand bunting', '', 'Xstand bunting', 'RM', 'RM', '00.00	', '00.00	', '00.00	', '', '', '', '', '', 'public/uploads/inkjet/xstand.jpg', 'public/uploads/inkjet/xstand.jpg', 'public/uploads/inkjet/xstand.jpg', 'public/uploads/inkjet/xstand.jpg', 'public/uploads/inkjet/xstand.jpg'),
(6, 'Rollup Bunting', '', 'Rollup Bunting', 'RM', 'RM', '90.00', '90.00', '120.00	', '', '', '', '', '', 'public/uploads/inkjet/rollup.jpg', 'public/uploads/inkjet/rollup.jpg', 'public/uploads/inkjet/rollup.jpg', 'public/uploads/inkjet/rollup.jpg', 'public/uploads/inkjet/rollup.jpg'),
(7, 'Popup', '', 'Popup', 'RM', 'RM', '00.00', '00.00', '00.00', '', '', '', '', '', 'public/uploads/inkjet/popup.jpg	', 'public/uploads/inkjet/popup.jpg	', 'public/uploads/inkjet/popup.jpg	', 'public/uploads/inkjet/popup.jpg	', 'public/uploads/inkjet/popup.jpg	'),
(8, 'Billboard', '', 'Billboard', 'RM', 'RM', '00.00	', '00.00	', '00.00', '', '', '', '', '', 'public/uploads/inkjet/billboard.jpg	', 'public/uploads/inkjet/billboard.jpg	', 'public/uploads/inkjet/billboard.jpg	', 'public/uploads/inkjet/billboard.jpg	', 'public/uploads/inkjet/billboard.jpg	'),
(9, 'T-Shirt - Cotton', '', 'T-Shirt Cotton', 'RM', 'RM', '20.00', '20.00', '25.00', '', '', '', '', '', 'public/uploads/tshirt/cott.jpg	', 'public/uploads/tshirt/cott.jpg	', 'public/uploads/tshirt/cott.jpg	', 'public/uploads/tshirt/cott.jpg	', 'public/uploads/tshirt/cott.jpg	'),
(10, 'T-Shirt - POLO', '', 'T-Shirt - POLO', 'RM', 'RM', '35.00', '35.00', '47.00', '', '', '', '', '', 'public/uploads/tshirt/polo.jpg', 'public/uploads/tshirt/polo.jpg', 'public/uploads/tshirt/polo.jpg', 'public/uploads/tshirt/polo.jpg', 'public/uploads/tshirt/polo.jpg'),
(11, 'T-Shirt - Sublimation', '', 'T-Shirt - Sublimation', 'RM', 'RM', '45.00', '45.00', '53.00', '', '', '', '', '', 'public/uploads/tshirt/subml.jpg', 'public/uploads/tshirt/subml.jpg', 'public/uploads/tshirt/subml.jpg', 'public/uploads/tshirt/subml.jpg', 'public/uploads/tshirt/subml.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `head` longtext NOT NULL,
  `header` longtext NOT NULL,
  `content` longtext NOT NULL,
  `footer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `head`, `header`, `content`, `footer`) VALUES
(1, 'test', 'this is head', 'this header', 'this is content', 'this is footer'),
(2, 'about', '<!--\r\nauthor: W3layouts\r\nauthor URL: http://w3layouts.com\r\nLicense: Creative Commons Attribution 3.0 Unported\r\nLicense URL: http://creativecommons.org/licenses/by/3.0/\r\n-->\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | About :: w3layouts</title>\r\n<!-- for-mobile-apps -->\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<meta name=\"keywords\" content=\"Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \r\nSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\r\n<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\r\n		function hideURLbar(){ window.scrollTo(0,1); } </script>\r\n<!-- //for-mobile-apps -->\r\n<link href=\"../../public/n2print/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n<link href=\"../../public/n2print/css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n<!-- font-awesome icons -->\r\n<link href=\"../../public/n2print/css/font-awesome.css\" rel=\"stylesheet\"> \r\n<!-- //font-awesome icons -->\r\n<!-- js -->\r\n<script src=\"../../public/n2print/js/jquery-1.11.1.min.js\"></script>\r\n<!-- //js -->\r\n<link href=\'//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic\' rel=\'stylesheet\' type=\'text/css\'>\r\n<link href=\'//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic\' rel=\'stylesheet\' type=\'text/css\'>\r\n<!-- start-smoth-scrolling -->\r\n<script type=\"text/javascript\" src=\"../../public/n2print/js/move-top.js\"></script>\r\n<script type=\"text/javascript\" src=\"../../public/n2print/js/easing.js\"></script>\r\n<script type=\"text/javascript\">\r\n	jQuery(document).ready(function($) {\r\n		$(\".scroll\").click(function(event){		\r\n			event.preventDefault();\r\n			$(\'html,body\').animate({scrollTop:$(this.hash).offset().top},1000);\r\n		});\r\n	});\r\n</script>\r\n<!-- start-smoth-scrolling -->\r\n</head>\r\n<body>', '<!-- header -->\r\n	<div class=\"agileits_header\">\r\n		<div class=\"container\">\r\n			<div class=\"w3l_offers\">\r\n				<p>SALE UP TO 70% OFF. USE CODE \"SALE70%\" . <a href=\"products.html\">SHOP NOW</a></p>\r\n			</div>\r\n			<div class=\"agile-login\">\r\n				<ul>\r\n					<li><a href=\"registered.html\"> Create Account </a></li>\r\n					<li><a href=\"login.html\">Login</a></li>\r\n					<li><a href=\"../../page/pageName/test\">Help</a></li>\r\n				</ul>\r\n			</div>\r\n			<div class=\"product_list_header\">  \r\n				<form action=\"#\" method=\"post\" class=\"last\"> \r\n					<input type=\"hidden\" name=\"cmd\" value=\"_cart\">\r\n					<input type=\"hidden\" name=\"display\" value=\"1\">\r\n					<button class=\"w3view-cart\" type=\"submit\" name=\"submit\" value=\"\"><i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i></button>\r\n				</form>  \r\n			</div>\r\n			<div class=\"clearfix\"> </div>\r\n		</div>\r\n	</div>\r\n	<div class=\"logo_products\">\r\n		<div class=\"container\">\r\n			<div class=\"w3ls_logo_products_left1\">\r\n				<ul class=\"phone_email\">\r\n					<li><i class=\"fa fa-phone\" aria-hidden=\"true\"></i>Order online or call us : (+0123) 234 567</li>\r\n				</ul>\r\n			</div>\r\n			<div class=\"w3ls_logo_products_left\">\r\n				<h1><a href=\"../../\">super Market</a></h1>\r\n			</div>\r\n			<div class=\"w3l_search\">\r\n				<form action=\"#\" method=\"post\">\r\n					<input type=\"search\" name=\"Search\" placeholder=\"Search for a Product...\" required=\"\">\r\n					<button type=\"submit\" class=\"btn btn-default search\" aria-label=\"Left Align\">\r\n						<i class=\"fa fa-search\" aria-hidden=\"true\"> </i>\r\n					</button>\r\n					<div class=\"clearfix\"></div>\r\n				</form>\r\n			</div>\r\n			<div class=\"clearfix\"> </div>\r\n		</div>\r\n	</div>\r\n<!-- //header -->\r\n<!-- navigation -->\r\n	<div class=\"navigation-agileits\">\r\n		<div class=\"container\">\r\n			<nav class=\"navbar navbar-default\">\r\n							<!-- Brand and toggle get grouped for better mobile display -->\r\n							<div class=\"navbar-header nav_2\">\r\n								<button type=\"button\" class=\"navbar-toggle collapsed navbar-toggle1\" data-toggle=\"collapse\" data-target=\"#bs-megadropdown-tabs\">\r\n									<span class=\"sr-only\">Toggle navigation</span>\r\n									<span class=\"icon-bar\"></span>\r\n									<span class=\"icon-bar\"></span>\r\n									<span class=\"icon-bar\"></span>\r\n								</button>\r\n							</div> \r\n							<div class=\"collapse navbar-collapse\" id=\"bs-megadropdown-tabs\">\r\n								<ul class=\"nav navbar-nav\">\r\n									<li class=\"active\"><a href=\"index.html\" class=\"act\">Home</a></li>	\r\n									<!-- Mega Menu -->\r\n									<li class=\"dropdown\">\r\n										<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Groceries<b class=\"caret\"></b></a>\r\n										<ul class=\"dropdown-menu multi-column columns-3\">\r\n											<div class=\"row\">\r\n												<div class=\"multi-gd-img\">\r\n													<ul class=\"multi-column-dropdown\">\r\n														<h6>All Groceries</h6>\r\n														<li><a href=\"groceries.html\">Dals & Pulses</a></li>\r\n														<li><a href=\"groceries.html\">Almonds</a></li>\r\n														<li><a href=\"groceries.html\">Cashews</a></li>\r\n														<li><a href=\"groceries.html\">Dry Fruit</a></li>\r\n														<li><a href=\"groceries.html\"> Mukhwas </a></li>\r\n														<li><a href=\"groceries.html\">Rice & Rice Products</a></li>\r\n													</ul>\r\n												</div>	\r\n												\r\n											</div>\r\n										</ul>\r\n									</li>\r\n									<li class=\"dropdown\">\r\n										<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Household<b class=\"caret\"></b></a>\r\n										<ul class=\"dropdown-menu multi-column columns-3\">\r\n											<div class=\"row\">\r\n												<div class=\"multi-gd-img\">\r\n													<ul class=\"multi-column-dropdown\">\r\n														<h6>All Household</h6>\r\n														<li><a href=\"household.html\">Cookware</a></li>\r\n														<li><a href=\"household.html\">Dust Pans</a></li>\r\n														<li><a href=\"household.html\">Scrubbers</a></li>\r\n														<li><a href=\"household.html\">Dust Cloth</a></li>\r\n														<li><a href=\"household.html\"> Mops </a></li>\r\n														<li><a href=\"household.html\">Kitchenware</a></li>\r\n													</ul>\r\n												</div>\r\n												\r\n												\r\n											</div>\r\n										</ul>\r\n									</li>\r\n									<li class=\"dropdown\">\r\n										<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Personal Care<b class=\"caret\"></b></a>\r\n										<ul class=\"dropdown-menu multi-column columns-3\">\r\n											<div class=\"row\">\r\n												<div class=\"multi-gd-img\">\r\n													<ul class=\"multi-column-dropdown\">\r\n														<h6>Baby Care</h6>\r\n														<li><a href=\"personalcare.html\">Baby Soap</a></li>\r\n														<li><a href=\"personalcare.html\">Baby Care Accessories</a></li>\r\n														<li><a href=\"personalcare.html\">Baby Oil & Shampoos</a></li>\r\n														<li><a href=\"personalcare.html\">Baby Creams & Lotion</a></li>\r\n														<li><a href=\"personalcare.html\"> Baby Powder</a></li>\r\n														<li><a href=\"personalcare.html\">Diapers & Wipes</a></li>\r\n													</ul>\r\n												</div>\r\n												\r\n											</div>\r\n										</ul>\r\n									</li>\r\n									<li class=\"dropdown\">\r\n										<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Packaged Foods<b class=\"caret\"></b></a>\r\n										<ul class=\"dropdown-menu multi-column columns-3\">\r\n											<div class=\"row\">\r\n												<div class=\"multi-gd-img\">\r\n													<ul class=\"multi-column-dropdown\">\r\n														<h6>All Accessories</h6>\r\n														<li><a href=\"packagedfoods.html\">Baby Food</a></li>\r\n														<li><a href=\"packagedfoods.html\">Dessert Items</a></li>\r\n														<li><a href=\"packagedfoods.html\">Biscuits</a></li>\r\n														<li><a href=\"packagedfoods.html\">Breakfast Cereals</a></li>\r\n														<li><a href=\"packagedfoods.html\"> Canned Food </a></li>\r\n														<li><a href=\"packagedfoods.html\">Chocolates & Sweets</a></li>\r\n													</ul>\r\n												</div>\r\n												\r\n											\r\n											</div>\r\n										</ul>\r\n									</li>\r\n									<li class=\"dropdown\">\r\n										<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Beverages<b class=\"caret\"></b></a>\r\n										<ul class=\"dropdown-menu multi-column columns-3\">\r\n											<div class=\"row\">\r\n												<div class=\"multi-gd-img\">\r\n													<ul class=\"multi-column-dropdown\">\r\n														<h6>Tea & Coeffe</h6>\r\n														<li><a href=\"beverages.html\">Green Tea</a></li>\r\n														<li><a href=\"beverages.html\">Ground Coffee</a></li>\r\n														<li><a href=\"beverages.html\">Herbal Tea</a></li>\r\n														<li><a href=\"beverages.html\">Instant Coffee</a></li>\r\n														<li><a href=\"beverages.html\"> Tea </a></li>\r\n														<li><a href=\"beverages.html\">Tea Bags</a></li>\r\n													</ul>\r\n												</div>\r\n							\r\n											</div>\r\n										</ul>\r\n									</li>\r\n									<li><a href=\"gourmet.html\">Gourmet</a></li>\r\n									<li><a href=\"offers.html\">Offers</a></li>\r\n									<li><a href=\"contact.html\">Contact</a></li>\r\n								</ul>\r\n							</div>\r\n							</nav>\r\n			</div>\r\n		</div>\r\n		\r\n<!-- //navigation -->', '<!-- breadcrumbs -->\r\n	<div class=\"breadcrumbs\">\r\n		<div class=\"container\">\r\n			<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\r\n				<li><a href=\"index.html\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\r\n				<li class=\"active\">About</li>\r\n			</ol>\r\n		</div>\r\n	</div>\r\n<!-- //breadcrumbs -->\r\n<!-- about -->\r\n	<div class=\"about\">\r\n		<div class=\"container\">\r\n			<h3 class=\"w3_agile_header\">About Us</h3>\r\n			<div class=\"about-agileinfo w3layouts\">\r\n				<div class=\"col-md-8 about-wthree-grids grid-top\">\r\n					<h4>Blanditiis praesentium deleniti atque corrupti quos </h4>\r\n					<p class=\"top\">Gnissimos voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi. atque corrupti quos dolores et quas molestias excepturi sint occaecat officia deserunt mollitia laborum et dolorum fuga</p>\r\n					<p>Dignissimos at vero eos et accusamus et iusto odio ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecat officia deserunt mollitia laborum et dolorum fuga. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecat atque corrupti quos dolores et quas molestias excepturi sint occaecat officia deserunt mollitia laborum et dolorum </p>		\r\n					<div class=\"about-w3agilerow\">\r\n						<div class=\"col-md-4 about-w3imgs\">\r\n							<img src=\"../../public/n2print/images/p3.jpg\" alt=\"\" class=\"img-responsive zoom-img\"/>\r\n						</div>\r\n						<div class=\"col-md-4 about-w3imgs\">\r\n							<img src=\"../../public/n2print/images/p4.jpg\" alt=\"\"  class=\"img-responsive zoom-img\"/>\r\n						</div>\r\n						<div class=\"col-md-4 about-w3imgs\">\r\n							<img src=\"../../public/n2print/images/p3.jpg\" alt=\"\"  class=\"img-responsive zoom-img\"/>\r\n						</div>\r\n						<div class=\"clearfix\"> </div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-4 about-wthree-grids\">\r\n					<div class=\"offic-time\">\r\n						<div class=\"time-top\">\r\n							<h4>Praesentium :</h4>\r\n						</div>\r\n						<div class=\"time-bottom\">\r\n							<h5>At vero eos </h5>\r\n							<h5>Accusamus et</h5>\r\n							<p>Dignissimos at vero eos et accusamus et iusto odio ducimus qui accusamus et. </p>\r\n						</div>\r\n					</div>\r\n					<div class=\"testi\">\r\n						<h3 class=\"w3_agile_header\">Testimonial</h3>\r\n						<!--//End-slider-script -->\r\n						<script src=\"../../public/n2print/js/responsiveslides.min.js\"></script>\r\n						 <script>\r\n							// You can also use \"$(window).load(function() {\"\r\n							$(function () {\r\n							  // Slideshow 5\r\n							  $(\"#slider5\").responsiveSlides({\r\n								auto: true,\r\n								pager: false,\r\n								nav: true,\r\n								speed: 500,\r\n								namespace: \"callbacks\",\r\n								before: function () {\r\n								  $(\'.events\').append(\"<li>before event fired.</li>\");\r\n								},\r\n								after: function () {\r\n								  $(\'.events\').append(\"<li>after event fired.</li>\");\r\n								}\r\n							  });\r\n						\r\n							});\r\n						  </script>\r\n						<div  id=\"top\" class=\"callbacks_container\">\r\n							<ul class=\"rslides\" id=\"slider5\">\r\n								<li>\r\n									<div class=\"testi-slider\">\r\n										<h4>\" I AM VERY PLEASED.</h4>\r\n										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu magna dolor, quisque semper.</p>\r\n										<div class=\"testi-subscript\">\r\n											<p><a href=\"#\">John Doe,</a>Adipiscing</p>\r\n											<span class=\"w3-agilesub\"> </span>\r\n										</div>	\r\n									</div>\r\n								</li>\r\n								<li>\r\n									<div class=\"testi-slider\">\r\n										<h4>\" I AM LOREM IPSUM.</h4>\r\n										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu magna dolor, quisque semper.</p>\r\n										<div class=\"testi-subscript\">\r\n											<p><a href=\"#\">elit semper,</a>Dolor Elit</p>\r\n											<span class=\"w3-agilesub\"> </span>\r\n										</div>	\r\n									</div>\r\n								</li>\r\n								<li>\r\n									<div class=\"testi-slider\">\r\n										<h4>\" CONSECTETUR PIMAGNA.</h4>\r\n										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu magna dolor, quisque semper.</p>\r\n										<div class=\"testi-subscript\">\r\n											<p><a href=\"#\">Amet Doe,</a>Suspendisse</p>\r\n											<span class=\"w3-agilesub\"> </span>\r\n										</div>	\r\n									</div>\r\n								</li>\r\n							</ul>	\r\n						</div>\r\n					</div>\r\n				</div>	\r\n				<div class=\"clearfix\"> </div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<!-- //about -->\r\n	<!-- about-slid -->\r\n	<div class=\"about-slid agileits-w3layouts\"> \r\n		<div class=\"container\">\r\n			<div class=\"about-slid-info\"> \r\n				<h2>Lorem Ipsum is that it has a moreless normal</h2>\r\n				<p>Lorem Ipsum generators on the Internet tend to repeat predefined chunks on the Internet tend as necessary, making this the first true generator on the Internet embarrassing hidden in the middle of text Lorem Ipsum generators on the Internet tend to repeat predefinedchunks as necessary, making this the first true generator on the.</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<!-- //about-slid -->\r\n	<!-- about-team -->\r\n	<div class=\"about-team\"> \r\n		<div class=\"container\">\r\n			<h3 class=\"w3_agile_header\">Meet Our Team</h3>\r\n			<div class=\"team-agileitsinfo\">\r\n				<div class=\"col-md-3 about-team-grids\">\r\n					<img src=\"../../public/n2print/images/t4.jpg\" alt=\"\"/>\r\n					<div class=\"team-w3lstext\">\r\n						<h4><span>ANDERSON,</span> Manager</h4>\r\n						<p>Odio dignissimos vero eos voluptatem accusantium doloremque laudantium reader will be distracted.</p>\r\n					</div>\r\n					<div class=\"social-icons caption\"> \r\n						<ul>\r\n							<li><a href=\"#\" class=\"fa fa-facebook facebook\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-twitter twitter\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-google-plus googleplus\"> </a></li> \r\n						</ul>\r\n						<div class=\"clearfix\"> </div>  \r\n					</div>\r\n				</div>\r\n				<div class=\" col-md-3 about-team-grids\">\r\n					<img src=\"../../public/n2print/images/t2.jpg\" alt=\"\"/>\r\n					<div class=\"team-w3lstext\">\r\n						<h4><span>ELIFS,</span> Director</h4>\r\n						<p>Odio dignissimos vero eos voluptatem accusantium doloremque laudantium reader will be distracted.</p>\r\n					</div>\r\n					<div class=\"social-icons caption\"> \r\n						<ul>\r\n							<li><a href=\"#\" class=\"fa fa-facebook facebook\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-twitter twitter\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-google-plus googleplus\"> </a></li> \r\n						</ul>\r\n						<div class=\"clearfix\"> </div>  \r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-3 about-team-grids\">\r\n					<img src=\"../../public/n2print/images/t1.jpg\" alt=\"\"/>\r\n					<div class=\"team-w3lstext\">\r\n						<h4><span>JESSICA,</span> Supervisior</h4>				\r\n						<p>Odio dignissimos vero eos voluptatem accusantium doloremque laudantium reader will be distracted.</p>\r\n					</div>\r\n					<div class=\"social-icons caption\"> \r\n						<ul>\r\n							<li><a href=\"#\" class=\"fa fa-facebook facebook\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-twitter twitter\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-google-plus googleplus\"> </a></li> \r\n						</ul>\r\n						<div class=\"clearfix\"> </div>  \r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-3 about-team-grids\">\r\n					<img src=\"../../public/n2print/images/t3.jpg\" alt=\"\"/>\r\n					<div class=\"team-w3lstext\">\r\n						<h4><span>RACKHAM,</span> Staff</h4>\r\n						<p>Odio dignissimos vero eos voluptatem accusantium doloremque laudantium reader will be distracted.</p>\r\n					</div>\r\n					<div class=\"social-icons caption\"> \r\n						<ul>\r\n							<li><a href=\"#\" class=\"fa fa-facebook facebook\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-twitter twitter\"> </a></li>\r\n							<li><a href=\"#\" class=\"fa fa-google-plus googleplus\"> </a></li> \r\n						</ul>\r\n						<div class=\"clearfix\"> </div>  \r\n					</div>\r\n				</div>\r\n				<div class=\"clearfix\"> </div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<!-- //about-team -->', '<!-- //footer -->\r\n	<div class=\"footer\">\r\n		<div class=\"container\">\r\n			<div class=\"w3_footer_grids\">\r\n				<div class=\"col-md-3 w3_footer_grid\">\r\n					<h3>Contact</h3>\r\n					\r\n					<ul class=\"address\">\r\n						<li><i class=\"glyphicon glyphicon-map-marker\" aria-hidden=\"true\"></i>1234k Avenue, 4th block, <span>New York City.</span></li>\r\n						<li><i class=\"glyphicon glyphicon-envelope\" aria-hidden=\"true\"></i><a href=\"mailto:info@example.com\">info@example.com</a></li>\r\n						<li><i class=\"glyphicon glyphicon-earphone\" aria-hidden=\"true\"></i>+1234 567 567</li>\r\n					</ul>\r\n				</div>\r\n				<div class=\"col-md-3 w3_footer_grid\">\r\n					<h3>Information</h3>\r\n					<ul class=\"info\"> \r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"about.html\">About Us</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"contact.html\">Contact Us</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"short-codes.html\">Short Codes</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"faq.html\">FAQ\'s</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"products.html\">Special Products</a></li>\r\n					</ul>\r\n				</div>\r\n				<div class=\"col-md-3 w3_footer_grid\">\r\n					<h3>Category</h3>\r\n					<ul class=\"info\"> \r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"groceries.html\">Groceries</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"household.html\">Household</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"personalcare.html\">Personal Care</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"packagedfoods.html\">Packaged Foods</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"beverages.html\">Beverages</a></li>\r\n					</ul>\r\n				</div>\r\n				<div class=\"col-md-3 w3_footer_grid\">\r\n					<h3>Profile</h3>\r\n					<ul class=\"info\"> \r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"products.html\">Store</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"checkout.html\">My Cart</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"login.html\">Login</a></li>\r\n						<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"registered.html\">Create Account</a></li>\r\n					</ul>\r\n				</div>\r\n				<div class=\"clearfix\"> </div>\r\n			</div>\r\n		</div>\r\n		<div class=\"footer-copy\">\r\n			<div class=\"container\">\r\n				<p>© 2017 Super Market. All rights reserved | Design by <a href=\"http://w3layouts.com/\">W3layouts</a></p>\r\n			</div>\r\n		</div>		\r\n	</div>	\r\n	<div class=\"footer-botm\">\r\n			<div class=\"container\">\r\n				<div class=\"w3layouts-foot\">\r\n					<ul>\r\n						<li><a href=\"#\" class=\"w3_agile_facebook\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a></li>\r\n						<li><a href=\"#\" class=\"agile_twitter\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a></li>\r\n						<li><a href=\"#\" class=\"w3_agile_dribble\"><i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i></a></li>\r\n						<li><a href=\"#\" class=\"w3_agile_vimeo\"><i class=\"fa fa-vimeo\" aria-hidden=\"true\"></i></a></li>\r\n					</ul>\r\n				</div>\r\n				<div class=\"payment-w3ls\">	\r\n					<img src=\"../../public/n2print/images/card.png\" alt=\" \" class=\"img-responsive\">\r\n				</div>\r\n				<div class=\"clearfix\"> </div>\r\n			</div>\r\n		</div>\r\n<!-- //footer -->	\r\n<!-- Bootstrap Core JavaScript -->\r\n<script src=\"js/bootstrap.min.js\"></script>\r\n<!-- top-header and slider -->\r\n<!-- here stars scrolling icon -->\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function() {\r\n			/*\r\n				var defaults = {\r\n				containerID: \'toTop\', // fading element id\r\n				containerHoverID: \'toTopHover\', // fading element hover id\r\n				scrollSpeed: 1200,\r\n				easingType: \'linear\' \r\n				};\r\n			*/\r\n								\r\n			$().UItoTop({ easingType: \'easeOutQuart\' });\r\n								\r\n			});\r\n	</script>\r\n<!-- //here ends scrolling icon -->\r\n<script src=\"../../public/n2print/js/minicart.min.js\"></script>\r\n<script>\r\n	// Mini Cart\r\n	paypal.minicart.render({\r\n		action: \'#\'\r\n	});\r\n\r\n	if (~window.location.search.indexOf(\'reset=true\')) {\r\n		paypal.minicart.reset();\r\n	}\r\n</script>\r\n<!-- main slider-banner -->\r\n<script src=\"../../public/n2print/js/skdslider.min.js\"></script>\r\n<link href=\"../../public/n2print/css/skdslider.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\">\r\n		jQuery(document).ready(function(){\r\n			jQuery(\'#demo1\').skdslider({\'delay\':5000, \'animationSpeed\': 2000,\'showNextPrev\':true,\'showPlayButton\':true,\'autoSlide\':true,\'animationType\':\'fading\'});\r\n						\r\n			jQuery(\'#responsive\').change(function(){\r\n			  $(\'#responsive_wrapper\').width(jQuery(this).val());\r\n			});\r\n			\r\n		});\r\n</script>	\r\n<!-- //main slider-banner --> \r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin@n2print.com.my', 'c93ccd78b2076528346216b3b2f701e6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
