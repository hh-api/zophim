-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 28, 2023 lúc 01:36 AM
-- Phiên bản máy phục vụ: 5.5.62-log
-- Phiên bản PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Rong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `pin` int(11) NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `slug`, `name`, `comment`, `pin`, `time`) VALUES
(1, 'vay-ham-khong-loi-thoat', 'Nam Cung Uyển', 'Xem đỉnh vãi', 0, '1700935753'),
(2, 'do-khong-tuyet-doi', 'Nam Cung Uyển', 'Bao giờ có tiếp thế', 0, '1700935796'),
(3, 'lac-du-nguyen', 'Mỹ Đỗ Toa', 'Thuyết minh nốt đi Ad ơi', 0, '1700935937'),
(4, 'sarree-yeu-dau', 'Đường Tam', 'Nữ chính xinh vãi luôn á', 0, '1701023293'),
(5, 'dau-la-dai-luc-2', 'Hàn Lập', 'Hay quá Ad ơi', 0, '1701106361');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `ten_phim` text NOT NULL,
  `ten_goc` text NOT NULL,
  `thumb` text NOT NULL,
  `bole` int(11) NOT NULL,
  `nam_chieu` text NOT NULL,
  `quoc_gia` text NOT NULL,
  `the_loai` text NOT NULL,
  `dien_vien` text NOT NULL,
  `trang_thai` text NOT NULL,
  `thoi_luong` text NOT NULL,
  `noi_dung` text NOT NULL,
  `hot` int(1) NOT NULL,
  `hide` int(1) NOT NULL,
  `api` int(1) NOT NULL,
  `view` int(11) NOT NULL,
  `view_day` int(11) NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
