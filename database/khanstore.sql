-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 24, 2023 lúc 05:49 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khanstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(8, 'anh', 'anh2002@gmail.com', '$2y$10$21KZHrIDBc1VXvh6CSMEz.aey5vgnBHX2dmLGisnRyE6Pa438RXwy', '0'),
(9, 'Tuan', 'tuan24@gmail.com', '$2y$10$eYAocnQb1CUN.qAvd2VWMObBH9LmsUsBU5752AkMcVC.mf3DEtjG.', '0'),
(10, 'Tran Tuan Anh', 'anh24@gmail.com', '$2y$10$ziB/ashZ7Wmue.2DR1ZqE.9dyXeLbs5HA6fJi6JqZyPr4CBHEqfhK', '0'),
(11, 'Nhom tam', 'group8@gmail.com', '123456', '0'),
(12, 'Nhom Tam ', 'nhom8@gmail.com', '123456', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Xiaomi'),
(4, 'LG'),
(5, 'HP'),
(6, 'Dell');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 1, '::1', 4, 1),
(4, 4, '::1', 4, 1),
(8, 5, '::1', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Điện thoại'),
(3, 'Laptop'),
(4, 'Tai nghe'),
(5, 'Tivi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `p_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 3, 'Xiaomi Redmi Note 12 (Chính hãng)', 450, 50, 'Its a good phone', '1692683886_xiaomi redmi note 12.jpg', 'xiaomi, điện thoại, redmi, note 12'),
(2, 3, 5, 'Laptop HP Pavilion Gaming 15 (Chính hãng)', 40000, 5000, 'Iphone is a good phone', '1692684365_1692000223_laptop hp gaming.jpg', 'laptop, hp, pavilion, gmaing'),
(4, 4, 2, 'Tai nghe Samsung Galaxy Buds (Chính hãng)', 240, 100, 'Samsung is a good phone', '1692684420_1691999807_tai nghe ss galaxy buds.jpg', 'tai nghe, samsung, galaxy buds'),
(5, 2, 1, 'Iphone 12 cũ (Chính hãng)', 3500, 5000, 'iphone 12 cũ', '1692684477_1691921383_iphone 12.jpg', 'iphone, 12, cũ'),
(6, 5, 3, 'Tivi Xiaomi EA55', 12000, 234, 'tot', '1692684556_1691999224_tv xiaomi ea55.jpg', 'tivi, xiaomi, ea55'),
(7, 2, 2, 'Samsung Galaxy S23 Unltra', 21000, 555, 'vip', '1692684683_1691998623_ss galaxy s23 ultra.jpg', 'samsung, galaxy, s23, ultra'),
(8, 2, 1, 'Iphone 11 Pro cũ (Chính hãng) - Giá rẻ hơn 36%', 1500, 666, 'cũ', '1692684763_1691921291_iphone 11 pro.jpg', 'iphone, 11 pro, cũ, rẻ'),
(9, 2, 3, 'Xiaomi Black Shark 2 (Xách tay)', 3000, 333, 'xach tay', '1692684799_1691999664_xiaomi black shark 2.jpg', 'xiaomi, black shark 2, xách tay'),
(10, 4, 2, 'Tai nghe AKG Samsung (Chính hãng)', 3200, 111, 'tot', '1692685513_1691999149_tai nghe akg samsung.jpg', 'tai nghe, akg, samsung'),
(11, 3, 1, 'Macbook Air 2022 (Chính hãng)', 22000, 100, 'tot', '1692684910_1691996640_macbook air 202.jpg', 'macbook, apple, air 2022'),
(12, 4, 1, 'Tai nghe AirPods Max (Chính hãng)', 3100, 999, 'tôt', '1692685006_1691999043_tai nghe airpods max.jpg', 'tai nghe, airppods, max'),
(13, 2, 1, 'Iphone 12 Pro Max cũ (Chính hãng)', 5700, 444, 'aa', '1692685559_1691922154_iphone 12  pro max.jpg', 'tai nghe, samsung, akg'),
(14, 5, 3, 'Tivi Xiaomi ES50', 19000, 222, 'tot', '1692685093_1691999941_tv xiaomi es50.jpg', 'tivi, xiaomi, es50'),
(15, 2, 2, 'Samsung Galaxy Note 20 Unltra (Chính hãng)', 24000, 777, 'tot', '1692685139_1692009045_ss galaxy note 20 ultra.jpg', 'samsung, galaxy, note 20, ultra'),
(16, 2, 3, 'Xiaomi Black Shark 4 (Xách tay)', 13000, 444, 'xach tay', '1692685167_1692001940_xiaomi black shark 4.jpg', 'xiaomi, black shark 4, xách tay'),
(17, 2, 4, 'LG G7 ThinQ 5G cũ 99% (Chính hãng)', 1500, 888, 'cũ', '1692685229_1692003020_lg g7 thinq 5g.jpg', 'lg, g7 thinq, 5g, cũ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'Tuan', 'Anh', 'anh2404@gmail.com', '4a2bcc0e5e00085bbf66e05b069cdd2f', '0123456789', 'Bac Ninh', ''),
(4, 'Tuan', 'Anh', 'anh2002@gmail.com', '1cc4f50382a8f0d5813e67d97de1eec3', '0123456789', 'Bac Binh', 'Ha Noi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Chỉ mục cho bảng `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
