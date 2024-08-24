-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2021 lúc 07:58 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `ma_kh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_bl` date NOT NULL,
  `rating` tinyint(5) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `noi_dung`, `ma_hh`, `ma_kh`, `ngay_bl`, `rating`) VALUES
(2, 'Hàng không như quảng cáo. Cho 1*', 2, 'locfuho', '2021-10-29', 1),
(45, 'áđâsdsa', 5, 'thayho', '2021-10-31', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `don_gia` int(11) NOT NULL,
  `giam_gia` int(11) DEFAULT 0,
  `hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_nhap` date DEFAULT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `dac_biet` int(1) NOT NULL DEFAULT 0,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `ma_loai`) VALUES
(2, 'Laptop Asus ZenBook UX371EA', 41490000, 490000, 'asus.jpg', '2021-10-29', 'Chiêm ngưỡng sự đẳng cấp đến từ Asus ZenBook UX371EA (HL494TS) với xu hướng thiết kế mỏng nhẹ, thời thượng cùng thông số kỹ thuật mạnh mẽ, hứa hẹn sẽ mang đến những trải nghiệm hoàn hảo nhất và không khiến người dùng phải thất vọng.\r\nKiêu sa, sắc sảo trên từng đường nét máy\r\nNgất ngưởng trước sự sang chảnh đến từ chiếc laptop Asus ZenBook với lớp vỏ kim loại nguyên khối cùng sắc đen huyền bí, đổ gục bao ánh mắt của mọi người xung quanh với những đường nét tưởng chừng đơn giản nhưng lại vô cùng tinh xảo trên máy. Tối ưu hóa độ di động của máy với trọng lượng chỉ vỏn vẹn 1.2 kg cùng độ dày 13.9 mm, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.\r\n\r\n', 1, 5, 7),
(3, 'Laptop HP Gaming VICTUS 16', 24290000, 1000000, 'hp-gaming-victus.jpg', '2021-10-29', 'Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP Gaming VICTUS 16 e0175AX R5 5600H (4R0U8PA) cùng hiệu năng vượt trội sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game.\r\nCho thao tác mượt mà ở mọi ứng dụng nhờ bộ vi xử lý tân tiến\r\nLaptop HP Gaming VICTUS cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 5 dòng 5600H có 6 nhân 12 luồng, với tốc độ cơ bản 3.30 GHz và đạt tối đa đến 4.2 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.', 1, 0, 7),
(4, 'Laptop Asus TUF Gaming FX706HE', 31490000, 1500000, 'asus-tuf-gaming-fx706he-i7-hx011t-4-org.jpg', '2021-10-29', 'Sự đẳng cấp của mẫu laptop Asus TUF Gaming FX706HE i7 11800H (HX011T) không chỉ thể hiện qua cấu hình mạnh mẽ từ CPU Intel Core i7 thế hệ 11 mà còn từ ngoại hình ấn tượng mà nó mang lại, bạn có thể thỏa sức sáng tạo đồ họa, chiến game cực đỉnh.\r\nNgoại hình cực ngầu, phong cách riêng, đậm chất gaming\r\nCá tính mạnh mẽ, chuyên nghiệp của các game thủ được Asus TUF thể hiện thông qua thiết kế với sự kết hợp lớp vỏ bằng nhựa và nắp lưng bằng kim loại được bao bọc bởi màu xám cực chất Eclipse Gray.', 0, 2, 7),
(5, 'Laptop HP Envy 13 ba1030TU', 30490000, 500000, 'hp-envy.jpg', '2021-10-29', 'Laptop HP Envy 13 ba1030TU i7 (2K0B6PA) sở hữu thiết kế mỏng nhẹ cùng cấu hình cực mạnh mẽ đáp ứng đa dạng nhu cầu làm việc, giúp bạn đạt được hiệu suất làm việc tốt nhất.\r\nHiệu năng mạnh mẽ cho mọi công việc đạt hiệu suất tối đa\r\nLaptop HP Envy được trang bị bộ xử lý Intel Core i7. Đây là chiếc laptop sở hữu CPU thế hệ 11, lõi tứ 8 luồng cho xung nhịp trung bình 2.80 GHz ở các công việc văn phòng như Word, Excel, Powerpoint và xung nhịp tối đa lên đến 4.7 GHz với các tác vụ hạng nặng như: Photoshop, Adobe Premiere nhờ công nghệ Turbo Boost, mang đến hiệu năng mạnh mẽ đảm bảo xử lý tốt các công việc của bạn.', 1, 9, 7),
(6, 'Laptop Gaming Asus ROG Strix', 47990000, 2000000, 'laptop-asus.png', '2021-10-29', '- CPU: AMD Ryzen 9-5900HX (3.30GHz upto 4.60GHz, 16MB)\r\n\r\n- RAM: 16GB (8GB*2) DDR4 3200MHz (2 khe)\r\n\r\n- Ổ cứng: 1TB M.2 NVMe™ PCIe® 3.0 SSD\r\n\r\n- VGA: NVIDIA® GeForce RTX™ 3060 6GB GDDR6\r\n\r\n- Màn hình: 15.6 inch FHD (1920x1080) IPS, 100% sRGB, 300nits, 300Hz 3ms AdaptiveSync, Nanoedge\r\n\r\n- Pin: 4-cell, 90WHrs Li-ion\r\n\r\n- Cân nặng: 2.5KG\r\n\r\n- HĐH: Windows 10 Home', 1, 3, 7),
(7, 'Acer Nitro Gaming AN515 57', 25999000, 2999000, 'nittro.jpg', '2021-10-29', 'Acer Nitro Gaming AN515 57 51G6 đáp ứng hoàn hảo mọi yêu cầu của game thủ trong tầm giá rất tốt, từ thiết kế bền bỉ, bàn phím RGB cực chất cho đến cấu hình lý tưởng với bộ vi xử lý Intel thế hệ thứ 11 và card đồ họa RTX 30 series mới nhất.', 1, 4, 7),
(8, 'iPhone 13 Pro Max 128GB', 33990000, 2090000, 'iphone 13.jpg', '2021-10-13', 'iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.\r\nDù là giải trí khi xem phim, chơi game hay kiểm tra email, đọc tài liệu thì màn hình lớn tới 6,7 inch của iPhone 13 Pro Max cũng luôn cho trải nghiệm tuyệt vời nhất.\r\n\r\nKhông chỉ lớn, đây còn là màn hình chất lượng hàng đầu thế giới smartphone với tấm nền OLED tuyệt đẹp, công nghệ Super Retina XDR siêu nét và độ sáng tối đa đạt mức khó tin, lên tới 1200 nits cho nội dung HDR. Trước mắt bạn là một không gian giải trí mãn nhãn, một thiết bị di động lý tưởng để giải quyết nhanh công việc với màn hình thực sự xuất sắc.', 0, 13, 6),
(9, 'Samsung Galaxy Note 20 Ultra 5G', 21500000, 1600000, 'black_final_1.jpg', '2021-10-08', 'Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội\r\nBên cạnh biên bản Galaxy Note 20 thường, Samsung còn cho ra mắt Note 20 Ultra 5G cho khả năng kết nối dữ liệu cao cùng thiết kế nguyên khối sang trọng, bắt mắt. Đây sẽ là sự lựa chọn hoàn hảo dành cho bạn để sử dụng mà không bị lỗi thời sau thời gian dài ra mắt.\r\n\r\nNgoài ra, bạn có thể tham khảo Galaxy Z Fold 3 5G nếu bạn cần sự khác biệt và khẳng định đẳng cấp.', 0, 6, 6),
(10, 'Samsung Galaxy Z Flip3 5G', 26990000, 3000000, 'a.webp', '2021-10-29', 'Samsung Galaxy Z Flip 3 (5G) – Điện thoại màn hình gập độc đáo\r\nBên cạnh các siêu phẩm của dòng S hay dòng Note thì Samsung còn trình làng một dòng điện thoại siêu đặc biệt. Và cho đến 2021 hãng đã phát triển đến thế hệ thứ ba, với tên gọi Galaxy Z Flip 3. Ngoài sở hữu thiết kế gập độc đáo thì nó còn sở hữu tính năng gì mới hãy cùng chúng tôi xem qua bài viết bên dưới đây nhé.\r\n\r\nDự kiến, Z Flip 3 5G sẽ được Samsung trình làng cùng với điện thoại Galaxy Z Fold 3 5G tại sự kiện ra mắt trực tuyến Unpacked diễn ra vào ngày 11/8 tới đây.', 0, 13, 6),
(11, 'iPhone 12 128GB I Chính hãng VN/A', 25000000, 2001000, 'b.webp', '2021-10-08', 'Apple iPhone 12 128GB chính hãng (VN/A) phiên bản bộ nhớ 128GB lưu trữ thoải mái\r\niPhone 12 hiện nay là cái tên “sốt xình xịch” bởi đây là một trong 4 siêu phẩm vừa được ra mắt của Apple với những đột phá về cả thiết kế lẫn cấu hình. Phiên bản Apple iPhone 12 128GB chính là một trong những chiếc iPhone được săn đón nhất bởi dung lượng bộ nhớ khủng, cho phép bạn thoải mái với vô vàn ứng dụng.\r\n\r\nDung lượng bộ nhớ trong lên đến 128GB và chip Apple A14 độc quyền\r\niPhone 12 VN/A phiên bản bộ nhớ trong 128GB sẽ khiến bạn có thể vô tư với hàng tá ứng dụng, chứa rất nhiều ảnh, video và không cần lo lắng việc không đủ dung lượng sử dụng.', 0, 1, 6),
(12, 'Samsung Galaxy A72', 12100000, 1500000, 's.jpg', '2021-10-15', 'Điện thoại Samsung Galaxy A72 - Thiết kế ấn tượng, hiệu năng mạnh mẽ\r\nVừa mới đây Samsung vừa cho ra mắt chiếc smartphone Samsung Galaxy A72 thuộc dòng A của hãng. Có thể nói đây là con át chủ bài của thương hiệu này trong năm 2020 bởi những nâng cấp vượt trội từ thiết kế cho đến camera lẫn hiệu năng. Nếu bạn đang tìm kiếm cho mình một chiếc điện thoại Samsung mới thì có thể đây là sự lựa chọn phù hợp dành cho bạn.\r\n\r\nNgoài ra, bạn có thể tham khảo thêm điện thoại Samsung Galaxy Z Fold 3 5G sở hữu những công nghệ hiện đại và cấu hình mạnh mẽ nhất hiện nay.', 0, 0, 6),
(13, 'Samsung Galaxy A52s 5G', 11500000, 999999, 'ss.jpg', '2021-10-15', 'Đánh giá Samsung Galaxy A52s - 5G tốc độ cao, hiệu năng vượt trội\r\nSamsung A52s 5G là phiên bản nâng cấp của Galaxy A52. Máy không chỉ được thừa hưởng thiết kế tinh tế và ấn tượng của phiên bản đi trước mà chúng còn được nâng cấp khá nhiều về trang bị và tính năng. Chắc chắn đây sẽ là chiếc smartphone mang đến cho người dùng những trải nghiệm thú vị khó quên.\r\n\r\nThiết kế tinh xảo, đứng đầu xu hướng\r\nSamsung Galaxy A52s 5G được kế nhiệm thiết kế từ phiên bản đi trước với thiết kế nguyên khối. Mặt lưng của máy được phủ một lớp nhám để tạo nên một tổng thể vô cùng tinh xảo.', 0, 0, 6),
(14, 'OPPO Reno6 Z 5G', 10190000, 1200000, 's1.jpg', '2021-10-16', 'Đánh giá Oppo Reno6 Z 5G – Smartphone mạnh mẽ với thiết kế sang trọng\r\nTiếp nối sự thành công của Reno5 Series, Oppo tiếp tục mang đến cho người dùng dòng sản phẩm mới mang tên Oppo Reno6 với nhiều nâng cấp đáng giá. Trong series lần này, người dùng sẽ thấy vô cùng ngạc nhiên khi xuất hiện tới 4 phiên bản. Sự có mặt của Oppo Reno6 Z 5G trong lần ra mắt này sẽ thu hút được đông đảo người chú ý bởi hiệu năng cực đỉnh để mang đến những trải nghiệm đỉnh cao.\r\n\r\nThiết kế thời thượng, đẳng cấp vượt trội\r\nĐiện thoại Reno6 Z 5G sở hữu thiết kế vô cùng thời thượng. Các đường nét, chi tiết trên máy được trau chuốt hoàn hảo và cực kỳ hấp dẫn. Các khung viền bo cong uyển chuyển, mềm mại mang đến cho người dùng cảm giác êm tay khi cầm nắm. Ngoài ra, kích thước tổng thể của máy rất nhỏ gọn và thuận tiện để người dùng mang theo bên mình mọi nơi.', 1, 56, 6),
(19, 'Apple Watch Series 7 41mm (GPS)', 13990000, 1000000, 'a1.jpg', '2021-10-30', 'Ra mắt cùng thời diểm ra mắt iPhone 2021, đồng hồ thông minh Apple Watch Series 7 có nhiều thay đổi về thiết kế so với các dòng Apple Watch trước đó. Cụ thể so với Series 6, thế hệ Series 7 này có sự thay đổi về kích thước với phiên bản màn hình lớn nhất gọi tên Apple Series 7 41mm 4g. Bên cạnh đó, Apple Watch Seri 7 41mm là phiên bản màn hình nhỏ nhất, nhỉnh hơn một chút so với phiên bản 40mm thế hệ trước, rất thích hợp với người dùng cổ tay nhỏ.\r\n\r\nApple Watch Series 7 41mm GPS – Công nghệ cải tiến, nâng tầm trải nghiệm\r\nApple Watch Series 7 41mm GPS cuối cùng cũng được trình làng trong sự kiện ra mắt iPhone 13, hứa hẹn là một trong những sản phẩm làm hài lòng fan nhà Táo khuyết. Cùng xem những điểm đột phá của đồng hồ thông minh Apple Watch Series 7 thế hệ mới trong bài viết sau đây!\r\n\r\nDiện tích màn hình mở rộng, đem đến trải nghiệm mới lạ', 0, 109, 2),
(20, 'ASUS ROG Phone 5 chính hãng', 22990000, 4000000, 'r.jpg', '2021-10-09', 'Đánh giá Asus ROG Phone 5 (16GB/256GB) - Hiệu năng vô đối\r\nVới những game thủ chuyên nghiệp mong muốn sở hữu một chiếc smartphone gaming có hiệu năng \"siêu cấp\" cho những tựa game MOBA hoặc sinh tồn đình đám hiện nay thì ROG Phone 5 sẽ là chiếc điện thoại có thể giúp bạn thoải mái chiến game mượt mà với cấu hình cực đại.\r\n\r\nNgoài ra, bạn cũng có thể tham khảo thêm điện thoại Asus ROG Phone 5S có nhiều cải tiến về cấu hình và màn hình.\r\n\r\nThiết kế hầm hố, màn hình 6.78 inch FHD+ sắc nét\r\nĐiện thoại Asus ROG Phone 5 vẫn giữ nguyên thiết kế hầm hố nguyên bản của dòng ROG Phone trứ danh. Logo ROG cùng những đường nét được khắc họa tỉ mỉ trên lớp vỏ nhôm nguyên khối kính Gorilla Glass Victus cứng cáp, với tông màu đỏ - đen chủ đạo đặc trưng làm nên một chiếc smartphone gaming đầy cá tính & mạnh mẽ.\r\n\r\nASUS cũng tinh tế trong thiết kế phím cứng và cổng sạc bên ngoài nhằm tạo điều kiện chơi game thuận lợi nhất cho game thủ. Cách bố trí cổng USB và jack tai nghe 3.5mm giúp game thủ thuận tay hơn, không bị vướng víu khi cầm máy xoay ngang.', 0, 0, 6),
(21, 'Nubia Red Magic 6', 19490000, 2001000, 'r1.jpg', '2021-10-20', 'Điện thoại Nubia Red Magic 6 – Smartphone hiệu năng mạnh  \r\nThêm một cái tên vàng trong làng gaming đó chính là Nubia Red. Tuy điện thoại này là cái tên còn khá xa lạ nhưng những gì được trang bị cho máy từ thiết kế tới hiệu năng đều khiến cho người dùng không thể ấn tượng hơn từ lần trải nghiệm đầu tiên. Và phiên bản mới nhất của hãng được mang tên Nubia Red Magic 6. Ngoài ra, bạn cũng có thể tham khảo thêm Nubia Red Magic 6R với mức giá hấp dẫn hơn.\r\n\r\nThiết kế mạnh mẽ như một game thủ đích thực\r\nNubia Red Magic 6 được thiết kế với vẻ ngoài vô cùng mạnh mẽ và cá tính phù hợp với game thủ. Tuy khá tối giản về thiết kế nhưng lại thể hiện được sự thanh lịch và hầm hố. Mặt sau có dải đèn RGB bắt mắt cùng dòng chữ “Redmagic” và logo ở phía dưới.', 0, 0, 6),
(22, 'iPhone 12 mini 128GB I Chính hãng VN/A', 20990000, 2000000, 'i12.webp', '2021-10-14', 'iPhone 12 Mini 128GB chính hãng (VN/A) - nhỏ bé nhưng vô cùng mạnh mẽ\r\niPhone 12 Mini 128GB là một trong những thiết kế độc đáo không chỉ bởi thiết kế nhỏ gọn, đẹp mắt mà máy còn thu hút được đông đảo người quan tâm bởi màn hình sắc nét, hiệu năng cực khủng, cùng với đó là cụm camera được đánh giá vô cùng chất lượng.\r\n\r\nDung lượng bộ nhớ cực 128GB khủng\r\nĐiện thoại iPhone 12 mini chính hãng phiên bản 128GB có cấu hình cao cấp với chip A14 Bionic được sản xuất trên tiến trình 5nm giúp tiết kiệm pin một cách tối đa. Bên cạnh đó, máy sử dụng pin lớn, hỗ trợ sạc không dây 15W mang đến sự tiện ích trong quá trình sử dụng.', 1, 0, 6),
(23, 'Đồng hồ thông minh Xiaomi Mi Watch Lite', 1990000, 900000, 'd.webp', '2021-10-22', 'Đồng hồ Xiaomi Mi Watch Lite - sang trọng, độc đáo, tính năng vượt trội\r\nKhông chỉ nổi tiếng với những mẫu smartphone cao cấp mà Xiaomi còn khẳng định được tên tuổi cũng như vị thế của mình bởi những mẫu đồng hồ thông minh, hiện đại. Xiaomi Mi Watch Lite là mẫu đồng hồ mới nhất của hãng thu hút được đông đảo người quan tâm bởi thiết kế ấn tượng, tính năng độc đáo đặc biệt là giá thành cực hấp dẫn.\r\n\r\nThiết kế sang trọng, dây đeo silicon độc đáo\r\nĐồng hồ thông minh Xiaomi Mi Watch Lite gây ấn tượng với người dùng bởi thiết kế độc đáo. Thay vì màn hình tròn như thế hệ trước thì Mi Watch Lite được trang bị mặt vuông với 4 góc bo tròn mềm mại. Bên cạnh đó, khung viền của đồng hồ được làm bằng nhôm chắc chắn mang đến sự sang trọng và bền bỉ vượt trội.', 1, 3, 2),
(34, 'Đồng hồ thông minh Samsung Galaxy Watch 3', 9490000, 5000000, 'a4.jpg', '2021-10-31', 'Đồng hồ Samsung Galaxy Watch 3 41mm - Sang trọng và tinh tế\r\nMột trong những món phụ kiện được phái nữ ưa chuộng chính là đồng hồ Samsung Galaxy Watch 3 41mm - sản phẩm smartwatch sở hữu ngoại hình sang trọng lẫn trang bị đầy đủ tính năng theo dõi sức khỏe nhằm mang đến cuộc sống năng động cho các chị em.\r\n\r\nMàn hình 41mm, mặt kính Gorilla Glass Dx+ cao cấp\r\nSamsung Galaxy Watch 3 41mm được thiết kế theo phong cách thanh lịch và sang trọng, với màn hình phủ kính Gorilla Glass Dx+ cường lực cao cấp giúp gia tăng độ bền. Đặc biệt, với phiên bản màu Hồng quyến rũ, Galaxy Watch 3 41mm sẽ là chiếc đồng hồ thông minh hoàn hảo cho phái nữ.', 0, 0, 2),
(35, 'Samsung Galaxy Watch 4 40mm', 7090000, 1000000, 'a5.jpg', '2021-10-31', 'Samsung Galaxy Watch 4 40mm – Tinh tế trong từng chi tiết\r\nNối tiếp sự thành công của thế hệ tiền nhiệm, đồng hồ thông minh tiếp theo của nhà Samsung được mong chờ hơn bao giờ hết. Vậy chiếc đồng hồ thông minh Samsung Galaxy Watch 4 40mm đến từ ông lớn công nghệ này có cải tiến gì vượt bậc, thông số kỹ thuật như thế nào?\r\n\r\nThiết kế sang trọng, tinh tế cùng dây đeo bền bỉ', 0, 0, 2),
(36, 'Samsung Galaxy Watch Active 2 40mm', 9490000, 5000000, 'a6.jpg', '2021-10-31', 'Samsung Galaxy Watch Active 2 40mm Vỏ Thép đang có mức giá vô cùng tốt cùng nhiều ưu đãi hấp dẫn. Galaxy Watch Active 2 40mm vỏ thép thích hợp với người dùng tay nhỏ với thiết kế chắc chắn tạo cảm giác bám tay tốt. Bên cạnh đó, bạn có thể tham khảo thêm: Samsung Watch Active 2 vỏ nhôm.', 0, 0, 2),
(37, 'Samsung Galaxy Watch 4 50mm', 8090000, 2000000, 'a7.jpg', '2021-10-31', 'Samsung Galaxy Watch 4 40mm – Tinh tế trong từng chi tiết\r\nNối tiếp sự thành công của thế hệ tiền nhiệm, đồng hồ thông minh tiếp theo của nhà Samsung được mong chờ hơn bao giờ hết. Vậy chiếc đồng hồ thông minh Samsung Galaxy Watch 4 40mm đến từ ông lớn công nghệ này có cải tiến gì vượt bậc, thông số kỹ thuật như thế nào?\r\n\r\nThiết kế sang trọng, tinh tế cùng dây đeo bền bỉ', 0, 0, 2),
(38, 'Samsung Galaxy Watch 3', 9990000, 3000000, 'a8.jpg', '2021-10-31', 'Samsung Galaxy Watch 3 - Đồng hồ thông minh chống nước tiện lợi\r\nBạn có bao giờ nghĩ rằng, trong cuộc sống bạn sẽ phải trải qua các quá trình lớn lên và già đi nhưng không bao giờ được ghi lại các số liệu tổng thể về thể chất của bạn hay không? Với Galaxy Watch 3 bạn sẽ có được một số liệu cụ thể quãng đường bạn đã đi, hay thậm chí là nhịp tim và số điện tâm đồ của bạn hiện hữu là bao nhiêu.\r\n\r\nThiết kế kim loại sang trọng, tinh tế cùng khả năng chống nước 5ATM/ IPX68 cực tốt\r\nMang trong mình một thiết kế sang trọng với một viền bezel được làm mờ cho khả năng chống trầy xước cao. Cùng với đó là phần viền số được làm ẩn vào bên phía góc trong của bạn màn hình, giúp tăng lên về ngoài hào nhoáng nhưng tiềm ẩn. Với một thiết kế bằng kim loại sang trọng, chúng giúp cho bạn có được ánh nhìn tốt hơn từ mọi người.', 0, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mã đăng nhập',
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `ho_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'họ tên',
  `kich_hoat` bit(1) NOT NULL DEFAULT b'0' COMMENT 'trạng thái kích hoạt',
  `hinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vai_tro` bit(1) NOT NULL DEFAULT b'0' COMMENT 'vai trò true là nv'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `mat_khau`, `ho_ten`, `kich_hoat`, `hinh`, `email`, `vai_tro`) VALUES
('admin', '123456', 'Hiếu Minh', b'1', 'HIEU.jpg', 'hieuminh@gmail.com', b'1'),
('chipheo', '123456', 'Chí Phèo', b'1', 'chipheo.png', 'pheochi@gmail.com', b'0'),
('hieuminh2', '123456', 'Nguyễn Minh Hiếu', b'1', '', 'hieu2@gmail.com', b'0'),
('huanhoanhai', '123456', 'Thầy Huấn Hoa Nhài', b'1', 'huan-hoa-hong-xanh-le-noi-oi-doi-oi.jpeg', 'huanhoanhai@gmail.com', b'0'),
('khanhsky', '123456', 'Khánh Sky', b'1', 'khanhsky.jpg', 'khanhsky@gmail.com', b'0'),
('locfuho', '123456', 'Thầy Lộc FUHO', b'1', 'Loc-Fuho-la-ai.jpg', 'locfuho@gmail.com', b'0'),
('thayho', '123456', 'Trần Bá Hộ', b'1', 'thayho.jpg', 'hotb@gmail.com', b'1'),
('thino', '123456', 'Thị Nở', b'1', 'tn.jpg', 'thino@gmail.com', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int(11) NOT NULL COMMENT 'mã loại hàng',
  `ten_loai` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(1, 'Chưa có tên'),
(2, 'Đồng hồ thông minh'),
(5, 'Đồ gia dụng'),
(6, 'Điện thoại'),
(7, 'Laptop'),
(8, 'Thời trang'),
(14, 'Dép'),
(16, 'Giày');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `binh_luan_ibfk_1` (`ma_hh`),
  ADD KEY `binh_luan_ibfk_2` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã loại hàng', AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
