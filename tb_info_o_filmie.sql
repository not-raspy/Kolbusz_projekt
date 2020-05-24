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
-- Struktura tabeli dla tabeli `tb_info_o_filmie`
--

CREATE TABLE `tb_info_o_filmie` (
  `ID_tytulu` int(11) NOT NULL,
  `TytulFilmu` text NOT NULL,
  `OpisFilmu` longtext NOT NULL,
  `Ogr_wiekowe` text NOT NULL,
  `typ_filmu` text NOT NULL,
  `czas_trwania` int(11) NOT NULL,
  `Produkcja` text NOT NULL,
  `Data_Prod` year(4) NOT NULL,
  `Reżyseria` text NOT NULL,
  `Obsada` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tb_info_o_filmie`
--

INSERT INTO `tb_info_o_filmie` (`ID_tytulu`, `TytulFilmu`, `OpisFilmu`, `Ogr_wiekowe`, `typ_filmu`, `czas_trwania`, `Produkcja`, `Data_Prod`, `Reżyseria`, `Obsada`) VALUES
(1, 'Zenek', 'Historia chłopaka z podlaskiej wsi, który realizuje swoje wielkie marzenie, by śpiewać i bawić tłumy. Dzięki uporowi, ciężkiej pracy i wielu wyrzeczeniom osiągnął niebywały sukces.', '15+', 'Biografia', 119, 'Polska', 2020, 'Jan Hryniak', 'Jakub Zając, Krzysztof Czeczot, Klara Bielawka, Karol Dziuba'),
(2, 'Zew Krwi', 'Zrealizowany na podstawie klasycznej powieści Jacka Londona „Zew krwi” opowiada porywającą historię Bucka, psa o wielkim sercu, którego świat staje na głowie, gdy wprost z sielskiego domu w Kalifornii trafia na egzotyczne pustynie śnieżne Alaski podczas gorączki złota lat 90-tych XIX wieku.', '10+', 'Przygodowy', 100, 'USA', 2020, 'Chris Sanders', 'Harrison Ford, Dan Stevens, Omar Sy, Karen Gillan'),
(3, 'Bad Boy', 'Gdy jeden z braci ląduje w więzieniu, drugi - policjant postanawia pomóc mu z niego wyjść.', '15+', 'Dramat', 100, 'Polska', 2020, 'Patryk Vega', 'Antoni Królikowski, Maciej Stuhr'),
(5, 'SONIC. Szybki jak Błyskawica', 'Tom Wachowski, oficer policji w San Francisco oraz Sonic - antropomorficzny pozaziemski jeż, łączą siły, by pokonać Doktora Robotnika.', '6+', 'Familijny', 100, 'USA', 2019, 'Jeff Fowler', ''),
(6, 'Naprzód', 'Dwóch braci próbuje sprowadzić na ziemię drugą połowę ciała swojego ojca, gdyż nieudane czary powodują, że pojawia się tylko od pasa w dół.', '6+', 'Familijny', 102, 'USA', 2020, 'Dan Scanlon', ''),
(7, 'Sala Samobójców. Hejter', 'Wydalony z Uniwersytetu Warszawskiego student prawa, zostaje przyłapany na plagiacie. Postanawia jednak ukrywać ten fakt przed światem i nadal pobiera pomoc finansową od państwa Krasuckich.', '15+', 'Thriller', 135, 'Polska', 2020, 'Jan Komasa', 'Maciej Musiałowski, Vanessa Aleksander, Danuta Stenka, Jacek Koman'),
(8, 'Swingersi', 'Grupa ludzi, niezadowolona z dotychczasowego życia erotycznego, przekona się, że trawa jest zawsze bardziej zielona po drugiej stronie płotu.', '15+', 'Komedia', 87, 'Polska, Łotwa', 2020, 'Andrejs Ēķis', 'Ilona Ostrowska, Krzysztof Czeczot, Joanna Liszowska, Barbara Kurdej-Szatan'),
(9, 'Niewidzialny Człowiek', 'Po zerwaniu toksycznej relacji mąż Cecilii, naukowiec-wynalazca popełnia samobójstwo. Od tej pory zaczynają ją prześladować dziwne zdarzenia.', '15+', 'Horror', 124, 'USA, Australia', 2020, 'Leigh Whannell', 'Elisabeth Moss, Aldis Hodge'),
(10, 'Brahms: The Boy II', 'Traumatyczne rodzinne przeżycie sprawia, że rodzice oddalają się od siebie, a ich syn przestaje mówić. Przeprowadzka do nowego domu, mająca być nowym początkiem, zamienia ich życie w koszmar.', '15+', 'Horror', 87, 'USA', 2020, 'William Brent Bell', 'Katie Holmes'),
(11, '365 dni', 'Laura, aby ratować rozpadający się związek, wyjeżdża na Sycylię, gdzie poznaje Massimo. Niebezpieczny mężczyzna, szef rodziny mafijnej, porywa ją i daje 365 dni na pokochanie go.', '18+', 'Erotyczny', 116, 'Polska', 2020, 'Barbara Białowąs', 'Anna-Maria Sieklucka, Michelle Morrone, Magdalena Lamparska, Natasza Urbańska'),
(12, 'W lesie dziś nie zaśnie nikt', 'Akcja filmu rozpoczyna się dość niewinnie – grupa nastolatków uzależnionych od technologii trafia na… obóz offline. Wspólna wędrówka po lasach bez dostępu do smartfonów nie zakończy się jednak tak, jak zaplanowali to organizatorzy. Będą musieli zawalczyć o prawdziwe życie z czymś, czego nie widzieli nawet w najciemniejszych zakamarkach internetu. W obliczu czyhającego w lesie śmiertelnego niebezpieczeństwa odkryją, czym jest prawdziwa przyjaźń, miłość i poświęcenie. Czy wyjdą z tego cało, czy w krwistych kawałeczkach?', '18+', 'Horror', 105, 'Polska', 2020, 'Bartosz M. Kowalski', 'Julia Wieniawa-Narkiewicz, Michał Lupa, Wiktoria Gąsiewska');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tb_info_o_filmie`
--
ALTER TABLE `tb_info_o_filmie`
  ADD PRIMARY KEY (`ID_tytulu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tb_info_o_filmie`
--
ALTER TABLE `tb_info_o_filmie`
  MODIFY `ID_tytulu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
