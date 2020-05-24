-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Maj 2020, 16:28
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
-- Baza danych: `repertuar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbczasmiejsce`
--

CREATE TABLE `tbczasmiejsce` (
  `ID_seansu` int(11) NOT NULL,
  `ID_tytulu` int(11) NOT NULL,
  `DzienTyg` text NOT NULL,
  `Sala` int(11) NOT NULL,
  `Rodz_filmu` text NOT NULL,
  `GodzinaSeansu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbczasmiejsce`
--

INSERT INTO `tbczasmiejsce` (`ID_seansu`, `ID_tytulu`, `DzienTyg`, `Sala`, `Rodz_filmu`, `GodzinaSeansu`) VALUES
(1, 1, 'Wtorek', 1, '2D', '14:30'),
(2, 2, 'Wtorek', 5, '2D dubbing', '14:00'),
(3, 3, 'Wtorek', 2, '2D', '13:30'),
(4, 5, 'Wtorek', 4, '2D dubbing', '15:00'),
(5, 6, 'Wtorek', 3, '2D dubbing', '12:00'),
(8, 9, 'Wtorek', 3, '2D napisy', '20:30'),
(12, 10, 'Wtorek', 5, '2D napisy', '20:00'),
(25, 11, 'Wtorek', 5, '2D', '16:30'),
(26, 7, 'Wtorek', 3, '2D', '15:30'),
(27, 8, 'Wtorek', 1, '2D', '18:00'),
(29, 10, 'Środa', 4, '2D_dubbing', '13:30'),
(30, 1, 'Środa', 1, '2D', '14:30'),
(31, 2, 'Środa', 5, '2D dubbing', '14:00'),
(32, 3, 'Środa', 2, '2D', '13:30'),
(34, 5, 'Środa', 4, '2D dubbing', '15:00'),
(35, 6, 'Środa', 3, '2D dubbing', '12:00'),
(37, 7, 'Środa', 3, '2D', '15:30'),
(38, 8, 'Środa', 1, '2D', '18:00'),
(39, 9, 'Środa', 3, '2D napisy', '20:30'),
(40, 11, 'Środa', 5, '2D', '16:30'),
(41, 1, 'Poniedziałek', 1, '2D', '14:30'),
(42, 1, 'Czwartek', 1, '2D', '14:30'),
(43, 1, 'Piątek', 1, '2D', '14:30'),
(44, 1, 'Sobota', 1, '2D', '14:30'),
(45, 1, 'Niedziela', 1, '2D', '14:30'),
(46, 2, 'Poniedziałek', 5, '2D dubbing', '14:00'),
(47, 2, 'Czwartek', 5, '2D dubbing', '14:00'),
(48, 2, 'Piątek', 5, '2D dubbing', '14:00'),
(49, 2, 'Sobota', 5, '2D dubbing', '14:00'),
(50, 2, 'Niedziela', 5, '2D dubbing', '14:00'),
(51, 3, 'Poniedziałek', 2, '2D', '13:30'),
(52, 3, 'Czwartek', 2, '2D', '13:30'),
(53, 3, 'Piątek', 2, '2D', '13:30'),
(54, 3, 'Sobota', 2, '2D', '13:30'),
(55, 3, 'Niedziela', 2, '2D', '13:30'),
(56, 5, 'Czwartek', 4, '2D dubbing', '15:00'),
(57, 5, 'Poniedziałek', 4, '2D dubbing', '15:00'),
(58, 5, 'Piątek', 4, '2D dubbing', '15:00'),
(59, 5, 'Sobota', 4, '2D dubbing', '15:00'),
(60, 5, 'Niedziela', 4, '2D dubbing', '15:00'),
(61, 6, 'Poniedziałek', 3, '2D dubbing', '12:00'),
(62, 7, 'Czwartek', 3, '2D', '15:30'),
(63, 6, 'Czwartek', 3, '2D dubbing', '12:00'),
(64, 6, 'Piątek', 3, '2D dubbing', '12:00'),
(65, 6, 'Sobota', 3, '2D dubbing', '12:00'),
(66, 6, 'Niedziela', 3, '2D dubbing', '12:00'),
(67, 7, 'Poniedziałek', 3, '2D', '15:30'),
(68, 7, 'Piątek', 3, '2D', '15:30'),
(69, 7, 'Sobota', 3, '2D', '15:30'),
(70, 7, 'Niedziela', 3, '2D', '15:30'),
(71, 8, 'Poniedziałek', 1, '2D', '18:00'),
(72, 8, 'Czwartek', 1, '2D', '18:00'),
(73, 8, 'Piątek', 1, '2D', '18:00'),
(74, 8, 'Sobota', 1, '2D', '18:00'),
(75, 8, 'Niedziela', 1, '2D', '18:00'),
(76, 9, 'Poniedziałek', 3, '2D napisy', '20:30'),
(77, 9, 'Czwartek', 3, '2D napisy', '20:30'),
(78, 9, 'Piątek', 3, '2D napisy', '20:30'),
(79, 9, 'Sobota', 3, '2D napisy', '20:30'),
(80, 9, 'Niedziela', 3, '2D napisy', '20:30'),
(81, 10, 'Poniedziałek', 5, '2D napisy', '20:00'),
(82, 10, 'Czwartek', 4, '2D_dubbing', '13:30'),
(83, 10, 'Piątek', 4, '2D_dubbing', '13:30'),
(84, 10, 'Sobota', 4, '2D_dubbing', '13:30'),
(85, 10, 'Niedziela', 4, '2D_dubbing', '13:30'),
(86, 11, 'Czwartek', 5, '2D', '16:30'),
(87, 11, 'Piątek', 5, '2D', '16:30'),
(88, 11, 'Sobota', 5, '2D', '16:30'),
(89, 11, 'Niedziela', 5, '2D', '16:30'),
(90, 12, 'Sobota', 3, '2D', '22:00'),
(91, 12, 'Piątek', 3, '2D', '22:00'),
(92, 12, 'Niedziela', 3, '2D', '22:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tbczasmiejsce`
--
ALTER TABLE `tbczasmiejsce`
  ADD PRIMARY KEY (`ID_seansu`),
  ADD KEY `ID_filmu` (`ID_tytulu`),
  ADD KEY `aaa` (`ID_tytulu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tbczasmiejsce`
--
ALTER TABLE `tbczasmiejsce`
  MODIFY `ID_seansu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `tbczasmiejsce`
--
ALTER TABLE `tbczasmiejsce`
  ADD CONSTRAINT `tbczasmiejsce_ibfk_1` FOREIGN KEY (`ID_tytulu`) REFERENCES `tb_info_o_filmie` (`ID_tytulu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
