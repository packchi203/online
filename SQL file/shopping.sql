-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 05, 2022 lúc 11:40 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `categoryName`, `creationDate`, `updationDate`) VALUES
(9, 'Nữ ', '2022-08-26 16:26:41', NULL),
(10, 'Nam', '2022-08-30 12:21:19', NULL),
(11, 'Trẻ em', '2022-08-30 12:21:30', NULL),
(12, 'Sale', '2022-08-30 12:24:06', NULL),
(13, 'Phụ kiện', '2022-08-30 12:24:13', NULL),
(14, 'Bộ sưu tập', '2022-08-30 12:24:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderStatus` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(27, 1, '22', 1, 'XL', '2022-09-03 07:00:03', 'COD', 'Delivered'),
(28, 1, '30', 1, 'XXL', '2022-09-03 11:01:36', 'COD', 'Delivered'),
(29, 1, '32', 1, 'L', '2022-09-03 11:09:57', 'COD', 'Delivered'),
(30, 1, '22', 1, 'S', '2022-09-03 12:24:38', 'Internet Banking', 'Delivered'),
(31, 1, '27', 1, 'S', '2022-09-03 12:25:00', 'QR Payment', 'Delivered'),
(32, 42, '25', 1, 'S', '2022-09-05 06:59:04', 'COD', 'Delivered'),
(33, 42, '32', 1, 'S', '2022-09-05 08:04:55', 'COD', 'in Process'),
(34, 42, '32', 1, 'XL', '2022-09-05 08:05:04', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 11, 'in Process', 'a', '2022-08-29 08:45:21'),
(6, 11, 'Delivered', 'a', '2022-08-29 08:45:30'),
(7, 9, 'Delivered', 'a', '2022-08-29 08:46:01'),
(8, 10, 'Delivered', 'ad', '2022-08-29 08:46:23'),
(9, 7, 'Delivered', 'a', '2022-08-29 08:48:11'),
(10, 8, 'Delivered', 'a', '2022-08-29 08:48:23'),
(11, 27, 'Delivered', 'a', '2022-09-03 15:30:15'),
(12, 31, 'Delivered', 'a', '2022-09-05 06:55:04'),
(13, 32, 'in Process', 'abc', '2022-09-05 07:00:00'),
(14, 32, 'Delivered', 'abc', '2022-09-05 07:00:39'),
(15, 30, 'Delivered', 'a', '2022-09-05 07:01:31'),
(16, 29, 'Delivered', 'a', '2022-09-05 07:01:43'),
(17, 28, 'Delivered', 'a', '2022-09-05 07:01:53'),
(18, 33, 'in Process', 'a', '2022-09-05 08:13:11'),
(19, 34, 'in Process', 'Hello', '2022-09-05 09:04:56'),
(20, 34, 'in Process', 'Hello', '2022-09-05 09:05:47'),
(21, 34, 'Delivered', 'hi', '2022-09-05 09:06:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productDescription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productAvailability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 9, 13, 'Chân Váy Xòe Phối Hạt', 120, '<span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 15px;\">Zuýp xòe với độ dài trên gối. Cài bằng khóa kéo ẩn phía sau. Phối hạt cườm ngang tùng tạo điểm nhấn.</span><br style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: Montserrat, sans-serif; color: rgb(62, 62, 63); font-size: 15px;\"><br style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: Montserrat, sans-serif; color: rgb(62, 62, 63); font-size: 15px;\"><span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 15px;\">Dáng xòe rộng, chất vải Tuysi có lớp lót rời bên trong tạo sự thoải mái và tự tin khi mặc. Nếu như nàng đang lo lắng về vòng eo hay bụng to của mình thì đây chính là item nàng cần bổ sung ngay.</span><br style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: Montserrat, sans-serif; color: rgb(62, 62, 63); font-size: 15px;\"><br style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: Montserrat, sans-serif; color: rgb(62, 62, 63); font-size: 15px;\"><span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 15px;\">Màu sắc: Đen</span><div><span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 15px;\">Dòng sản phẩm : Ladies</span><br style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: Montserrat, sans-serif; color: rgb(62, 62, 63); font-size: 15px;\"><span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 15px;\">Nhóm sản phẩm : Zuýp</span><br style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-family: Montserrat, sans-serif; color: rgb(62, 62, 63); font-size: 15px;\"><span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 15px;\">Kiểu dáng : Xòe</span><br></div>', 'sp2.3.jpeg', 'sp2.3.jpeg', 'sp2.1.jpeg', 'In Stock', '2022-08-30 14:24:13', NULL),
(25, 9, 14, 'Áo Thun In Chữ', 600, '<br>', 'sp5.1.jpeg', 'sp5.3.jpeg', 'sp5.2.jpeg', 'In Stock', '2022-08-30 14:34:59', NULL),
(27, 9, 13, 'Đầm Cut-Out Phối Ren', 1, '<span style=\"color: rgb(62, 62, 63); font-family: Montserrat, sans-serif; font-size: 14px;\">Đầm dáng ôm không tay, cổ tạo kiểu, eo chiết cao&nbsp;có tà xếp nếp 1 bên. Bên eo phải được cut out khéo lèo phối ren&nbsp;tạo điểm nhấn. Tùng váy&nbsp;dài qua gối. Cài bằng khóa kéo ẩn sau lưng.</span><br><div><table class=\"\" width=\"70%\" style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); width: 300px; max-width: 300px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);\"><tbody style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px;\"><tr style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px;\"><td style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px 0px 5px; vertical-align: baseline; line-height: 24px;\"><span style=\"box-sizing: border-box; font-weight: bolder; line-height: 24px;\">Dòng sản phẩm</span></td><td style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px 0px 5px; vertical-align: baseline; line-height: 24px;\">Ladies</td></tr><tr style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px;\"><td style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px 0px 5px; vertical-align: baseline; line-height: 24px;\"><span style=\"box-sizing: border-box; font-weight: bolder; line-height: 24px;\">Nhóm sản phẩm</span></td><td style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px 0px 5px; vertical-align: baseline; line-height: 24px;\">Váy</td></tr><tr style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px;\"><td style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px 0px 5px; vertical-align: baseline; line-height: 24px;\"><span style=\"box-sizing: border-box; font-weight: bolder; line-height: 24px;\">Cổ áo</span></td><td style=\"box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px 0px 5px; vertical-align: baseline; line-height: 24px;\">Cổ khác</td></tr></tbody></table></div>', 'sp3.jpeg', 'sp3.1.jpeg', 'sp3.3.jpeg', 'In Stock', '2022-08-30 15:33:47', NULL),
(28, 10, 17, 'Quần Tây Nam Dáng Slim', 500, '<p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Quần dài đai có đỉa. Có 2 túi chéo. 2 túi sau may viền có khuy cài. Quần dáng&nbsp;Slim.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Với độ ôm vừa phải, tôn dáng và che khuyết điểm rất tốt&nbsp;mang lại vẻ hiện đại, đẳng cấp. Được làm bằng chất liệu Tuysi có độ thấm hút cao, hạn chế&nbsp;nhăn nhàu giữ cho dáng quần luôn như mới.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Màu sắc: Ghi Khói</p><div><br></div>', '1.1.jpeg', '1.2.jpeg', '1.3.jpeg', 'Out of Stock', '2022-08-30 16:12:43', NULL),
(29, 9, 14, 'Áo Thun In Chữ', 300, '<br>', 'sp6.jpeg', 'sp6.2.jpeg', 'sp6.3.jpeg', 'In Stock', '2022-08-30 16:50:58', NULL),
(30, 10, 17, 'Quần Tây Nam Dáng Fix', 600, '<p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Quần dài, ống ôm nhẹ. Độ dài chạm mắt cá chân. Đai quần có khuy cài và đỉa. Khóa dạng kéo. Đằng sau có 2 túi giả.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Một chiếc quần fit dáng là item mà mọi chàng trai không thể bỏ qua. Thiết kế ôm nhẹ tôn dáng khiến đôi chân người mặc trông dài và thon hơn rất nhiều. Sắc tối dễ mix-match cùng nhiều thiết kế áo khác. Với những chàng trai trẻ trung, đây sẽ là chiếc quần phù hợp cho cả ngày đi chơi và đi làm.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Màu sắc: Kẻ chì - Kẻ xanh tím than</p><div><br></div>', '2.1.jpeg', '2.2.jpeg', '2.3.jpeg', 'In Stock', '2022-08-31 06:11:51', NULL),
(31, 11, 20, 'Áo Thun In Chữ', 200, '<p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Một set bao gồm áo ngắn tay và quần lửng có cùng màu. Màu của set sẽ được giao ngẫu ngẫu nhiên.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Set thun có chất liệu mềm, nhẹ, thoáng, phù hợp để bé diện vào mùa hè. Quần lửng gọn gàng, năng động giúp bé có những phút giây vui chơi thoải mái.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Màu sắc: Tím lavender - Xanh lơ</p>', '3.1.jpeg', '3.2.jpeg', '3.3.jpeg', 'In Stock', '2022-08-31 07:24:46', NULL),
(32, 11, 19, 'Quần Jean Dáng Slim', 300, '<p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Quần jean bé trai dáng&nbsp;Slim fit, form hơi ôm nhẹ. Gấu gập khoảng 3cm. Viền chỉ vàng. Phía trước có 2 túi chéo, phía sau có túi hộp.</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Màu sắc: Xanh lơ</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px;\">Mẫu nhí mặc size 8-9</span></p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Chiều cao: 1m37&nbsp;- Cân nặng: 39kg</p>', '4.1.jpeg', '4.2.jpeg', '4.3.jpeg', 'In Stock', '2022-08-31 07:27:28', NULL),
(33, 9, 13, 'Vay Nữ', 500, '<br>', 'anh1.jpeg', 'anh2.jpeg', 'anh3.jpeg', 'In Stock', '2022-08-31 07:51:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 9, 'Váy', '2022-08-30 14:21:29', NULL),
(14, 9, 'Áo Thun', '2022-08-30 14:21:35', '30-08-2022 10:21:15 PM'),
(15, 9, 'Quần', '2022-08-30 14:21:41', NULL),
(16, 10, 'Áo Sơ Mi', '2022-08-30 14:21:51', NULL),
(17, 10, 'Quần Âu', '2022-08-30 16:10:48', NULL),
(18, 11, 'Áo Bé Trai', '2022-08-31 07:22:18', NULL),
(19, 11, 'Quần Bé Trai', '2022-08-31 07:22:30', NULL),
(20, 11, 'Áo Bé Nữ', '2022-08-31 07:22:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-27 11:28:20', NULL, 0),
(25, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-27 11:28:27', NULL, 0),
(26, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-27 11:29:30', NULL, 1),
(27, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-29 08:02:29', NULL, 0),
(28, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-29 08:02:34', '30-08-2022 05:24:03 PM', 1),
(29, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-30 11:56:32', NULL, 0),
(30, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-30 11:56:39', '05-09-2022 12:26:06 PM', 1),
(31, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 06:57:21', NULL, 0),
(32, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 06:57:29', NULL, 1),
(33, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 07:25:21', NULL, 1),
(34, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 08:38:11', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingAddress` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Nguyen Bach', 'bach@gmail.com', 123123123, 'e10adc3949ba59abbe56e057f20f883e', '123', '123', '123', 123, '2022-08-27 11:29:15', NULL),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '2018-04-29 09:30:32', ''),
(42, 'Tung Chi', 'chi@gmail.com', 123123123, '202cb962ac59075b964b07152d234b70', '100  le van luong', 'dong da', 'ha noi', 10000, '2022-09-05 06:57:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 2, '2022-08-30 11:57:38'),
(3, 1, 21, '2022-08-30 12:28:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
