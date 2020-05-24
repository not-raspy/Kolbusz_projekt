-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Maj 2020, 16:29
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
-- Struktura tabeli dla tabeli `tbrezerwacje`
--

CREATE TABLE `tbrezerwacje` (
  `ID_rezerwacji` int(11) NOT NULL,
  `ID_seansu` int(11) NOT NULL,
  `ID_tytulu` int(11) NOT NULL,
  `AdresEmail` text NOT NULL,
  `Telefon` int(11) NOT NULL,
  `ImieNazwisko` text NOT NULL,
  `Miejsce` int(11) NOT NULL,
  `Rzad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tbrezerwacje`
--

INSERT INTO `tbrezerwacje` (`ID_rezerwacji`, `ID_seansu`, `ID_tytulu`, `AdresEmail`, `Telefon`, `ImieNazwisko`, `Miejsce`, `Rzad`) VALUES
(1, 1, 1, 'qwerty@s.com', 21442124, 'Test', 3, 3),
(2, 1, 1, 'k@pwsz', 1241412, 'Krzysztof Kolbusz', 5, 4),
(3, 1, 1, 'k@pwsz', 1241412, 'Krzysztof Kolbusz', 4, 4),
(4, 1, 1, 'Starwars.Fandom@gmail.com', 404, 'Obi Wan Kenobi', 4, 2),
(5, 1, 1, 'Starwars.Fandom@gmail.com', 404, 'Obi Wan Kenobi', 4, 3),
(12, 29, 10, '', 0, '', 0, 0),
(14, 29, 10, 'jm@fashk.pl', 11111, 'Jan Matejko', 4, 3),
(15, 29, 10, 'jm@fashk.pl', 11111, 'Jan Matejko', 4, 4),
(22, 29, 10, '321312412142', 231213312, 'test', 2, 4),
(23, 29, 10, '321312412142', 231213312, 'test', 3, 5),
(26, 2, 2, '', 0, '', 0, 0),
(28, 3, 3, '', 0, '', 0, 0),
(29, 4, 5, '', 0, '', 0, 0),
(30, 5, 6, '', 0, '', 0, 0),
(31, 8, 9, '', 0, '', 0, 0),
(32, 12, 10, '', 0, '', 0, 0),
(33, 25, 11, '', 0, '', 0, 0),
(34, 26, 7, '', 0, '', 0, 0),
(35, 27, 8, '', 0, '', 0, 0),
(36, 29, 10, '', 0, '', 0, 0),
(37, 30, 1, '', 0, '', 0, 0),
(38, 31, 2, '', 0, '', 0, 0),
(39, 32, 3, '', 0, '', 0, 0),
(40, 34, 5, '', 0, '', 0, 0),
(41, 35, 6, '', 0, '', 0, 0),
(42, 37, 7, '', 0, '', 0, 0),
(43, 38, 8, '', 0, '', 0, 0),
(44, 39, 9, '', 0, '', 0, 0),
(45, 40, 11, '', 0, '', 0, 0),
(46, 41, 1, '', 0, '', 0, 0),
(47, 42, 1, '', 0, '', 0, 0),
(48, 43, 1, '', 0, '', 0, 0),
(49, 44, 1, '', 0, '', 0, 0),
(50, 45, 1, '', 0, '', 0, 0),
(51, 46, 2, '', 0, '', 0, 0),
(52, 47, 2, '', 0, '', 0, 0),
(53, 48, 2, '', 0, '', 0, 0),
(54, 49, 2, '', 0, '', 0, 0),
(55, 50, 2, '', 0, '', 0, 0),
(56, 51, 3, '', 0, '', 0, 0),
(57, 52, 3, '', 0, '', 0, 0),
(58, 53, 3, '', 0, '', 0, 0),
(59, 54, 3, '', 0, '', 0, 0),
(60, 55, 3, '', 0, '', 0, 0),
(61, 56, 5, '', 0, '', 0, 0),
(62, 57, 5, '', 0, '', 0, 0),
(63, 58, 5, '', 0, '', 0, 0),
(64, 59, 5, '', 0, '', 0, 0),
(65, 60, 5, '', 0, '', 0, 0),
(66, 61, 6, '', 0, '', 0, 0),
(67, 62, 6, '', 0, '', 0, 0),
(68, 63, 6, '', 0, '', 0, 0),
(69, 64, 6, '', 0, '', 0, 0),
(70, 65, 6, '', 0, '', 0, 0),
(71, 66, 6, '', 0, '', 0, 0),
(72, 67, 7, '', 0, '', 0, 0),
(73, 68, 7, '', 0, '', 0, 0),
(74, 69, 7, '', 0, '', 0, 0),
(75, 70, 7, '', 0, '', 0, 0),
(76, 71, 8, '', 0, '', 0, 0),
(77, 72, 8, '', 0, '', 0, 0),
(78, 73, 8, '', 0, '', 0, 0),
(79, 74, 8, '', 0, '', 0, 0),
(80, 75, 8, '', 0, '', 0, 0),
(81, 76, 9, '', 0, '', 0, 0),
(82, 77, 9, '', 0, '', 0, 0),
(83, 78, 9, '', 0, '', 0, 0),
(84, 79, 9, '', 0, '', 0, 0),
(85, 80, 9, '', 0, '', 0, 0),
(86, 81, 10, '', 0, '', 0, 0),
(87, 82, 10, '', 0, '', 0, 0),
(88, 83, 10, '', 0, '', 0, 0),
(89, 84, 10, '', 0, '', 0, 0),
(90, 84, 10, '', 0, '', 0, 0),
(91, 85, 10, '', 0, '', 0, 0),
(92, 86, 11, '', 0, '', 0, 0),
(93, 87, 11, '', 0, '', 0, 0),
(94, 88, 11, '', 0, '', 0, 0),
(95, 89, 11, '', 0, '', 0, 0),
(96, 90, 12, '', 0, '', 0, 0),
(97, 91, 12, '', 0, '', 0, 0),
(98, 92, 12, '', 0, '', 0, 0),
(99, 1, 1, '2131', 31231, '13221', 2, 2),
(100, 1, 1, '2131', 31231, '13221', 2, 3),
(101, 1, 1, '2131', 31231, '13221', 2, 2),
(102, 1, 1, '2131', 31231, '13221', 2, 3),
(103, 2, 2, '39591@stud.pwsz.legnica.edu.pl', 39591, '39591', 4, 1),
(104, 2, 2, '39591@stud.pwsz.legnica.edu.pl', 39591, '39591', 4, 2),
(105, 90, 12, '39591@stud.pwsz.legnica.edu.pl', 39591, '39591', 4, 3),
(106, 90, 12, '39591@stud.pwsz.legnica.edu.pl', 39591, '39591', 4, 4),
(107, 4, 5, '39591@stud.pwsz.legnica.edu.pl', 39591, '39591', 4, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tbrezerwacje`
--
ALTER TABLE `tbrezerwacje`
  ADD PRIMARY KEY (`ID_rezerwacji`),
  ADD KEY `ID_Klienta` (`ID_seansu`),
  ADD KEY `ID_tytulu` (`ID_tytulu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tbrezerwacje`
--
ALTER TABLE `tbrezerwacje`
  MODIFY `ID_rezerwacji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `tbrezerwacje`
--
ALTER TABLE `tbrezerwacje`
  ADD CONSTRAINT `tbrezerwacje_ibfk_1` FOREIGN KEY (`ID_seansu`) REFERENCES `tbczasmiejsce` (`ID_seansu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
