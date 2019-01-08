-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Počítač: 192.168.30.23
-- Vytvořeno: Stř 19. pro 2018, 10:16
-- Verze serveru: 8.0.3-rc-log
-- Verze PHP: 7.2.9-1+0~20180910100512.5+stretch~1.gbpdaac35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `moje_druha_databaze`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nazev` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `popis` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `Kosik`
--

CREATE TABLE `Kosik` (
  `ID_zbozi` int(11) NOT NULL,
  `ID_uzivatel` int(11) NOT NULL,
  `pocet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `Objednavky`
--

CREATE TABLE `Objednavky` (
  `ID` int(11) NOT NULL,
  `ID_uzivatel` int(11) NOT NULL,
  `stav` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `Uzivatele`
--

CREATE TABLE `Uzivatele` (
  `ID` int(11) NOT NULL,
  `jmeno` varchar(373) COLLATE utf8_unicode_ci NOT NULL,
  `prijmeni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `heslo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adresa` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `Zbozi`
--

CREATE TABLE `Zbozi` (
  `ID` int(11) NOT NULL,
  `nazev` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `popis` text COLLATE utf8_unicode_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `ID_kategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `Kosik`
--
ALTER TABLE `Kosik`
  ADD PRIMARY KEY (`ID_zbozi`);

--
-- Klíče pro tabulku `Objednavky`
--
ALTER TABLE `Objednavky`
  ADD PRIMARY KEY (`ID`);

--
-- Klíče pro tabulku `Uzivatele`
--
ALTER TABLE `Uzivatele`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `Kosik`
--
ALTER TABLE `Kosik`
  MODIFY `ID_zbozi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `Objednavky`
--
ALTER TABLE `Objednavky`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `Uzivatele`
--
ALTER TABLE `Uzivatele`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
