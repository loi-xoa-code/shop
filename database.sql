-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2024 at 09:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_mvc_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_user`
--

CREATE TABLE `cart_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_user`
--

INSERT INTO `cart_user` (`id`, `user_id`, `product_id`, `number`) VALUES
(25, 2, 8, 6),
(8, 3, 7, 3),
(10, 3, 4, 2),
(23, 3, 28, 1),
(31, 1047, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `category_position` int(4) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `supply_id`, `category_position`, `slug`) VALUES
(558, 'Laptop', NULL, 3, 'laptop'),
(557, 'Điện thoại', NULL, 1, 'dien-thoai'),
(560, 'Phụ kiện', NULL, 4, 'phu-kien');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `link_image` varchar(255) NOT NULL DEFAULT 'author-comment.png',
  `editTime` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT 0,
  `post_id` int(11) DEFAULT 0,
  `page_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `link_Logo` varchar(500) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `phone_2` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `link_Contact` varchar(550) DEFAULT NULL,
  `link_Facebook` varchar(500) DEFAULT NULL,
  `link_Twitter` varchar(255) DEFAULT NULL,
  `link_linkedin` varchar(255) DEFAULT NULL,
  `zalo` varchar(20) DEFAULT NULL,
  `link_about` varchar(255) DEFAULT NULL,
  `about_footer` longtext DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `link_Logo`, `contact_name`, `address`, `country`, `phone`, `phone_2`, `email`, `link_Contact`, `link_Facebook`, `link_Twitter`, `link_linkedin`, `zalo`, `link_about`, `about_footer`, `favicon`) VALUES
(1, 'logo-chikoiquan-tan-hong-it.png', 'Blue Electronics', '410, đường Hùng Vương, TP. HCM', 'Việt Nam', '0388286167', '0388286167', 'huanlthh@gmail.com', 'feedback', 'https://www.facebook.com', 'https://twitter.com', 'http://www.linkedin.com', '0388286167', 'page/1-about', 'Cửa hàng bán lẻ đồ điện tử', 'favicon-chikoiquan-tan-hong-it.png');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `phone` int(20) DEFAULT NULL,
  `subject` mediumtext NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `introduce`
--

CREATE TABLE `introduce` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `content_footer` mediumtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `media_name` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `createDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `media_name`, `slug`, `createDate`) VALUES
(9, 'Logo Tân Hồng IT', 'logo-tan-hong-it.jpg', '2020-03-24 21:18:30'),
(8, 'Khoá học lập trình php căn bản (Gốc)', 'lap-trinh-php-can-ban.png', '2020-03-24 21:14:02'),
(10, 'logo old youtube', 'logo-old-youtube.png', '2020-03-24 23:19:14'),
(11, 'mùa corona virut ', 'mua-corona-virut.jpg', '2020-03-29 08:38:01'),
(13, 'vị cha đẻ của máy vi tính', 'cha-de-cua-may-vi-tinh.jpg', '2020-04-02 01:48:11'),
(14, 'logo chikoi quan', 'logo-chikoi-quan.png', '2020-04-04 20:53:10'),
(15, 'favicon chi koi quan', 'favicon-chi-koi-quan.png', '2020-04-04 20:53:41'),
(16, 'loại trừ thời gian truy cập ip', 'loai-tru-thoi-gian-truy-cap-ip.jpg', '2020-04-11 17:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_footers`
--

CREATE TABLE `menu_footers` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(150) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `menu_description` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_footers`
--

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`) VALUES
(1, 'Not available', 'javascript:void(0);', '', 0),
(2, 'Not available', 'javascript:void(0);', '', 0),
(3, 'Not available', 'javascript:void(0);', '', 0),
(4, 'Not available', 'javascript:void(0);', '', 0),
(5, 'Not available', 'javascript:void(0);', '', 0),
(6, 'Not available', 'javascript:void(0);', '', 0),
(7, 'Not available', 'javascript:void(0);', '', 0),
(8, 'Not available', 'javascript:void(0);', '', 0),
(9, 'Not available', 'javascript:void(0);', '', 0),
(10, 'Sản phẩm nổi bật', 'type/1-san-pham-hot', 'Sản phẩm nổi bật', 0),
(11, 'Sản phẩm mới', 'type/2-san-pham-moi', 'Sản phẩm mới', 0),
(12, 'Đang giảm giá', 'type/3-san-pham-dang-giam-gia', 'Sản phẩn đang giảm giá', 0),
(18, 'Text Link', 'javascript:void(0);', '', 1),
(19, 'Social', 'javascript:void(0);', 'Các liên kết trang mạng xã hội', 1),
(20, 'Blog', 'javascript:void(0);', '', 1),
(21, 'Loại sản phẩm', 'javascript:void(0);', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(200) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL DEFAULT '',
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `province` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cart_total` double NOT NULL,
  `createtime` datetime NOT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(24, 12, 41, 1, 32990000);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_author` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'Draft',
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_type` int(11) NOT NULL DEFAULT 1,
  `post_modified_user` varchar(50) DEFAULT NULL,
  `totalView` int(11) NOT NULL DEFAULT 0,
  `post_slug` varchar(255) NOT NULL,
  `post_avatar` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_modified`, `post_type`, `post_modified_user`, `totalView`, `post_slug`, `post_avatar`) VALUES
(1, 1042, '2020-04-08 05:57:42', '<p>Blue Electronics&nbsp;l&agrave; cửa h&agrave;ng chuy&ecirc;n cung cấp c&aacute;c sản phẩm điện tử ch&iacute;nh h&atilde;ng, bao gồm Điện thoại, Laptop, Phụ kiện, v&agrave; Đồng hồ. Với phương ch&acirc;m mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm chất lượng cao v&agrave; dịch vụ tốt nhất, Blue Electronics cam kết cung cấp c&aacute;c sản phẩm từ những thương hiệu nổi tiếng, đảm bảo nguồn gốc xuất xứ r&otilde; r&agrave;ng.</p>\r\n\r\n<p>Tại Blue Electronics, bạn c&oacute; thể t&igrave;m thấy c&aacute;c d&ograve;ng điện thoại th&ocirc;ng minh mới nhất, laptop với hiệu năng mạnh mẽ, c&aacute;c phụ kiện c&ocirc;ng nghệ hiện đại như tai nghe, sạc dự ph&ograve;ng, ốp lưng, v&agrave; nhiều hơn thế nữa. Đặc biệt, cửa h&agrave;ng c&ograve;n cung cấp c&aacute;c mẫu đồng hồ th&ocirc;ng minh v&agrave; truyền thống từ những thương hiệu uy t&iacute;n, đ&aacute;p ứng nhu cầu đa dạng của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Blue Electronics lu&ocirc;n nỗ lực để mang lại trải nghiệm mua sắm tiện lợi, với đội ngũ nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh, chuy&ecirc;n nghiệp v&agrave; chế độ bảo h&agrave;nh, hậu m&atilde;i chu đ&aacute;o. Đ&acirc;y ch&iacute;nh l&agrave; điểm đến l&yacute; tưởng cho những ai đang t&igrave;m kiếm c&aacute;c sản phẩm điện tử chất lượng v&agrave; đ&aacute;ng tin cậy.</p>\r\n<script src=\"chrome-extension://hhojmcideegachlhfgfdhailpfhgknjm/web_accessible_resources/index.js\"></script>\r\n', 'About', 'Published', '2024-08-13 21:09:34', 2, 'Admin', 83, 'about', 'about-1page.png'),
(9, 3, '2020-04-12 13:20:20', '', 'Web developmwnt', 'Published', '0000-00-00 00:00:00', 2, '', 1, 'fewrfewrew', ''),
(8, 2, '2020-04-08 23:13:53', '', 'Điều khoản sử dụng', 'Published', '0000-00-00 00:00:00', 2, '', 1, 'terms-of-use-page', ''),
(6, 2, '2020-04-08 11:47:48', '', 'Dmca Luật bản quyền', 'Trash', '2020-04-08 10:25:58', 1, 'Tân Hồng ', 5, 'dmca-luat-ban', ''),
(5, 2, '2020-04-09 14:03:15', 'Phim việt chất lượng cao<br />\r\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/about-1page.png\" style=\"height:271px; width:482px\" />', 'Phim việt', 'Published', '2020-04-08 10:13:10', 1, 'Tân Hồng ', 5, 'phim-viet', 'phim-viet-5post.png'),
(4, 2, '2020-04-12 12:54:02', 'ouhiuh<br />\r\n\naad<br />\r\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/tenor.gif\" style=\"height:498px; width:498px\" /><br />\r\n\n<br />\r\n\nfhgtfrdhtrd<br />\r\n\nỵytrj', 'Privacy Policy', 'Draft', '2020-04-08 06:05:46', 2, 'Tân Hồng ', 7, 'privacy-policy', 'privacy-policy-4page.jpg'),
(3, 2, '2020-04-08 06:17:37', 'Luật bản quyền dựa tr&ecirc;n luật to&agrave;n cầu<br />\r\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/dmca-luat-ban-quyen-2page.jpg\" style=\"height:304px; width:650px\" />', 'Dmca Luật bản quyền', 'Published', '2020-04-07 23:52:43', 2, '', 1, 'dmca-luat-ban-quyen', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(500) DEFAULT NULL,
  `product_typeid` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `product_description` longtext DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_material` varchar(255) DEFAULT NULL,
  `product_size` varchar(100) DEFAULT NULL,
  `product_detail` longtext DEFAULT NULL,
  `createBy` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `editBy` varchar(100) DEFAULT NULL,
  `editDate` datetime DEFAULT NULL,
  `totalView` int(11) DEFAULT 0,
  `saleoff` tinyint(11) DEFAULT 0,
  `percentoff` int(11) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_price`, `product_color`, `product_material`, `product_size`, `product_detail`, `createBy`, `createDate`, `editBy`, `editDate`, `totalView`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`) VALUES
(44, 'Laptop Dell Inspiron 5430 14 inch i5 8GB/256GB', 2, 558, 18, NULL, 'Laptop Dell Inspiron 5430: Vừa là laptop, vừa là tablet\r\nLaptop Dell Inspiron 5430 sở hữu CPU Intel Core i5 U, card rời NVIDIA GeForce MX550 2 GB, màn hình 14\" FHD 1920 x 1080, Ram DDR4 8GB, được Minh Tuấn Mobile phân phối chính thức tại Việt Nam.', 23890000, 'Trắng', '', '', '<p>Laptop Dell Inspiron 5430 l&agrave; một chiếc laptop 2 trong 1, c&oacute; thể chuyển đổi giữa chế độ laptop v&agrave; tablet một c&aacute;ch dễ d&agrave;ng. Bạn c&oacute; thể sử dụng n&oacute; như một chiếc laptop th&ocirc;ng thường để l&agrave;m việc, học tập hay chơi game, hoặc gập lại m&agrave;n h&igrave;nh để sử dụng như một chiếc tablet tiện lợi để xem phim, đọc s&aacute;ch hay vẽ tranh.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5430 15.6 inch i5 8GB/256GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/06/laptop-dell-inspiron-5430-15-6-inch-i5-8gb-256gb-01.webp\" style=\"height:585px; width:780px\" /></p>\r\n\r\n<h2>Thiết kế</h2>\r\n\r\n<p>Laptop Dell Inspiron 5430 sở hữu một thiết kế sang trọng v&agrave; tinh tế, với vỏ kim loại bền bỉ v&agrave; chắc chắn. M&agrave;u bạc trang nh&atilde; v&agrave; thanh lịch tạo n&ecirc;n một phong c&aacute;ch hiện đại v&agrave; chuy&ecirc;n nghiệp. Laptop c&oacute; k&iacute;ch thước nhỏ gọn v&agrave; nhẹ nh&agrave;ng, chỉ nặng 1.78 kg với đường k&iacute;nh cụ thể l&agrave; D&agrave;i 314 mm - Rộng 226.6 mm - D&agrave;y 16.49 ~ 18.52.</p>\r\n\r\n<h2>M&agrave;n h&igrave;nh</h2>\r\n\r\n<p>Laptop Dell Inspiron 5430 được trang bị một m&agrave;n h&igrave;nh cảm ứng WUXGA (1920 x 1200) k&iacute;ch thước 14 inch, cho h&igrave;nh ảnh sắc n&eacute;t, r&otilde; r&agrave;ng v&agrave; sống động. M&agrave;n h&igrave;nh c&oacute; g&oacute;c nh&igrave;n rộng, độ s&aacute;ng cao v&agrave; c&ocirc;ng nghệ Truelife Touch gi&uacute;p bạn c&oacute; trải nghiệm cảm ứng mượt m&agrave; v&agrave; ch&iacute;nh x&aacute;c. Bạn cũng c&oacute; thể sử dụng b&uacute;t cảm ứng Dell Active Pen (b&aacute;n ri&ecirc;ng) để viết, vẽ hay ghi ch&uacute; tr&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5430 15.6 inch i5 8GB/256GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/06/laptop-dell-inspiron-5430-15-6-inch-i5-8gb-256gb-02.webp\" style=\"height:585px; width:780px\" /></p>\r\n\r\n<h2>Hiệu năng</h2>\r\n\r\n<p>Laptop Dell Inspiron 5430 được trang bị bộ vi xử l&yacute; Intel Intel Core i5 U, cho hiệu năng xử l&yacute; cao v&agrave; tiết kiệm điện năng. Bộ vi xử l&yacute; n&agrave;y c&oacute; tốc độ xung nhịp l&ecirc;n đến 1.90GHz v&agrave; bộ nhớ đệm 12MB, gi&uacute;p bạn xử l&yacute; nhanh ch&oacute;ng c&aacute;c t&aacute;c vụ nặng như chỉnh sửa video, render h&igrave;nh ảnh hay chơi game.</p>\r\n\r\n<p>Chiếc laptop n&agrave;y cũng được trang bị bộ nhớ RAM DDR4 dung lượng 8GB (c&oacute; thể n&acirc;ng cấp l&ecirc;n tối đa 16GB) với tốc độ bus 4800 MHz, cho khả năng đa nhiệm mượt m&agrave; v&agrave; hiệu quả. Ngo&agrave;i ra, m&aacute;y cũng được trang bị ổ cứng 256Gb SSD NVMe, cho tốc độ truy xuất dữ liệu nhanh ch&oacute;ng v&agrave; ổn định.&nbsp;</p>\r\n\r\n<p>Về phần card đồ hoạ, m&aacute;y được t&iacute;ch hợp card rời NVIDIA GeForce MX550 2 GB, cho khả năng xử l&yacute; đồ họa tốt hơn so với c&aacute;c card đồ họa t&iacute;ch hợp trước đ&acirc;y.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5430 15.6 inch i5 8GB/256GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/06/laptop-dell-inspiron-5430-15-6-inch-i5-8gb-256gb-03.webp\" style=\"height:488px; width:780px\" /></p>\r\n\r\n<h2>Cổng kết nối</h2>\r\n\r\n<p>Laptop Dell Inspiron 5430 14 inch i5 8GB/256GB cũng được trang bị nhiều cổng kết nối tiện lợi, bao gồm:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;2 cổng USB 3.2 Gen 2x2 Type-C với DisplayPort 1.4 v&agrave; Power Delivery, cho tốc độ truyền dữ liệu nhanh ch&oacute;ng v&agrave; khả năng kết nối với c&aacute;c thiết bị ngoại vi như m&agrave;n h&igrave;nh, b&agrave;n ph&iacute;m, chuột hay sạc pin.</li>\r\n	<li>1 cổng HDMI 1.4, cho khả năng xuất h&igrave;nh ảnh ra m&agrave;n h&igrave;nh lớn như TV hay m&aacute;y chiếu.</li>\r\n	<li>1 Jack tai nghe 3.5 mm</li>\r\n	<li>1 cổng Thunderbolt 4 hỗ trợ display/power delivery</li>\r\n</ul>\r\n\r\n<p>M&aacute;y cũng được trang bị kết nối kh&ocirc;ng d&acirc;y WLAN 802.11ax v&agrave; Bluetooth 5.3, cho khả năng kết nối với internet v&agrave; c&aacute;c thiết bị kh&ocirc;ng d&acirc;y như loa, tai nghe hay điện thoại một c&aacute;ch dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5430 15.6 inch i5 8GB/256GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/06/laptop-dell-inspiron-5430-15-6-inch-i5-8gb-256gb-06.webp\" style=\"height:585px; width:780px\" /></p>\r\n\r\n<h2>Thời lượng pin</h2>\r\n\r\n<p>Chiếc laptop n&agrave;y được Dell trang bị pin 4 cell dung lượng 54 Wh, cho thời gian sử dụng l&acirc;u d&agrave;i v&agrave; linh hoạt. Bạn c&oacute; thể l&agrave;m việc hay giải tr&iacute; m&agrave; kh&ocirc;ng lo hết pin giữa chừng.</p>\r\n\r\n<p><strong>Laptop Dell Inspiron 5430 14 inch i5 8GB/256GB</strong>&nbsp;được ph&acirc;n phối ch&iacute;nh thức tại&nbsp;<a href=\"https://minhtuanmobile.com/\" target=\"_blank\">Minh Tuấn Mobile</a>. Ngay l&uacute;c n&agrave;y, bạn c&oacute; thể sở hữu sản phẩm n&agrave;y với mức gi&aacute; ưu đ&atilde;i nhất từ c&aacute;c chương tr&igrave;nh khuyến m&atilde;i của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5430 15.6 inch i5 8GB/256GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/06/laptop-dell-inspiron-5430-15-6-inch-i5-8gb-256gb-04.webp\" style=\"height:488px; width:780px\" /></p>\r\n', 'Huan', '2024-08-14', '', '0000-00-00 00:00:00', 87, 0, 0, 'laptop-dell-inspiron-5430-14-inch-i5-8gb-256gb-44img1.png', NULL, NULL, NULL, 'laptop-dell-inspiron-5430-14-inch-i5-8gb-256gb'),
(43, 'Miếng dán màn hình Galaxy Z Flip6', 2, 560, 10, NULL, 'Với thiết kế đặc biệt dành riêng cho Galaxy Z Flip6, miếng dán màn hình này không chỉ bảo vệ mà còn nâng cao trải nghiệm sử dụng điện thoại gập của bạn.', 450000, 'Trong suốt', '', '', '<h2>N&acirc;ng tầm trải nghiệm h&igrave;nh ảnh</h2>\r\n\r\n<p>Miếng d&aacute;n m&agrave;n h&igrave;nh Galaxy Z Flip6 được thiết kế đặc biệt để tối ưu h&oacute;a chất lượng hiển thị. Với c&ocirc;ng nghệ ti&ecirc;n tiến, sản phẩm gi&uacute;p tăng cường độ tương phản v&agrave; độ sắc n&eacute;t của h&igrave;nh ảnh. Điều n&agrave;y đặc biệt hữu &iacute;ch khi sử dụng điện thoại ngo&agrave;i trời, gi&uacute;p người d&ugrave;ng dễ d&agrave;ng xem nội dung ngay cả dưới &aacute;nh nắng gay gắt.</p>\r\n\r\n<h2>Thiết kế tương th&iacute;ch ho&agrave;n hảo</h2>\r\n\r\n<p>Một trong những ưu điểm nổi bật của miếng d&aacute;n m&agrave;n h&igrave;nh n&agrave;y l&agrave; khả năng tương th&iacute;ch cao với c&aacute;c phụ kiện ch&iacute;nh h&atilde;ng của Samsung. Được cắt v&agrave; định h&igrave;nh ch&iacute;nh x&aacute;c, miếng d&aacute;n sẽ kh&ocirc;ng g&acirc;y cản trở khi sử dụng c&ugrave;ng ốp lưng hay c&aacute;c phụ kiện kh&aacute;c. Điều n&agrave;y đảm bảo t&iacute;nh thẩm mỹ v&agrave; chức năng của thiết bị lu&ocirc;n được duy tr&igrave; ở mức tối ưu.</p>\r\n\r\n<p><img alt=\"Miếng dán màn hình Galaxy Z Flip6\" src=\"https://minhtuanmobile.com/uploads/editer/images/2024/07/mieng-dan-man-hinh-galaxy-z-flip6.webp\" style=\"height:799px; width:670px\" /></p>\r\n\r\n<h2>Lớp bảo vệ v&ocirc; h&igrave;nh nhưng hiệu quả</h2>\r\n\r\n<p>Mặc d&ugrave; gần như kh&ocirc;ng thể nhận biết bằng mắt thường, miếng d&aacute;n m&agrave;n h&igrave;nh Galaxy Z Flip6 mang lại lớp bảo vệ đ&aacute;ng kể cho thiết bị. N&oacute; c&oacute; khả năng chống trầy xước, hạn chế b&aacute;m bụi v&agrave; dấu v&acirc;n tay hiệu quả. Nhờ đ&oacute;, m&agrave;n h&igrave;nh điện thoại lu&ocirc;n trong t&igrave;nh trạng sạch sẽ, mới mẻ, k&eacute;o d&agrave;i tuổi thọ sử dụng.</p>\r\n\r\n<h2>Trải nghiệm sử dụng mượt m&agrave;</h2>\r\n\r\n<p>B&ecirc;n cạnh khả năng bảo vệ, miếng d&aacute;n c&ograve;n được thiết kế để kh&ocirc;ng ảnh hưởng đến độ nhạy của m&agrave;n h&igrave;nh cảm ứng. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i thao t&aacute;c tr&ecirc;n điện thoại m&agrave; kh&ocirc;ng cảm thấy c&oacute; bất kỳ trở ngại n&agrave;o. Điều n&agrave;y đặc biệt quan trọng đối với những người thường xuy&ecirc;n sử dụng điện thoại cho c&ocirc;ng việc hoặc giải tr&iacute;.</p>\r\n', 'Huan', '2024-08-14', '', '0000-00-00 00:00:00', 12, 0, 0, 'n-a-43img1.png', 'n-a-43img2.png', 'n-a-43img3.png', NULL, 'n-a'),
(42, 'Điện thoại OPPO Reno11 F 5G 8GB/256GB Tím', 3, 557, 13, NULL, 'OPPO Reno11 F 5G là một chiếc điện thoại tầm trung mới được OPPO ra mắt trong thời gian gần đây. Máy sở hữu nhiều ưu điểm nổi bật như thiết kế trẻ trung, màn hình đẹp, hiệu năng mạnh mẽ nhờ chip Dimensity 7050 5G, hứa hẹn mang đến trải nghiệm tốt khi sử dụng.', 8490000, 'Tím', '', '', '<h3>Tạo h&igrave;nh vu&ocirc;ng vức c&ugrave;ng hiệu ứng mặt lưng cuốn h&uacute;t</h3>\r\n\r\n<p>Thiết kế của điện thoại n&agrave;y được tạo h&igrave;nh vu&ocirc;ng vức hiện đại, đem đến một vẻ đẹp đầy trẻ trung v&agrave; c&aacute; t&iacute;nh. Điều đặc biệt l&agrave; phi&ecirc;n bản m&agrave;u t&iacute;m của Reno11 F 5G đ&atilde; g&acirc;y ấn tượng mạnh mẽ với c&aacute;c t&iacute;n đồ c&ocirc;ng nghệ, lấy cảm hứng từ những kết cấu kim cương, n&oacute; tạo n&ecirc;n hiệu ứng lấp l&aacute;nh tr&ecirc;n bề mặt lưng cực kỳ th&uacute; vị.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-1-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-1-1020x570.jpg\" title=\"Tạo hình vuông vức sang trọng - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng chỉ g&acirc;y ấn tượng với ngoại h&igrave;nh, Reno11 F 5G cũng thu h&uacute;t sự ch&uacute; &yacute; với k&iacute;ch thước v&agrave; khối lượng l&yacute; tưởng. Với độ mỏng chỉ 7.54 mm v&agrave; khối lượng 177 g, chiếc điện thoại n&agrave;y kh&ocirc;ng chỉ mỏng nhẹ m&agrave; c&ograve;n rất dễ d&agrave;ng để cầm nắm v&agrave; sử dụng hằng ng&agrave;y.</p>\r\n\r\n<p>Một trong những điểm đ&aacute;ng ch&uacute; &yacute; nhất của Reno11 F 5G ch&iacute;nh l&agrave; cụm camera độc đ&aacute;o. Với cụm h&igrave;nh chữ nhật chứa 2 v&ograve;ng tr&ograve;n lớn b&ecirc;n trong. C&aacute;ch l&agrave;m n&agrave;y tạo n&ecirc;n sự kh&aacute;c biệt với c&aacute;c phi&ecirc;n bản trước đ&oacute;, v&igrave; vậy m&aacute;y trở n&ecirc;n nổi bật hơn v&agrave; c&oacute; phần ph&aacute; c&aacute;ch so với c&aacute;c mẫu điện thoại thuộc d&ograve;ng Reno.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-2-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-2-1020x570.jpg\" title=\"Thiết kế cụm camera độc đáo - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>Reno11 F 5G l&agrave; một trong số &iacute;t c&aacute;c điện thoại th&ocirc;ng minh tr&ecirc;n thị trường được trang bị chuẩn kh&aacute;ng nước, bụi IP65, điều n&agrave;y l&agrave; một điểm đ&aacute;ng ch&uacute; &yacute; khiến n&oacute; nổi bật trong h&agrave;ng loạt c&aacute;c sản phẩm c&ugrave;ng ph&acirc;n kh&uacute;c. Chuẩn kh&aacute;ng nước, bụi IP65 đảm bảo rằng điện thoại c&oacute; khả năng chống lại nước v&agrave; bụi một c&aacute;ch hiệu quả.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, viền m&agrave;n h&igrave;nh mỏng cũng tạo điểm nhấn cho thiết kế tổng thể của chiếc điện thoại, l&agrave;m cho sản phẩm trở n&ecirc;n hiện đại v&agrave; thu h&uacute;t hơn. Sự kết hợp giữa viền m&agrave;n h&igrave;nh mỏng v&agrave; thiết kế vu&ocirc;ng vức đ&atilde; tạo n&ecirc;n một sự độc đ&aacute;o v&agrave; c&aacute; t&iacute;nh cho Reno11 F 5G.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh lớn đi k&egrave;m tấm nền AMOLED</h3>\r\n\r\n<p>Được trang bị tấm nền AMOLED, gi&uacute;p cho m&agrave;u sắc trở n&ecirc;n sống động hơn bao giờ hết, theo đ&oacute; l&agrave; m&agrave;u đen s&acirc;u v&agrave; độ tương phản vượt trội. Kết hợp với c&ocirc;ng nghệ DCI-P3 v&agrave; HDR10+, m&agrave;u sắc tr&ecirc;n Reno11 F 5G được t&aacute;i tạo một c&aacute;ch ch&acirc;n thực, mang lại trải nghiệm h&igrave;nh ảnh chuẩn x&aacute;c.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh sắc n&eacute;t của Reno11 F 5G l&agrave; điều kh&ocirc;ng thể kh&ocirc;ng nhắc đến. Với độ ph&acirc;n giải Full HD+ (1080 x 2412 Pixels), h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh trở n&ecirc;n r&otilde; n&eacute;t v&agrave; sắc sảo, từ việc xem video, chơi game cho đến duyệt web, c&aacute;c hiện tượng như rỗ m&agrave;n h&igrave;nh hay răng cưa cũng l&agrave; điều kh&oacute; bắt gặp tr&ecirc;n m&agrave;n h&igrave;nh n&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-4-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-4-1020x570.jpg\" title=\"Màn hình có độ phân giải cao - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>Khả năng hiển thị ngo&agrave;i trời của Reno11 F 5G cũng l&agrave; một điểm s&aacute;ng. Với độ s&aacute;ng 900 nits, việc xem bản đồ khi di chuyển ngo&agrave;i đường kh&ocirc;ng c&ograve;n l&agrave; vấn đề lớn. M&agrave;n h&igrave;nh lớn 6.7 inch của chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo-reno\" title=\"Tham khảo điện thoại OPPO dòng Reno tại Thế Giới Di Động\">điện thoại OPPO d&ograve;ng Reno</a>&nbsp;n&agrave;y cũng đ&oacute;ng vai tr&ograve; quan trọng trong việc tạo ra kh&ocirc;ng gian hiển thị rộng, thuận tiện cho giải tr&iacute; v&agrave; c&ocirc;ng việc.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y được trang bị k&iacute;nh Panda, l&agrave; một loại k&iacute;nh cường lực được thiết kế để chịu được c&aacute;c t&aacute;c động từ b&ecirc;n ngo&agrave;i một c&aacute;ch hiệu quả. Với độ d&agrave;y v&agrave; độ cứng cao, k&iacute;nh cường lực gi&uacute;p bảo vệ m&agrave;n h&igrave;nh của Reno11 F 5G khỏi c&aacute;c va đập, trầy xước khi sử dụng hằng ng&agrave;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-5-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-5-1020x570.jpg\" title=\"Được tích hợp kính cường lực lên màn hình - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>Với tần số qu&eacute;t 120 Hz, m&agrave;n h&igrave;nh của OPPO Reno11 F 5G cung cấp một trải nghiệm mượt m&agrave; v&agrave; phản hồi nhanh ch&oacute;ng so với c&aacute;c m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t thấp hơn. Điều n&agrave;y c&oacute; nghĩa l&agrave; c&aacute;c hoạt động như cuộn trang, chuyển động trong game hoặc cử chỉ đơn giản tr&ecirc;n m&agrave;n h&igrave;nh đều diễn ra một c&aacute;ch mượt m&agrave; v&agrave; tự nhi&ecirc;n.</p>\r\n\r\n<h3>Camera 64 MP đ&aacute;p ứng tốt nhu cầu chụp ảnh</h3>\r\n\r\n<p>Camera ch&iacute;nh 64 MP của Reno11 F 5G l&agrave; điểm nhấn với khả năng t&aacute;i tạo chi tiết v&agrave; m&agrave;u sắc một c&aacute;ch ch&acirc;n thực v&agrave; sắc n&eacute;t. Kh&ocirc;ng chỉ vậy, camera g&oacute;c si&ecirc;u rộng 8 MP cho ph&eacute;p người d&ugrave;ng bắt g&oacute;c nh&igrave;n rộng lớn, l&yacute; tưởng cho việc chụp cảnh quan hoặc nh&oacute;m. Camera macro 2 MP cung cấp khả năng chụp ảnh cận cảnh, gi&uacute;p người d&ugrave;ng kh&aacute;m ph&aacute; những chi tiết nhỏ nhất của thế giới xung quanh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-7-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-7-1020x570.jpg\" title=\"Ảnh chụp sắc nét - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd\" title=\"Tham khảo điện thoại tại Thế Giới Di Động\">Điện thoại</a>&nbsp;c&ograve;n hỗ trợ nhiều t&iacute;nh năng chụp ảnh v&agrave; quay video độc đ&aacute;o như: quay video hiển thị k&eacute;p, chụp ban đ&ecirc;m, chế độ chuy&ecirc;n nghiệp, l&agrave;m đẹp,... Nhờ v&agrave;o c&aacute;c t&iacute;nh năng n&agrave;y, người d&ugrave;ng c&oacute; thể tạo ra những bức ảnh v&agrave; video chất lượng cao tuỳ v&agrave;o sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-8-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-8-1020x570.jpg\" title=\"Bổ sung nhiều tính năng bên trong - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>Hơn nữa, điểm đ&aacute;ng kể của Reno11 F 5G l&agrave; khả năng quay video chuẩn 4K ở tốc độ khung h&igrave;nh 30 fps. Điều n&agrave;y mang lại cho người d&ugrave;ng trải nghiệm quay video ch&acirc;n thực v&agrave; sống động, với độ ph&acirc;n giải cao v&agrave; chi tiết r&otilde; r&agrave;ng.</p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ trong tầm gi&aacute;</h3>\r\n\r\n<p>Một trong những điểm nổi bật của Reno11 F 5G ch&iacute;nh l&agrave; việc sử dụng con chip MediaTek Dimensity 7050 5G, một con chip mạnh mẽ v&agrave; hiện đại. Vi xử l&yacute; n&agrave;y đảm bảo cho chiếc điện thoại khả năng xử l&yacute; tốt c&aacute;c t&aacute;c vụ đa nhiệm, từ chơi game đến l&agrave;m việc tr&ecirc;n nhiều ứng dụng m&agrave; vẫn duy tr&igrave; hiệu suất ổn định.</p>\r\n\r\n<p>Để tăng cường hiệu suất cho việc đa nhiệm, Reno11 F 5G được trang bị 8 GB RAM, cho ph&eacute;p người d&ugrave;ng chạy nhiều ứng dụng c&ugrave;ng một l&uacute;c m&agrave; kh&ocirc;ng gặp trở ngại v&agrave; đảm bảo trải nghiệm mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-9-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-9-1020x570.jpg\" title=\"Cấu hình ổn trong tầm giá - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Reno11 F 5G cũng được t&iacute;ch hợp hệ điều h&agrave;nh Android 14, mang đến những cải tiến về hiệu suất, bảo mật v&agrave; t&iacute;nh năng mới mẻ. Chứng tỏ sự cam kết của OPPO trong việc cung cấp cho người d&ugrave;ng những trải nghiệm mới nhất v&agrave; tốt nhất từ hệ điều h&agrave;nh Android.</p>\r\n\r\n<h3>Pin 5000 mAh v&agrave; c&oacute; đi k&egrave;m sạc nhanh 67 W</h3>\r\n\r\n<p>Reno11 F 5G được trang bị vi&ecirc;n pin lớn với dung lượng 5000 mAh. Con số n&agrave;y đảm bảo rằng người d&ugrave;ng c&oacute; thể sử dụng điện thoại một c&aacute;ch thoải m&aacute;i suốt cả ng&agrave;y. Từ đ&oacute;, Reno11 F 5G trở th&agrave;nh một sự lựa chọn l&yacute; tưởng cho những người d&ugrave;ng y&ecirc;u th&iacute;ch giải tr&iacute; di động v&agrave; sử dụng nhiều ứng dụng nặng.</p>\r\n\r\n<p>Ngo&agrave;i ra, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" title=\"Tham khảo điện thoại OPPO tại Thế Giới Di Động\">điện thoại OPPO</a>&nbsp;n&agrave;y cũng hỗ trợ c&ocirc;ng nghệ sạc nhanh 67 W, một t&iacute;nh năng đ&aacute;ng ch&uacute; &yacute; gi&uacute;p người d&ugrave;ng tiết kiệm thời gian trong qu&aacute; tr&igrave;nh sạc. Với c&ocirc;ng nghệ n&agrave;y, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng kh&ocirc;i phục năng lượng cho thiết bị trong thời gian ngắn m&agrave; kh&ocirc;ng cần phải chờ đợi l&acirc;u.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-3-1020x570.jpg\" onclick=\"return false;\"><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/42/321895/oppo-reno11-f-5g-3-1020x570.jpg\" title=\"Pin lớn đáp ứng thời gian sử dụng dài lâu - OPPO Reno11 F 5G\" /></a></p>\r\n\r\n<p>OPPO Reno11 F 5G l&agrave; một lựa chọn đ&aacute;ng ch&uacute; &yacute; trong ph&acirc;n kh&uacute;c điện thoại tầm trung, với nhiều t&iacute;nh năng nổi bật. Với cấu h&igrave;nh mạnh mẽ, thiết kế đẹp mắt, vi&ecirc;n pin dung lượng lớn v&agrave; camera sắc n&eacute;t, điện thoại n&agrave;y rất ph&ugrave; hợp cho mọi đối tượng người d&ugrave;ng từ c&aacute;c bạn học sinh - sinh vi&ecirc;n đến c&aacute;c anh chị nh&acirc;n vi&ecirc;n văn ph&ograve;ng.</p>\r\n', 'Huan', '2024-08-14', 'Huan', '2024-08-14 21:21:40', 436, 1, 5, 'n-a-42img1.jpg', 'n-a-42img2.jpg', 'n-a-42img3.jpg', 'n-a-42img4.jpg', 'n-a'),
(41, 'Laptop ASUS Zenbook 14 OLED - UX3405MA-PP152W (Ultra 7-155H/RAM 32GB/Onboard/1TB SSD/ Windows 11)', 1, 558, 16, NULL, '- CPU: Intel Core Ultra 7-155H\r\n- Màn hình: 14\" OLED (2880 x 1800),120Hz\r\n- RAM: 32GB LPDDR5x\r\n- Đồ họa: Onboard Intel Arc Graphics\r\n- Lưu trữ: 1TB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home\r\n- Pin: 4 cell 75 Wh Pin liền\r\n- Khối lượng: 1.2kg\r\n- Chuẩn Intel AI', 32990000, 'Đen', '', '', '<p><a href=\"https://phongvu.vn/c/laptop-asus-zenbook\" rel=\"noopener noreferrer\" target=\"_blank\">Laptop ASUS Zenbook</a>&nbsp;14 OLED UX3405MA l&agrave; một chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-ai\" rel=\"noopener noreferrer\" target=\"_blank\">laptop AI</a>&nbsp;ti&ecirc;n phong đến từ nh&agrave; ASUS mang đến một chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-van-phong\" rel=\"noopener noreferrer\" target=\"_blank\">laptop văn ph&ograve;ng</a>&nbsp;với trải nghiệm ho&agrave;n to&agrave;n mới mẻ v&agrave; đầy ấn tượng. Với thiết kế thời thượng, m&agrave;n h&igrave;nh OLED sống động, hiệu năng mạnh mẽ c&ugrave;ng khả năng tối ưu h&oacute;a th&ocirc;ng minh nhờ AI, Zenbook 14 OLED UX3405MA l&agrave; người bạn đồng h&agrave;nh ho&agrave;n hảo cho những ai muốn khơi dậy nguồn cảm hứng s&aacute;ng tạo v&agrave; chinh phục mọi thử th&aacute;ch.</p>\r\n\r\n<h2><strong>Asus Zenbook 14 OLED - UX3405MA-PP152W với thiết kế thời thượng, di động linh hoạt</strong></h2>\r\n\r\n<p><a href=\"https://phongvu.vn/c/laptop-asus\" rel=\"noopener noreferrer\" target=\"_blank\">Laptop Asus</a>&nbsp;Zenbook 14 OLED UX3405MA sở hữu thiết kế mỏng nhẹ ấn tượng với độ d&agrave;y chỉ 1.49 cm v&agrave; trọng lượng&nbsp;<strong>1.2 kg</strong>. M&aacute;y được ho&agrave;n thiện từ chất liệu nh&ocirc;m nguy&ecirc;n khối cao cấp, quan đ&oacute; m&agrave; bạn sẽ sở hữu một sản phẩm mang đến sự sang trọng v&agrave; độ bền bỉ cao.&nbsp;</p>\r\n\r\n<p>Với k&iacute;ch thước v&agrave; trọng lượng n&agrave;y, Laptop AI ASUS Zenbook 14 OLED - UX3405MA-PP152W lu&ocirc;n sẵn s&agrave;ng l&agrave; một chiếc laptop di động mạnh mẽ để đồng h&agrave;nh c&ugrave;ng bạn khi đi học v&agrave; đi l&agrave;m.</p>\r\n<img alt=\"Laptop AI ASUS Zenbook 14 OLED - UX3405MA-PP152W luôn sẵn sàng là một chiếc laptop di động mạnh mẽ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/1/0c01282e-b701-426d-9432-40fc6c7bd67c/image.png\" /><br />\r\nLaptop AI ASUS Zenbook 14 OLED - UX3405MA-PP152W lu&ocirc;n sẵn s&agrave;ng l&agrave; một chiếc laptop di động mạnh mẽ\r\n<h2><strong>M&agrave;n h&igrave;nh OLED 120Hz sống động của Asus Zenbook 14 OLED - UX3405MA</strong></h2>\r\n\r\n<p>Điểm nhấn nổi bật của Zenbook 14 OLED UX3405MA ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh&nbsp;<strong>OLED 14 inch</strong>&nbsp;với độ ph&acirc;n giải<strong>&nbsp;2.8K (2880 x 1800)</strong>&nbsp;v&agrave; tần số qu&eacute;t<strong>&nbsp;120Hz</strong>. M&agrave;n h&igrave;nh n&agrave;y mang đến h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc rực rỡ v&agrave; độ tương phản cao, cho trải nghiệm thị gi&aacute;c v&ocirc; c&ugrave;ng sống động. Tần số qu&eacute;t 120Hz gi&uacute;p mọi chuyển động trở n&ecirc;n mượt m&agrave;, ho&agrave;n hảo cho những ai y&ecirc;u th&iacute;ch giải tr&iacute; đa phương tiện hay chơi game.</p>\r\n<img alt=\"Màn hình OLED 120Hz sống động của Asus Zenbook 14 OLED - UX3405MA\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/1/97f8a45c-d585-413d-b67a-3f68dacf83b9/image.png\" /><br />\r\nM&agrave;n h&igrave;nh OLED 120Hz sống động của Asus Zenbook 14 OLED - UX3405MA\r\n<p>Với c&ocirc;ng nghệ m&agrave;n h&igrave;nh hiện đại v&agrave; chất lượng hiển thị đẹp mắt bật nhất trong thế giới&nbsp;<a href=\"https://phongvu.vn/c/laptop\" rel=\"noopener noreferrer\" target=\"_blank\">laptop</a>, ASUS Zenbook 14 OLED - UX3405MA-PP152W chắc chắn sẽ mang đến cho bạn trải nghiệm h&igrave;nh ảnh tuyệt vời hơn bao giờ hết.&nbsp;</p>\r\n\r\n<h2><strong>Hiệu năng mạnh mẽ, xử l&yacute; đa nhiệm mượt m&agrave;</strong></h2>\r\n\r\n<p>Zenbook 14 OLED UX3405MA l&agrave; chiếc<strong>&nbsp;</strong><a href=\"https://phongvu.vn/c/laptop-intel-core-ultra-7\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>laptop trang bị Intel Core Ultra 7&nbsp;</strong></a><strong>155H</strong>&nbsp;thế hệ thứ 14 mới nhất với 16 nh&acirc;n 22 luồng, mang đến hiệu năng mạnh mẽ để xử l&yacute; mọi t&aacute;c vụ từ cơ bản đến n&acirc;ng cao một c&aacute;ch mượt m&agrave;. Việc t&iacute;ch hợp c&ocirc;ng nghệ Intel AI Boost gi&uacute;p tối ưu h&oacute;a hiệu năng cho c&aacute;c t&aacute;c vụ AI như nhận diện khu&ocirc;n mặt, khử tiếng ồn v&agrave; chỉnh sửa ảnh, mang đến trải nghiệm mượt m&agrave; v&agrave; nhanh ch&oacute;ng.</p>\r\n<img alt=\"Card đồ họa Intel Arc Graphics tích hợp cho phép bạn sáng tạo nội dung, chỉnh sửa ảnh\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/1/c29a1e16-2ffc-446f-a03d-bbcec1df4ad9/image.png\" /><br />\r\nCard đồ họa Intel Arc Graphics t&iacute;ch hợp cho ph&eacute;p bạn s&aacute;ng tạo nội dung, chỉnh sửa ảnh\r\n<p>Card đồ họa&nbsp;<strong>Intel Arc Graphics&nbsp;</strong>t&iacute;ch hợp cho ph&eacute;p bạn s&aacute;ng tạo nội dung, chỉnh sửa ảnh, chơi game nhẹ nh&agrave;ng một c&aacute;ch hiệu quả. Người d&ugrave;ng c&oacute; thể sử dụng Adobe Photoshop để chỉnh sửa ảnh RAW một c&aacute;ch nhanh ch&oacute;ng v&agrave; mượt m&agrave;, m&agrave; kh&ocirc;ng lo xảy ra hiện tượng lag hay giật h&igrave;nh. Ngo&agrave;i ra, chiếc Laptop AI ASUS Zenbook 14 OLED - UX3405MA-PP152W c&ograve;n c&oacute; thể xử gọn c&aacute;c tựa game online phổ biến như Li&ecirc;n Minh Huyền Thoại hay PUBG Mobile với mức c&agrave;i đặt đồ họa cao, m&agrave; vẫn đảm bảo được sự mượt m&agrave; v&agrave; ổn định.</p>\r\n\r\n<h2><strong>C&ocirc;ng nghệ AI th&ocirc;ng minh</strong></h2>\r\n\r\n<p>Zenbook 14 OLED UX3405MA được t&iacute;ch hợp nhiều c&ocirc;ng nghệ AI th&ocirc;ng minh gi&uacute;p tối ưu h&oacute;a trải nghiệm sử dụng. T&iacute;nh năng ASUS AI Noise Reduction gi&uacute;p lọc bỏ tiếng ồn xung quanh, cho chất lượng &acirc;m thanh trong trẻo khi tham gia c&aacute;c cuộc gọi trực tuyến. ASUS Intelligent Performance Technology tự động điều chỉnh hiệu năng m&aacute;y t&iacute;nh dựa tr&ecirc;n nhu cầu sử dụng, gi&uacute;p tiết kiệm pin v&agrave; tăng cường hiệu quả hoạt động.</p>\r\n<img alt=\"Công nghệ AI thông minh\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/1/0c8f9329-9bfb-495c-9575-74809264022f/image.png\" /><br />\r\nC&ocirc;ng nghệ AI th&ocirc;ng minh\r\n<h2><strong>Bộ nhớ RAM dung lượng lớn, ổ cứng SSD tốc độ cao</strong></h2>\r\n\r\n<p>Zenbook 14 OLED UX3405MA được trang bị sẵn 32GB RAM LPDDR5x, cho ph&eacute;p bạn xử l&yacute; đa nhiệm mượt m&agrave; với nhiều ứng dụng c&ugrave;ng l&uacute;c. Ổ cứng SSD 1TB PCIe Gen 4.0 mang đến tốc độ khởi động m&aacute;y v&agrave; truy cập dữ liệu nhanh ch&oacute;ng.</p>\r\n\r\n<p>Dung lượng RAM v&agrave; SSD khủng cho ph&eacute;p chiếc laptop AI n&agrave;y trở th&agrave;nh một c&ocirc;ng cụ s&aacute;ng tạo hữu &iacute;ch cho người d&ugrave;ng ở thời điểm hiện tại.</p>\r\n\r\n<h2><strong>Cổng kết nối đa dạng</strong></h2>\r\n\r\n<p>Zenbook 14 OLED UX3405MA được trang bị đầy đủ c&aacute;c cổng kết nối th&ocirc;ng dụng bao gồm 2 cổng Thunderbolt 4, 1 cổng USB 3.2 Gen 1 Type-A, 1 cổng HDMI v&agrave; 1 jack cắm audio combo. M&aacute;y cũng hỗ trợ Wi-Fi 6E v&agrave; Bluetooth 5.3 cho kết nối kh&ocirc;ng d&acirc;y tốc độ cao v&agrave; ổn định.</p>\r\n\r\n<h2><strong>B&agrave;n ph&iacute;m g&otilde; &ecirc;m &aacute;i, h&agrave;nh tr&igrave;nh ph&iacute;m tốt</strong></h2>\r\n\r\n<p>Zenbook 14 OLED UX3405MA sở hữu b&agrave;n ph&iacute;m chiclet với h&agrave;nh tr&igrave;nh ph&iacute;m 1.4mm, mang đến cảm gi&aacute;c g&otilde; &ecirc;m &aacute;i v&agrave; thoải m&aacute;i. B&agrave;n ph&iacute;m được trang bị đ&egrave;n LED backlit gi&uacute;p bạn dễ d&agrave;ng sử dụng trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n<img alt=\"Bàn phím gõ êm ái, hành trình phím tốt\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2024/3/1/6783d53f-9db1-4251-a022-06526879a146/image.png\" /><br />\r\nB&agrave;n ph&iacute;m g&otilde; &ecirc;m &aacute;i, h&agrave;nh tr&igrave;nh ph&iacute;m tốt\r\n<script src=\"chrome-extension://hhojmcideegachlhfgfdhailpfhgknjm/web_accessible_resources/index.js\"></script>\r\n', 'Huan', '2024-08-14', 'Admin', '2024-08-14 19:28:23', 38, 0, 5, 'laptop-asus-zenbook-14-oled-ux3405ma-pp152w-ultra-7-155h-ram-32gb-onboard-1tb-ssd-windows-11-41img1.png', 'laptop-asus-zenbook-14-oled-ux3405ma-pp152w-ultra-7-155h-ram-32gb-onboard-1tb-ssd-windows-11-41img2.png', 'laptop-asus-zenbook-14-oled-ux3405ma-pp152w-ultra-7-155h-ram-32gb-onboard-1tb-ssd-windows-11-41img3.png', 'laptop-asus-zenbook-14-oled-ux3405ma-pp152w-ultra-7-155h-ram-32gb-onboard-1tb-ssd-windows-11-41img4.png', 'laptop-asus-zenbook-14-oled-ux3405ma-pp152w-ultra-7-155h-ram-32gb-onboard-1tb-ssd-windows-11'),
(38, 'Laptop gaming ASUS TUF Gaming FA507RR-HN835W (Ryzen 7 6800H/RAM 16GB/GeForce RTX 3070/512GB SSD/ Windows 11)', 3, 558, 16, NULL, '- CPU: AMD Ryzen 7 6800H\r\n- Màn hình: 15.6\" IPS (1920 x 1080),144Hz\r\n- RAM: 1 x 16GB DDR5 4800MHz\r\n- Đồ họa: GeForce RTX 3070 8GB GDDR6 / AMD Radeon 680M\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home\r\n- Pin: 4 cell 90 Wh\r\n- Khối lượng: 2.2kg\r\n- Chuẩn AMD', 42990000, 'Đen', '', '', '<span style=\"font-size:12px\">Laptop</span> ASUS TUF Gaming FA507RR-HN835W 90NR0B32-M00410 được trang bị chip AMD cho hiệu năng vượt trội c&ugrave;ng ram đa nhiệm v&agrave; ổ cứng chuẩn SSD. Kết hợp c&ugrave;ng với thiết kế mạnh mẽ v&agrave; m&agrave;n h&igrave;nh sắc n&eacute;t đ&aacute;p ứng tốt c&aacute;c nhu cầu sử dụng, đem đến trải nghiệm giải tr&iacute; vượt trội cho c&aacute;c game thủ.\r\n<h2>ASUS TUF Gaming FA507RR-HN835W - Thiết kế thanh lịch, m&agrave;n h&igrave;nh Full HD sắc n&eacute;t</h2>\r\n\r\n<p>Kh&ocirc;ng giống với những chiếc laptop thuộc d&ograve;ng<a href=\"https://phongvu.vn/c/laptop-gaming\">&nbsp;laptop gaming</a>, TUF Gaming FA507RR-HN835W c&oacute; thiết kế thanh lịch với vẻ ngo&agrave;i sang trọng c&ugrave;ng gam m&agrave;u x&aacute;m. Chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-asus-gaming\">laptop Asus gaming</a>&nbsp;n&agrave;y c&oacute; trọng lượng&nbsp;<strong>2.2kg v&agrave; d&agrave;y 2.49cm</strong>, người d&ugrave;ng c&oacute; thể đặt trong balo v&agrave; di chuyển đến nhiều nơi dễ d&agrave;ng đ&aacute;p ứng nhu cầu sử dụng mọi l&uacute;c mọi nơi.</p>\r\n<img alt=\"Laptop ASUS TUF Gaming FA507RR-HN835W | Thiết kế sang trọng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/6/17/20220617_82bdf7d7-79d3-43de-8c87-dcbeded31370.jpg\" /><br />\r\nASUS TUF Gaming FA507RR-HN835W - Thiết kế sang trọng\r\n<p><a href=\"https://phongvu.vn/c/laptop-asus-tuf-gaming\">ASUS TUF Gaming</a>&nbsp;sở hữu m&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch</strong>&nbsp;với độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>, cho ph&eacute;p h&igrave;nh ảnh hiển thị được sắc n&eacute;t v&agrave; ch&acirc;n thực. Kết hợp m&agrave;n h&igrave;nh chống l&oacute;a viền mỏng v&agrave; tấm nền IPS g&oacute;c nh&igrave;n rộng 178 độ gi&uacute;p h&igrave;nh ảnh kh&ocirc;ng bị biến dạng dưới mọi g&oacute;c nh&igrave;n. Tần số qu&eacute;t&nbsp;<strong>144Hz</strong>&nbsp;cho h&igrave;nh ảnh chuyển động mượt m&agrave; hơn.&nbsp;</p>\r\n<img alt=\"Laptop ASUS TUF Gaming FA507RR-HN835W  | Màn hình full HD\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/6/17/20220617_e5f15ba2-a7b8-4c80-820d-eb7a959d042c.jpg\" /><br />\r\nM&agrave;n h&igrave;nh full HD\r\n<h2>Bộ vi xử l&yacute; AMD Ryzen 7 6800H, bộ nhớ ram 16GB chuẩn DDR5</h2>\r\n\r\n<p>Asus đ&atilde; trang bị bộ vi xử l&yacute;&nbsp;<strong>AMD Ryzen 7 6800H</strong>&nbsp;v&agrave;o chiếc laptop gaming của m&igrave;nh cho hiệu năng vượt trội. Với cấu tr&uacute;c&nbsp;<strong>8 nh&acirc;n</strong>&nbsp;<strong>16 luồng</strong>,&nbsp;<strong>16MB</strong>&nbsp;cho xung nhịp cơ bản 3.2 GHz v&agrave; đạt mức 4.7 GHz. Cho ph&eacute;p người d&ugrave;ng c&oacute; thể xử l&yacute; tốt c&aacute;c t&aacute;c vụ từ cơ bản cho đến phức tạp một c&aacute;c nhanh ch&oacute;ng.</p>\r\n<img alt=\"Laptop ASUS TUF Gaming FA507RR-HN835W Hiệu năng vượt trội\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/6/17/20220617_b31b3cf4-91b5-408f-9e29-884b5fc329ee.jpg\" /><br />\r\nASUS TUF Gaming FA507RR-HN835W - Hiệu năng vượt trội\r\n<p>Laptop TUF Gaming FA507RR-HN835W với bộ nhớ ram 16GB chuẩn DDR5 đem lại khả năng chạy đa nhiệm mạnh mẽ. Chạy đồng thời nhiều t&aacute;c vụ nặng m&agrave; kh&ocirc;ng lo đứng m&aacute;y, lag m&agrave;n h&igrave;nh nhờ tốc độ bus ram&nbsp;<strong>4800MHz</strong>. Để đ&aacute;p ứng nhu cầu d&ugrave;ng ng&agrave;y c&agrave;ng cao, người d&ugrave;ng c&oacute; thể n&acirc;ng cấp ram l&ecirc;n&nbsp;<strong>32GB</strong>.</p>\r\n\r\n<h2>Card đồ họa NVIDIA GeForce RTX 3070, ổ cứng chuẩn SSD M.2 NVMe với dung lượng 512GB</h2>\r\n\r\n<p>Laptop TUF Gaming được Asus trang bị card đồ họa NVIDIA GeForce RTX 3070 8GB GDDR6 đem đến khả năng đồ họa cao. Đ&aacute;p ứng cho nhu cầu chơi c&aacute;c game hot hiện nay với trải nghiệm tuyệt vời nhất d&agrave;nh cho c&aacute;c game thủ. Việc chỉnh sửa h&igrave;nh ảnh, bi&ecirc;n tập video tr&ecirc;n c&aacute;c phần mềm photoshop cũng trở n&ecirc;n đơn giản hơn.</p>\r\n<img alt=\"Laptop ASUS TUF Gaming FA507RR-HN835W | Khả năng đồ họa cao\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/6/17/20220617_3fd0690e-2eb9-4f11-a641-bfe78d94fbb4.jpg\" /><br />\r\n&nbsp;Khả năng đồ họa cao\r\n<p>Ổ cứng của chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-asus\">laptop Asus</a>&nbsp;chuẩn SSD M.2 NVMe c&oacute; dung lượng&nbsp;<strong>512GB</strong>. Cho kh&ocirc;ng gian lưu trữ thoải m&aacute;i c&aacute;c tựa game, phần mềm hay h&igrave;nh ảnh, tệp t&agrave;i liệu c&aacute; nh&acirc;n. Đồng thời, gi&uacute;p tiết kiệm thời gian khởi động m&aacute;y, mở c&aacute;c ứng dụng với độ trễ thấp c&ugrave;ng tốc độ phản hồi nhanh ch&oacute;ng.</p>\r\n\r\n<h2>ASUS TUF Gaming FA507RR-HN835W - B&agrave;n ph&iacute;m RGB full size, c&agrave;i sẵn Windows 11 Home</h2>\r\n\r\n<p>Trang bị cho chiếc laptop gaming b&agrave;n ph&iacute;m full size với độ nảy tốt c&ugrave;ng h&agrave;nh tr&igrave;nh ph&iacute;m s&acirc;u cho trải nghiệm nhập liệu linh hoạt thoải m&aacute;i v&agrave; độ ch&iacute;nh x&aacute;c cao. T&iacute;ch hợp đ&egrave;n RGB với cụm WASD nổi bật gi&uacute;p cho c&aacute;c game thủ sẽ c&oacute; trải nghiệm g&otilde; ph&iacute;m th&uacute; vị nhất ngay cả trong m&ocirc;i trường thiếu &aacute;nh s&aacute;ng.</p>\r\n<img alt=\"Laptop ASUS TUF Gaming FA507RR-HN835W | Bàn phím full size\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/6/17/20220617_75b42362-26ba-4cee-8ed0-6ed96573dcf8.jpg\" /><br />\r\nASUS TUF Gaming FA507RR-HN835W - B&agrave;n ph&iacute;m full size\r\n<p>Để tiết kiệm tối đa chi ph&iacute; cho người d&ugrave;ng khi mua laptop, Asus đ&atilde; c&agrave;i đặt sẵn hệ điều h&agrave;nh của Microsoft Windows 11 Home với c&aacute;c thiết lập của h&atilde;ng v&agrave;o TUF Gaming FA507RR-HN835W. B&ecirc;n cạnh đ&oacute;, mang đến những trải nghiệm d&ugrave;ng tuyệt vời với hệ thống bảo mật an to&agrave;n, trang bị nhiều t&iacute;nh năng mới v&agrave; th&acirc;n thiện với người d&ugrave;ng.</p>\r\n\r\n<h2>Pin 4 cell 90 Wh cho thời lượng ấn tượng, trang bị đầy đủ c&aacute;c kết nối tiện lợi</h2>\r\n\r\n<p>Chiếc laptop TUF Gaming FA507RR-HN835W được Asus trang bị vi&ecirc;n pin 4 cell 90Wh với thời lượng d&ugrave;ng ấn tượng l&ecirc;n tới khoảng 8 giờ. Cho trải nghiệm thoải m&aacute;i mang đến văn ph&ograve;ng qu&aacute;n c&agrave; ph&ecirc; m&agrave; kh&ocirc;ng cần quan t&acirc;m đến nguồn sạc. Hơn nữa, chỉ mất khoảng 2 giờ, laptop sẽ được nạp đầy pin.</p>\r\n<img alt=\"Laptop ASUS TUF Gaming FA507RR-HN835W | Trang bị cổng kết nối đầy đủ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/6/17/20220617_fafc8cb5-a67a-4766-8d2f-f3e51d8391e5.jpg\" /><br />\r\nTrang bị cổng kết nối đầy đủ\r\n<p>Trang bị đầy đủ c&aacute;c cổng kết nối gi&uacute;p cho việc kết nối laptop gaming đến nhiều thiết bị ngoại vi kh&aacute;c nhau sẽ trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết. Bao gồm&nbsp;<strong>1 cổng USB Type C / DisplayPort</strong>,&nbsp;<strong>1 cổng USB 3.2 Type C</strong>,&nbsp;<strong>2 cổng USB 3.2</strong>,&nbsp;<strong>LAN 1 Gb/</strong>s v&agrave;&nbsp;<strong>1 cổng HDMI</strong>. C&ugrave;ng với kết nối kh&ocirc;ng d&acirc;y WiFi 802.11ax chuẩn Wifi 6 v&agrave; bluetooth 5.2 cho khả năng kết nối mạng mượt m&agrave; v&agrave; ổn định.</p>\r\n<script src=\"chrome-extension://hhojmcideegachlhfgfdhailpfhgknjm/web_accessible_resources/index.js\"></script>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 777px; top: 4037.75px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', 'Huan', '2024-08-14', 'Admin', '2024-08-14 19:20:29', 31, 1, 34, 'laptop-gaming-asus-tuf-gaming-fa507rr-hn835w-ryzen-7-6800h-ram-16gb-geforce-rtx-3070-512gb-ssd-windows-11-38img1.png', 'laptop-gaming-asus-tuf-gaming-fa507rr-hn835w-ryzen-7-6800h-ram-16gb-geforce-rtx-3070-512gb-ssd-windows-11-38img2.png', 'laptop-gaming-asus-tuf-gaming-fa507rr-hn835w-ryzen-7-6800h-ram-16gb-geforce-rtx-3070-512gb-ssd-windows-11-38img3.png', 'laptop-gaming-asus-tuf-gaming-fa507rr-hn835w-ryzen-7-6800h-ram-16gb-geforce-rtx-3070-512gb-ssd-windows-11-38img4.png', 'laptop-gaming-asus-tuf-gaming-fa507rr-hn835w-ryzen-7-6800h-ram-16gb-geforce-rtx-3070-512gb-ssd-windows-11'),
(40, 'Samsung Galaxy Z Flip6 12GB 512GB', 1, 557, 10, NULL, 'Samsung Galaxy Z Flip6 12GB 512GB đánh dấu bước tiến vượt bậc trong dòng điện thoại gập, kết hợp hiệu năng mạnh mẽ, thiết kế bền bỉ và dung lượng lưu trữ ấn tượng. Thiết bị hứa hẹn mang đến trải nghiệm sử dụng toàn diện cho người dùng đòi hỏi cao, từ công việc đến giải trí.', 26990000, 'Silver', '', '', '<h2>Sức mạnh vượt trội với cấu h&igrave;nh đỉnh cao</h2>\r\n\r\n<p>Galaxy Z Flip6 12GB 512GB được trang bị bộ vi xử l&yacute; Snapdragon 8 Gen 3 for Galaxy, phi&ecirc;n bản đặc biệt được tối ưu ri&ecirc;ng cho Samsung. Con chip n&agrave;y kh&ocirc;ng chỉ mang lại hiệu năng vượt trội m&agrave; c&ograve;n tối ưu h&oacute;a việc sử dụng năng lượng, g&oacute;p phần k&eacute;o d&agrave;i thời lượng pin. Kết hợp với 12GB RAM LPDDR5X, thiết bị c&oacute; khả năng xử l&yacute; mượt m&agrave; mọi t&aacute;c vụ phức tạp, từ chỉnh sửa video 4K đến chơi c&aacute;c tựa game đồ họa nặng.</p>\r\n\r\n<p>Đặc biệt, bộ nhớ trong 512GB UFS 4.1 mang đến kh&ocirc;ng gian lưu trữ rộng lớn, đ&aacute;p ứng nhu cầu của những người d&ugrave;ng th&iacute;ch lưu trữ nhiều ứng dụng, h&igrave;nh ảnh v&agrave; video chất lượng cao. C&ocirc;ng nghệ UFS 4.1 cũng đảm bảo tốc độ đọc/ghi nhanh ch&oacute;ng, gi&uacute;p qu&aacute; tr&igrave;nh truy xuất dữ liệu v&agrave; khởi động ứng dụng diễn ra trong t&iacute;ch tắc.</p>\r\n\r\n<h2>Hệ thống tản nhiệt ti&ecirc;n tiến</h2>\r\n\r\n<p>Lần đầu ti&ecirc;n, Samsung t&iacute;ch hợp hệ thống tản nhiệt buồng hơi v&agrave;o d&ograve;ng Z Flip. C&ocirc;ng nghệ n&agrave;y sử dụng chất lỏng đặc biệt để hấp thụ v&agrave; ph&acirc;n t&aacute;n nhiệt hiệu quả, gi&uacute;p duy tr&igrave; hiệu năng ổn định v&agrave; kiểm so&aacute;t nhiệt độ tốt hơn, đặc biệt khi xử l&yacute; c&aacute;c t&aacute;c vụ nặng hoặc sử dụng li&ecirc;n tục trong thời gian d&agrave;i. Nhờ đ&oacute;, người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng thiết bị m&agrave; kh&ocirc;ng lo lắng về vấn đề qu&aacute; nhiệt, đồng thời cũng g&oacute;p phần k&eacute;o d&agrave;i tuổi thọ của c&aacute;c linh kiện b&ecirc;n trong.</p>\r\n\r\n<h2>Thiết kế bền bỉ, n&acirc;ng tầm trải nghiệm gập</h2>\r\n\r\n<p>Galaxy Z Flip6 được thiết kế với độ bền vượt trội. Khung m&aacute;y v&agrave; bản lề sử dụng chất liệu Armor Aluminum tăng cường, một hợp kim độc quyền của Samsung c&oacute; độ cứng cao hơn 10% so với thế hệ trước. Hai mặt k&iacute;nh được bảo vệ bởi Gorilla Glass Victus 2, loại k&iacute;nh cường lực mới nhất của Corning, gi&uacute;p thiết bị chống chịu tốt hơn trước va đập v&agrave; trầy xước.</p>\r\n\r\n<p>Lớp Ultra Thin Glass (UTG) bảo vệ m&agrave;n h&igrave;nh gập cũng được cải tiến, với cấu tr&uacute;c ph&acirc;n tử được tối ưu h&oacute;a để tăng độ bền v&agrave; độ linh hoạt. Điều n&agrave;y gi&uacute;p hạn chế vết hằn giữa m&agrave;n h&igrave;nh v&agrave; n&acirc;ng cao độ bền tổng thể, cho ph&eacute;p người d&ugrave;ng thực hiện hơn 200.000 lần gập mở m&agrave; kh&ocirc;ng gặp vấn đề. Bản lề mới cũng được thiết kế để giảm thiểu bụi v&agrave; c&aacute;c hạt nhỏ lọt v&agrave;o b&ecirc;n trong, tăng cường độ bền l&acirc;u d&agrave;i cho thiết bị.</p>\r\n\r\n<p><img alt=\"Samsung Galaxy Z Flip6 12GB 512GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2024/07/galaxy-z-flip6-chinh-thuc-ra-mat-voi-camera-50mp.webp\" style=\"height:588px; width:880px\" /></p>\r\n\r\n<h2>Pin dung lượng lớn, sử dụng l&acirc;u d&agrave;i</h2>\r\n\r\n<p>Với vi&ecirc;n pin dung lượng 4.000 mAh, lớn nhất từ trước đến nay trong d&ograve;ng Z Flip, kết hợp c&ugrave;ng hệ thống tản nhiệt mới v&agrave; c&aacute;c tối ưu h&oacute;a phần mềm th&ocirc;ng minh, Galaxy Z Flip6 12GB 512GB hứa hẹn mang đến thời lượng sử dụng ấn tượng. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng thiết bị cả ng&agrave;y m&agrave; kh&ocirc;ng cần lo lắng về vấn đề hết pin.</p>\r\n\r\n<p>Thiết bị cũng hỗ trợ sạc nhanh c&oacute; d&acirc;y 25W v&agrave; sạc kh&ocirc;ng d&acirc;y 15W, gi&uacute;p nạp đầy pin nhanh ch&oacute;ng khi cần thiết. T&iacute;nh năng sạc ngược kh&ocirc;ng d&acirc;y cũng được t&iacute;ch hợp, cho ph&eacute;p Z Flip6 trở th&agrave;nh một bộ sạc di động cho c&aacute;c thiết bị kh&aacute;c như tai nghe hay smartwatch.</p>\r\n\r\n<h2>FlexWindow th&ocirc;ng minh với Galaxy AI</h2>\r\n\r\n<p>M&agrave;n h&igrave;nh phụ FlexWindow tr&ecirc;n Galaxy Z Flip6 kh&ocirc;ng chỉ hiển thị th&ocirc;ng tin cơ bản m&agrave; c&ograve;n t&iacute;ch hợp nhiều t&iacute;nh năng th&ocirc;ng minh nhờ Galaxy AI. Người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh m&agrave;n h&igrave;nh n&agrave;y với c&aacute;c widget đa dạng, từ thời tiết, lịch tr&igrave;nh đến điều khiển nhạc v&agrave; th&ocirc;ng b&aacute;o ứng dụng.</p>\r\n\r\n<p>T&iacute;nh năng AI tạo sinh h&igrave;nh nền cho ph&eacute;p người d&ugrave;ng tạo ra những h&igrave;nh nền độc đ&aacute;o chỉ với v&agrave;i thao t&aacute;c đơn giản, thể hiện c&aacute; t&iacute;nh ri&ecirc;ng. Đặc biệt, với dung lượng lưu trữ lớn 512GB, người d&ugrave;ng c&oacute; thể thoải m&aacute;i lưu trữ nhiều ứng dụng, widget v&agrave; nội dung c&aacute; nh&acirc;n h&oacute;a m&agrave; kh&ocirc;ng lo hết bộ nhớ.</p>\r\n\r\n<p>Galaxy AI c&ograve;n mang đến c&aacute;c t&iacute;nh năng th&ocirc;ng minh kh&aacute;c như phi&ecirc;n dịch trực tiếp tr&ecirc;n cả hai m&agrave;n h&igrave;nh, hữu &iacute;ch cho những ai thường xuy&ecirc;n giao tiếp với người nước ngo&agrave;i. Khả năng đề xuất trả lời th&ocirc;ng minh trong c&aacute;c cuộc tr&ograve; chuyện cũng gi&uacute;p tiết kiệm thời gian v&agrave; tạo ra những tương t&aacute;c tự nhi&ecirc;n, hiệu quả hơn.</p>\r\n\r\n<p><img alt=\"Samsung Galaxy Z Flip6 12GB 512GB\" src=\"https://minhtuanmobile.com/uploads/editer/images/2024/07/galaxy-z-flip6-ra-mat-khi-nao-co-nang-cap-gi-dang-mong-doi-1-1.webp\" style=\"height:497px; width:880px\" /></p>\r\n\r\n<h2>Camera n&acirc;ng cấp to&agrave;n diện</h2>\r\n\r\n<p>Galaxy Z Flip6 12GB 512GB được trang bị camera ch&iacute;nh 50MP với khẩu độ f/1.8, k&iacute;ch thước cảm biến 1/1.56&quot;, v&agrave; c&ocirc;ng nghệ chống rung quang học OIS. Cụm camera n&agrave;y tương đương với Galaxy S24 Plus, hứa hẹn mang lại chất lượng ảnh vượt trội trong mọi điều kiện &aacute;nh s&aacute;ng.</p>\r\n\r\n<p>C&aacute;c t&iacute;nh năng như chụp ch&acirc;n dung AI v&agrave; Auto-Zoom gi&uacute;p tối ưu h&oacute;a trải nghiệm chụp ảnh. Chụp ch&acirc;n dung AI sử dụng tr&iacute; tuệ nh&acirc;n tạo để tạo ra những bức ảnh selfie đẹp tự nhi&ecirc;n với hiệu ứng x&oacute;a ph&ocirc;ng chuy&ecirc;n nghiệp. Auto-Zoom tự động điều chỉnh zoom dựa tr&ecirc;n chuyển động v&agrave; vị tr&iacute; của chủ thể, đảm bảo kh&ocirc;ng bỏ lỡ bất kỳ khoảnh khắc quan trọng n&agrave;o.</p>\r\n\r\n<p>Với bộ nhớ 512GB, người d&ugrave;ng c&oacute; thể thoải m&aacute;i lưu trữ h&agrave;ng ngh&igrave;n bức ảnh chất lượng cao v&agrave; video 4K m&agrave; kh&ocirc;ng cần lo lắng về việc hết dung lượng. Samsung cũng tối ưu h&oacute;a h&igrave;nh ảnh v&agrave; video để chia sẻ trực tiếp l&ecirc;n c&aacute;c mạng x&atilde; hội th&ocirc;ng dụng với chất lượng tốt nhất.</p>\r\n\r\n<h2>Kết luận</h2>\r\n\r\n<p>Samsung Galaxy Z Flip6 12GB 512GB kh&ocirc;ng chỉ l&agrave; một bước tiến trong c&ocirc;ng nghệ điện thoại gập m&agrave; c&ograve;n l&agrave; giải ph&aacute;p to&agrave;n diện cho những người d&ugrave;ng đ&ograve;i hỏi cao về hiệu năng v&agrave; dung lượng lưu trữ. Với cấu h&igrave;nh mạnh mẽ, thiết kế bền bỉ, camera chất lượng cao v&agrave; dung lượng lưu trữ khổng lồ, thiết bị n&agrave;y hứa hẹn sẽ đ&aacute;p ứng mọi nhu cầu sử dụng, từ c&ocirc;ng việc đến giải tr&iacute;, mang đến trải nghiệm smartphone gập ho&agrave;n hảo cho người d&ugrave;ng. Galaxy Z Flip6 12GB 512GB kh&ocirc;ng chỉ l&agrave; một chiếc điện thoại, m&agrave; c&ograve;n l&agrave; một tuy&ecirc;n ng&ocirc;n về phong c&aacute;ch sống hiện đại, nơi c&ocirc;ng nghệ v&agrave; thời trang h&ograve;a quyện một c&aacute;ch ho&agrave;n hảo.</p>\r\n', 'Huan', '2024-08-14', '', '0000-00-00 00:00:00', 36, 0, 0, 'samsung-galaxy-z-flip6-12gb-512gb-40img1.png', 'samsung-galaxy-z-flip6-12gb-512gb-40img2.png', 'samsung-galaxy-z-flip6-12gb-512gb-40img3.png', 'samsung-galaxy-z-flip6-12gb-512gb-40img4.png', 'samsung-galaxy-z-flip6-12gb-512gb'),
(39, 'Cáp Type-C to Type-C Apple 240W 2M Chính Hãng MU2G3ZA', 2, 560, 21, NULL, 'Mua phụ kiện bạn được hỗ trợ\r\n✔️Đặt hàng online – Thanh toán tại nhà\r\n\r\n✔️Thời gian giao hàng nhanh chóng\r\n\r\n➖Tại Tp.HCM: Nhận hàng trong 24h tùy địa chỉ\r\n\r\n➖Các tỉnh thành khác: Nhận hàng 3 – 5 ngày. Không tính Thứ 7, Chủ Nhật và các ngày lễ', 790000, 'Trắng', '', '', '<h2>C&aacute;p Type-C to Type-C Apple 240W 2M Ch&iacute;nh H&atilde;ng MU2G3ZA</h2>\r\n\r\n<p><strong>C&aacute;p Type-C to Type-C Apple 240W 2M Ch&iacute;nh H&atilde;ng MU2G3ZA mang đến sự lựa chọn tuyệt vời cho người d&ugrave;ng c&aacute;c thiết bị của Apple.</strong></p>\r\n\r\n<p><img alt=\"Cáp Type-C to Type-C Apple 240W 2M Chính Hãng MU2G3ZA\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/09/cap-type-c-to-type-c-apple-240w-2m-chinh-hang-mu2g3za.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<p>C&aacute;p Type-C to Type-C Apple 240W 2M Ch&iacute;nh H&atilde;ng MU2G3ZA l&agrave; lựa chọn bạn n&ecirc;n c&acirc;n nhắc, bởi n&oacute; đảm bảo khả năng sạc v&agrave; truyền tải dữ liệu si&ecirc;u nhanh cho thiết bị.</p>\r\n\r\n<p>C&aacute;p sạc c&oacute; chiều d&agrave;i l&ecirc;n đến 2 m&eacute;t, được thiết kế với kiểu d&aacute;ng c&aacute;p bện độc đ&aacute;o chống rối hiệu quả. N&oacute; trang bị cổng kết nối USB-C ở cả hai đầu, l&agrave; một phụ kiện ho&agrave;n hảo để sạc, đồng bộ h&oacute;a v&agrave; truyền dữ liệu giữa c&aacute;c thiết bị USB-C. Đặc điểm nổi bật của sợi c&aacute;p n&agrave;y l&agrave; khả năng hỗ trợ tốc độ sạc l&ecirc;n đến 240W v&agrave; truyền dữ liệu với tốc độ tương th&iacute;ch USB 2.0.</p>\r\n\r\n<p>Để tận dụng t&iacute;nh năng sạc nhanh, bạn c&oacute; thể kết nối chiếc c&aacute;p sạc USB-C n&agrave;y với bộ sạc USB-C tương th&iacute;ch từ ổ cắm điện tr&ecirc;n tường. V&igrave; thế, bạn c&oacute; thể sử dụng một c&aacute;ch thoải m&aacute;i v&agrave; dễ d&agrave;ng.</p>\r\n\r\n<p><strong>C&aacute;p Type-C to Type-C Apple 240W 2M Ch&iacute;nh H&atilde;ng MU2G3ZA</strong>&nbsp;được ph&acirc;n phối ch&iacute;nh thức tại&nbsp;<a href=\"https://minhtuanmobile.com/\" target=\"_blank\">Minh Tuấn Mobile</a>&nbsp;với bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng&nbsp;<a href=\"https://minhtuanmobile.com/thuong-hieu-apple/\" target=\"_blank\">Apple</a>.</p>\r\n\r\n<p>Sản phẩm&nbsp;<strong>C&aacute;p Type-C to Type-C Apple 240W 2M Ch&iacute;nh H&atilde;ng MU2G3ZA&nbsp;</strong>của&nbsp;<strong>Apple&nbsp;</strong>ph&acirc;n phối bởi Minh Tuấn Mobile được cam kết ch&iacute;nh h&atilde;ng, gi&aacute; tốt v&agrave; bảo h&agrave;nh&nbsp;<strong>12 th&aacute;ng</strong>, đi k&egrave;m với nhiều chương tr&igrave;nh ưu đ&atilde;i hấp dẫn kh&aacute;c.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi lựa chọn sử dụng sản phẩm, dịch vụ tại Minh Tuấn Mobile.</p>\r\n', 'Huan', '2024-08-14', '', '0000-00-00 00:00:00', 20, 0, 0, 'cap-type-c-to-type-c-apple-240w-2m-chinh-hang-mu2g3za-39img1.png', 'cap-type-c-to-type-c-apple-240w-2m-chinh-hang-mu2g3za-39img2.png', NULL, NULL, 'cap-type-c-to-type-c-apple-240w-2m-chinh-hang-mu2g3za');
INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_price`, `product_color`, `product_material`, `product_size`, `product_detail`, `createBy`, `createDate`, `editBy`, `editDate`, `totalView`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`) VALUES
(37, 'iPhone 15 128GB - Chính hãng VN/A', 3, 557, 9, NULL, 'Thông tin sản phẩm\r\n\r\niPhone 15: Xứng đáng “siêu phẩm” quốc dân\r\niPhone 15 sở hữu một mức giá rất mềm, nhưng lại trang bị nhiều công nghệ hiện đại, đáp ứng mọi nhu cầu của bạn.\r\niPhone 15 mở màn cho series được quan tâm nhất của Apple tại sự kiện Wonderlust. Sản phẩm là minh chứng chính xác nhất những cải tiến mà Apple đã làm cho dòng iPhone 15, từ cổng sạc USB-C, khung viền mỏng hơn và Dynamic Island - công nghệ chỉ có trên iPhone 15 Pro và Pro Max.\r\nĐây là toàn bộ thông tin chính thức về iPhone 15: ngày mở bán, giá bán, thông số kỹ thuật, thiết kế, tính năng và đặc biệt mà màn so sánh giữa chiếc iPhone mới với thế hệ trước có gì khác biệt.', 24990000, 'Blue', '', '', '<h2>Tổng quan iPhone 15</h2>\r\n\r\n<p>iPhone 15 sở hữu nhiều t&iacute;nh năng v&ocirc; c&ugrave;ng nổi bật, gồm:</p>\r\n\r\n<ul>\r\n	<li>Cổng Lightning sang USB-C, đ&aacute;nh dấu sự kết th&uacute;c của chiếc cổng kết nối ra mắt lần đầu ti&ecirc;n c&ugrave;ng với iPhone 5 năm 2012.</li>\r\n	<li>Cả 4 mẫu trong d&ograve;ng iPhone 15 đều c&oacute; viền cực mỏng so với bất kỳ điện thoại n&agrave;o của h&atilde;ng từ trước đến nay.</li>\r\n	<li>iPhone 15 v&agrave; iPhone 15 Plus c&oacute; c&aacute;c m&agrave;u đen, trắng, xanh, v&agrave;ng v&agrave; hồng. Đối với iPhone 15 Pro/15 Pro Max sẽ c&oacute; 4 m&agrave;u: Black Titanium, Natural Titanium, White Titanium v&agrave; Blue Titanium</li>\r\n	<li>iPhone 15 vẫn duy tr&igrave; phi&ecirc;n bản m&agrave;n h&igrave;nh 6,1 inch, nhưng sở hữu nhiều c&ocirc;ng nghệ hiện đại của iPhone 14 Pro Max.</li>\r\n	<li>Khung viền nh&ocirc;m cao cấp chuẩn h&agrave;ng kh&ocirc;ng vũ trụ, gi&uacute;p điện thoại bền bỉ v&agrave; nhẹ hơn</li>\r\n	<li>Camera ch&iacute;nh được n&acirc;ng cấp l&ecirc;n 48MP.&nbsp;</li>\r\n</ul>\r\n\r\n<h2>iPhone 15 sử dụng SIM n&agrave;o?</h2>\r\n\r\n<p>Như thường lệ, iPhone 15 vẫn sử dụng SIM vật l&yacute; truyền thống ở khay thẻ SIM. N&oacute; cũng c&oacute; eSIM cho những ai th&iacute;ch sử dụng loại n&agrave;y.</p>\r\n\r\n<h2>iPhone 15 c&oacute; mấy m&agrave;u?</h2>\r\n\r\n<p>iPhone 15 c&oacute; 5 m&agrave;u ch&iacute;nh, gồm: Hồng, Xanh l&aacute;, Xanh dương, V&agrave;ng, Đen. Trong đ&oacute;, m&agrave;u hồng đang l&agrave; lựa chọn được nhiều người y&ecirc;u th&iacute;ch, nhất l&agrave; ph&aacute;i nữ. Năm nay, m&agrave;u hồng của iPhone 15 kh&aacute; đẹp mắt v&agrave; trending.</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-06.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<h2>Cấu h&igrave;nh iPhone 15</h2>\r\n\r\n<p>iPhone 15 được đ&aacute;nh gi&aacute; l&agrave; trang bị nhiều c&ocirc;ng nghệ hiện đại từ iPhone 14 Pro Max, bao gồm Dynamic Island, Camera nổi bật 48MP. Tuy nhi&ecirc;n, phần tần số qu&eacute;t của sản phẩm n&agrave;y vẫn chỉ dừng lại ở 60Hz m&agrave; th&ocirc;i.</p>\r\n\r\n<h3>Th&ocirc;ng số kỹ thuật ch&iacute;nh của iPhone 15</h3>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; c&aacute;c th&ocirc;ng số kỹ thuật ch&iacute;nh thức của iPhone 15:</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Cấu h&igrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Th&ocirc;ng số chi tiết</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;n h&igrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Super Retina XDR OLED 6,1 inch</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng m&aacute;y</p>\r\n			</td>\r\n			<td>\r\n			<p>128GB, 256GB, 512GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>6.1 inch</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pin</p>\r\n			</td>\r\n			<td>\r\n			<p>3.912mAh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera</p>\r\n			</td>\r\n			<td>\r\n			<p>Camera ch&iacute;nh: 48MB,&nbsp;</p>\r\n\r\n			<p>Camera si&ecirc;u rộng: 12MP&nbsp;</p>\r\n\r\n			<p>Zoom quang 2x</p>\r\n\r\n			<p>Zoom kỹ thuật số 5x</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thiết kế</p>\r\n			</td>\r\n			<td>\r\n			<p>Khung viền nh&ocirc;m</p>\r\n\r\n			<p>160.87 x 77.76 x 7.81 mm</p>\r\n\r\n			<p>204g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chip</p>\r\n			</td>\r\n			<td>\r\n			<p>Chip A16 Bionic (4nm), 5 nh&acirc;n GPU v&agrave; 6 nh&acirc;n CPU</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;u sắc</p>\r\n			</td>\r\n			<td>\r\n			<p>Hồng, Xanh l&aacute;, Xanh dương, V&agrave;ng, Đen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ l&agrave;m mới</p>\r\n			</td>\r\n			<td>\r\n			<p>60Hz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>RAM</p>\r\n			</td>\r\n			<td>\r\n			<p>6GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>LiDAR Scanner</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng kết nối</p>\r\n			</td>\r\n			<td>\r\n			<p>USB-Type C</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>OIS</p>\r\n			</td>\r\n			<td>\r\n			<p>Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Năm nay, mọi mẫu iPhone 15 đều sẽ c&oacute; lượng pin tăng l&ecirc;n đ&aacute;ng kể so với thường lệ:</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 15</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 15 Plus</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 15 Pro</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 15 Pro Max</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>iPhone 15</p>\r\n			</td>\r\n			<td>\r\n			<p>3.877mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>4.912mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>3.650mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>4.852mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>So s&aacute;nh điều đ&oacute; với d&ograve;ng iPhone 14 v&agrave; bạn sẽ thấy dung lượng pin của năm nay sẽ lớn đến mức n&agrave;o:</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 14</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 14 Plus</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 14 Pro</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 14 Pro Max</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>iPhone 14</p>\r\n			</td>\r\n			<td>\r\n			<p>3.279mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>4.325mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>3.200mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>4.323mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>D&ograve;ng iPhone 14 vốn l&agrave; những chiếc điện thoại c&oacute; thời lượng sử dụng l&acirc;u nhất, với iPhone 14 Pro Max được đ&aacute;nh gi&aacute; c&oacute; thời lượng ph&aacute;t video l&agrave; 29 giờ v&agrave; iPhone 14 Plus l&ecirc;n đến 26 giờ. Nhưng giờ đ&acirc;y tr&ecirc;n iPhone 15 dung lượng được tăng từ 11% đến 18% c&oacute; thể k&eacute;o d&agrave;i thời lượng sử dụng th&ecirc;m v&agrave;i giờ. Đặc biệt hơn khi Apple kh&ocirc;ng c&oacute; th&ocirc;ng b&aacute;o n&agrave;o về c&aacute;c t&iacute;nh năng sẽ ảnh hưởng đến tuổi thọ pin.</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-07.webp\" style=\"height:523px; width:780px\" /></p>\r\n\r\n<h3>Đ&aacute;nh gi&aacute; thiết kế iPhone 15</h3>\r\n\r\n<p>Nh&igrave;n chung, iPhone 15&nbsp; kh&aacute; giống với sản phẩm tiền nhiệm iPhone 14 với c&aacute;c cạnh phẳng v&agrave; m&ocirc;-đun camera. Tuy nhi&ecirc;n, iPhone 15 g&acirc;y ấn tượng hơn với viền nh&ocirc;m chuẩn h&agrave;ng kh&ocirc;ng vũ trụ. V&agrave; một lần nữa, mẫu iPhone 15 sẽ tiếp tục nhận được m&agrave;n h&igrave;nh ở mức 60Hz. Mức n&agrave;y được coi l&agrave; ph&ugrave; hợp trong tầm gi&aacute;, bởi n&oacute; cung cấp trải nghiệm ở mức ổn định, ph&ugrave; hợp với đại đa số nhu cầu.</p>\r\n\r\n<p>Một thay đổi lớn kh&aacute;c đối với thiết kế của iPhone 15 l&agrave; sự xuất hiện của USB-C. Đ&acirc;y chắc chắn l&agrave; tin mừng với người d&ugrave;ng điện thoại n&oacute;i chung, bởi họ c&oacute; thể sử dụng chung một cổng sạc cho tất cả thiết bị của m&igrave;nh. Tuyệt vời hơn, USB-C đem đến tốc độ sạc nhanh hơn v&agrave; iPhone 15 cũng được tối ưu về c&ocirc;ng suất sạc nhanh, cho bạn sử dụng thiết bị n&agrave;y thường xuy&ecirc;n hơn.</p>\r\n\r\n<h3>Cấu h&igrave;nh iPhone 15 được n&acirc;ng cấp</h3>\r\n\r\n<p>iPhone 15 đ&atilde; c&oacute; sự bổ sung r&otilde; rệt, khi bản ti&ecirc;u chuẩn mới nhất n&agrave;y thậm ch&iacute; c&oacute; thể s&aacute;nh ngang với phi&ecirc;n bản Pro/Pro Max năm ngo&aacute;i. Với con chip A16 Bionic, iPhone 15 sở hữu hiệu năng vượt trội hơn hẳn, trở th&agrave;nh một trong những lựa chọn ph&ugrave; hợp với tất cả người d&ugrave;ng.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh với viền mỏng hơn</h3>\r\n\r\n<p>Sẽ kh&ocirc;ng c&oacute; những thay đổi qu&aacute; lớn tr&ecirc;n m&agrave;n h&igrave;nh của iPhone 15, v&igrave; cả 4 mẫu m&aacute;y đều sẽ c&oacute; k&iacute;ch thước tương đương với sản phẩm tiền nhiệm, 6,1 inch .</p>\r\n\r\n<p>M&agrave;n h&igrave;nh l&agrave; một trong những điểm g&acirc;y thất vọng lớn với iPhone 15, v&igrave; cả mẫu ti&ecirc;u chuẩn v&agrave; iPhone 15 Plus đều kh&ocirc;ng nhận được sự n&acirc;ng cấp về tốc độ l&agrave;m mới. Điều đ&oacute; c&oacute; nghĩa l&agrave; cả hai mẫu điện thoại sẽ tiếp tục c&oacute; tốc độ l&agrave;m mới bị kh&oacute;a ở mức 60Hz so với m&agrave;n h&igrave;nh ProMotion tr&ecirc;n iPhone 15 Pro v&agrave; Pro Max.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, iPhone 15 lại c&oacute; viền mỏng hơn so với iPhone 14, gi&uacute;p cho nội dung hiển thị nhiều hơn v&agrave; tạo cảm gi&aacute;c sang trọng hơn.</p>\r\n\r\n<h3>Camera iPhone 15 được n&acirc;ng cấp</h3>\r\n\r\n<p>iPhone 15 v&agrave; iPhone 15 Plus sẽ c&oacute; camera ch&iacute;nh 48MP với khẩu độ f/1.6 v&agrave; camera Ultra Wide 12MP với khẩu độ f/2.4. Camera ch&iacute;nh sẽ c&oacute; cảm biến h&igrave;nh ảnh ho&agrave;n to&agrave;n mới của Sony, đ&acirc;y l&agrave; một cải tiến so với cảm biến được sử dụng trong c&aacute;c mẫu iPhone 14 Pro.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ mang tới chất lượng h&igrave;nh ảnh tốt hơn, cảm biến cao cấp nh&agrave; Sony gi&uacute;p cho bạn c&oacute; thể giữ lại chi tiết trong mọi điều kiện &aacute;nh s&aacute;ng, mang tới những bức ảnh nịnh mắt hơn. N&oacute; cũng đảm bảo h&igrave;nh ảnh c&oacute; m&agrave;u sắc tốt v&agrave; ch&acirc;n thực hơn.</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-02.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<h2>So s&aacute;nh iPhone 15 v&agrave; iPhone 14</h2>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; bảng so s&aacute;nh giữa iPhone 15 v&agrave; iPhone 14 phi&ecirc;n bản ti&ecirc;u chuẩn:</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>iPhone 14</p>\r\n			</td>\r\n			<td>\r\n			<p>iPhone 15</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khung nh&ocirc;m cao cấp với c&aacute;c cạnh 90&deg;</p>\r\n			</td>\r\n			<td>\r\n			<p>Khung nh&ocirc;m cao cấp với c&aacute;c cạnh hơi cong</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mặt lưng k&iacute;nh b&oacute;ng lo&aacute;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>Mặt lưng k&iacute;nh mờ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Notch tai thỏ</p>\r\n			</td>\r\n			<td>\r\n			<p>Dynamic Island</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>D&agrave;y 7,79mm</p>\r\n			</td>\r\n			<td>\r\n			<p>D&agrave;y 7,81mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng Lightning (480Mb/s)</p>\r\n			</td>\r\n			<td>\r\n			<p>Cổng USB-C (480Mb/s)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&aacute;y ảnh 12MP</p>\r\n			</td>\r\n			<td>\r\n			<p>M&aacute;y ảnh 48MP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera rộng &fnof;/1.5&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Camera rộng &fnof;/1.7</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chip A15 Bionic</p>\r\n			</td>\r\n			<td>\r\n			<p>Chip A16 Bionic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chip điều khiển m&agrave;n h&igrave;nh OLED (40nm)</p>\r\n			</td>\r\n			<td>\r\n			<p>Chip điều khiển m&agrave;n h&igrave;nh OLED tiết kiệm điện hơn (28nm)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chip U1 (90nm)</p>\r\n			</td>\r\n			<td>\r\n			<p>Chip ultra-wideband (7nm)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Modem Qualcomm X65</p>\r\n			</td>\r\n			<td>\r\n			<p>Modem Qualcomm X70</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Kết nối Wi-Fi 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Kết nối Wi-Fi 6E</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hỗ trợ sạc kh&ocirc;ng d&acirc;y Qi</p>\r\n			</td>\r\n			<td>\r\n			<p>Hỗ trợ sạc kh&ocirc;ng d&acirc;y Qi2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hỗ trợ sạc kh&ocirc;ng d&acirc;y 7,5W với c&aacute;c phụ kiện của b&ecirc;n thứ ba</p>\r\n			</td>\r\n			<td>\r\n			<p>Hỗ trợ sạc kh&ocirc;ng d&acirc;y 15W với c&aacute;c phụ kiện của b&ecirc;n thứ ba</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hỗ trợ sạc c&oacute; d&acirc;y ~ 20W</p>\r\n			</td>\r\n			<td>\r\n			<p>Hỗ trợ sạc c&oacute; d&acirc;y 20W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Xanh dương, T&iacute;m, Đỏ, V&agrave;ng, Đen</p>\r\n			</td>\r\n			<td>\r\n			<p>Hồng, Xanh l&aacute;, Xanh dương, V&agrave;ng, Đen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng sạc Lightning</p>\r\n			</td>\r\n			<td>\r\n			<p>Cổng USB-C</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tần số qu&eacute;t 60Hz</p>\r\n			</td>\r\n			<td>\r\n			<p>Tần số qu&eacute;t 60Hz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3.877mAh</p>\r\n			</td>\r\n			<td>\r\n			<p>3.279mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-08.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<h3>Thiết kế v&agrave; m&agrave;n h&igrave;nh</h3>\r\n\r\n<p>Cả iPhone 15 v&agrave; iPhone 14 đều kh&ocirc;ng c&oacute; sự kh&aacute;c biệt nhiều về thiết kế, với k&iacute;ch thước ti&ecirc;u chuẩn l&agrave; 6,1 inch c&ugrave;ng trọng lượng tương đương nhau.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, viền m&agrave;n h&igrave;nh ngo&agrave;i của iPhone 15 giờ đ&acirc;y đ&atilde; mỏng hơn, đồng nghĩa với phạm vi hiển thị rộng hơn. Ngo&agrave;i ra, việc trang bị Dynamic Island cũng gi&uacute;p iPhone 15 thu h&uacute;t người d&ugrave;ng hơn, bởi yếu tố n&agrave;y trước đ&oacute; chỉ c&oacute; tr&ecirc;n c&aacute;c d&ograve;ng cao cấp của Apple.</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh, iPhone 15 sở hữu viền mỏng hơn d&ugrave; c&ugrave;ng chuẩn k&iacute;ch cỡ 6,1 inch. Nhờ đ&oacute;, bạn sẽ c&oacute; kh&ocirc;ng giản hiển thị rộng hơn kh&aacute; nhiều so với iPhone 14.</p>\r\n\r\n<h3>Hiệu năng</h3>\r\n\r\n<p>iPhone 15 được trang bị con chip A16 Bionic mạnh mẽ, thứ chỉ c&oacute; tr&ecirc;n iPhone 14 Pro v&agrave; Pro Max. V&igrave; thế, kh&ocirc;ng qu&aacute; kh&oacute; hiểu khi sản phẩm n&agrave;y vượt trội ho&agrave;n to&agrave;n iPhone 14 về khả năng xử l&yacute; đa t&aacute;c vụ, đ&aacute;p ứng đầy đủ c&aacute;c nhu cầu về s&aacute;ng tạo h&igrave;nh ảnh, video, chơi game hay lướt web,... Chip A16 Bionic từng biến iPhone 14 Pro v&agrave; Pro Max trở th&agrave;nh si&ecirc;u phẩm đứng đầu về hiệu năng nếu so với c&aacute;c đối thủ kh&aacute;c. V&igrave; thế, iPhone 15 r&otilde; r&agrave;ng chiếm lợi thế hơn hẳn ở mặt n&agrave;y.</p>\r\n\r\n<h3>Dung lượng pin v&agrave; tốc độ sạc</h3>\r\n\r\n<p>iPhone 15 sở hữu vi&ecirc;n pin lớn hơn hẳn so với iPhone 14, với 3.877mAh so với 3.279mAh của iPhone 14. Mức pin n&agrave;y được tối ưu h&oacute;a bội phần với con chip A16 Bionic, gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng li&ecirc;n tục trong suốt 30 tiếng với c&aacute;c t&aacute;c vụ như lướt web, xem video. Nếu chơi game, n&oacute; cũng đảm bảo thời lượng duy tr&igrave; đạt từ 10 - 12 tiếng.</p>\r\n\r\n<p>Trong khi đ&oacute;, iPhone 14 chỉ c&oacute; thể đ&aacute;p ứng tối đa 23 giờ ph&aacute;t nhạc, r&uacute;t ngắn xuống 20 giờ nếu xem video trực tiếp v&agrave; k&eacute;o d&agrave;i thời gian sử dụng cỡ 7 - 8 tiếng bao gồm đầy đủ c&aacute;c t&aacute;c vụ như chơi game, nghe nhạc v&agrave; xem phim.</p>\r\n\r\n<p>iPhone 15 được trang bị cổng USB-C nhưng l&agrave; phi&ecirc;n bản 2.0, n&ecirc;n tốc độ sạc vẫn chỉ l&agrave; 20W m&agrave; th&ocirc;i!</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-03.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<h3>Camera</h3>\r\n\r\n<p>iPhone 15 được trang bị 2 camera, bao gồm camera ch&iacute;nh 48MP v&agrave; camera tele 12MP. Bộ đ&ocirc;i n&agrave;y được trang bị nhiều c&ocirc;ng nghệ hiện đại, cho ph&eacute;p bạn c&oacute; thể xử l&yacute; h&igrave;nh ảnh chi tiết, đẹp v&agrave; nịnh mắt hơn trong mọi điều kiện &aacute;nh s&aacute;ng. Cơ chế chống rung ho&agrave;n hảo v&agrave; cảm biến cao cấp gi&uacute;p bức ảnh ho&agrave;n thiện v&agrave; r&otilde; r&agrave;ng hơn.</p>\r\n\r\n<p>Trong khi đ&oacute;, iPhone 14 chỉ c&oacute; Camera 12MP v&agrave; camera g&oacute;c si&ecirc;u rộng 12MP. Tuy mức n&agrave;y vẫn đủ để đem đến những bức ảnh chất lượng, với c&ocirc;ng nghệ Photonic Engine mới, nhưng r&otilde; r&agrave;ng nếu đ&aacute;nh gi&aacute; th&igrave; c&ograve;n thua xa iPhone 15.</p>\r\n\r\n<h2>iPhone 15 c&oacute; thể chơi game được kh&ocirc;ng?</h2>\r\n\r\n<p>C&oacute; nhiều t&iacute;nh năng của iPhone 15 sẽ gi&uacute;p hiệu suất chơi game được tăng l&ecirc;n đ&aacute;ng kể.&nbsp; Trong số những điểm nổi bật nhất l&agrave; việc triển khai bộ xử l&yacute; mạnh mẽ A16 Bionic được sản xuất bằng quy tr&igrave;nh 3nnm đi k&egrave;m với 6GB RAM v&agrave; dung lượng lưu trữ tối đa l&ecirc;n tới 512GB. Sự kết hợp của tất cả những yếu tố n&agrave;y sẽ tối đa h&oacute;a hiệu suất tr&ecirc;n mẫu iPhone mới trong c&aacute;c tựa game hiện h&agrave;nh, đảm bảo việc trải nghiệm trở n&ecirc;n mượt m&agrave; hơn.</p>\r\n\r\n<p>Chip A16 Bionic của thế hệ iPhone 15 sẽ c&oacute; tốc độ xử l&yacute; dữ liệu cao, giảm hao pin v&agrave; giảm thiểu khả năng tỏa nhiệt khi chơi c&aacute;c game hạng nặng ở cấu h&igrave;nh cao.</p>\r\n\r\n<p>Chưa hết, với việc thay thế cổng USB Lightning bằng kết nối USB-C cho ph&eacute;p game thủ c&oacute; thể sạc nhanh hơn, từ đ&oacute; n&acirc;ng tầm trải nghiệm game th&ecirc;m một bước quan trọng nữa.</p>\r\n\r\n<p>Với vi&ecirc;n Pin được n&acirc;ng cấp, iPhone 15 c&oacute; thể k&eacute;o d&agrave;i thời gian chơi game l&ecirc;n tới nhiều giờ đồng hồ.</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-09.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<h2>iPhone 15 với iOS 17 c&oacute; thực sự tuyệt vời?</h2>\r\n\r\n<p>Ra mắt c&ugrave;ng iPhone 15, Apple đ&atilde; bổ sung iOS 17 với h&agrave;ng loạt tiện &iacute;ch tuyệt vời gi&uacute;p c&aacute; nh&acirc;n ho&aacute; thiết bị. iOS 17 c&oacute; những t&iacute;nh năng nổi bật như:</p>\r\n\r\n<ul>\r\n	<li>Ch&ecirc;́ đ&ocirc;̣ Standby: t&iacute;nh năng mới cho ph&eacute;p iPhone của bạn hiển thị thời gian, thời tiết v&agrave; c&aacute;c tiện &iacute;ch kh&aacute;c khi được đặt nằm ngang. Chế độ n&agrave;y được bật tự động khi bạn kết nối iPhone với nguồn điện v&agrave; đặt điện thoại theo vị tr&iacute; nằm ngang.</li>\r\n	<li>Tùy bi&ecirc;́n giao di&ecirc;̣n li&ecirc;n h&ecirc;̣: Bạn có th&ecirc;̉ cá nh&acirc;n hóa hình ảnh li&ecirc;n h&ecirc;̣ của mình và nó sẽ được hi&ecirc;̣n l&ecirc;n ở máy người khác khi bạn gọi đ&ecirc;́n cho họ.&nbsp;</li>\r\n	<li>Name Drop: Cho ph&eacute;p bạn chia sẻ th&ocirc;ng tin li&ecirc;n hệ của m&igrave;nh với người kh&aacute;c bằng c&aacute;ch chạm hai chiếc iPhone lại với nhau. T&iacute;nh năng n&agrave;y sử dụng chip NFC để truyền th&ocirc;ng tin li&ecirc;n hệ, bao gồm t&ecirc;n, số điện thoại, địa chỉ email v&agrave; ảnh hồ sơ của bạn.</li>\r\n	<li>Thư thoại trực tiếp: Cho ph&eacute;p bạn xem bản ghi &acirc;m thoại dưới dạng text tr&ecirc;n m&agrave;n h&igrave;nh iPhone. Nếu bạn cho rằng cuộc gọi l&agrave; quan trọng, bạn c&oacute; thể nhấc m&aacute;y trong khi người gọi đang để lại tin nhắn.&nbsp;</li>\r\n	<li>Tính năng tương tác với widget:cho ph&eacute;p bạn tương t&aacute;c với c&aacute;c widget tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh, m&agrave;n h&igrave;nh kh&oacute;a v&agrave; chế độ StandBy m&agrave; kh&ocirc;ng cần mở ứng dụng.</li>\r\n	<li>Bản đ&ocirc;̀ ngoại tuy&ecirc;́n: Cho ph&eacute;p bạn tải về một khu vực bản đồ cụ thể v&agrave; sử dụng n&oacute; khi iPhone của bạn kh&ocirc;ng kết nối với dữ li&ecirc;̣u di động hoặc Wi-Fi.&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-01.webp\" style=\"height:523px; width:780px\" /></p>\r\n\r\n<h2>Đặt mua iPhone 15 ở đ&acirc;u?</h2>\r\n\r\n<p>iPhone 15 đ&atilde; ch&iacute;nh thức mở b&aacute;n v&agrave;o ng&agrave;y 22/9 tại Việt Nam. Ngay từ b&acirc;y giờ, bạn c&oacute; thể đặt mua sản phẩm n&agrave;y bất kỳ l&uacute;c n&agrave;o tại Minh Tuấn Mobile.</p>\r\n\r\n<h2>Cần trả g&oacute;p bao nhi&ecirc;u để c&oacute; iPhone 15?</h2>\r\n\r\n<p>Tại Minh Tuấn Mobile - Đại l&yacute; ủy quyền ch&iacute;nh thức của Apple tại Việt Nam đang c&oacute; 2 phương ph&aacute;p trả g&oacute;p:</p>\r\n\r\n<ul>\r\n	<li>Trả g&oacute;p l&atilde;i suất thấp</li>\r\n	<li>Trả g&oacute;p l&atilde;i suất 0%</li>\r\n</ul>\r\n\r\n<p>Người ti&ecirc;u d&ugrave;ng chỉ cần chưa đến 30 ph&uacute;t l&agrave; c&oacute; thể sở hữu ngay một sản phẩm iPhone cao cấp với sự hỗ trợ từ c&aacute;c ng&acirc;n h&agrave;ng v&agrave; c&ocirc;ng ty t&agrave;i ch&iacute;nh h&agrave;ng đầu.</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-04.webp\" style=\"height:780px; width:780px\" /></p>\r\n\r\n<h2>Thu cũ đổi mới - l&ecirc;n đời iPhone 15</h2>\r\n\r\n<p>Minh Tuấn Mobile hiện đ&atilde; triển khai dịch vụ Thu cũ đổi mới - l&ecirc;n đời iPhone 15. Hiện tại, mức thu cũ tối đa của ch&uacute;ng t&ocirc;i l&agrave; 95% cho tất cả c&aacute;c sản phẩm, nếu qu&yacute; kh&aacute;ch muốn l&ecirc;n đời iPhone 15. Tuy nhi&ecirc;n, tuỳ v&agrave;o ch&iacute;nh x&aacute;c thiết bị bạn cần l&ecirc;n đời, Minh Tuấn Mobile sẽ gi&uacute;p bạn định gi&aacute; ch&iacute;nh x&aacute;c nhất mức thu v&agrave;o cũng như khoản tiền cần b&ugrave; th&ecirc;m để l&ecirc;n iPhone 15.</p>\r\n\r\n<h2>C&oacute; n&ecirc;n mua iPhone 15 kh&ocirc;ng?</h2>\r\n\r\n<p>iPhone 15 sở hữu nhiều ưu điểm nổi bật, với Pin cao hợp, m&agrave;n h&igrave;nh tốt hơn v&agrave; cụm camera chất lượng hơn d&ograve;ng iPhone 14 Series. Với mức gi&aacute; kh&aacute; mềm, sản phẩm n&agrave;y vừa t&uacute;i tiền với hầu hết người d&ugrave;ng v&agrave; bạn c&oacute; thể sở hữu sớm một sản phẩm cao cấp của nh&agrave; Apple.</p>\r\n\r\n<p>Đi k&egrave;m nhiều ưu đ&atilde;i, bạn ho&agrave;n to&agrave;n c&oacute; thể sở hữu iPhone 15 n&agrave;y với mức gi&aacute; tốt nhất v&agrave; c&oacute; thể nghĩ tới việc l&ecirc;n đời c&aacute;c phi&ecirc;n bản cao cấp hơn khi đ&atilde; trải nghiệm đủ.</p>\r\n\r\n<p><img alt=\"iPhone 15 128GB - Chính hãng VN/A\" src=\"https://minhtuanmobile.com/uploads/editer/images/2023/10/iphone-15-128gb-chinh-hang-vn-a-10.webp\" style=\"height:780px; width:780px\" /></p>\r\n<script src=\"chrome-extension://hhojmcideegachlhfgfdhailpfhgknjm/web_accessible_resources/index.js\"></script>\r\n', 'Huan', '2024-08-13', 'Admin', '2024-08-13 23:21:58', 217, 1, 20, 'iphone-15-128gb-chinh-hang-vn-a-37img1.png', 'iphone-15-128gb-chinh-hang-vn-a-37img2.jpg', 'iphone-15-128gb-chinh-hang-vn-a-37img3.jpg', 'iphone-15-128gb-chinh-hang-vn-a-37img4.jpg', 'iphone-15-128gb-chinh-hang-vn-a'),
(45, 'Điện thoại realme 10 4G 8GB/256GB', 1, 557, 12, NULL, 'Realme là nhà sản xuất điện thoại thông minh đến từ Trung Quốc đã không còn xa lạ với người dùng Việt Nam. Những chiếc điện thoại thông minh mang thương hiệu Realme không chỉ được đánh giá cao về chất lượng mà còn nổi bật với thiết kế thời thượng, bắt kịp xu hướng và đặc biệt rất chiều lòng những người dùng trẻ. Cuối năm 2022, Realme đã “trình làng” mẫu điện thoại Realme 10 với thiết kế độc đáo.', 6090000, 'Đen', '', '', '<strong>Thiết kế vi hạt &aacute;nh s&aacute;ng độc đ&aacute;o, m&agrave;n h&igrave;nh 6.4 inch sắc n&eacute;t</strong><br />\r\n<br />\r\nNhắc đến những chiếc điện thoại Realme, chắc chắn người d&ugrave;ng sẽ nhớ ngay đến kiểu d&aacute;ng trẻ trung, hiện đại. Với d&ograve;ng Realme 10 năm nay, nh&agrave; sản xuất giữ lại cạnh phẳng v&agrave; c&aacute;c g&oacute;c bo tr&ograve;n tinh tế. Nhưng điều l&agrave;m n&ecirc;n điểm nhấn của Realme 10 nằm ở ph&iacute;a sau. Mặt lưng của thiết bị được phủ một lớp gọi l&agrave; &ldquo;vi hạt &aacute;nh s&aacute;ng&rdquo;. Khi nh&igrave;n dưới c&aacute;c g&oacute;c độ kh&aacute;c nhau, những hạt n&agrave;y sẽ &aacute;nh l&ecirc;n m&agrave;u sắc rực rỡ khiến chiếc Realme 10 tr&ocirc;ng bắt mắt hơn khi cầm tr&ecirc;n tay. M&aacute;y c&oacute; độ d&agrave;y chỉ khoảng 8mm v&agrave; trọng lượng l&agrave; 178 gram n&ecirc;n người d&ugrave;ng c&oacute; thể cầm v&agrave; thao t&aacute;c dễ d&agrave;ng. Nếu bạn muốn bỏ n&oacute; v&agrave;o t&uacute;i &aacute;o hoặc t&uacute;i đeo để mang theo khi di chuyển th&igrave; điện thoại cũng kh&ocirc;ng chiếm qu&aacute; nhiều kh&ocirc;ng gian.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/02/03/22.jpg\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\nMặt trước của chiếc Realme 10 4G 8GB/256GB ch&iacute;nh h&atilde;ng l&agrave; m&agrave;n h&igrave;nh với k&iacute;ch thước l&ecirc;n tới 6.4 inch. Nh&agrave; sản xuất đ&atilde; trang bị cho điện thoại tấm nền Super AMOLED 2400 x 1080 pixels với độ s&aacute;ng tối đa l&ecirc;n tới 1000 nits v&agrave; tần số qu&eacute;t l&agrave; 90Hz. Nhờ đ&oacute; điện thoại c&oacute; thể hiển thị c&aacute;c h&igrave;nh ảnh r&otilde; r&agrave;ng, sắc n&eacute;t với m&agrave;u sắc ch&acirc;n thực, tự nhi&ecirc;n nhất. Ngo&agrave;i ra, Realme 10 c&oacute; tỷ lệ m&agrave;n h&igrave;nh với th&acirc;n m&aacute;y l&agrave; 84.4%, c&ugrave;ng với thiết kế notch nằm ở g&oacute;c tr&ecirc;n b&ecirc;n tr&aacute;i n&ecirc;n c&oacute; thể tối đa kh&ocirc;ng gian hiển thị nội dung. Với m&agrave;n h&igrave;nh n&agrave;y, người d&ugrave;ng c&oacute; thể thoải m&aacute;i xem phim, chơi game hoặc xử l&yacute; c&ocirc;ng việc một c&aacute;ch dễ d&agrave;ng.<br />\r\n<strong>Camera k&eacute;p 50MP chụp ảnh chuy&ecirc;n nghiệp</strong><br />\r\nC&ocirc;ng nghệ chụp ảnh lu&ocirc;n l&agrave; ưu điểm vượt trội của những chiếc điện thoại Realme so với c&aacute;c thương hiệu kh&aacute;c trong c&ugrave;ng ph&acirc;n kh&uacute;c. Với chiếc Realme 10 4G 8GB/256GB ch&iacute;nh h&atilde;ng, nh&agrave; sản xuất đ&atilde; trang bị cho n&oacute; cụm camera k&eacute;p với cảm biến ch&iacute;nh 50MP v&agrave; một cảm biến 2MP. Camera ch&iacute;nh được tối ưu m&agrave;u sắc cho những bức ảnh với dải m&agrave;u rộng, m&agrave;u sắc rực rỡ. Ngo&agrave;i ra, khả năng chụp đ&ecirc;m tr&ecirc;n Realme 10 cũng được cải thiện đ&aacute;ng kể. Nhờ c&ocirc;ng nghệ h&igrave;nh ảnh ProLight v&agrave; thuật to&aacute;n bắt &aacute;nh s&aacute;ng nhanh, tốc độ chụp đ&ecirc;m của điện thoại đ&atilde; tăng l&ecirc;n 121%.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/02/03/33_638110167924558816.jpg\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\nVới cụm camera n&agrave;y, người d&ugrave;ng c&oacute; thể thỏa sức s&aacute;ng tạo chụp những bức ảnh ở nhiều chế độ như x&oacute;a ph&ocirc;ng, chế độ đường phố 2.0 bắt trọn mọi khoảnh khắc,... Mặt trước của Realme 10 l&agrave; camera selfie với độ ph&acirc;n giải 16MP trang bị thuật to&aacute;n Clear Fusion. Nhờ đ&oacute; n&oacute; c&oacute; thể mang đến những bức ảnh &ldquo;tự sướng&rdquo; nịnh mắt nhất. Ngo&agrave;i ra nếu bạn cần tham gia c&aacute;c cuộc họp trực tuyến hoặc gọi Facetime th&igrave; Realme 10 cũng cho chất lượng hiển thị ổn định, chất lượng nhất.<br />\r\n<strong>Hiệu năng ổn định với chip Helio G99, vi&ecirc;n pin khủng 5000mAh</strong><br />\r\nĐiện thoại Realme 10 4G 8GB/256GB ch&iacute;nh h&atilde;ng được trang bị con chip Helio G99 với 8 nh&acirc;n, tốc độ CPU l&ecirc;n tới 2.2 GHz v&agrave; GPU l&agrave; 1.0 GHz. Chip Helio G99 đạt điểm hiệu năng hơn 400,000 theo kiểm tra của Antutu. Nhờ đ&oacute; n&oacute; c&oacute; thể xử l&yacute; đa t&aacute;c vụ, đặc biệt l&agrave; những tựa game cần đồ họa đỉnh cao. Nếu bạn l&agrave; người thường xuy&ecirc;n chơi game tr&ecirc;n điện thoại th&igrave; chắc chắn sẽ h&agrave;i l&ograve;ng v&igrave; m&aacute;y sẽ kh&ocirc;ng c&oacute; t&igrave;nh trạng giật lag hoặc đơ h&igrave;nh trong khi thao t&aacute;c.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/02/03/44.jpg\" /><br />\r\n<br />\r\n<br />\r\nĐiện thoại đi k&egrave;m với RAM 8GB v&agrave; c&oacute; thể mở rộng tới 8+8GB, c&ugrave;ng dung lượng lưu trữ 256GB, cho người d&ugrave;ng kh&ocirc;ng gian để lưu c&aacute;c th&ocirc;ng tin, dữ liệu quan trọng li&ecirc;n quan đến c&ocirc;ng việc, mở ra xử l&yacute; bất cứ l&uacute;c n&agrave;o. Ngo&agrave;i ra, Realme 10 4G 8GB/256GB ch&iacute;nh h&atilde;ng c&ograve;n sở hữu vi&ecirc;n pin dung lượng khủng 5000mAh. Điện thoại c&oacute; thể hoạt động với thời gian chờ l&ecirc;n tới 688 giờ. Nh&agrave; sản xuất cũng cho điện thoại hỗ trợ sạc nhanh SuperVOOC 33W, c&oacute; thể sạc đầy 50% vi&ecirc;n pin chỉ trong 28 ph&uacute;t. Chiếc Realme 10 4G 8GB/256GB ch&iacute;nh h&atilde;ng sẽ đ&aacute;p ứng nhu cầu sử dụng của bạn trong suốt một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng bị gi&aacute;n đoạn v&igrave; hết pin. Điện thoại c&oacute; hai t&ugrave;y chọn m&agrave;u đen v&agrave; trắng &aacute;nh v&agrave;ng trẻ trung cho mọi đối tượng người d&ugrave;ng.<br />\r\n&nbsp;', 'Huan', '2024-08-14', 'Huan', '2024-08-14 21:36:26', 54, 1, 15, 'n-a-45img1.jpg', 'n-a-45img2.png', 'n-a-45img3.png', 'n-a-45img4.png', 'n-a'),
(46, 'Laptop MSI Modern 15 B13M-297VN (i7-1355U/16GB/512GB/15.6\\\" FHD/Windows 11) - Chính hãng', 3, 558, 20, NULL, 'Dòng sản phẩm Laptop MSI Modern 15 đến từ MSI nhanh chóng trở thành “ngôi sao sáng” với những ưu điểm vượt trội, được giới công nghệ đánh giá cao dù mới ra mắt trên thị trường chưa quá lâu. Tiếp nối tiếng vang đó, laptop MSI Modern 15 B13M-297VN ra đời với sự thiết kế mỏng nhẹ, cấu hình mạnh mẽ và mang phong cách thời thường, là sự lựa chọn hoàn hảo giúp bạn chinh phục mọi đam mê từ công việc đến giải trí.', 15790000, 'Đen', '', '', '<h2><strong>M&agrave;n h&igrave;nh đồ họa, tối ưu h&oacute;a trải nghiệm</strong></h2>\r\nM&agrave;n h&igrave;nh rộng v&agrave; sắc n&eacute;t l&agrave; ấn tượng đầu ti&ecirc;n m&agrave; người d&ugrave;ng c&oacute; được khi lần đầu nh&igrave;n thấy laptop&nbsp;<strong>MSI Modern 15 B13M-297N</strong>. Kh&ocirc;ng chỉ c&oacute;&nbsp;<strong>k&iacute;ch thước 15.6 inch Full HD</strong>, thiết kế viền si&ecirc;u mỏng, m&agrave;n h&igrave;nh c&ograve;n được trang bị&nbsp;<strong>tấm nền IPS</strong>&nbsp;hiện đại. Nhờ đ&oacute;, mọi trải nghiệm h&igrave;nh ảnh hiển thị tr&ecirc;n m&agrave;n h&igrave;nh đều được tối ưu h&oacute;a, bất kể g&oacute;c nh&igrave;n n&agrave;o cũng được tận hưởng m&agrave;u sắc ch&acirc;n thực, sống động, tạo cảm gi&aacute;c tr&agrave;n viền đ&atilde; mắt.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/03/22/11_638151028070612897.png\" /><br />\r\n<br />\r\n<br />\r\nNổi tiếng với chuy&ecirc;n m&ocirc;n sản xuất m&agrave;n h&igrave;nh tuyệt vời bậc nhất, MSI cũng kh&ocirc;ng qu&ecirc;n trang bị cho d&ograve;ng sản phẩm&nbsp;<strong><a href=\"https://hoanghamobile.com/laptop/msi/msi-modern-15\" target=\"_blank\">Modern 15</a></strong>&nbsp;n&agrave;y&nbsp;<strong>card đồ họa t&iacute;ch hợp Intel Iris Xe</strong>&nbsp;với khả năng xử l&yacute; đồ họa đỉnh cao. Kh&ocirc;ng chỉ xuất được h&igrave;nh với độ ph&acirc;n giải 4K, card đồ họa n&agrave;y c&ograve;n hỗ trợ tối đa c&aacute;c t&aacute;c vụ chỉnh sửa h&igrave;nh ảnh, video d&agrave;nh cho d&acirc;n s&aacute;ng tạo. Tuy nhỏ nhưng c&oacute; v&otilde;, chắc chắn chiếc laptop n&agrave;y sẽ phục vụ được đa dạng nhu cầu của bạn, từ l&agrave;m việc, s&aacute;ng tạo cho đến giải tr&iacute; như chơi game, xem phim với trải nghiệm h&igrave;nh ảnh hết sức m&atilde;n nh&atilde;n.\r\n\r\n<h2><a name=\"_ezeq5q4ng1zs\"></a><strong>Trải nghiệm &acirc;m thanh sống động c&ugrave;ng b&agrave;n ph&iacute;m, touchpad hiện đại</strong></h2>\r\nKh&ocirc;ng chỉ dừng lại ở h&igrave;nh ảnh, laptop MSI Modern 15 B13M-297VN c&ograve;n đem đến những trải nghiệm &acirc;m thanh v&ocirc; c&ugrave;ng sống động. Với khả năng hỗ trợ&nbsp;<strong>&acirc;m thanh độ ph&acirc;n giải cao Hi-Res Audio 24bit/192kHz</strong>, bạn c&oacute; thể đắm ch&igrave;m trong từng giai điệu của b&agrave;i h&aacute;t y&ecirc;u th&iacute;ch, tận tưởng 100% chất lượng &acirc;m thanh d&ugrave; ở bất cứ đ&acirc;u.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/03/22/33_638151028070612897.png\" /><br />\r\n<br />\r\n<br />\r\nB&agrave;n ph&iacute;m v&agrave; touchpad của d&ograve;ng laptop n&agrave;y l&agrave; một trong những ưu điểm kh&ocirc;ng thể kh&ocirc;ng nhắc đến. Touchpad được thiết kế tương đối rộng, tạo cảm gi&aacute;c mượt m&agrave; khi di chuyển cho c&aacute;c đầu ng&oacute;n tay, tối đa h&oacute;a năng suất khi l&agrave;m việc. M&aacute;y c&ograve;n c&oacute;&nbsp;<strong>chức năng lay-flat v&agrave; Flip-n-Share 180&deg;</strong>&nbsp;cho ph&eacute;p bạn chia sẻ m&agrave;n h&igrave;nh của m&igrave;nh chỉ bằng một c&uacute; nhấp chuột, tạo kh&ocirc;ng gian l&agrave;m việc hiệu quả hơn. Kh&ocirc;ng những thế, b&agrave;n ph&iacute;m c&oacute;&nbsp;<strong>h&agrave;nh tr&igrave;nh ph&iacute;m s&acirc;u 1.5 mm</strong>, được t&iacute;ch hợp đ&egrave;n nền hiện đại, tối ưu h&oacute;a trải nghiệm khi thao t&aacute;c nhập liệu, hỗ trợ l&agrave;m việc ngay cả trong b&oacute;ng tối.\r\n\r\n<h2><a name=\"_qbq5l0ocdag9\"></a><strong>Hiệu năng mạnh mẽ với Intel Core i7 Gen 13</strong></h2>\r\nLaptop MSI Modern 15 B13M-297VN được trang bị&nbsp;<strong>bộ vi xử l&yacute; Intel Core i7-1355U</strong>&nbsp;- con chip thuộc thế hệ thứ 13 Raptor Lake mới nhất, c&oacute; tới 10 l&otilde;i 12 luồng v&agrave; tốc độ xung nhịp cực khủng 5.00 GHz. Nhờ vậy m&agrave; m&aacute;y sở hữu cấu h&igrave;nh v&ocirc; c&ugrave;ng mạnh mẽ, vượt trội hơn hẳn nhiều sản phẩm trong c&ugrave;ng mức gi&aacute;. Hiệu năng mạnh mẽ g&oacute;p phần tăng cường năng suất, hạn chế giật lag với c&aacute;c thao t&aacute;c mượt m&agrave;, nhanh nhạy. D&ugrave; bạn thực hiện c&aacute;c t&aacute;c vụ đơn giản hay phức tạp, d&ugrave; l&agrave;m văn ph&ograve;ng, ph&acirc;n t&iacute;ch dữ liệu hay lập tr&igrave;nh, d&ograve;ng m&aacute;y&nbsp;<a href=\"https://hoanghamobile.com/laptop/msi/msi-modern-15\" target=\"_blank\"><strong>MSI Modern 15</strong></a>&nbsp;n&agrave;y đều c&oacute; thể hỗ trợ bạn với hiệu quả tốt nhất.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/03/22/33_638151028070612897.png\" /><br />\r\n<br />\r\n&nbsp;\r\n<h2><a name=\"_9iv42qi7bxbo\"></a><strong>Thiết kế trẻ trung với độ bền chuẩn qu&acirc;n đội</strong></h2>\r\nD&ugrave; &ldquo;mang trong m&igrave;nh&rdquo; cấu h&igrave;nh mạnh mẽ c&ugrave;ng những t&iacute;nh năng vượt trội, laptop MSI Modern 15 B13M-297VN lại c&oacute; thiết kế mỏng nhẹ rất ấn tượng. Chiếc laptop n&agrave;y được nhắc tới với cụm từ &ldquo;si&ecirc;u mỏng, si&ecirc;u nhẹ&rdquo; khi c&oacute;&nbsp;<strong>k&iacute;ch thước 359 x 241 x 19.9 mm c&ugrave;ng trọng lượng 1.7kg</strong>, rất thuận tiện cho việc di chuyển thường xuy&ecirc;n của chủ sở hữu. Với thiết kế tinh tế m&agrave; kh&ocirc;ng k&eacute;m phần thanh lịch, laptop c&oacute; thể được cất gọn trong balo v&agrave; c&ugrave;ng bạn thoải m&aacute;i vi vu khắp nơi. Vẻ ngo&agrave;i m&agrave;u đen cổ điển vừa đem đến cảm gi&aacute;c b&iacute; ẩn quyến rũ, vừa tạo n&ecirc;n sự sang trọng, lịch l&atilde;m chắc chắn sẽ t&ocirc;n l&ecirc;n phong c&aacute;ch thời thường của bạn.<br />\r\n<img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2023/03/22/44_638151028070612897.png\" /><br />\r\n<br />\r\n<br />\r\nĐặc biệt, độ bền của chiếc laptop n&agrave;y đ&atilde; được chứng nhận, đ&aacute;p ứng ti&ecirc;u chuẩn qu&acirc;n đội<strong>&nbsp;MIL-STD-810G</strong>&nbsp;về độ tin cậy v&agrave; độ bền. C&oacute; thể thấy, thương hiệu MSI lu&ocirc;n hướng đến sự chuy&ecirc;n nghiệp trong lĩnh vực c&ocirc;ng nghệ thế giới khi li&ecirc;n tục cho ra đời những sản phẩm chất lượng cao h&agrave;ng đầu, tạo được sự tin tưởng, chắc chắn về độ bền với người d&ugrave;ng.<br />\r\n&nbsp;', 'Huan', '2024-08-14', '', '0000-00-00 00:00:00', 42, 1, 28, 'laptop-msi-modern-15-b13m-297vn-i7-1355u-16gb-512gb-15-6-fhd-windows-11-chinh-hang-46img1.jpg', 'laptop-msi-modern-15-b13m-297vn-i7-1355u-16gb-512gb-15-6-fhd-windows-11-chinh-hang-46img2.jpg', 'laptop-msi-modern-15-b13m-297vn-i7-1355u-16gb-512gb-15-6-fhd-windows-11-chinh-hang-46img3.jpg', 'laptop-msi-modern-15-b13m-297vn-i7-1355u-16gb-512gb-15-6-fhd-windows-11-chinh-hang-46img4.jpg', 'laptop-msi-modern-15-b13m-297vn-i7-1355u-16gb-512gb-15-6-fhd-windows-11-chinh-hang');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_desc` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_desc`) VALUES
(1, 'Admin', 'Quản trị viên quản lý hệ thống website '),
(2, 'Moderator', 'Người phụ trợ quản lý');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `slide_name` varchar(255) DEFAULT NULL,
  `slide_img1` varchar(255) DEFAULT NULL,
  `slide_text1` varchar(500) DEFAULT NULL,
  `slide_img2` varchar(255) DEFAULT NULL,
  `slide_text2` varchar(500) DEFAULT NULL,
  `slide_img3` varchar(255) DEFAULT NULL,
  `slide_text3` varchar(500) DEFAULT NULL,
  `slide_img4` varchar(255) DEFAULT NULL,
  `slide_text4` varchar(500) DEFAULT NULL,
  `slide_img5` varchar(255) DEFAULT NULL,
  `slide_text5` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slide_name`, `slide_img1`, `slide_text1`, `slide_img2`, `slide_text2`, `slide_img3`, `slide_text3`, `slide_img4`, `slide_text4`, `slide_img5`, `slide_text5`, `status`) VALUES
(1, 'HomePage 1', 'image1-1-homepage-1.jpg', 'Chỉ cần đặt hàng, quán Chị Kòi sẽ lập tức chiên giòn, giao hàng tới và mời thưởng thức ngay.', 'image2-1-homepage-1.png', 'Nhiều loại trà sữa dành cho bạn lựa chọn thỏa thích', 'image3-1-homepage-1.png', 'Nhiều món ăn vặt khác nhau cho các bạn thưởng thức', 'image4-1-homepage-1.jpg', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `subcategory_name` varchar(255) DEFAULT NULL,
  `supply_id` int(11) DEFAULT 1,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcategory_name`, `supply_id`, `category_id`, `slug`) VALUES
(14, 'Vivo', 1, 557, 'vivo'),
(13, 'oppo', 1, 557, 'oppo'),
(12, 'Realme', 1, 557, 'realme'),
(11, 'Nokia', 1, 557, 'nokia'),
(10, 'Samsung', 1, 557, 'samsung'),
(9, 'Iphone', 1, 557, 'iphone'),
(15, 'Mac', 1, 558, 'mac'),
(16, 'Asus', 1, 558, 'asus'),
(17, 'Lenovo', 1, 558, 'lenovo'),
(18, 'Dell', 1, 558, 'dell'),
(19, 'HP', 1, 558, 'hp'),
(20, 'MSI', 1, 558, 'msi'),
(21, 'Phụ kiện di động', 1, 560, 'phu-kien-di-dong'),
(22, 'Phụ kiện Laptop', 1, 560, 'phu-kien-laptop'),
(23, 'Gaming gear', 1, 560, 'gaming-gear'),
(24, 'Thiết bị mạng', 1, 560, 'thiet-bi-mang');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `supply_name` varchar(500) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `supply_name`, `logo`) VALUES
(1, 'Việt Nam', '');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `type_description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `type_description`, `slug`) VALUES
(1, 'SẢN PHẨM NỔI BẬT (HOT)', '', 'san-pham-noi-bat'),
(2, 'SẢN PHẨM MỚI', '', 'san-pham-moi'),
(3, 'SẢN PHẨM GIẢM GIÁ', '', 'san-pham-giam-gia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_username` varchar(50) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `user_avatar` varchar(550) DEFAULT 'author-auto.png',
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `verificationCode` varchar(500) DEFAULT NULL,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_username`, `user_password`, `user_name`, `role_id`, `user_avatar`, `user_email`, `user_phone`, `user_address`, `createDate`, `verified`, `verificationCode`, `editTime`) VALUES
(1042, 'test', '5f4dcc3b5aa765d61d8327deb882cf99', 'Admin', 1, 'author-auto.png', 'test@example.com', '0123456789', '123', '2024-08-07 21:16:31', 1, '0d8e0c763c303313988552b1b6462b4a', '2024-08-12 20:26:43'),
(1046, 'user1', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 0, 'author-auto.png', 'example@example.com', NULL, NULL, '2024-08-11 21:40:55', 1, '850ced79c6a0b89802e31fbaca75a518', NULL),
(1047, 'huan12345ndnd', 'b728a2ec1f25cfed7f60a56f7eb6a7c6', 'Huan', 1, 'author-auto.png', 'huanlthh@gmail.com', '0123456789', 'aaaaaaa', '2024-08-13 18:50:40', 1, 'd437e968bd4aee36cb2613f42c2ab776', '2024-08-13 18:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `session` varchar(100) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(34) NOT NULL,
  `browser` varchar(550) NOT NULL,
  `dateonline` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`session`, `time`, `ip`, `browser`, `dateonline`) VALUES
('qr2uiogi068p6ffmiipruefenm', 1723646204, '171.235.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 21:36:44'),
('0lk3ufu79v6p38dplbm3pj4h7i', 1723643347, '192.168.100.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-14 20:49:07'),
('j8m96g5rf32evpr308fb0ceq4h', 1723646468, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-08-14 21:41:08'),
('3q3t7v1qe7urqehsfpmhe8tqfq', 1723638953, '192.168.100.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-14 19:35:53'),
('jt1oidue6r5jcptahctdl4u9k4', 1723637169, '192.168.100.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-14 19:06:09'),
('6ic3i0ljd0mvkf9gs74u6hj45h', 1723634160, '192.168.100.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-14 18:16:00'),
('ko75br5nbmgdt767nj3eune88g', 1723638496, '203.205.29.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 19:28:16'),
('ff3c9qo9nvf53oi938712q4741', 1723630802, '113.162.146.104', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-08-14 17:20:02'),
('40oubunc9oc0kf87nkoholbd9v', 1723563489, '192.168.100.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-13 22:38:09'),
('4r86ve1rmgckbdpvdri6rbfahs', 1723562434, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-08-13 22:20:34'),
('23atmslr99qp4bst72qutq32tv', 1723565855, '171.235.178.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 23:17:35'),
('8fs1e0lrt9im0sibjru6cdm82g', 1723554855, '203.205.29.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 20:14:15'),
('u9ntpr62v1ttqgt0j52v7sq0eq', 1723566241, '113.162.146.104', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-08-13 23:24:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_user`
--
ALTER TABLE `cart_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`user_id`),
  ADD KEY `fk_id_product` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supply_id` (`supply_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_product` (`product_id`),
  ADD KEY `fk_id_user` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Indexes for table `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_footers`
--
ALTER TABLE `menu_footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_id` (`order_id`),
  ADD KEY `fk_id_product` (`product_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_author` (`post_author`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_supply_id` (`supply_id`),
  ADD KEY `fk_type_id` (`product_typeid`),
  ADD KEY `fk_id_sub_category` (`sub_category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_supply_id` (`supply_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_role` (`role_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`session`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_user`
--
ALTER TABLE `cart_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `introduce`
--
ALTER TABLE `introduce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_footers`
--
ALTER TABLE `menu_footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1048;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
