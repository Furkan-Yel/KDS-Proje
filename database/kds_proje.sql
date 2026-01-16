-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 16 Oca 2026, 11:09:19
-- Sunucu sürümü: 9.1.0
-- PHP Sürümü: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kds_proje`
--
CREATE DATABASE IF NOT EXISTS `kds_proje` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci;
USE `kds_proje`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aylik_giderler`
--

DROP TABLE IF EXISTS `aylik_giderler`;
CREATE TABLE IF NOT EXISTS `aylik_giderler` (
  `COL 1` varchar(15) DEFAULT NULL,
  `COL 2` decimal(6,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `aylik_giderler`
--

INSERT INTO `aylik_giderler` (`COL 1`, `COL 2`) VALUES
('maaşlar', 800.000),
('faturalar', 45.000),
('yemekhane', 80.000),
('kira', 80.000),
('servis', 30.000),
('malzeme&bakım', 22.000),
('muhasebe&stopaj', 17.000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dikim`
--

DROP TABLE IF EXISTS `dikim`;
CREATE TABLE IF NOT EXISTS `dikim` (
  `Ad` varchar(8) CHARACTER SET utf8mb3 DEFAULT NULL,
  `1. Dönem` int DEFAULT NULL,
  `2. Dönem` int DEFAULT NULL,
  `3. Dönem` int DEFAULT NULL,
  `4. Dönem` int DEFAULT NULL,
  `5. Dönem` int DEFAULT NULL,
  `6. Dönem` int DEFAULT NULL,
  `7. Dönem` int DEFAULT NULL,
  `8. Dönem` int DEFAULT NULL,
  `9. Dönem` int DEFAULT NULL,
  `10. Dönem` int DEFAULT NULL,
  `11. Dönem` int DEFAULT NULL,
  `12. Dönem` int DEFAULT NULL,
  `13. Dönem` int DEFAULT NULL,
  `14. Dönem` int DEFAULT NULL,
  `15. Dönem` int DEFAULT NULL,
  `16. Dönem` int DEFAULT NULL,
  `17. Dönem` int DEFAULT NULL,
  `18. Dönem` int DEFAULT NULL,
  `19. Dönem` int DEFAULT NULL,
  `20. Dönem` int DEFAULT NULL,
  KEY `Ad` (`Ad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `dikim`
--

INSERT INTO `dikim` (`Ad`, `1. Dönem`, `2. Dönem`, `3. Dönem`, `4. Dönem`, `5. Dönem`, `6. Dönem`, `7. Dönem`, `8. Dönem`, `9. Dönem`, `10. Dönem`, `11. Dönem`, `12. Dönem`, `13. Dönem`, `14. Dönem`, `15. Dönem`, `16. Dönem`, `17. Dönem`, `18. Dönem`, `19. Dönem`, `20. Dönem`) VALUES
('ilknur', 94635, 93609, 93366, 93717, 93852, 94581, 93141, 94077, 93996, 93933, 94608, 93807, 94599, 94005, 93987, 94725, 94086, 94437, 93960, 94041),
('zarina', 119799, 120177, 119925, 119943, 119727, 119880, 119529, 120006, 119619, 120555, 119745, 120096, 119628, 119754, 119250, 119547, 119898, 120051, 119772, 120051),
('zemira', 121005, 121941, 121068, 121383, 121293, 121383, 121203, 121707, 121608, 121446, 121770, 121869, 121815, 121131, 120744, 121383, 121068, 121347, 121707, 121662),
('nazire', 207234, 207234, 207162, 207774, 207549, 207423, 207198, 207180, 207648, 207810, 207189, 208404, 207351, 207234, 207774, 207324, 206991, 206874, 207468, 206982),
('aygün', 150975, 150219, 150507, 150471, 150039, 151317, 150363, 150624, 150696, 151119, 150534, 150867, 150390, 150750, 150426, 151047, 150534, 150516, 150516, 150633),
('sona', 145944, 146133, 145305, 145998, 145899, 145413, 145197, 146412, 145557, 145620, 145773, 145908, 145746, 145746, 145548, 146259, 145872, 145818, 145746, 146160),
('sevinç', 215856, 215253, 215307, 215145, 215253, 215739, 215145, 216063, 215919, 215694, 215613, 215442, 215568, 215271, 215298, 215586, 215307, 215496, 215487, 215154),
('halide', 157320, 156726, 157257, 157113, 157221, 157491, 157356, 157419, 156618, 157302, 156969, 156825, 156888, 156843, 158220, 157014, 157293, 156771, 156681, 157302),
('neziha', 184941, 183987, 184707, 184932, 184644, 185184, 184356, 184014, 185103, 184545, 184788, 184293, 185472, 184491, 185517, 184302, 184257, 184653, 184581, 184662),
('elmira', 196515, 195822, 196515, 196020, 195696, 196137, 195327, 195597, 196119, 196074, 196272, 195777, 196191, 196731, 195876, 195939, 195750, 195804, 195480, 195876),
('semra', 129627, 129699, 129438, 129951, 129843, 130320, 130014, 128907, 129645, 129213, 130095, 130167, 129330, 129411, 130149, 129798, 129348, 129528, 129222, 129879),
('hatice', 77256, 77832, 78282, 77616, 77751, 77247, 77814, 77670, 77544, 77688, 78525, 77598, 77562, 77643, 78156, 77976, 77481, 77688, 77562, 77553),
('gülyeter', 182124, 182511, 182808, 182619, 183321, 182988, 183132, 183141, 183105, 183060, 182736, 183195, 182880, 183429, 183429, 182835, 183123, 183114, 182736, 182826),
('naile', 113193, 113202, 113985, 114084, 113850, 113121, 112977, 113310, 113454, 113031, 113103, 114057, 113265, 113238, 113490, 112824, 112212, 114147, 113472, 113247),
('esmira', 137790, 137439, 137565, 137412, 137763, 138231, 138015, 137043, 137295, 137241, 138150, 138114, 138231, 137961, 137277, 138168, 137664, 137673, 138114, 137907);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fason_1`
--

DROP TABLE IF EXISTS `fason_1`;
CREATE TABLE IF NOT EXISTS `fason_1` (
  `Birim Başına Ücret (TL)` int DEFAULT NULL,
  `Dikim Adetleri` varchar(17) DEFAULT NULL,
  `Tahmini Teslimat Tarihi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `fason_1`
--

INSERT INTO `fason_1` (`Birim Başına Ücret (TL)`, `Dikim Adetleri`, `Tahmini Teslimat Tarihi`) VALUES
(27, '20.000 ve aşağısı', '20.06.2026'),
(26, '40.000 ve aşağısı', '5.07.2026'),
(25, '60.000 ve aşağısı', '20.07.2026');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fason_2`
--

DROP TABLE IF EXISTS `fason_2`;
CREATE TABLE IF NOT EXISTS `fason_2` (
  `Birim Başına Ücret (TL)` int DEFAULT NULL,
  `Dikim Adetleri` varchar(17) DEFAULT NULL,
  `Tahmini Teslimat Tarihi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `fason_2`
--

INSERT INTO `fason_2` (`Birim Başına Ücret (TL)`, `Dikim Adetleri`, `Tahmini Teslimat Tarihi`) VALUES
(32, '25.000 ve aşağısı', '20.06.2026'),
(31, '50.000 ve aşağısı', '5.07.2026'),
(30, '75.000 ve aşağısı', '20.07.2026');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fason_3`
--

DROP TABLE IF EXISTS `fason_3`;
CREATE TABLE IF NOT EXISTS `fason_3` (
  `Birim Başına Ücret (TL)` int DEFAULT NULL,
  `Dikim Adetleri` varchar(17) DEFAULT NULL,
  `Tahmini Teslimat Tarihi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `fason_3`
--

INSERT INTO `fason_3` (`Birim Başına Ücret (TL)`, `Dikim Adetleri`, `Tahmini Teslimat Tarihi`) VALUES
(22, '15.000 ve aşağısı', '20.06.2026'),
(21, '30.000 ve aşağısı', '5.07.2026'),
(20, '45.000 ve aşağısı', '20.07.2026');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fason_atamalar`
--

DROP TABLE IF EXISTS `fason_atamalar`;
CREATE TABLE IF NOT EXISTS `fason_atamalar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model_kodu` varchar(50) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `atanan_adet` int DEFAULT NULL,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tetikleyiciler `fason_atamalar`
--
DROP TRIGGER IF EXISTS `stoktan_dus`;
DELIMITER $$
CREATE TRIGGER `stoktan_dus` AFTER INSERT ON `fason_atamalar` FOR EACH ROW BEGIN
    UPDATE urun_stoklari
    SET stok_adedi = stok_adedi - NEW.atanan_adet
    WHERE urun_kodu = NEW.model_kodu;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma`
--

DROP TABLE IF EXISTS `firma`;
CREATE TABLE IF NOT EXISTS `firma` (
  `COL 1` varchar(15) DEFAULT NULL,
  `COL 2` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `firma`
--

INSERT INTO `firma` (`COL 1`, `COL 2`) VALUES
('Aylık Üretim', '22.500'),
('Dönemlik Üretim', '138.000'),
('Kusurlu Ürün', '3174'),
('', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gereken_kumas`
--

DROP TABLE IF EXISTS `gereken_kumas`;
CREATE TABLE IF NOT EXISTS `gereken_kumas` (
  `Firma Adı` varchar(10) DEFAULT NULL,
  `Model Kodu` varchar(10) DEFAULT NULL,
  `Gereken Kumaş Rengi` varchar(8) DEFAULT NULL,
  `Gereken Miktar (kg)` decimal(5,1) DEFAULT NULL,
  `Kabul Edilen Kumaş Kalitesi` varchar(7) DEFAULT NULL,
  KEY `Model Kodu` (`Model Kodu`),
  KEY `Kabul Edilen Kumaş Kalitesi` (`Kabul Edilen Kumaş Kalitesi`),
  KEY `Gereken Kumaş Rengi` (`Gereken Kumaş Rengi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `gereken_kumas`
--

INSERT INTO `gereken_kumas` (`Firma Adı`, `Model Kodu`, `Gereken Kumaş Rengi`, `Gereken Miktar (kg)`, `Kabul Edilen Kumaş Kalitesi`) VALUES
('Zara', 'ZA-T-S-001', 'Kırmızı', 575.0, 'A++, A+'),
('Zara', 'ZA-T-S-002', 'Lacivert', 675.0, 'A++, A+'),
('Zara', 'ZA-T-S-003', 'Siyah', 725.0, 'A++, A+'),
('Zara', 'ZA-T-S-004', 'Yeşil', 650.0, 'A++, A+'),
('Zara', 'ZA-T-S-005', 'Siyah', 575.0, 'A++, A+'),
('Zara', 'ZA-GÖM-001', 'Gri', 690.0, 'A++, A+'),
('Zara', 'ZA-GÖM-002', 'Yeşil', 810.0, 'A++, A+'),
('Zara', 'ZA-GÖM-003', 'Yeşil', 660.0, 'A++, A+'),
('Zara', 'ZA-GÖM-004', 'Beyaz', 600.0, 'A++, A+'),
('Zara', 'ZA-GÖM-005', 'Beyaz', 900.0, 'A++, A+'),
('Zara', 'ZA-PAN-001', 'Beyaz', 1320.0, 'A++, A+'),
('Zara', 'ZA-PAN-002', 'Lacivert', 1200.0, 'A++, A+'),
('Zara', 'ZA-PAN-003', 'Bej', 1320.0, 'A++, A+'),
('Zara', 'ZA-PAN-004', 'Bej', 1320.0, 'A++, A+'),
('Zara', 'ZA-PAN-005', 'Krem', 1620.0, 'A++, A+'),
('Zara', 'ZA-EŞO-001', 'Kırmızı', 1155.0, 'A++, A+'),
('Zara', 'ZA-EŞO-002', 'Kırmızı', 1485.0, 'A++, A+'),
('Zara', 'ZA-EŞO-003', 'Lacivert', 1375.0, 'A++, A+'),
('Zara', 'ZA-EŞO-004', 'Lacivert', 1210.0, 'A++, A+'),
('Zara', 'ZA-EŞO-005', 'Kırmızı', 1595.0, 'A++, A+'),
('Zara', 'ZA-ETE-001', 'Siyah', 840.0, 'A++, A+'),
('Zara', 'ZA-ETE-002', 'Lacivert', 1000.0, 'A++, A+'),
('Zara', 'ZA-ETE-003', 'Kırmızı', 840.0, 'A++, A+'),
('Zara', 'ZA-ETE-004', 'Beyaz', 1000.0, 'A++, A+'),
('Zara', 'ZA-ETE-005', 'Bej', 1080.0, 'A++, A+'),
('LC Waikiki', 'LC-T-S-001', 'Kırmızı', 750.0, 'A+, A'),
('LC Waikiki', 'LC-T-S-002', 'Krem', 900.0, 'A+, A'),
('LC Waikiki', 'LC-T-S-003', 'Lacivert', 850.0, 'A+, A'),
('LC Waikiki', 'LC-T-S-004', 'Bej', 825.0, 'A+, A'),
('LC Waikiki', 'LC-T-S-005', 'Bej', 1075.0, 'A+, A'),
('LC Waikiki', 'LC-GÖM-001', 'Beyaz', 1050.0, 'A+, A'),
('LC Waikiki', 'LC-GÖM-002', 'Siyah', 1170.0, 'A+, A'),
('LC Waikiki', 'LC-GÖM-003', 'Bej', 900.0, 'A+, A'),
('LC Waikiki', 'LC-GÖM-004', 'Bej', 1200.0, 'A+, A'),
('LC Waikiki', 'LC-GÖM-005', 'Lacivert', 1230.0, 'A+, A'),
('LC Waikiki', 'LC-PAN-001', 'Gri', 2700.0, 'A+, A'),
('LC Waikiki', 'LC-PAN-002', 'Siyah', 2280.0, 'A+, A'),
('LC Waikiki', 'LC-PAN-003', 'Kırmızı', 1980.0, 'A+, A'),
('LC Waikiki', 'LC-PAN-004', 'Beyaz', 2640.0, 'A+, A'),
('LC Waikiki', 'LC-PAN-005', 'Beyaz', 2520.0, 'A+, A'),
('LC Waikiki', 'LC-EŞO-001', 'Gri', 2750.0, 'A+, A'),
('LC Waikiki', 'LC-EŞO-002', 'Bej', 1705.0, 'A+, A'),
('LC Waikiki', 'LC-EŞO-003', 'Lacivert', 1980.0, 'A+, A'),
('LC Waikiki', 'LC-EŞO-004', 'Kırmızı', 2200.0, 'A+, A'),
('LC Waikiki', 'LC-EŞO-005', 'Gri', 1925.0, 'A+, A'),
('LC Waikiki', 'LC-ETE-001', 'Krem', 1960.0, 'A+, A'),
('LC Waikiki', 'LC-ETE-002', 'Lacivert', 1880.0, 'A+, A'),
('LC Waikiki', 'LC-ETE-003', 'Gri', 1560.0, 'A+, A'),
('LC Waikiki', 'LC-ETE-004', 'Kırmızı', 1440.0, 'A+, A'),
('LC Waikiki', 'LC-ETE-005', 'Krem', 1400.0, 'A+, A'),
('DeFacto', 'DE-T-S-001', 'Yeşil', 925.0, 'A+, A'),
('DeFacto', 'DE-T-S-002', 'Lacivert', 875.0, 'A+, A'),
('DeFacto', 'DE-T-S-003', 'Yeşil', 775.0, 'A+, A'),
('DeFacto', 'DE-T-S-004', 'Yeşil', 1200.0, 'A+, A'),
('DeFacto', 'DE-T-S-005', 'Lacivert', 1025.0, 'A+, A'),
('DeFacto', 'DE-GÖM-001', 'Krem', 1350.0, 'A+, A'),
('DeFacto', 'DE-GÖM-002', 'Siyah', 990.0, 'A+, A'),
('DeFacto', 'DE-GÖM-003', 'Yeşil', 1110.0, 'A+, A'),
('DeFacto', 'DE-GÖM-004', 'Beyaz', 1200.0, 'A+, A'),
('DeFacto', 'DE-GÖM-005', 'Krem', 1110.0, 'A+, A'),
('DeFacto', 'DE-PAN-001', 'Beyaz', 2340.0, 'A+, A'),
('DeFacto', 'DE-PAN-002', 'Yeşil', 2280.0, 'A+, A'),
('DeFacto', 'DE-PAN-003', 'Beyaz', 1920.0, 'A+, A'),
('DeFacto', 'DE-PAN-004', 'Beyaz', 2220.0, 'A+, A'),
('DeFacto', 'DE-PAN-005', 'Yeşil', 2460.0, 'A+, A'),
('DeFacto', 'DE-EŞO-001', 'Gri', 1980.0, 'A+, A'),
('DeFacto', 'DE-EŞO-002', 'Kırmızı', 2750.0, 'A+, A'),
('DeFacto', 'DE-EŞO-003', 'Siyah', 1925.0, 'A+, A'),
('DeFacto', 'DE-EŞO-004', 'Beyaz', 1650.0, 'A+, A'),
('DeFacto', 'DE-EŞO-005', 'Lacivert', 1870.0, 'A+, A'),
('DeFacto', 'DE-ETE-001', 'Yeşil', 1440.0, 'A+, A'),
('DeFacto', 'DE-ETE-002', 'Beyaz', 1360.0, 'A+, A'),
('DeFacto', 'DE-ETE-003', 'Siyah', 1880.0, 'A+, A'),
('DeFacto', 'DE-ETE-004', 'Kırmızı', 1240.0, 'A+, A'),
('DeFacto', 'DE-ETE-005', 'Gri', 1800.0, 'A+, A');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kesim`
--

DROP TABLE IF EXISTS `kesim`;
CREATE TABLE IF NOT EXISTS `kesim` (
  `Firma Adı` varchar(10) DEFAULT NULL,
  `Model Kodu` varchar(10) DEFAULT NULL,
  `Kesilecek Kumaş Miktarı (kg)` decimal(5,1) DEFAULT NULL,
  `Kesim Birim Fiyatı (TL/kg)` int DEFAULT NULL,
  `Ödenmesi Gereken Tutar (TL)` int DEFAULT NULL,
  `Tahmini Teslimat Tarihi` varchar(10) DEFAULT NULL,
  KEY `Model Kodu` (`Model Kodu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kesim`
--

INSERT INTO `kesim` (`Firma Adı`, `Model Kodu`, `Kesilecek Kumaş Miktarı (kg)`, `Kesim Birim Fiyatı (TL/kg)`, `Ödenmesi Gereken Tutar (TL)`, `Tahmini Teslimat Tarihi`) VALUES
('Zara', 'ZA-T-S-001', 550.0, 25, 14000, '15.05.2026'),
('Zara', 'ZA-T-S-002', 675.0, 25, 17000, '28.05.2026'),
('Zara', 'ZA-T-S-003', 575.0, 25, 14000, '11.05.2026'),
('Zara', 'ZA-T-S-004', 650.0, 25, 16000, '15.05.2026'),
('Zara', 'ZA-T-S-005', 550.0, 25, 14000, '22.05.2026'),
('Zara', 'ZA-GÖM-001', 870.0, 22, 19000, '22.05.2026'),
('Zara', 'ZA-GÖM-002', 810.0, 22, 18000, '27.05.2026'),
('Zara', 'ZA-GÖM-003', 810.0, 22, 18000, '14.05.2026'),
('Zara', 'ZA-GÖM-004', 690.0, 25, 17000, '11.05.2026'),
('Zara', 'ZA-GÖM-005', 720.0, 25, 18000, '5.05.2026'),
('Zara', 'ZA-PAN-001', 1740.0, 20, 35000, '22.05.2026'),
('Zara', 'ZA-PAN-002', 1680.0, 20, 34000, '26.05.2026'),
('Zara', 'ZA-PAN-003', 1200.0, 20, 24000, '1.06.2026'),
('Zara', 'ZA-PAN-004', 1680.0, 20, 34000, '19.05.2026'),
('Zara', 'ZA-PAN-005', 1620.0, 20, 32000, '27.05.2026'),
('Zara', 'ZA-EŞO-001', 1155.0, 20, 23000, '3.06.2026'),
('Zara', 'ZA-EŞO-002', 1210.0, 20, 24000, '18.05.2026'),
('Zara', 'ZA-EŞO-003', 1595.0, 20, 32000, '4.06.2026'),
('Zara', 'ZA-EŞO-004', 1650.0, 20, 33000, '27.05.2026'),
('Zara', 'ZA-EŞO-005', 1650.0, 20, 33000, '5.05.2026'),
('Zara', 'ZA-ETE-001', 1120.0, 20, 22000, '5.06.2026'),
('Zara', 'ZA-ETE-002', 1000.0, 22, 22000, '26.05.2026'),
('Zara', 'ZA-ETE-003', 800.0, 22, 18000, '22.05.2026'),
('Zara', 'ZA-ETE-004', 920.0, 22, 20000, '5.05.2026'),
('Zara', 'ZA-ETE-005', 1000.0, 22, 22000, '5.05.2026'),
('LC Waikiki', 'LC-T-S-001', 1025.0, 20, 20000, '12.05.2026'),
('LC Waikiki', 'LC-T-S-002', 1075.0, 20, 22000, '27.05.2026'),
('LC Waikiki', 'LC-T-S-003', 1100.0, 20, 22000, '18.05.2026'),
('LC Waikiki', 'LC-T-S-004', 975.0, 22, 21000, '27.05.2026'),
('LC Waikiki', 'LC-T-S-005', 1050.0, 20, 21000, '15.05.2026'),
('LC Waikiki', 'LC-GÖM-001', 1260.0, 20, 25000, '15.05.2026'),
('LC Waikiki', 'LC-GÖM-002', 1500.0, 20, 30000, '2.06.2026'),
('LC Waikiki', 'LC-GÖM-003', 1020.0, 20, 20000, '1.06.2026'),
('LC Waikiki', 'LC-GÖM-004', 1320.0, 20, 26000, '5.06.2026'),
('LC Waikiki', 'LC-GÖM-005', 1080.0, 20, 22000, '4.06.2026'),
('LC Waikiki', 'LC-PAN-001', 2100.0, 20, 42000, '26.05.2026'),
('LC Waikiki', 'LC-PAN-002', 1980.0, 20, 40000, '29.05.2026'),
('LC Waikiki', 'LC-PAN-003', 2520.0, 20, 50000, '1.06.2026'),
('LC Waikiki', 'LC-PAN-004', 3000.0, 20, 60000, '25.05.2026'),
('LC Waikiki', 'LC-PAN-005', 2520.0, 20, 50000, '5.06.2026'),
('LC Waikiki', 'LC-EŞO-001', 2365.0, 20, 47000, '1.06.2026'),
('LC Waikiki', 'LC-EŞO-002', 2695.0, 20, 54000, '21.05.2026'),
('LC Waikiki', 'LC-EŞO-003', 1980.0, 20, 40000, '14.05.2026'),
('LC Waikiki', 'LC-EŞO-004', 1980.0, 20, 40000, '19.05.2026'),
('LC Waikiki', 'LC-EŞO-005', 2585.0, 20, 52000, '20.05.2026'),
('LC Waikiki', 'LC-ETE-001', 1640.0, 20, 33000, '7.05.2026'),
('LC Waikiki', 'LC-ETE-002', 1480.0, 20, 30000, '5.06.2026'),
('LC Waikiki', 'LC-ETE-003', 1240.0, 20, 25000, '27.05.2026'),
('LC Waikiki', 'LC-ETE-004', 1840.0, 20, 37000, '28.05.2026'),
('LC Waikiki', 'LC-ETE-005', 1840.0, 20, 37000, '11.05.2026'),
('DeFacto', 'DE-T-S-001', 900.0, 22, 20000, '25.05.2026'),
('DeFacto', 'DE-T-S-002', 1250.0, 20, 25000, '3.06.2026'),
('DeFacto', 'DE-T-S-003', 1050.0, 20, 21000, '18.05.2026'),
('DeFacto', 'DE-T-S-004', 1025.0, 20, 20000, '11.05.2026'),
('DeFacto', 'DE-T-S-005', 825.0, 22, 18000, '18.05.2026'),
('DeFacto', 'DE-GÖM-001', 1140.0, 20, 23000, '8.05.2026'),
('DeFacto', 'DE-GÖM-002', 960.0, 22, 21000, '28.05.2026'),
('DeFacto', 'DE-GÖM-003', 1470.0, 20, 29000, '26.05.2026'),
('DeFacto', 'DE-GÖM-004', 1380.0, 20, 28000, '7.05.2026'),
('DeFacto', 'DE-GÖM-005', 990.0, 22, 22000, '8.05.2026'),
('DeFacto', 'DE-PAN-001', 2160.0, 20, 43000, '5.05.2026'),
('DeFacto', 'DE-PAN-002', 2700.0, 20, 54000, '25.05.2026'),
('DeFacto', 'DE-PAN-003', 2040.0, 20, 41000, '5.06.2026'),
('DeFacto', 'DE-PAN-004', 2160.0, 20, 43000, '20.05.2026'),
('DeFacto', 'DE-PAN-005', 2280.0, 20, 46000, '27.05.2026'),
('DeFacto', 'DE-EŞO-001', 2420.0, 20, 48000, '7.05.2026'),
('DeFacto', 'DE-EŞO-002', 2365.0, 20, 47000, '12.05.2026'),
('DeFacto', 'DE-EŞO-003', 2475.0, 20, 50000, '3.06.2026'),
('DeFacto', 'DE-EŞO-004', 2255.0, 20, 45000, '28.05.2026'),
('DeFacto', 'DE-EŞO-005', 2200.0, 20, 44000, '4.06.2026'),
('DeFacto', 'DE-ETE-001', 1240.0, 20, 25000, '29.05.2026'),
('DeFacto', 'DE-ETE-002', 1200.0, 20, 24000, '13.05.2026'),
('DeFacto', 'DE-ETE-003', 1200.0, 20, 24000, '27.05.2026'),
('DeFacto', 'DE-ETE-004', 1840.0, 20, 37000, '8.05.2026'),
('DeFacto', 'DE-ETE-005', 1200.0, 20, 24000, '19.05.2026');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kumas_1`
--

DROP TABLE IF EXISTS `kumas_1`;
CREATE TABLE IF NOT EXISTS `kumas_1` (
  `Kumaş Rengi` varchar(8) NOT NULL,
  `Birim Fiyat (TL/kg)` int DEFAULT NULL,
  `Tahmini Teslim Süresi` varchar(10) DEFAULT NULL,
  `Kalite` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Kumaş Rengi`),
  KEY `Kalite` (`Kalite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kumas_1`
--

INSERT INTO `kumas_1` (`Kumaş Rengi`, `Birim Fiyat (TL/kg)`, `Tahmini Teslim Süresi`, `Kalite`) VALUES
('Bej', 30, '23.04.2026', 'a+'),
('Beyaz', 30, '28.04.2026', 'a+'),
('Gri', 30, '2.04.2026', 'a+'),
('Kırmızı', 30, '24.04.2026', 'a+'),
('Krem', 27, '1.05.2026', 'a+'),
('Lacivert', 28, '1.05.2026', 'a+'),
('Siyah', 30, '28.04.2026', 'a+'),
('Yeşil', 30, '29.04.2026', 'a+');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kumas_2`
--

DROP TABLE IF EXISTS `kumas_2`;
CREATE TABLE IF NOT EXISTS `kumas_2` (
  `Kumaş Rengi` varchar(8) NOT NULL,
  `Birim Fiyat (TL/kg)` int DEFAULT NULL,
  `Tahmini Teslim Süresi` varchar(10) DEFAULT NULL,
  `Kalite` varchar(3) DEFAULT NULL,
  UNIQUE KEY `Kumaş Rengi` (`Kumaş Rengi`),
  KEY `Kalite` (`Kalite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kumas_2`
--

INSERT INTO `kumas_2` (`Kumaş Rengi`, `Birim Fiyat (TL/kg)`, `Tahmini Teslim Süresi`, `Kalite`) VALUES
('Bej', 33, '27.04.2026', 'a++'),
('Beyaz', 31, '3.04.2026', 'a++'),
('Gri', 33, '23.04.2026', 'a++'),
('Kırmızı', 30, '21.04.2026', 'a++'),
('Krem', 31, '25.04.2026', 'a++'),
('Lacivert', 33, '16.04.2026', 'a++'),
('Siyah', 31, '18.04.2026', 'a++'),
('Yeşil', 30, '15.04.2026', 'a++');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kumas_3`
--

DROP TABLE IF EXISTS `kumas_3`;
CREATE TABLE IF NOT EXISTS `kumas_3` (
  `Kumaş Rengi` varchar(8) NOT NULL,
  `Birim Fiyat (TL/kg)` int DEFAULT NULL,
  `Tahmini Teslim Süresi` varchar(10) DEFAULT NULL,
  `Kalite` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Kumaş Rengi`),
  UNIQUE KEY `Kumaş Rengi` (`Kumaş Rengi`),
  KEY `Kalite` (`Kalite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kumas_3`
--

INSERT INTO `kumas_3` (`Kumaş Rengi`, `Birim Fiyat (TL/kg)`, `Tahmini Teslim Süresi`, `Kalite`) VALUES
('Bej', 26, '5.04.2026', 'a'),
('Beyaz', 25, '8.04.2026', 'a'),
('Gri', 23, '15.04.2026', 'a'),
('Kırmızı', 23, '27.04.2026', 'a'),
('Krem', 25, '15.04.2026', 'a'),
('Lacivert', 24, '2.04.2026', 'a'),
('Siyah', 23, '15.04.2026', 'a'),
('Yeşil', 24, '23.04.2026', 'a');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makine`
--

DROP TABLE IF EXISTS `makine`;
CREATE TABLE IF NOT EXISTS `makine` (
  `Makine ID` varchar(7) CHARACTER SET utf8mb3 NOT NULL,
  `Makine Tipi` varchar(10) CHARACTER SET utf8mb3 DEFAULT NULL,
  `Marka / Model` varchar(14) CHARACTER SET utf8mb3 DEFAULT NULL,
  `Satın Alım Tarihi` varchar(10) CHARACTER SET utf8mb3 DEFAULT NULL,
  `En Son Bakım Tarihi` varchar(10) CHARACTER SET utf8mb3 DEFAULT NULL,
  `Güncel Durum` varchar(9) CHARACTER SET utf8mb3 DEFAULT NULL,
  PRIMARY KEY (`Makine ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `makine`
--

INSERT INTO `makine` (`Makine ID`, `Makine Tipi`, `Marka / Model`, `Satın Alım Tarihi`, `En Son Bakım Tarihi`, `Güncel Durum`) VALUES
('MAK-001', 'Overlok', 'Juki MO-6700', '19.01.2014', '10.11.2025', 'Çalışıyor'),
('MAK-002', 'Overlok', 'Siruba 747K', '19.01.2014', '23.09.2025', 'Arızalı'),
('MAK-003', 'Overlok', 'Pegasus M900', '19.01.2014', '28.10.2025', 'Arızalı'),
('MAK-004', 'Overlok', 'Brother MA4', '19.01.2014', '8.10.2025', 'Çalışıyor'),
('MAK-005', 'Overlok', 'Jack E4S', '2.02.2015', '24.10.2025', 'Çalışıyor'),
('MAK-006', 'Overlok', 'Juki MO-6800', '2.02.2015', '10.09.2025', 'Çalışıyor'),
('MAK-007', 'Overlok', 'Yuki YK-500', '2.02.2015', '20.10.2025', 'Çalışıyor'),
('MAK-008', 'Overlok', 'Siruba 757K', '2.02.2015', '16.09.2025', 'Çalışıyor'),
('MAK-009', 'Overlok', 'Pegasus EX5200', '11.02.2016', '5.11.2025', 'Çalışıyor'),
('MAK-010', 'Overlok', 'Brother KE-430', '11.02.2016', '29.10.2025', 'Çalışıyor'),
('MAK-011', 'Overlok', 'Jack C5', '11.02.2016', '7.11.2025', 'Çalışıyor'),
('MAK-012', 'Düz Makine', 'Juki DDL-8700', '11.02.2016', '15.10.2025', 'Arızalı'),
('MAK-013', 'Düz Makine', 'Brother S-7200', '17.02.2017', '6.11.2025', 'Çalışıyor'),
('MAK-014', 'Düz Makine', 'Jack A4', '17.02.2017', '4.11.2025', 'Çalışıyor'),
('MAK-015', 'Düz Makine', 'Juki DDL-9000', '17.02.2017', '17.09.2025', 'Çalışıyor'),
('MAK-016', 'Düz Makine', 'Pfaff 1163', '17.02.2017', '3.09.2025', 'Çalışıyor'),
('MAK-017', 'Düz Makine', 'Toyota LS2', '12.02.2018', '10.10.2025', 'Arızalı'),
('MAK-018', 'Düz Makine', 'Singer 191D', '12.02.2018', '26.09.2025', 'Çalışıyor'),
('MAK-019', 'Düz Makine', 'Brother S-1000', '12.02.2018', '29.09.2025', 'Çalışıyor'),
('MAK-020', 'Düz Makine', 'Typical GC6', '12.02.2018', '3.11.2025', 'Arızalı');

--
-- Tetikleyiciler `makine`
--
DROP TRIGGER IF EXISTS `durum_degisikligi_takip`;
DELIMITER $$
CREATE TRIGGER `durum_degisikligi_takip` AFTER UPDATE ON `makine` FOR EACH ROW BEGIN
    IF OLD.`Güncel Durum` != NEW.`Güncel Durum` THEN
        INSERT INTO makine_loglari (makine_id, model, eski_durum, yeni_durum)
        VALUES (NEW.`Makine ID`, NEW.`Marka / Model`, OLD.`Güncel Durum`, NEW.`Güncel Durum`);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makine_loglari`
--

DROP TABLE IF EXISTS `makine_loglari`;
CREATE TABLE IF NOT EXISTS `makine_loglari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `makine_id` varchar(50) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `eski_durum` varchar(50) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `yeni_durum` varchar(50) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `degisim_tarihi` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE IF NOT EXISTS `personel` (
  `ad` varchar(8) CHARACTER SET utf8mb3 NOT NULL,
  `görev` varchar(8) CHARACTER SET utf8mb3 DEFAULT NULL,
  `yetki` varchar(8) CHARACTER SET utf8mb3 DEFAULT NULL,
  PRIMARY KEY (`ad`),
  UNIQUE KEY `ad` (`ad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`ad`, `görev`, `yetki`) VALUES
('atilla', 'ustabasi', 'yonetıcı'),
('aygün', 'overlok', 'personel'),
('elmira', 'overlok', 'personel'),
('esmira', 'overlok', 'personel'),
('fatih', 'patron', 'yonetıcı'),
('Furkan', 'Karar_ve', 'yonetıcı'),
('gamze', 'muhasebe', 'yonetıcı'),
('gülyeter', 'overlok', 'personel'),
('halide', 'overlok', 'personel'),
('hatice', 'düz', 'personel'),
('ilknur', 'düz', 'personel'),
('naile', 'düz', 'personel'),
('nazire', 'overlok', 'personel'),
('neziha', 'düz', 'personel'),
('semra', 'overlok', 'personel'),
('sevinç', 'overlok', 'personel'),
('sona', 'overlok', 'personel'),
('zarina', 'düz', 'personel'),
('zemira', 'düz', 'personel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tedarik`
--

DROP TABLE IF EXISTS `tedarik`;
CREATE TABLE IF NOT EXISTS `tedarik` (
  `Firma Adı` varchar(10) NOT NULL,
  `Kategori` varchar(20) DEFAULT NULL,
  `Birim Başına Ücret (TL)` int DEFAULT NULL,
  `Maksimum Hata Payı (%)` varchar(3) DEFAULT NULL,
  `Ödeme Vadesi (Gün)` int DEFAULT NULL,
  PRIMARY KEY (`Firma Adı`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `tedarik`
--

INSERT INTO `tedarik` (`Firma Adı`, `Kategori`, `Birim Başına Ücret (TL)`, `Maksimum Hata Payı (%)`, `Ödeme Vadesi (Gün)`) VALUES
('DeFacto', 'Hazır Giyim / Genç', 61, '3.8', 45),
('LC Waikiki', 'Hazır Giyim / Aile', 70, '3.5', 30),
('Zara', 'Premium / Hızlı Moda', 90, '2.4', 60);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

DROP TABLE IF EXISTS `urun`;
CREATE TABLE IF NOT EXISTS `urun` (
  `Firma Adı` varchar(10) DEFAULT NULL,
  `Kategori` varchar(8) DEFAULT NULL,
  `Model Kodu` varchar(10) NOT NULL,
  `İstenen Adet` int DEFAULT NULL,
  `İstenilen Teslim Tarihi` varchar(10) DEFAULT NULL,
  `En Geç Teslim Tarihi` varchar(10) DEFAULT NULL,
  `Gecikme Bedeli (TL)` int DEFAULT NULL,
  `Gereken Kumaş (kg)` int DEFAULT NULL,
  PRIMARY KEY (`Model Kodu`),
  KEY `Firma Adı` (`Firma Adı`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`Firma Adı`, `Kategori`, `Model Kodu`, `İstenen Adet`, `İstenilen Teslim Tarihi`, `En Geç Teslim Tarihi`, `Gecikme Bedeli (TL)`, `Gereken Kumaş (kg)`) VALUES
('DeFacto', 'Eşofman', 'DE-EŞO-001', 4200, '4.07.2026', '29.08.2026', 106000, 1980),
('DeFacto', 'Eşofman', 'DE-EŞO-002', 4900, '18.06.2026', '25.08.2026', 105000, 2750),
('DeFacto', 'Eşofman', 'DE-EŞO-003', 3600, '1.07.2026', '30.09.2026', 124000, 1925),
('DeFacto', 'Eşofman', 'DE-EŞO-004', 3500, '30.07.2026', '30.08.2026', 127000, 1650),
('DeFacto', 'Eşofman', 'DE-EŞO-005', 4200, '9.07.2026', '14.08.2026', 114000, 1870),
('DeFacto', 'Etek', 'DE-ETE-001', 3900, '8.07.2026', '15.09.2026', 144000, 1440),
('DeFacto', 'Etek', 'DE-ETE-002', 4300, '8.06.2026', '14.08.2026', 132000, 1360),
('DeFacto', 'Etek', 'DE-ETE-003', 3300, '12.06.2026', '12.08.2026', 129000, 1880),
('DeFacto', 'Etek', 'DE-ETE-004', 4600, '29.06.2026', '14.08.2026', 118000, 1240),
('DeFacto', 'Etek', 'DE-ETE-005', 4700, '18.06.2026', '13.08.2026', 133000, 1800),
('DeFacto', 'Gömlek', 'DE-GÖM-001', 5000, '22.06.2026', '12.08.2026', 128000, 1350),
('DeFacto', 'Gömlek', 'DE-GÖM-002', 3700, '11.06.2026', '14.09.2026', 136000, 990),
('DeFacto', 'Gömlek', 'DE-GÖM-003', 3500, '1.07.2026', '6.10.2026', 112000, 1110),
('DeFacto', 'Gömlek', 'DE-GÖM-004', 3200, '15.06.2026', '1.08.2026', 112000, 1200),
('DeFacto', 'Gömlek', 'DE-GÖM-005', 4400, '11.07.2026', '5.08.2026', 134000, 1110),
('DeFacto', 'Pantolon', 'DE-PAN-001', 4600, '3.06.2026', '2.09.2026', 105000, 2340),
('DeFacto', 'Pantolon', 'DE-PAN-002', 3300, '16.07.2026', '14.09.2026', 113000, 2280),
('DeFacto', 'Pantolon', 'DE-PAN-003', 4400, '5.07.2026', '6.10.2026', 143000, 1920),
('DeFacto', 'Pantolon', 'DE-PAN-004', 4400, '29.06.2026', '12.08.2026', 129000, 2220),
('DeFacto', 'Pantolon', 'DE-PAN-005', 4200, '19.06.2026', '27.08.2026', 148000, 2460),
('DeFacto', 'T-shirt', 'DE-T-S-001', 3800, '1.07.2026', '23.09.2026', 132000, 925),
('DeFacto', 'T-shirt', 'DE-T-S-002', 4900, '3.07.2026', '4.10.2026', 130000, 875),
('DeFacto', 'T-shirt', 'DE-T-S-003', 3100, '31.05.2026', '20.10.2026', 109000, 775),
('DeFacto', 'T-shirt', 'DE-T-S-004', 3500, '25.07.2026', '23.08.2026', 113000, 1200),
('DeFacto', 'T-shirt', 'DE-T-S-005', 3500, '11.06.2026', '6.10.2026', 133000, 1025),
('LC Waikiki', 'Eşofman', 'LC-EŞO-001', 3300, '17.07.2026', '15.08.2026', 113000, 2750),
('LC Waikiki', 'Eşofman', 'LC-EŞO-002', 4300, '16.07.2026', '22.09.2026', 116000, 1705),
('LC Waikiki', 'Eşofman', 'LC-EŞO-003', 3100, '5.07.2026', '15.10.2026', 108000, 1980),
('LC Waikiki', 'Eşofman', 'LC-EŞO-004', 3700, '15.07.2026', '28.09.2026', 137000, 2200),
('LC Waikiki', 'Eşofman', 'LC-EŞO-005', 4400, '25.07.2026', '19.10.2026', 143000, 1925),
('LC Waikiki', 'Etek', 'LC-ETE-001', 4600, '8.07.2026', '22.10.2026', 148000, 1960),
('LC Waikiki', 'Etek', 'LC-ETE-002', 4200, '18.07.2026', '9.10.2026', 118000, 1880),
('LC Waikiki', 'Etek', 'LC-ETE-003', 4800, '2.07.2026', '3.09.2026', 116000, 1560),
('LC Waikiki', 'Etek', 'LC-ETE-004', 3600, '25.07.2026', '1.10.2026', 119000, 1440),
('LC Waikiki', 'Etek', 'LC-ETE-005', 4600, '28.07.2026', '26.09.2026', 128000, 1400),
('LC Waikiki', 'Gömlek', 'LC-GÖM-001', 4700, '24.06.2026', '21.08.2026', 147000, 1050),
('LC Waikiki', 'Gömlek', 'LC-GÖM-002', 3100, '8.07.2026', '5.10.2026', 116000, 1170),
('LC Waikiki', 'Gömlek', 'LC-GÖM-003', 3600, '10.07.2026', '2.09.2026', 138000, 900),
('LC Waikiki', 'Gömlek', 'LC-GÖM-004', 4800, '19.07.2026', '13.10.2026', 140000, 1200),
('LC Waikiki', 'Gömlek', 'LC-GÖM-005', 3900, '29.07.2026', '1.10.2026', 124000, 1230),
('LC Waikiki', 'Pantolon', 'LC-PAN-001', 3200, '18.06.2026', '20.10.2026', 137000, 2700),
('LC Waikiki', 'Pantolon', 'LC-PAN-002', 3700, '17.06.2026', '9.10.2026', 140000, 2280),
('LC Waikiki', 'Pantolon', 'LC-PAN-003', 3100, '15.07.2026', '7.09.2026', 125000, 1980),
('LC Waikiki', 'Pantolon', 'LC-PAN-004', 4200, '19.06.2026', '14.09.2026', 104000, 2640),
('LC Waikiki', 'Pantolon', 'LC-PAN-005', 3400, '13.06.2026', '20.10.2026', 140000, 2520),
('LC Waikiki', 'T-shirt', 'LC-T-S-001', 3900, '11.06.2026', '26.08.2026', 104000, 750),
('LC Waikiki', 'T-shirt', 'LC-T-S-002', 4600, '22.06.2026', '22.10.2026', 131000, 900),
('LC Waikiki', 'T-shirt', 'LC-T-S-003', 3900, '4.07.2026', '8.08.2026', 119000, 850),
('LC Waikiki', 'T-shirt', 'LC-T-S-004', 4500, '23.06.2026', '19.10.2026', 118000, 825),
('LC Waikiki', 'T-shirt', 'LC-T-S-005', 3500, '9.06.2026', '21.08.2026', 100000, 1075),
('Zara', 'Eşofman', 'ZA-EŞO-001', 2200, '19.06.2026', '6.08.2026', 248000, 1155),
('Zara', 'Eşofman', 'ZA-EŞO-002', 2400, '6.07.2026', '23.08.2026', 207000, 1485),
('Zara', 'Eşofman', 'ZA-EŞO-003', 2800, '29.06.2026', '2.09.2026', 215000, 1375),
('Zara', 'Eşofman', 'ZA-EŞO-004', 2000, '14.07.2026', '22.09.2026', 219000, 1210),
('Zara', 'Eşofman', 'ZA-EŞO-005', 2700, '8.06.2026', '21.10.2026', 216000, 1595),
('Zara', 'Etek', 'ZA-ETE-001', 3000, '23.07.2026', '22.09.2026', 233000, 840),
('Zara', 'Etek', 'ZA-ETE-002', 2400, '9.07.2026', '20.08.2026', 210000, 1000),
('Zara', 'Etek', 'ZA-ETE-003', 2900, '5.07.2026', '14.08.2026', 244000, 840),
('Zara', 'Etek', 'ZA-ETE-004', 2600, '4.06.2026', '5.08.2026', 205000, 1000),
('Zara', 'Etek', 'ZA-ETE-005', 2600, '28.06.2026', '21.08.2026', 242000, 1080),
('Zara', 'Gömlek', 'ZA-GÖM-001', 2000, '24.07.2026', '3.09.2026', 221000, 690),
('Zara', 'Gömlek', 'ZA-GÖM-002', 2700, '23.07.2026', '5.10.2026', 211000, 810),
('Zara', 'Gömlek', 'ZA-GÖM-003', 2700, '25.07.2026', '18.10.2026', 243000, 660),
('Zara', 'Gömlek', 'ZA-GÖM-004', 2000, '15.06.2026', '15.10.2026', 226000, 600),
('Zara', 'Gömlek', 'ZA-GÖM-005', 3000, '16.07.2026', '10.09.2026', 217000, 900),
('Zara', 'Pantolon', 'ZA-PAN-001', 3000, '23.06.2026', '25.08.2026', 220000, 1320),
('Zara', 'Pantolon', 'ZA-PAN-002', 2400, '29.06.2026', '3.09.2026', 226000, 1200),
('Zara', 'Pantolon', 'ZA-PAN-003', 2500, '14.07.2026', '28.09.2026', 212000, 1320),
('Zara', 'Pantolon', 'ZA-PAN-004', 2200, '14.06.2026', '26.08.2026', 209000, 1320),
('Zara', 'Pantolon', 'ZA-PAN-005', 2400, '15.06.2026', '4.10.2026', 215000, 1620),
('Zara', 'T-shirt', 'ZA-T-S-001', 3000, '18.06.2026', '2.08.2026', 239000, 575),
('Zara', 'T-shirt', 'ZA-T-S-002', 2700, '13.07.2026', '6.09.2026', 216000, 675),
('Zara', 'T-shirt', 'ZA-T-S-003', 2000, '29.06.2026', '5.09.2026', 205000, 725),
('Zara', 'T-shirt', 'ZA-T-S-004', 2400, '18.07.2026', '10.09.2026', 231000, 650),
('Zara', 'T-shirt', 'ZA-T-S-005', 2900, '16.07.2026', '22.08.2026', 238000, 575);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_stoklari`
--

DROP TABLE IF EXISTS `urun_stoklari`;
CREATE TABLE IF NOT EXISTS `urun_stoklari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `urun_kodu` varchar(50) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `stok_adedi` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `urun_stoklari`
--

INSERT INTO `urun_stoklari` (`id`, `urun_kodu`, `stok_adedi`) VALUES
(1, 'M-2023', 50000);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `dikim`
--
ALTER TABLE `dikim`
  ADD CONSTRAINT `dikim_ibfk_1` FOREIGN KEY (`Ad`) REFERENCES `personel` (`ad`);

--
-- Tablo kısıtlamaları `gereken_kumas`
--
ALTER TABLE `gereken_kumas`
  ADD CONSTRAINT `gereken_kumas_ibfk_1` FOREIGN KEY (`Model Kodu`) REFERENCES `urun` (`Model Kodu`);

--
-- Tablo kısıtlamaları `kesim`
--
ALTER TABLE `kesim`
  ADD CONSTRAINT `kesim_ibfk_1` FOREIGN KEY (`Model Kodu`) REFERENCES `urun` (`Model Kodu`);

--
-- Tablo kısıtlamaları `urun`
--
ALTER TABLE `urun`
  ADD CONSTRAINT `urun_ibfk_1` FOREIGN KEY (`Firma Adı`) REFERENCES `tedarik` (`Firma Adı`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
