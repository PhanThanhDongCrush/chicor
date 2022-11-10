-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2022 lúc 03:32 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL COMMENT 'Mã bình luận',
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nội dung bình luận',
  `ma_kh` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngay_bl` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Thời gian bình luận',
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `noi_dung`, `ma_kh`, `idpro`, `ngay_bl`, `ho_ten`) VALUES
(43, 'Good', 5, 13, '10:16:29pm 26/10/2022', ''),
(44, 'Good', 5, 25, '11:36:14pm 26/10/2022', ''),
(45, 'Beauty', 5, 24, '11:36:26pm 26/10/2022', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hd` int(10) NOT NULL,
  `ma_kh` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_sp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `don_gia` float NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `ma_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `ma_hdct` int(10) NOT NULL,
  `ten_kh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_dat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tong_tien` int(10) NOT NULL DEFAULT 0,
  `trang_thai` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mới\r\n1.Đang xử lý\r\n2.Đang giao hàng\r\n3.Đã giao hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` int(10) NOT NULL COMMENT 'Mã đăng nhập',
  `kich_hoat` bit(1) NOT NULL COMMENT 'Trạng thái kích hoạt',
  `hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên hình ảnh',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa chỉ email',
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `vai_tro` bit(1) NOT NULL COMMENT 'Vai trò',
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `kich_hoat`, `hinh`, `email`, `ho_ten`, `mat_khau`, `vai_tro`, `dia_chi`, `sdt`) VALUES
(5, b'0', '', 'reika241103@gmail.com', 'linh24', 'linh2411', b'1', 'Hà Nội', '0386311823'),
(7, b'0', '', 'koco19112002@gmail.com', 'linh', 'linh2411', b'0', 'Hà Nội', '0979584595'),
(8, b'0', '', 'linh241123@gmail.com', 'linh11', 'linh2411', b'0', 'Hà Nội', '0974400769');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int(10) NOT NULL COMMENT 'Mã loại',
  `ten_loai` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên loại'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(1, 'Labtop'),
(6, 'Đồng hồ'),
(7, 'Vali'),
(9, 'Điện thoại di động'),
(10, 'Máy ảnh'),
(11, 'Nữ trang'),
(12, 'Nón thời trang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_sp` int(10) NOT NULL COMMENT 'Mã sản phẩm',
  `ten_sp` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `don_gia` float NOT NULL COMMENT 'Đơn giá',
  `giam_gia` float DEFAULT NULL COMMENT 'Mức giảm giá',
  `hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `ngay_nhap` date NOT NULL COMMENT 'Ngày nhập ',
  `mo_ta` varchar(2000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả sản phẩm',
  `dac_biet` bit(1) NOT NULL COMMENT 'Trạng thái đặc biệt',
  `so_luot_xem` int(11) NOT NULL DEFAULT 0 COMMENT 'số lượt xem',
  `ma_loai` int(10) NOT NULL COMMENT 'Mã loại'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ma_sp`, `ten_sp`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `ma_loai`) VALUES
(5, 'Outback Lager', 90, NULL, '1070.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 10, 6),
(6, 'Flotemysost', 80, NULL, '1071.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 20, 9),
(7, 'Mozzarella di Giovanni', 70, NULL, '1072.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 2, 9),
(8, 'Carnarvon Tigers', 60, NULL, '1018.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 30, 7),
(9, 'Longlife Tofu', 50, NULL, '1074.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 15, 12),
(10, 'Cate de Blaye', 22, NULL, '1075.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 25, 6),
(11, 'Laughing Lumberjack Lager', 50, NULL, '1076.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 5, 6),
(12, 'Aniseed Syrup 2018', 20, NULL, '1077.gif', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 40, 1),
(13, 'Ipoh Coffee', 30, NULL, '1081.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 12, 6),
(19, 'Tharinger Rostbratwurst', 50, NULL, '1009.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 11),
(20, 'Sir Rodney Marmalade', 70, NULL, '1019.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 10),
(21, 'Manjimup Dried Apples', 40, NULL, '1051.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 12),
(22, 'Perth Pasties', 50, NULL, '1029.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 11),
(23, 'Zaanse koeken', 70, NULL, '1005.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 10),
(24, 'Gravad lax', 80, NULL, '1037.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 7),
(25, 'Gula Malacca', 90, NULL, '1003.jpg', '0000-00-00', 'Nowadays, there are many mobile phones. They are very modern. My favorite phone is the Iphone 12 Pro Max. My father bought it for me when he heard that I had won a scholarship to an American university. My smartphone is black. Its design is extremely luxurious. The phone has a lot of face recognition capabilities for very convenient unlocking. The camera of this phone is very nice. My phone has up to 256GB memory.', b'0', 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `ma_hdct` (`ma_hdct`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD PRIMARY KEY (`ma_hdct`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_sp`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã bình luận', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  MODIFY `ma_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Mã đăng nhập', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Mã loại', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_sp` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
