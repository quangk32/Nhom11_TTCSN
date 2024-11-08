-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2023 lúc 07:20 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banthucpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_BinhLuan` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `NoiDung` varchar(255) NOT NULL,
  `ThoiGianBinhLuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `chitietdonhang`
--
CREATE TABLE `chitietdonhang` (
  `ID_DonHang` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `CodeOrder` int(11) DEFAULT NULL,
  `GiaMua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `ID_GioHang` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID_DanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(30) NOT NULL,
  `Mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID_DanhMuc`, `TenDanhMuc`, `Mota`) VALUES
(1, 'Rau xanh', 'Tăng cường hệ miễn dịch, điều hòa huyết áp, tốt cho hệ tiêu hóa...'),
(2, 'Củ, quả', 'Nguồn cung cấp chất xơ tự nhiên, cải thiện hệ tiêu hóa...'),
(3, 'Thịt tươi', 'Giàu dinh dưỡng, nguồn cung cấp protein...\n'),
(7, 'Thủy hải sản', 'Tận hưởng hải sản chất lượng cao tại gia đình bạn...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ID_DonHang` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `GiaTien` float NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `XuLy` tinyint(1) NOT NULL,
  `NguoiNhan` varchar(50) DEFAULT NULL,
  `HinhThucThanhToan` varchar(20) DEFAULT NULL,
  `CodeOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ID_GioHang` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `ID_MoMo` int(11) NOT NULL,
  `PartnerCode` varchar(50) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `OrderInfo` varchar(100) NOT NULL,
  `OrderType` varchar(50) NOT NULL,
  `TransId` int(11) NOT NULL,
  `payType` varchar(50) NOT NULL,
  `CodeOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`ID_MoMo`, `PartnerCode`, `OrderId`, `Amount`, `OrderInfo`, `OrderType`, `TransId`, `payType`, `CodeOrder`) VALUES
(1, 'MOMOBKUN20180529', 1692868853, '31500', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2045),
(2, 'MOMOBKUN20180529', 1692882873, '342000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7592),
(3, 'MOMOBKUN20180529', 1693055000, '47500', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 3287),
(4, 'MOMOBKUN20180529', 1693232468, '171000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 5646),
(5, 'MOMOBKUN20180529', 1693275093, '152000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7176),
(6, 'MOMOBKUN20180529', 1693306862, '422750', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 6235),
(7, 'MOMOBKUN20180529', 1693312567, '1140000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7859),
(8, 'MOMOBKUN20180529', 1693360388, '14250', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2624);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID_NCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `MoTa` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID_NCC`, `TenNCC`, `MoTa`, `Email`, `SoDienThoai`, `DiaChi`, `Img`) VALUES
(1, 'Trang trại Hoàng Giang Agritech', 'Trang trại Hoàng Giang Agritech là một hệ thống phát triển và phân phối thực phẩm hữu cơ, với mục tiêu giúp người dùng Việt Nam có cuộc sống khỏe mạnh hơn thông qua các loại sản phẩm tự nhiên đạt chất lượng cao, vẫn giữ nguyên vị, không chất hóa học độc hại hay biến đổi gen.', 'hoanggiangagri@gmail.com', '0889283868', 'Số 04 Lê Lai, Lô 90 TT Liên Nghĩa, Đức Trọng, Lâm Đồng', 'hoanganh.jpg'),
(2, 'Trang trại rau sạch Vân Nội', 'Rau sạch Vân Nội nằm trong top trang trại rau sạch lớn nhất Việt Nam. Vân Nội tập trung cung cấp những loại sản phẩm rau chất lượng trên địa bàn thành phố Hà Nội. Trang trại này áp dụng các thành tựu khoa học và ứng dụng công nghệ hiện đại vào trồng trọt và sản xuất. Tất cả các sản phẩm của Vân Nội đều đảm bảo an toàn vệ sinh thực phẩm và được kiểm duyệt trước khi đưa đến tay người tiêu dùng.', 'vannoi@gmail.com', '0438834806', 'Thôn Đầm, Vân Nội, Đông Anh, Hà Nội', 'vannoi.png'),
(3, 'Trang trại Đà Lạt GAP', 'Trang trại Đà Lạt GAP được thành lập vào năm 1997, trải qua hơn 20 năm hình thành và phát triển công ty vẫn luôn giữ vững mục tiêu dẫn đầu thị trường thực phẩm Việt Nam. Năm 2009, đơn vị đã nhận được chứng chỉ Global GAP đầu tiên ở Việt Nam, đây là một chứng nhận về tiêu chuẩn thế giới và bắt đầu phát triển mạnh xuất khẩu qua nước Châu Âu, Nga, Nhật Bản, …', 'dalatgap@gmail.com', '0432000100', 'Số 94 Láng Hạ, Đống Đa, Hà Nội', 'dalatgap.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `ID_QuanLy` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SoDienThoai` varchar(12) NOT NULL,
  `NgayDiLam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quanly`
--

INSERT INTO `quanly` (`ID_QuanLy`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDiLam`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'vuduyquang362003@gmail.com', 'Vũ Duy Quang', 'Vĩnh Tường- Vĩnh Phúc', '0365535178', '2023-09-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` int(11) NOT NULL,
  `ID_DanhMuc` int(11) NOT NULL,
  `ID_NhaCungCap` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `MoTa` text NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` float NOT NULL,
  `Img` varchar(20) NOT NULL,
  `GiamGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NhaCungCap`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `GiamGia`) VALUES
(1001, 1, 1, 'Bắp cải', '- Thực phẩm tốt cho sức khỏe, có thể chế biến thành nhiều món ăn, hương vị thơm ngon, kích thích vị giác', 50000, 99, 'caitim.jpg', 5),
(1002, 1, 1, 'Đậu leo', '- Dùng chế biến món ăn, chứa nhiều chất dinh dưỡng cần thiết, an toàn chất lượng', 35000, 100, 'dauleo.png', 5),
(1003, 1, 2, 'Cải bẹ', '- Được trồng trong môi trường sạch an toàn với người tiêu dùng, dùng để nấu canh, xào hoặc có thể dùng ăn với lẩu...', 36000, 100, 'caibe.png', 10),
(2001, 1, 1, 'Mướp đắng', '- Thực phẩm tốt cho sức khỏe, có thể chế biến được thành nhiều món ăn...', 18000, 99, 'muopdang.png', 10),
(2002, 2, 2, 'Cà chua', '- Cung cấp đầy đủ vitamin và dưỡng chất cho cơ thể\r\n- Đạt tiêu chuẩn Vietgap\r\n- Liên hệ trực tiếp để được giá sỉ tốt nhất', 18000, 100, 'cachua.png', 10),
(2003, 2, 1, 'Đu đủ', '-Món ăn lý tưởng dành cho người muốn giảm cân, sản phẩm không sử dụng thuốc trừ sâu, an toàn cho sức khỏe', 20000, 100, 'dudu.png', 10),
(2004, 2, 1, 'Bầu', '- Món ăn lý tưởng dành cho người muốn giảm cân, sản phẩm không sử dụng thuốc trừ sâu, an toàn cho sức khỏe', 20000, 100, 'bau.png', 12),
(2005, 2, 3, 'Cà rốt', '- Thực phẩm tốt cho sức khỏe, có thể chế biến thành nhiều món ăn, hương vị thơm ngon, kích thích vị giác', 20000, 100, 'carrot.jpg', 10),
(3001, 3, 1, 'Thịt lợn', '- Nguyên liệu tươi ngon, hợp vệ sinh, cung cấp nhiều dinh dưỡng cho cơ thể, chế biến được nhiều món ăn ngon', 180000, 99, 'Thitlon.png', 5),
(3002, 3, 1, 'Thịt h  eo xay', '-Nguyên liệu tươi ngon, hợp vệ sinh, cung cấp nhiều dinh dưỡng cho cơ thể, chế biến được nhiều món ăn ngon', 150000, 100, 'thitheoxay.png', 5),
(3003, 3, 1, 'Thịt bò', 'thơm, ngon, tròn vị', 400000, 96, 'thitbo.jpg', 5),
(3004, 3, 1, 'Thịt gà', 'thơm, ngon, tròn vị', 120000, 100, 'thitga.jpg', 10),
(3005, 7, 1, 'Cá thu', 'ngon', 160000, 100, 'cathu.jpg', 5),
(3008, 7, 3, 'Tôm sú', 'Tôm sú tươi', 120000, 100, 'tomsu.jpg', 5),
(3010, 7, 3, 'Cua Cà Mau', 'ngon', 160000, 100, 'cuacamau.jpg', 5),
(3011, 2, 1, 'Bơ', 'Bơ ngon', 80000, 99, 'bo.jpg', 5),
(3015, 1, 3, 'Rau chân vịt', '-Rau chân vịt chứa nhiều dinh dưỡng xanh cùng các chất chống oxy hóa tốt cho cơ thể. Nhờ đó mà một số hội chứng như ung thư tuyến tiền liệt, ung thư phổi, ung thư gan... có thể được hạn chế tối đa.', 15000, 95, 'rauchanvit.png', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID_ThanhVien` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoVaTen` varchar(50) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SoDienThoai` varchar(12) NOT NULL,
  `NgayDangKi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID_ThanhVien`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDangKi`) VALUES
(1, 'quang@gmail.com', '202cb962ac59075b964b07152d234b70', 'vuduyquang362003@gmail.com', 'Vũ Duy Quang', 'Vĩnh Tường- Vĩnh Phúc', '0815461612', '2023-10-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `ID_VNpay` int(11) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `BankCode` varchar(50) NOT NULL,
  `BankTranNo` varchar(50) NOT NULL,
  `CardType` varchar(50) NOT NULL,
  `OrderInfo` varchar(100) NOT NULL,
  `PayDate` varchar(50) NOT NULL,
  `TmnCode` varchar(50) NOT NULL,
  `TransactionNo` varchar(50) NOT NULL,
  `CodeOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vnpay`
--

INSERT INTO `vnpay` (`ID_VNpay`, `Amount`, `BankCode`, `BankTranNo`, `CardType`, `OrderInfo`, `PayDate`, `TmnCode`, `TransactionNo`, `CodeOrder`) VALUES
(1, '20910000', 'NCB', 'VNP14100978', 'ATM', 'Thanh toan GD:5970', '20230824202533', '6448J9KM', '14100978', 5970),
(2, '4750000', 'NCB', 'VNP14102267', 'ATM', 'Thanh toan GD:4409', '20230827113508', '6448J9KM', '14102267', 4409),
(3, '1425000', 'NCB', 'VNP14104554', 'ATM', 'Thanh toan GD:2606', '20230830085601', '6448J9KM', '14104554', 2606);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID_BinhLuan`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);
--
-- Indexes for table `chitietdonhang`
--

ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID_DonHang`,`ID_SanPham`),
  ADD KEY `ID_DonHang` (`ID_DonHang`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Indexes for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`ID_GioHang`,`ID_SanPham`),
  ADD KEY `ID_GioHang` (`ID_GioHang`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);
--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ID_DonHang`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ID_GioHang`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`ID_MoMo`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID_NCC`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`ID_QuanLy`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_SanPham`),
  ADD KEY `ID_NhaCungCap` (`ID_NhaCungCap`),
  ADD KEY `ID_DanhMuc` (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`ID_VNpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID_BinhLuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID_DanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ID_DonHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ID_GioHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `ID_MoMo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ID_NCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `ID_QuanLy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_SanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3016;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID_ThanhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `ID_VNpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);
--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`ID_DonHang`) REFERENCES `donhang` (`ID_DonHang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Constraints for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`ID_GioHang`) REFERENCES `giohang` (`ID_GioHang`),
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);
--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_NhaCungCap`) REFERENCES `nhacungcap` (`ID_NCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ID_DanhMuc`) REFERENCES `danhmuc` (`ID_DanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
