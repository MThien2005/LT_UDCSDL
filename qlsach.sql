-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 09, 2024 lúc 12:45 AM
-- Phiên bản máy phục vụ: 8.2.0
-- Phiên bản PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsach`
--
CREATE DATABASE IF NOT EXISTS `qlsach` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `qlsach`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_sach`
--

DROP TABLE IF EXISTS `loai_sach`;
CREATE TABLE IF NOT EXISTS `loai_sach` (
  `ma_loai` int NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(40) NOT NULL,
  PRIMARY KEY (`ma_loai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loai_sach`
--

INSERT INTO `loai_sach` (`ma_loai`, `ten_loai`) VALUES
(1, 'Khoa hoc'),
(2, 'Tin hoc'),
(3, 'Van hoc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `ma_sach` int NOT NULL AUTO_INCREMENT,
  `tua_de` varchar(40) NOT NULL,
  `gia` int NOT NULL,
  `ma_loai` int NOT NULL,
  PRIMARY KEY (`ma_sach`),
  KEY `ma_loai` (`ma_loai`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`ma_sach`, `tua_de`, `gia`, `ma_loai`) VALUES
(1, 'Lap trinh java', 5000, 2),
(2, 'Mobile', 7000, 2),
(3, 'Nhung dieu ky thu', 4500, 1),
(4, 'Vo nhat', 6000, 3);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_sach` (`ma_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
