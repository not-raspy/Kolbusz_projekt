-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Maj 2020, 02:26
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza_repertuaru`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbczasmiejsce`
--

CREATE TABLE `tbczasmiejsce` (
  `ID_godz` int(11) NOT NULL,
  `ID_filmu` int(11) NOT NULL,
  `DzienTyg` text NOT NULL,
  `godz` text NOT NULL,
  `Data` date NOT NULL,
  `Sala` int(11) NOT NULL,
  `Rodz_filmu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbczasmiejsce`
--

INSERT INTO `tbczasmiejsce` (`ID_godz`, `ID_filmu`, `DzienTyg`, `godz`, `Data`, `Sala`, `Rodz_filmu`) VALUES
(1, 1, 'Wtorek', '9:50', '2020-03-10', 1, '2D'),
(2, 2, 'Wtorek', '10:15', '2020-03-10', 5, '2D dubbing'),
(3, 3, 'Wtorek', '10:30', '2020-03-10', 2, '2D'),
(4, 5, 'Wtorek', '10:45', '2020-03-10', 4, '2D dubbing'),
(5, 6, 'Wtorek', '11:00', '2020-03-10', 3, '2D dubbing'),
(6, 7, 'Wtorek', '11:50', '2020-03-10', 1, '2D'),
(7, 8, 'Wtorek', '12:45', '2020-03-10', 5, '2D'),
(8, 9, 'Wtorek', '13:15', '2020-03-10', 3, '2D napisy'),
(9, 5, 'Wtorek', '13:15', '2020-03-10', 4, '2D dubbing'),
(10, 6, 'Wtorek', '13:30', '2020-03-10', 2, '3D dubbing'),
(11, 7, 'Wtorek', '14:40', '2020-03-10', 1, '2D'),
(12, 10, 'Wtorek', '15:00', '2020-03-10', 5, '2D napisy'),
(13, 5, 'Wtorek', '15:30', '2020-03-10', 4, '2D dubbing'),
(14, 3, 'Wtorek', '15:45', '2020-03-10', 2, '2D'),
(15, 6, 'Wtorek', '16:00', '2020-03-10', 3, '2D dubbing'),
(16, 8, 'Wtorek', '17:00', '2020-03-10', 5, '2D'),
(17, 5, 'Wtorek', '17:30', '2020-03-10', 1, '2D dubbing'),
(18, 6, 'Wtorek', '18:00', '2020-03-10', 4, '2D dubbing'),
(19, 9, 'Wtorek', '18:15', '2020-03-10', 2, '2D napisy'),
(20, 7, 'Wtorek', '18:30', '2020-03-10', 3, '2D'),
(21, 8, 'Wtorek', '19:00', '2020-03-10', 5, '2D'),
(22, 3, 'Wtorek', '19:45', '2020-03-10', 1, '2D'),
(23, 9, 'Wtorek', '20:30', '2020-03-10', 4, '2D napisy'),
(24, 10, 'Wtorek', '21:00', '2020-03-10', 2, '2D napisy'),
(25, 11, 'Wtorek', '21:00', '2020-03-10', 5, '2D'),
(26, 7, 'Wtorek', '21:30', '2020-03-10', 3, '2D'),
(27, 8, 'Wtorek', '22:15', '2020-03-10', 1, '2D');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tbczasmiejsce`
--
ALTER TABLE `tbczasmiejsce`
  ADD PRIMARY KEY (`ID_godz`),
  ADD KEY `ID_filmu` (`ID_filmu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tbczasmiejsce`
--
ALTER TABLE `tbczasmiejsce`
  MODIFY `ID_godz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `tbczasmiejsce`
--
ALTER TABLE `tbczasmiejsce`
  ADD CONSTRAINT `tbczasmiejsce_ibfk_1` FOREIGN KEY (`ID_filmu`) REFERENCES `tb_info_o_filmie` (`ID_tytulu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
