

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




INSERT INTO `brands` (`brand_id`, `brand_title`, `visible`) VALUES
(1, 'HP', 1),
(2, 'DELL', 1),
(3, 'LG', 1),
(4, 'Samsung', 1),
(5, 'Sony', 1),
(6, 'Toshiba', 1),
(7, 'Lenovo', 1),
(8, 'Apple', 1);


CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quality` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `cart` (`cart_id`, `product_id`, `product_title`, `ip_address`, `quality`) VALUES
(34, 19, 'Laptop Apple', '::1', 1),
(35, 23, 'Laptop Pro HP', '::1', 1);


CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `categories` (`cat_id`, `cat_title`, `visible`) VALUES
(1, 'Laptops', 1),
(2, 'Cameras', 1),
(3, 'Mobiles', 1),
(4, 'Desktop', 1),
(5, 'Apple', 1);


CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8_unicode_ci NOT NULL,
  `product_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `date` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `views`, `visible`, `date`) VALUES
(12, 2, 4, 'Samsung Camera', 100, 'This is great product', 'icam.jpg', 'Samsung Camera', 0, 1, ''),
(13, 4, 8, 'Desktop Apple', 400, 'This is great product. Finding the right laptop have never been easier.', 'desktop-apple.jpg', 'desktop apple', 0, 1, ''),
(14, 4, 2, 'Desktop Dell ', 400, 'This is great product. Finding the right computer have never been easier.', 'desktop-dell.jpg', 'desktop dell', 0, 1, ''),
(19, 1, 8, 'Laptop Apple', 100, 'This is great product finding the right laptop has never been easier.', 'apple.jpg', 'apple latop', 0, 1, ''),
(20, 1, 8, 'Apple Tablet', 100, 'This is great product Finding the right laptop has never been easier.', 'apple_tablet.png', 'apple latop', 0, 1, ''),
(21, 2, 4, 'Camera Canon', 100, 'This is great product Finding the right laptop has never been easier.', 'camera-canon.jpg', 'camera', 0, 0, ''),
(22, 4, 7, 'Desktop Lenovo', 100, 'This is great product Finding the right laptop has never been easier.', 'desktop-lenovo.jpg', 'desktop lenovo', 0, 0, ''),
(23, 1, 1, 'Laptop Pro HP', 250, 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Laptops-hp-Pro-Book-300x275.jpg', 'Laptop HP', 0, 0, 'August 26, 2019'),
(24, 1, 1, 'Testing titile', 100, 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'images (2).png', 'Product keyword', 0, 0, '');

