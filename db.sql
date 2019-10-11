-- Struktura tabeli dla tabeli `authors`
--

CREATE TABLE `authors` (
  `authorID` int(11) NOT NULL,
  `authorName` varchar(128) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `authorDesc` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `authors`
--

INSERT INTO `authors` (`authorID`, `authorName`, `authorDesc`) VALUES
(1, 'Twenty One Pilots', 'Amerykański zespół wykonujący muzykę z pogranicza popu, elektroniki, punka, rocka i hip-hopu, powstał w 2009 roku w Columbus w stanie Ohio. Od 2011 roku formację tworzą Tyler Joseph i Josh Dun.'),
(2, 'AC/DC', 'Australijski zespół hardrockowy założony w Sydney w 1973 roku przez braci Angusa i Malcolma Youngów. Zespół jest uznawany m.in. za pioniera muzyki hardrockowej. Członkowie zespołu, mimo wszystko, zawsze klasyfikowali swoją muzykę jako rock & roll.'),
(3, 'Bring Me the Horizon', 'Brytyjski zespół wykonujący metalcore (we wczesnej działalności deathcore) utworzony w Sheffield.'),
(5, 'Panic! at the Disco', 'Zespół grający muzykę gatunku pop punk, pochodzący z Las Vegas (Nevada).'),
(6, 'Three Days Grace', 'Kanadyjski zespół metalu alternatywnego, założony w 1997 roku w Norwood w Kanadzie na kanwie formacji Groundswell. 17 stycznia 2013 roku zespół ogłosił, że wokalista Adam Gontier rezygnuje z dalszej współpracy. Jego miejsce zajął Matt Walst, brat basisty.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `diskID` int(11) NOT NULL,
  `commentAuthor` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `commentText` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`commentID`, `diskID`, `commentAuthor`, `commentText`) VALUES
(1, 1, 'Użytkownik', 'Bardzo dobra płyta, polecam 10/10.'),
(2, 2, 'Komentator', 'Super ekstra muzyka.')

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `genres`
--

CREATE TABLE `genres` (
  `genreID` int(11) NOT NULL,
  `genreName` varchar(128) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `genreDesc` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `genres`
--

INSERT INTO `genres` (`genreID`, `genreName`, `genreDesc`) VALUES
(1, 'Rock', 'Gatunek muzyki rozrywkowej powstały w połowie XX wieku w Stanach Zjednoczonych (który wytworzył wokół siebie krąg subkultury młodzieżowej) i ogólna nazwa szeregu stylów muzycznych, wywodzących się z rock and rolla oraz rhythm and bluesa i bluesa. Sama nazwa „rock” jest skrótem od „rock and roll”, choć można uznawać owe dwa pojęcia za odmienne od siebie gatunki muzyczne.'),
(2, 'Hard rock', 'Fatunek muzyki rockowej powstały na przełomie lat sześćdziesiątych i siedemdziesiątych XX wieku, wywodzący się z bluesa i z rock-and-rolla. \r\n\r\nPionierami tego gatunku były zespoły takie jak Iron Butterfly, Cream, Led Zeppelin, Vanilla Fudge, The Jimi Hendrix Experience, Blue Cheer, Steppenwolf, MC5, Deep Purple, The Rolling Stones, Blind Faith, Ten Years After, The Doors.'),
(3, 'Metalcore', 'Gatunek muzyki łączący w sobie elementy hardcore\'u i metalu, wywodzący się w prostej linii z crossover thrash. Pierwotnie był to styl pochodny od hardcore\'u (Earth Crisis, Hatebreed, Walls Of Jericho), z biegiem lat styl ten stał się również podgatunkiem metalu poprzez pojawienie się generacji zespołów określanych tym mianem, lecz mających wyeksponowany metalowy człon w ich muzyce (Killswitch Engage, Darkest Hour, Unearth).\r\n\r\nWobec tego metalcore jest to nurt, który stanowi połączenie ciężkich riffów, prostoty wykonania i agresji połączonej z szybkością, który rozwinął się dwutorowo, jako hardcore osadzony lub z wpływami metalu oraz jako metal z wpływami hardcore.'),
(4, 'Pop-rock', 'Gatunek muzyczny, który łączy w sobie elementy popu i rocka. Piosenki pop-rockowe cechują się prostą budową, „chwytliwą” melodią i powtarzającymi się fragmentami (co jest charakterystyczne dla popu) oraz instrumentarium opartym na gitarach elektrycznych i perkusji (charakterystycznym dla rocka). Terminem pop-rock po raz pierwszy opisano wczesne hity zespołu The Beatles.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `musiccd`
--

CREATE TABLE `musiccd` (
  `diskID` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `authorID` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `genreID` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `musiccd`
--

INSERT INTO `musiccd` (`diskID`, `title`, `authorID`, `year`, `genreID`, `description`) VALUES
(1, 'Trench', 1, 2018, 4, 'Piąty album studyjny amerykańskiego duetu muzycznego Twenty One Pilots, wydany 5 października 2018 roku.'),
(2, 'Back in Black', 2, 1980, 2, 'Siódmy album studyjny australijskiego zespołu AC/DC, wydany 25 lipca 1980 roku. Back in Black jest pierwszym albumem AC/DC nagranym bez wokalisty Bona Scotta, który zmarł w lutym 1980 roku. Muzycy rozważali rozwiązanie zespołu z powodu jego śmierci, ale ostatecznie zdecydowali się kontynuować istnienie i szybko zatrudnili nowego wokalistę i twórcę tekstów piosenek, Briana Johnsona.\r\n\r\nBracia Young zaczęli pracę nad tym albumem przed śmiercią Scotta, który zdążył napisać teksty do potencjalnych nowych utworów, po śmierci Scotta i przyjęciu nowego wokalisty, bracia postanowili zacząć pracę nad albumem od nowa. Robert John „Mutt” Lange, który pracował z AC/DC nad poprzednim albumem, Highway to Hell, został ponownie zaangażowany do produkcji.'),
(3, 'Sempiternal', 3, 2013, 3, 'Czwarty album brytyjskiego zespołu Bring Me The Horizon. W Wielkiej Brytanii został wydany 1 kwietnia 2013, a w Stanach Zjednoczonych 2 kwietnia 2013 przez wytwórnię RCA Records i Epitaph Records. Wyprodukowany został przez Terry’ego Date’a.'),
(4, 'Death of a Bachelor', 5, 2016, 1, 'Piąty studyjny album amerykańskiego zespołu rockowego Panic! at the Disco, wydany 15 stycznia 2016. Jest kontynuacją czwartej studyjnej płyty zespołu Too Weird To Live, Too Rare To Die! z 2013.'),
(6, 'One-X', 6, 2006, 2, 'Drugi album kanadyjskiej grupy rockowej Three Days Grace.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `songs`
--

CREATE TABLE `songs` (
  `diskID` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `number` int(11) NOT NULL,
  `length` varchar(128) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `songs`
--

INSERT INTO `songs` (`diskID`, `name`, `number`, `length`) VALUES
(1, 'Jumpsuit', 1, '3:58'),
(1, 'Levitate', 2, '2:25'),
(1, 'Morph', 3, '4:19'),
(1, 'My Blood', 4, '3:49'),
(1, 'Chlorine', 5, '3:49\r\n'),
(1, 'Smithereens', 6, '2:57'),
(1, 'Neon Gravestones', 7, '4:00'),
(1, 'The Hype', 8, '4:25'),
(1, 'Nico and the Niners', 9, '3:45'),
(1, 'Cut My Lip', 10, '4:43'),
(1, 'Bandito', 11, '5:31'),
(1, 'Pet Cheetah', 12, '3:18'),
(1, 'Legend', 13, '2:53'),
(1, 'Leave The City', 14, '4:40'),
(2, 'Hells Bells', 1, '5:12'),
(2, 'Shoot to Thrill', 2, '5:17'),
(2, 'What Do You Do for Money Honey', 3, '3:35'),
(2, 'Given the Dog a Bone', 4, '3:31'),
(2, 'Let Me Put My Love into You', 5, '4:15'),
(2, 'Back in Black', 6, '4:15'),
(2, 'You Shook Me All Night Long', 7, '3:30'),
(2, 'Have a Drink on Me', 8, '3:58'),
(2, 'Shake a Leg', 9, '4:05'),
(2, 'Rock and Roll Ain’t Noise Pollution', 10, '4:16'),
(3, 'Can You Feel My Heart', 1, '3:47'),
(3, 'The House of Wolves', 2, '3:25'),
(3, 'Empire (Let Them Sing)', 3, '3:45'),
(3, 'Sleepwalking', 4, '3:50'),
(3, 'Go to Hell, for Heaven\'s Sake', 5, '4:02'),
(3, 'Shadow Moses', 6, '4:02'),
(3, 'And the Snakes Start to Sing', 7, '5:01'),
(3, 'Seen It All Before', 8, '4:07'),
(3, 'Antivist', 9, '3:13'),
(3, 'Crooked Young', 10, '3:34'),
(3, 'Hospital for Souls', 11, '6:44'),
(4, 'Victorious', 1, '2:58'),
(4, 'Don\'t Threaten Me with a Good Time', 2, '3:33'),
(4, 'Hallelujah', 3, '3:00'),
(4, 'Emperor\'s New Clothes', 4, '2:38'),
(4, 'Death of a Bachelor', 5, '3:23'),
(4, 'Crazy=Genius', 6, '3:18'),
(4, 'LA Devotee', 7, '3:16'),
(4, 'Golden Days', 8, '4:14'),
(4, 'The Good, the Bad and the Dirty', 9, '2:51'),
(4, 'House of Memories', 10, '3:28'),
(4, 'Impossible Year', 11, '3:22'),
(6, 'It\'s All Over', 1, '4:10'),
(6, 'Pain', 2, '3:22'),
(6, 'Animal I Have Become', 3, '3:51'),
(6, 'Never Too Late', 4, '3:29'),
(6, 'On My Own', 5, '3:05'),
(6, 'Riot', 6, '3:27'),
(6, 'Get Out Alive', 7, '4:22'),
(6, 'Let It Die', 8, '3:09'),
(6, 'Over and Over', 9, '3:11'),
(6, 'Time of Dying', 10, '3:08'),
(6, 'Gone Forever', 11, '3:41'),
(6, 'One-X', 12, '4:46');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorID`);

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `diskID` (`diskID`);

--
-- Indeksy dla tabeli `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genreID`),
  ADD UNIQUE KEY `genreName` (`genreName`);

--
-- Indeksy dla tabeli `musiccd`
--
ALTER TABLE `musiccd`
  ADD PRIMARY KEY (`diskID`),
  ADD UNIQUE KEY `title` (`title`,`authorID`,`genreID`) USING BTREE,
  ADD KEY `authorID` (`authorID`),
  ADD KEY `genreID` (`genreID`);

--
-- Indeksy dla tabeli `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`diskID`,`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `authors`
--
ALTER TABLE `authors`
  MODIFY `authorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `genres`
--
ALTER TABLE `genres`
  MODIFY `genreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `musiccd`
--
ALTER TABLE `musiccd`
  MODIFY `diskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`diskID`) REFERENCES `musiccd` (`diskID`) ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `musiccd`
--
ALTER TABLE `musiccd`
  ADD CONSTRAINT `musiccd_ibfk_1` FOREIGN KEY (`authorID`) REFERENCES `authors` (`authorID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `musiccd_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`) ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`diskID`) REFERENCES `musiccd` (`diskID`) ON UPDATE CASCADE;
