-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-05-2016 a las 02:30:25
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegoteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaNac` int(11) DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `fechaNac`, `bio`, `website`) VALUES
(1, 'Klaus Teuber', 1952, 'Klaus Teuber (n. 25 de junio de 1952), Alemán. Es conocido como diseñador de juegos de mesa. Ha ganado cuatro veces el premio Spiel des Jahres, para el juego Los Colonos de Catán, Barbarroja , Drunter und Drüber y Adel Verpflichtet. Se retiró de su profesión como protésico dental para convertirse a tiempo completo en diseñador de juegos en 1999. Desde 2007 vive en Darmstadt con su esposa Claudia. Tienen dos hijos, Guido y Cathan.', 'http://www.klausteuber.de/'),
(20, 'Thomas Lehmann', 1958, 'Tom Lehmann (nacido 1 de julio de 1958) ha trabajado como economista y escritor, pero es más conocido por ser diseñador de juegos. Tom Lehman fue el creador de la editorial Prism Games. Sus trabajos incluyen Fast Food Franchise, Time Agent, 2038 (con Jim Hlavaty), 1846, Magellan/Pizarro & Co., Jericho, To Court the King, Phoenicia y Race for the Galaxy. \r\n\r\nActualmente, Lehman diseña juegos para el mercado internacional. \r\n', 'http://sites.google.com/site/ptlehmann/gaming'),
(21, 'Klaus-Jürgen Wrede', 1963, 'Klaus-Jürgen Wrede (nacido en 1963 en Alemania) es un diseñador de juegos de mesa y profesor de música y teología. Ha creado el popular juego de mesa Carcassonne, además de todas sus expansiones.', 'http://www.kjwrede.de/'),
(22, 'Uwe Rosenberg', 1970, 'Uwe Rosenberg (nacido en Aurich, Baja Sajonia, el 27 Marzo de 1970) es un diseñador alemán de juegos de mesa modernos. Comenzó destacando con su juego de cartas Bohnanza, con el que obtuvo notoriedad tanto en su país natal como internacionalmente. Es el creador de Agricola, juego de mesa de estilo europeo que ostentó el número uno del ranking de la prestigiosa web de juegos de mesa BoardGameGeek desde septiembre de 2008 a marzo de 2010.  Conocido también por otros juegos de mesa basados en la gestión de recursos como Le Havre, Caverna y Ora et labora.', 'http://boardgamegeek.com/boardgamedesigner/10/uwe-rosenberg'),
(23, 'Corey Konieczka', 1900, 'No se ha encontrado información', 'https://boardgamegeek.com/boardgamedesigner/6651/corey-konieczka'),
(24, 'Adam Sadler', 1900, 'Adam Sadler ha trabajado como diseñador para Fantasy Flight Games hasta el año 2013. Durante ese tiempo, Adam trabajó como Director de Diseño para el juego Descent (2a Edición), así como diversas expansiones del mismo. Además, trabajó en otras líneas de juego como Tannhauser y Star Wars: X-Wing. Desde que ha dejado FFG, Adam ha perseguido el sueño de diseñar juegos de forma freelance junto a su hermano Brady.\r\n', 'https://boardgamegeek.com/boardgamedesigner/50880/adam-sadler'),
(25, 'Kevin Wilson', 1900, 'Kevin Wilson es un diseñador de juegos conocido por su trabajo en Fantasy Flight Games. Previamente trabajó para Alderac Entertainment Group. Se introdujo en el mundo de los juegos de a través de la caja de Dungeons & Dragons cuando tenía 8 años. Su primer juego importante fue Madgar. Siempre ha considerado a Bruno Faidutti como uno de sus diseñadores de juegos favorito.\r\n\r\n', 'http://www.wilsoncreativellc.com/'),
(26, 'Antoine Bauza', 1978, 'Antoine Bauza es el popular diseñador de gran cantidad de juegos ganadores de premios, incluyendo 7 Wonders y Hanabi. Incluso antes del gran éxito de 7 Wonders, Antoine era bien conocido por muchos otros juegos, incluyendo el juego cooperativo Ghost Stories y la experiencia inmersiva de Tokaido.', 'http://www.antoinebauza.fr/'),
(27, 'Bruno Cathala', 1963, 'Bruno Cathala (nacido en 1963) es un diseñador de juegos francés que ha vivido en Haute-Savoie, cerca de Génova, Suiza, desde 1986.\r\n\r\nBruno Cathala es conocido por co-diseñar el juego Sombras sobre Camelot (2005, con Serge Laget), Mr. Jack (2006), Mr. Jack en New York (2009) y Cleopatra y la Sociedad de Arquitectos (2006), tdos ellos co-diseñados con Ludovic Maublanc.', 'http://www.brunocathala.com/'),
(29, 'Roberto Di Meglio', 1966, 'Roberto Di Meglio (Pisa, 29 de Marzo de 1966) es un diseñador de juegos italiano. Además de autor, también es editor de juegos de mesa y juegos de rol. Entre otras actividades, ha traducido historias de fantasía y ciencia-ficción para la revista de ciencia ficción de Isaac Asimov (edición italiana de la revista estadounidense) y ha publicado artículos en la revista Tolkien Endore.', 'http://boardgamegeek.com/boardgamedesigner/3247/roberto-di-meglio'),
(30, 'Francesco Nepitello', 1900, 'Francesco Nepitello es un diseñador de juegos italiano. Es conocido principalmente por ser uno de los tres diseñadores del popular juego Guerra del Anillo, publicado actualmente por Ares Games. Es además uno de los diseñadores del juego de rol El Anillo Único, publicado por la editorial Cubicle 7. \r\n', 'http://cohorsarcana.blogspot.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorjuego`
--

CREATE TABLE IF NOT EXISTS `autorjuego` (
  `id` int(11) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `autorjuego`
--

INSERT INTO `autorjuego` (`id`, `id_autor`, `id_juego`) VALUES
(1, 1, 1),
(2, 23, 10),
(3, 24, 10),
(6, 25, 10),
(7, 21, 2),
(8, 22, 9),
(9, 22, 11),
(10, 20, 8),
(11, 26, 12),
(12, 27, 12),
(13, 22, 14),
(14, 22, 15),
(15, 23, 16),
(16, 23, 17),
(17, 29, 18),
(18, 30, 18),
(32, 25, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Medieval', 'Los juegos Medievales suelen tener temáticas o argumentos localizados en Europa o Asia, entre el siglo V y el siglo XVI.\r\n\r\n\r\n'),
(2, 'Construcción de Territorios', 'Los juegos de Construcción de Territorios consisten en que los jugadores establecen u obtienen el control sobre un área específica. A veces, estos juegos utilizan mecánicas de Control de Área, en las que dichas áreas no están necesariamente delimitadas al inicio del juego, sino que se van ampliando a medida que el juego progresa. \r\n'),
(3, 'Agricultura', 'Los juegos de Agricultura animan a los jugadores a construir y gestionar una granja con el propósito de hacer crecer cultivos, a menudo con el objetivo de ser vendidos o comerciados posteriormente durante la partida. \r\n'),
(4, 'Animales', 'Los juegos de Animales incluyen animales como un componente principal del juego o de la temática del mismo. Estos juegos suelen requerir de los jugadores que gestionen o controlen animales. A veces, los jugadores toman el papel de dichos animales durante el juego. \r\n'),
(5, 'Economía', 'Los juegos de Economía animan a los jugadores a desarrollar y gestionar sistemas de producción, distribución, comercio y consumo de bienes. Estos juegos generalmente simulan un mercado de alguna manera. Este término es intercambiable con la categoría de Juegos de Gestión de Recursos.\r\n'),
(10, 'Civilizaciones', 'Los juegos de Civilizaciones a menudo hacen que los jugadores desarrollen y gestionen una sociedad de personas. El objetivo de cada jugador es, por lo general, emplear ciudadanos de modo que sean beneficiosos para la sociedad y hacer progresar a esta a lo largo de la partida, con el objetivo de imponerse a las sociedades de los demás jugadores. \r\n\r\nEstos juegos pueden obligar al jugador a desarrollar su civilización de forma independiente, o mediante la guerra y la diplomacia, y poseen gran interacción debido a que las acciones de un jugador suelen afectar a los demás jugadores. '),
(11, 'Negociación', 'Los juegos de Negociación tratan claramente de animar a los jugadores a hacer tratos y alianzas con otros jugadores, así como traicionar dichos tratos cuando sea conveniente. La victoria es muy difícil sin contar con la participación de estos tratos y alianzas. A diferencia de los juegos cooperativos, los juegos de Negociación son altamente competitivos, aunque garantizan que durante determinados momentos de la partida habrá acuerdos y ayuda entre jugadores. \r\n\r\n'),
(12, 'Juego de Cartas', 'Los Juegos de Cartas utilizan cartas como único componente (o, al menos, como componente central). Suelen ser juegos no-coleccionables, en los cuales se incluyen todas las cartas necesarias para jugar.\r\n\r\nA su vez están los Juegos de Cartas Coleccionables (CCG), donde los jugadores comprar packs de inicio y, posteriormente, sobres de refuerzo en un intento de construir barajas de cartas más poderosas y más competitivas. '),
(13, 'Ciencia Ficción', 'Los juegos de Ciencia Ficción suelen tener temáticas relacionadas con posibilidades imaginarias del mundo de la ciencia. Estos juegos no tienen por qué ser necesariamente futuristas, sino que pueden estar basados en versiones alternativas del pasado (Steampunk, por ejemplo). Aunque sí es cierto que muchos de los juegos de Ciencia Ficción más populares están ambientados en el espacio exterior, y a menudo incluyen razas alienígenas. \r\n'),
(14, 'Exploración espacial', 'Los juegos de Exploración Espacial a menudo tienen temáticas relacionadas con viajes y aventuras en el espacio exterior. En este tipo de juegos, los jugadores deben buscar y recoger recursos y controlar territorios como parte de los objetivos del juego. Muchos de los juegos más populares de Exploración Espacial también poseen la categoría de Ciencia Ficción.'),
(15, 'Aventura', 'Los juegos de Aventura a menudo tienen temas de heroísmo, exploración y resolución de puzzles. El argumento detrás de estos juegos suele tener elementos fantásticos e incluye personajes en algún tipo de reto o misión. \r\n'),
(16, 'Exploración', 'Los juegos de Exploración a menudo animan a los jugadores a buscar y descubrir nuevas áreas o territorios en busca de objetos o bienes, o buscar personas con las que comerciar posteriormente. \r\n\r\n'),
(17, 'Fantasía', 'Los juegos de Fantasía son aquellos que tienen temáticas y escenarios que únicamente existen en mundos ficticios. Es un género que utiliza la magia y otros elementos sobrenaturales como elemento principal de la trama o de la ambientación. La Fantasía se distingue de la Ciencia Ficción y el Horror en que no hay presencia de temáticas científicas o macabras, aunque a veces se aparecen juegos que mezclan las tres categorías. \r\n'),
(18, 'Lucha', 'Los juegos de Lucha son aquellos que animan a los jugadores a utilizar personajes que se meten en batallas y combates. Los juegos de Lucha difieren de los Wargames en que, en estos últimos, el combate existe como una parte de una simulación militar a gran escala, mientras que los juegos de Lucha se centran en combates a menor escala.'),
(19, 'Juego de Miniaturas', 'Los juegos de Miniaturas son aquellos en el que se utilizan miniaturas o figuras para representar las situaciones durante el juego. En este tipo de juegos, las miniaturas son el elemento clave y la partida representa las actividades y acciones de dichas miniaturas. No todos los juegos que incluyen miniaturas se consideran Juegos de Miniaturas. '),
(20, 'Abstracto', 'Los juegos Abstractos suelen ser (aunque no siempre): 1- Faltos de temática o argumento. 2- Construidos sobre mecánicas simples o con un diseño peculiar. 3- Juegos que anima a un jugador a vencer al otro en un reto de inteligencia. 4- Escasos elementos de suerte, azar o aleatoriedad.'),
(21, 'Puzzle', 'Los juegos de Puzzle son aquellos en el que los jugadores intentan resolver un puzzle o enigma. Muchos de estos juegos requieren de los jugadores capacidad para resolver problemas y habilidad en el reconocimiento de patrones, organización y secuenciación para poder cumplir sus objetivos. '),
(22, 'Basado en una novela', 'Los juegos Basados en una Novela son aquellos que temáticamente están conectados con una novela popular o una serie de libros. \r\n'),
(23, 'Industria / Manufactura', 'Los juegos de Industria/Manufactura son aquellos que animan a los jugadores a construir, gestionar y operar herramientas y maquinaria con el objetivo de convertir materias primas en bienes y productos. Muchos de los juegos de Industria/Manufactura también entran en la categoría de juegos de Economía. \r\n'),
(24, 'Construcción de Ciudades', 'Los juegos de Construcción de Ciudades obligan a los jugadores a construir y gestionar una ciudad, de modo que sea cada vez más eficiente, poderosa y/o lucrativa.\r\n'),
(25, 'Religioso', 'Un juego de temática Religiosa incluye elementos de su narrativa, ambientación o personajes que enlaza con sistemas de creencias (religiones) del mundo, ya sea en su aspecto histórico y su desarrollo a través del tiempo o en su estado actual.\r\n'),
(26, 'Engaño', 'Los juegos de Engaño animan a los jugadores a hacer tejemanejes para cumplir sus objetivos. Todos los juegos de Engaño contienen un elemento o componente oculto y secreto a los demás jugadores.\r\n'),
(27, 'Deducción', 'Los juegos de Deducción son aquellos que requieren que los jugadores formen conclusiones basadas en las pistas disponibles. Estos juegos pueden ser muy variados, incluyendo diversos tipos de pensamiento lógico. Los juegos de Gato y el Ratón son un tipo de juego de Deducción en el que los jugadores utilizan observaciones y pistas para acotar las posibilidades y atrapar a un oponente en constante movimiento.\r\n\r\nOtro ejemplo son los juegos de Eliminación, que son aquellos en los que se espera que los jugadores analicen las pistas disponibles y lleguen a la conclusión acertada de entre una gran lista de posibilidades. \r\n\r\n'),
(28, 'Basado en Película / Radio / Serie de TV', 'Los juegos Basados en Película / Radio / Serie de TV son aquellos que están temáticamente relacionados con una popular obra audiovisual. Algunos de estos juegos consisten en retar a los jugadores a demostrar su conocimiento sobre estas obras. Otros simplemente están ambientados en los mundos alternativos de estas obras audiovisuales. '),
(29, 'Política', 'Los juegos de Política animan a los jugadores a utilizar la autoridad de sus personajes para manipular las actividades de la sociedad y para crear leyes. \r\n'),
(30, 'Espías / Agentes Secretos', 'Los juegos de Espías/Agentes Secretos normalmente tienen temáticas o argumentos relacionados con el espionaje. En ocasiones, los jugadores deben identificar a otro jugador que ha adoptado el papel de espía o agente secreto y deben intentar obtener la información secreta que este jugador posee. Muchos de los juegos de esta categoría también se incluyen en la categoría Engaño y Deducción, puesto que contienen elementos de información oculta.\r\n\r\n'),
(31, 'Terror', 'Los juegos de Terror normalmente contienen temáticas e imaginería relacionada con elementos macabros y sobrenaturales. \r\n\r\n'),
(32, 'Asesinato / Misterio', 'Los juegos de Asesinato/Misterio incluyen un asesinato sin resolver. Un requerimiento de estos juegos es que los jugadores deben investigar dichos crímenes y determinar los detalles del mismo y el culpable. '),
(33, 'Juego de Dados', 'Los Juegos de Dados utilizan dados como elemento único (o, como mínimo, como elemento central). Los juegos de dados tradicionalmente se centran en tirar dados como mecánica de juego. \r\n'),
(34, 'Wargame', 'Wargames are games that depict military actions. Wargames are set in a variety of timelines, from the Ancient period to present conflicts and even in the future. Thematically, Wargames cover everything from actions between small units on a very small board to larger, extremely detailed conflicts and even global-scale wars. Although most Wargames are based on historical situations, there are Wargames based on fantasy or science fiction, as well as Wargames based on hypothetical but historically-based situations (e.g., nuclear war between the Soviet Union and the USA). Probably the most popular period for Wargames is World War II, followed by the Napoleonic Wars and the American Civil War. However, Wargames cover a vast range of conflicts, and if you are interested in a particular war you are quite likely to be able to find a game that covers it in some way.'),
(35, 'Basado en Videojuego', 'Los juegos Basados en Videojuegos son aquellos cuya temática está relacionada con algún popular videojuego. \r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriajuego`
--

CREATE TABLE IF NOT EXISTS `categoriajuego` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoriajuego`
--

INSERT INTO `categoriajuego` (`id`, `id_categoria`, `id_juego`) VALUES
(2, 2, 2),
(8, 1, 2),
(11, 10, 1),
(12, 11, 1),
(13, 10, 8),
(14, 5, 8),
(15, 12, 8),
(16, 13, 8),
(17, 14, 8),
(18, 3, 9),
(19, 4, 9),
(20, 5, 9),
(21, 15, 10),
(22, 16, 10),
(23, 17, 10),
(24, 18, 10),
(25, 19, 10),
(26, 20, 11),
(27, 21, 11),
(28, 22, 12),
(29, 2, 12),
(30, 12, 14),
(31, 3, 14),
(32, 11, 14),
(33, 1, 15),
(34, 5, 15),
(35, 2, 15),
(36, 23, 15),
(37, 24, 15),
(38, 25, 15),
(39, 13, 16),
(40, 14, 16),
(41, 26, 16),
(42, 27, 16),
(43, 28, 16),
(44, 29, 16),
(45, 30, 16),
(46, 15, 17),
(47, 16, 17),
(48, 17, 17),
(49, 18, 17),
(50, 19, 17),
(51, 21, 17),
(52, 31, 17),
(53, 32, 17),
(54, 33, 18),
(55, 34, 18),
(56, 15, 18),
(57, 17, 18),
(58, 19, 18),
(59, 22, 18),
(60, 2, 18),
(61, 24, 19),
(62, 10, 19),
(63, 11, 19),
(64, 16, 19),
(65, 35, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

CREATE TABLE IF NOT EXISTS `coleccion` (
  `id` int(11) NOT NULL,
  `id_juego` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `coleccion`
--

INSERT INTO `coleccion` (`id`, `id_juego`, `id_usuario`) VALUES
(1, 1, 31),
(2, 2, 31),
(3, 11, 32),
(4, 14, 31),
(5, 8, 31),
(6, 10, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencialenguaje`
--

CREATE TABLE IF NOT EXISTS `dependencialenguaje` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dependencialenguaje`
--

INSERT INTO `dependencialenguaje` (`id`, `descripcion`) VALUES
(4, 'Nula, solo instrucciones'),
(5, 'Uso moderado de textos - Fácil de memorizar'),
(7, 'Uso extenso de textos - es necesaria una conversión amplia para ser jugable'),
(8, 'Injugable en otros idiomas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `id` int(6) NOT NULL COMMENT 'Num.',
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Titulo',
  `contenido` longtext COLLATE utf8_unicode_ci COMMENT 'Contenido',
  `alta` date DEFAULT NULL COMMENT 'Alta',
  `cambio` date DEFAULT NULL COMMENT 'Cambio',
  `hits` int(10) DEFAULT NULL COMMENT 'Hits',
  `id_usuario` int(6) DEFAULT NULL COMMENT 'Usuario',
  `etiquetas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Etiquetas',
  `publicado` tinyint(1) DEFAULT NULL COMMENT 'Publicado',
  `portada` tinyint(1) DEFAULT NULL COMMENT 'Portada',
  `destacado` tinyint(1) DEFAULT NULL COMMENT 'Destacado',
  `id_tipodocumento` int(6) DEFAULT NULL COMMENT 'Tipo'
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id`, `titulo`, `contenido`, `alta`, `cambio`, `hits`, `id_usuario`, `etiquetas`, `publicado`, `portada`, `destacado`, `id_tipodocumento`) VALUES
(1, 'drdrdrtttwaaaa', '%3D%20Entrega%20de%20premios%20%3DsffsdfIntroducci%C3%B3n%20*%20ksjdlk%20*%20klk%C3%B1%20*%20k%C3%B1lk%C3%B1l//gdfg//dfgdfwdfgdfdfgdfgdfgdfgdfgdfgggggggggggggg%20dgdfgdfgdg%20dfgdfgdfgdfgddfgdgdfdd', '2068-04-01', '2067-12-07', 1, 0, 'das1a', 1, 1, 1, 0),
(2, 'doc%20de%20rafa1aaa', '%3DMi%20documento%2001%3D%0D%0A%0D%0A%20...', '2014-09-21', '2014-09-21', 411, 4, 'pepe', 1, 1, 0, 2),
(3, 'wwww1111', 'ggtttqqqd%20asdasdas%20das', '2014-09-28', '2014-09-28', 22, 5, 'pepe', 1, 1, 0, 3),
(4, 'sss', 'www', '2014-09-11', '2014-09-11', 0, 3, 'pepe', 1, 1, 0, 2),
(5, 'DFGDFG', 'HDFHDF', '2014-09-16', '2014-09-16', 1, 2, 'pepe', 1, 1, 0, 5),
(6, 'Mi doc', '[http://github.com|Github] \r\nhola =miau= [http://intel.com|Intel] \r\n hola ====jujujuj==== [http://google.es|Google]\r\n\r\n\r\n=rafa=\r\n\r\nHolaaaaaa\r\n\r\n==segundo titulo==\r\n\r\n<table class="table">\r\n<th><td>hola</td></th>\r\n</table>', '2013-11-19', NULL, 6, 5, 'rafa', NULL, NULL, NULL, NULL),
(7, 'doc de rafa', '=Mi documento 01=\r\n\r\n[http://materialesdaw-raznar.rhcloud.com|metriales daw] de rafa', '2013-11-20', NULL, 4, 4, 'rafa', NULL, NULL, NULL, NULL),
(8, 'swxxa%20sss%20s%20s%20', '', '2014-09-16', '2014-09-16', 0, 5, 'pepe', 1, 1, 0, 0),
(9, '', 'ssdwdwdss%20sssssss', '2014-09-16', '2014-09-16', 0, 3, 'rafa', 1, 1, 0, 0),
(10, 'DFGDFG', 'HDFHDF', '2013-11-20', NULL, 1, 1, 'rafa', NULL, NULL, NULL, NULL),
(19, 'assaaaaa', 'wedaaaa%20aaaaaaaaa%20cccc0000', '2014-10-15', '2014-10-15', 161, 4, 'aqw', 1, 1, 0, 9),
(22, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(23, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(24, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(25, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(26, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(27, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(28, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(29, 'dgdfgdfgdf', 'gdf', '2014-09-21', '2014-09-21', 555, 1, 'rafa', 0, 0, 0, 2),
(35, 'das', 'asdasd%20asdasd', '2014-09-28', '2014-09-28', 111, 2, 'ddd', 1, 1, 1, 10),
(36, 'dasd', 'asdas%20', '2014-09-28', '2014-09-28', 22, 1, 'ddd', 0, 1, 0, 2),
(37, 'ads', 'asd', '2014-09-28', '2014-09-28', 2, 1, 'das', 0, 0, 0, 3),
(38, 'fd', 'fsdfsd', '2014-09-28', '2014-09-28', 2, 1, 'das', 0, 0, 0, 3),
(39, 'fadf', 'sdf', '2014-09-28', '2014-09-28', 2222, 1, 'ana', 1, 1, 0, 3),
(41, 'fsd', 'sdf', '2014-09-28', '2014-09-28', 3, 1, 'ana', 0, 0, 0, 1),
(45, 'sdf', 'sdfaaaaaaaaaa', '2014-09-30', '2014-09-30', 3333, 1, 'fdsfsdf', 1, 1, 0, 1),
(46, 'hfghf', 'hf', '2014-10-19', '2014-10-19', 4, 1, 'hfg', 1, 1, 1, 6),
(47, 'hfgh', 'fhgh', '2014-10-24', '2014-10-24', 55, 1, '12%20rrr', 1, 1, 1, 2),
(48, 'gggggggg', 'hhhhhhhhhhh', '2014-10-25', '2014-10-25', 333, 2, 'gfdgdf%20rrrr', 1, 1, 1, 5),
(49, 'dfaaaaaaaaaaag', 'aaaaaaaaadfg', '2015-10-08', '2015-10-08', 1, 0, 'aaaaaaaaaaaaaaa', 0, 0, 1, 0),
(50, 'sfdf', 'sdfs', '2015-10-08', '2015-10-08', 1, 0, 'fsdfs', 0, 0, 0, 0),
(51, 'dfg', 'dfg', '2015-10-08', '2015-10-08', 1, 0, 'sdfsdfsfsdf', 0, 0, 0, 0),
(52, 'dasd', 'dasda', '2015-10-08', '2015-10-08', 1, 0, 'dasd', 0, 0, 0, 0),
(53, 'qqqqqqqqqqq', 'qqqqqqqqqqqqq', '2015-10-08', '2015-10-08', 1, 0, '', 1, 1, 1, 0),
(54, 'gdf', 'dfg', '2015-10-08', '2015-10-08', 1, 0, 'fsdf', 0, 0, 0, 0),
(55, 'qq%20qqqq%20qqqqqqqqqq%20qqqqq', 'ww%20wwwwwww%20wwwwwwwwww', '2015-10-08', '2015-10-08', 1, 0, 'wwwww%20wwww', 1, 1, 1, 0),
(56, 'bcv', 'cvb', '2015-10-08', '2015-10-08', 1, 0, 'vxc', 0, 0, 0, 0),
(57, 'das', 'asdasd', '2015-10-08', '2015-10-08', 1, 0, 'qqw', 1, 1, 1, 0),
(58, 'f', 'kjkj', '2015-10-08', '2015-10-08', 7, 0, '7yuty', 1, 0, 0, 0),
(59, 'fd%20fsdfsdf%20%20sdf%20s', '%20sdf%20sdfsd', '2015-10-20', '2015-10-08', 1, 0, '%20gdfgd%20f%20gdfg%20d', 0, 1, 0, 0),
(60, '12', 'www%20ccc', '2015-10-08', '2015-10-08', 1, 0, 'eded', 0, 0, 0, 0),
(61, 'wwwe', 'eeew', '2015-10-08', '2015-10-08', 1, 0, 'das', 0, 0, 0, 0),
(62, 'da', 'dasd', '2015-10-08', '2015-10-08', 1, 0, 'das', 0, 0, 0, 0),
(63, 'fgh', 'fgh', '2015-10-08', '2015-10-08', 1, 0, 'dfg', 0, 0, 0, 0),
(64, 'sad', 'asd', '2015-10-08', '2015-10-08', 1, 0, 'fsd', 0, 0, 0, 0),
(65, 'gdf', 'dgf', '2015-10-08', '2015-10-08', 1, 0, 'fds', 0, 0, 0, 0),
(66, 'gd', 'gd', '2015-10-08', '2015-10-08', 1, 0, 'dsf', 0, 0, 0, 0),
(67, 'sdf', 'fsd', '2015-10-08', '2015-10-08', 1, 0, 'sfd', 0, 0, 0, 0),
(68, 'das', 'ddddd', '2015-10-08', '2015-10-08', 1, 0, 'aaq', 1, 1, 1, 0),
(69, 'sdf', 'sdf', '2015-10-08', '2015-10-08', 1, 0, 'f', 0, 0, 0, 0),
(70, 'qqq', 'fff', '2015-10-09', '2015-10-09', 1, 0, 'fff', 0, 0, 1, 0),
(71, 'uuu', 'uuu', '2015-10-09', '2015-10-09', 2, 0, 'uu', 1, 0, 0, 0),
(72, 'kk', 'kkk', '2015-10-09', '2015-10-09', 1, 0, 'r', 0, 0, 0, 0),
(73, '11111111', '11111', '2015-10-10', '2015-10-10', 1, 0, '1', 1, 1, 1, 0),
(74, '11111111', '11111', '2015-10-10', '2015-10-10', 1, 0, '1', 1, 1, 1, 0),
(75, 'aaaa', 'aaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 0, 1, 0, 0),
(76, 'aaa', 'aaa', '2015-10-10', '2015-10-10', 1, 0, 'aaaaa', 0, 1, 0, 0),
(77, 'aaaaaa', 'aaaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 1, 1, 1, 0),
(78, 'aaaaaaaa', 'aaaaaaaaaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 1, 1, 1, 0),
(79, 'aa', 'aa', '2015-10-10', '2015-10-10', 1, 0, 'aa', 0, 1, 1, 0),
(80, 'h', 'h', '2015-10-11', '2015-10-11', 1, 0, 'a', 0, 1, 0, 0),
(81, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(82, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(83, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(84, 'sss', 'ssss', '2015-10-08', '2015-10-11', 1, 0, 'ssss', 0, 0, 1, 0),
(85, 'qqqqqqqqqqq', 'rrr', '2015-10-11', '2015-10-11', 3, 0, 'r', 0, 0, 0, 0),
(86, 'r', 'r', '2015-10-11', '2015-10-11', 1, 0, 'r', 0, 0, 0, 0),
(87, 'r', 'r', '2015-10-11', '2015-10-11', 3, 0, 'r', 1, 0, 0, 0),
(89, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(90, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(91, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(92, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(93, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(94, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(95, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(96, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(97, 'registro%20nuevo%20de%20rafa', 'contenido%20del%20registro%20nuevo%20de%20rafa%20para%20prueba%20de%20selenium', '2015-12-18', '2015-12-18', 1, 1, 'prueba', 1, 1, 1, 3),
(98, 'registro%20nuevo%20de%20rafa', 'contenido%20del%20registro%20nuevo%20de%20rafa%20para%20prueba%20de%20selenium', '2015-12-18', '2015-12-18', 1, 1, 'prueba', 1, 1, 1, 3),
(99, 'registro%20nuevo%20de%20rafa', 'contenido%20del%20registro%20nuevo%20de%20rafa%20para%20prueba%20de%20selenium', '2015-12-18', '2015-12-18', 1, 1, 'prueba', 1, 1, 1, 3),
(100, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(101, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(102, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(103, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(104, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(105, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(106, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(107, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(108, 'pruebarafa', 'pruebarafa', '2015-12-21', '2015-12-21', 1, 1, 'pruebarafa', 1, 1, 1, 3),
(109, 'pruebarafa', 'pruebarafa', '2015-12-21', '2015-12-21', 1, 1, 'pruebarafa', 0, 0, 0, 3),
(110, 'pruebarafa', 'pruebarafa', '2015-12-21', '2015-12-21', 1, 1, 'pruebarafa', 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE IF NOT EXISTS `editorial` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id`, `nombre`, `bio`, `website`, `imagen`) VALUES
(1, 'Devir', 'Devir es un grupo editorial brasileño fundado en 1987 y especializado en productos de ocio y entretenimiento: literatura fantástica, cómics y juegos de toda clase como juegos de rol, de tablero, de cartas coleccionables, de naipes, de miniaturas etc. El grupo tiene filiales en cinco países diferentes: Brasil, Portugal, España, Estados Unidos y Chile.', 'http://www.devir.es/', '/images/devir.jpg'),
(2, 'Edge Entertainment', 'Edge Entertainment es una editorial española especializada en la publicación de juegos de rol, aunque también publica juegos de tablero, de cartas y de miniaturas. Publica también historietas desde 2009 y libros de literatura desde 2011.\r\n\r\nOrganiza anualmente los Edge Days, unas jornadas nacionales dedicadas a demostraciones y campeonatos de muchos de los juegos de su catálogo.', 'http://www.edgeent.com/index.php/', '/images/edge.jpg'),
(3, 'Maldito Games', 'Maldito Games es una editorial de juegos de mesa de reciente creación.  A finales de noviembre llegará a las tiendas nuestro primer juego, “Patchwork”, un juego para dos jugadores de Uwe Rosenberg, diseñador de éxitos como Agrícola, Le Havre, Caverna…  Un magnífico juego de dos jugadores, que pese a no llevar ni un año en el mercado, ya se ha colado entre los cien mejores juegos de la BGG.  Ahora estamos trabajando en sacar el crowdfunding del Xia: Legends of a Drift System, un 4x del espacio, con 21 miniaturas pintadas, monedas de metal y muchas componentes más. La campaña está ahora mismo activa en Verkami.  Por favor, haznos un favor y regálanos un like en Facebook o siguénos en Twitter, que acabamos de empezar y toda ayuda es importante.  ¡ A jugar !', 'http://www.malditogames.com/', '/images/maldito.jpg'),
(4, 'Rio Grande Games', 'Rio Grande Games is dedicated to bringing you the best in family entertainment. We offer the best family strategy games available! We have games for younger children to play with their older siblings and parents, games for their older siblings to play with their friends, and games for teens and parents to play with each other or when they get together for social occasions.  We publish a large variety of our own games, but also import many multi-lingual games (in English, French, and, occasionally, other languages), that we feel could have a place in your homes.', 'http://www.riograndegames.com/', '/images/rio.jpg'),
(5, 'Mercurio', 'Mercurio Distribuciones es una empresa nacida en 2005 con el fin de distribuir ocio para toda la familia. Nuestras líneas de trabajo han sido muy amplias desde entonces, pero desde 2013 tomamos la decisión de dedicarnos plenamente a los juegos educativos, actualmente distribuyendo juegos de las marcas ThinkFun, Amigo y Zoch entre otras.     Somos un equipo formado por personas preparadas y concienciadas con su trabajo y con los productos que ofrecemos. Nuestra filosofía es acercar al público nuevos juegos en los que se prime el aprendizaje, el desarrollo de habilidades, la relación entre las personas y, en general, el fomento de la curiosidad humana a través del juego. Por eso, nosotros somos los primeros en probar nuestros juegos ¡y en disfrutarlos!  En nuestro catálogo podrás encontrar juegos para niños desde los 18 meses hasta los 99 años ¡y más! Creemos que el juego no tiene edad y es una manera saludable de ejercitar nuestras mentes.', 'http://www.mercurio.com.es/', '/images/mercurio.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ilustrador`
--

CREATE TABLE IF NOT EXISTS `ilustrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaNac` int(11) DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ilustrador`
--

INSERT INTO `ilustrador` (`id`, `nombre`, `fechaNac`, `bio`, `website`) VALUES
(2, 'Doris Matthäus', 1963, 'Doris Matthäus (nacida el 3 de abril de 1963 en Erlangen, Bavaria, Alemania) es una artista e ilustradora, quizás la primera ilustradora alemana que recibió reconocimiento internacional. Es también conocida por ilustrar el popular juego Carcassonne.\r\n\r\nEn 1992, se casó con su amigo diseñador de juegos Frank Nestel.\r\n\r\n', 'http://doris-frank.de/doris.html'),
(3, ' 	\r\nAnne Pätzke', 1982, 'Anne Patzke nació en Frankfurt (Oder) y estudió pintura clásica desde 1998 a 2000 en la Escuela Rosengarten. Desde 2002 vive en Berlín y trabaja en el sector multimedia y desarrolla, entre otros, el diseño de personajes. De 2003 a 2007 trabajó como co-editor de la revista Paper Theater de la editorial Verlag Schwarzer. En 2006 se publicó su primer libro para niños en Verlag Schwarzer, protagonizado por Kulla, un adorable conejito. En 2008, la serie fue continuada por la editorial Tokyopop.', 'https://de.wikipedia.org/wiki/Anne_P%C3%A4tzke'),
(4, 'Chris Quilliams', 1900, ' Chris Quilliams ha sido ilustrador freelance en la industria de juegos durante la última década y ha trabajado en licencias como Conan, Elric de Melnibone, Shadowfist, Starship Troopers, Ruin Quest, Traveller, Banestorm, Cybernet, Slaine y Godzilla. \r\n\r\n\r\nHa vivido en Winnipeg, Manitoba, Canada durante casi toda su vida y estudió Bellas Artes en la Universidad de Manitoba. En 2011 ganó el premio BGG "Golden Geek" a la "Mejor Ilustración/Arte de un juego de mesa" por su trabajo en el juego Merchants and Marauders.\r\n\r\n', 'http://chrisquilliams.deviantart.com/'),
(7, 'Kristofer Bengtsson', 1900, 'Escritor freelance, artista y editor. ', 'http://www.warofthering.eu/index.htm#ATHS'),
(8, 'John Howe', 1957, 'John Howe (nacido el 21 de agosto de 1957 en Vancouver, Canada) es un artista que ha vivido muchos años en Suiza. Es un ilustrador famoso de la obra de Tolkien. ', ''),
(9, 'Fabio Maiorana', 1900, 'Fabio Maiorana es un artista que trabajó en el diseño gráfico del juego de 2004 Guerra del Anillo. \r\n\r\n', ''),
(10, 'Christopher Burdett', 1900, 'Christopher Burdett es un artista freelance asentado en Florida, EEUU. Trabaja de forma intensiva con el gobierno local y estatal y diseña monstruos para películas y compañías de videojuegos. \r\n\r\nChristopher ha trabajado con Wizards of the Coast, Paizo Publishing, Fantasy Flight Games y Privateer Press en numerosas ilustraciones de libros y cartas, y en algunos proyectos de miniaturas. \r\n\r\nChristopher comenzó trabajando en TV y en el cine con proyectos como Buffy la Cazavampiros, Angel y Firefly. Numerosos monstruos del cine y la televisión pertenecen a la obra de Christopher. Después de dejar Los Angeles, comenzó a trabajar para Wizards of the Coast en Dreamblade, para pasar a realizar diseños para la 4a edición de Dungeons & Dragons y Magic: the Gathering.\r\n', 'http://www.christopherburdett.com/'),
(11, 'Anders Finér', 1900, 'Anders Finér es un artista auto-didacta originario de Sunne, Suecia, que vive actualmente en Oslo, Noruega.', 'http://www.andersfiner.com/'),
(12, 'Henning Ludvigsen', 1975, 'Henning Ludvigsen (nacido en 1975 en Holmestrand, Noruega) es un ilustrador digial con educación de Arte tradicional, 10 años de experiencia en Publicidad y 12 años de experiencia en desarrollo de videojuegos.\r\n\r\nEn su tiempo libre trabaja creado ilustraciones para juegos de mesa (en Fantasy Flight Games) y otros proyectos para otros clientes y su propia compañía. Ha ganado varios premios y se mantiene activo en varias comunidades artísticas de Internet. \r\n\r\nHenning trabaja como Director de Arte para Rock Pocket Games en Noruega, posee su propia compañía (Badger Punch Ltd.) y es socio de la compañía griega Aventurine S.A.\r\n\r\nLos juegos son su pasión, ya sean digitales o juegos de mesa. Ha trabajado en títulos como: Descent 2a Edición, Juego de Tronos (juego de cartas y de tablero), La Llamada de Cthulhu LCG,  varias expansiones para Arkham Horror, Civilization: El juego de mesa, El Señor de los Anillos LCG, además de haber realizado ilustraciones interiores y portadas de los juegos de rol de Warhammer 40K.', 'http://www.henningludvigsen.com/'),
(13, 'Martin Hoffman', 1900, 'Martin Hoffmann es un artista e ilustrador originario de Colonia, Alemania.', ''),
(14, 'Claus Stephan', 1900, '', ''),
(15, 'Mirko Suzuki', 1900, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ilustradorjuego`
--

CREATE TABLE IF NOT EXISTS `ilustradorjuego` (
  `id` int(11) NOT NULL,
  `id_ilustrador` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ilustradorjuego`
--

INSERT INTO `ilustradorjuego` (`id`, `id_ilustrador`, `id_juego`) VALUES
(1, 2, 2),
(2, 3, 2),
(3, 4, 2),
(10, 7, 18),
(11, 8, 18),
(12, 9, 18),
(13, 10, 17),
(14, 11, 17),
(15, 12, 17),
(16, 12, 19),
(17, 13, 8),
(18, 14, 8),
(19, 15, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE IF NOT EXISTS `juego` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaPublicacion` int(11) DEFAULT NULL,
  `jugMin` int(11) DEFAULT NULL,
  `jugMax` int(11) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `edad` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `id_editorial` int(11) DEFAULT NULL,
  `id_dependencialenguaje` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id`, `titulo`, `fechaPublicacion`, `jugMin`, `jugMax`, `duracion`, `descripcion`, `edad`, `website`, `imagen`, `id_editorial`, `id_dependencialenguaje`) VALUES
(1, 'Catan', 1995, 3, 4, 60, 'En Catan (anteriormente conocido como Los Colonos de Catan), los jugadores intentan convertirse en la fuerza dominante en la isla de Catan mediante la construcción de asentamientos, ciudades y carreteras. En cada turno, los dados son lanzados para determinar qué recursos produce la isla. Los jugadores recolectan estos recursos (cartas): madera, trigo, ladrillo, oveja y piedra. El objetivo es construir su civilización y obtener 10 puntos de victoria para ganar el juego. \r\n\r\nLos puntos se acumulan mediante la construcción de asentamientos y ciudades, obteniendo la carretera más larga, teniendo el ejército más grande u obteniendo ciertas cartas de puntuación. Cuando un jugador alcanza 10 puntos de victoria (algunos de los cuales pueden ser secretos), anuncia que ha obtenido los puntos necesarios y se proclama vencedor. \r\n\r\nCatan ha recibido múltiples premios y uno de los juegos más populares de los últimos tipos debido a su asombrosa habilidad para atraer por igual a jugadores expertos como novatos.\r\n\r\n', 8, 'http://www.catan.com/', '/images/catan.jpg', 1, 5),
(2, 'Carcassonne', 2000, 2, 5, 30, 'Carcassonne es un juego de colocación de losetas en el cual los jugadores roban y colocan una pieza cuadrada que contiene un trozo de paisaje típico del sur de Francia. La loseta puede contener una ciudad, una carretera, un monasterio, campos o una mezcla de todo ello, y debe ser colocada adyacente a otra loseta que haya sido jugada previamente. Las ciudades deben conectar entre sí, al igual que los caminos. \r\n\r\nUna vez colocada la loseta, el jugador debe decidir si colocar una de sus figuras (meeple) en alguna de las áreas de la loseta: un caballero en una ciudad, un ladrón en un camino, un monje en un monasterio o un granjero en un campo. Cuando un área concreta está completa, ese meeple obtiene cierta puntuación para su dueño.\r\n\r\nDurante una partida de Carcassonne, los jugadores se enfrentan a decisiones como: ''¿Vale la pena colocar mi último meeple ahí?'' o ''¿Debería utilizar esta loseta para expandir mi ciudad, o debería colocarla cerca de mi rival para entorpecer sus obras?''. Dado que los jugadores únicamente poseen una loseta por turno y solo pueden colocar un meeple en ella, el turno de juego es rápido pero lleno de posibilidades y decisiones a tomar. ', 8, 'http://www.zmangames.com/carcassonne-universe.html', '/images/carca.jpg', 1, 4),
(8, 'Race for the Galaxy', 2007, 2, 4, 60, 'En el juego de cartas Race for the Galaxy los jugadores construyen civilizaciones galácticas mediante la colocación de cartas que representan planetas o avances tecnológicos y sociales. Algunos de los planetas permiten a los jugadores producir bienes, que pueden ser consumidos más tarde para obtener más cartas o puntos de victoria. \r\n\r\nLos puntos de victoria son obtenidos principalmente por cartas de Desarrollo y Planetas que no tienen la capacidad de producir bienes, aunque ciertos planetas extraños hacen ambas cosas. \r\n\r\nAl comienzo de cada ronda, los jugadores seleccionan (de forma secreta y simultáneamente), una de entre 7 Cartas de Acción que se corresponde con una de las fases del juego. Al seleccionar una carta de Acción, los jugadores la activan en la fase correspondiente de esa ronda, concediendo a cada jugador la oportunidad de ejecutar la acción correspondiente a esa fase. Por ejemplo, si un jugador elige la carta de Colonizar, cada jugador tiene la oportunidad de colonizar uno de los planetas (cartas) que tienen en su mano. El jugador que eligió la carta, además, obtiene una bonificación que únicamente se aplica a él. Bonificaciones adicionales pueden ser obtenidas a través de la compra de cartas de Desarrollo, por lo que debes estar atento a las cartas jugadas por los demás jugadores, porque podrían obtener beneficios adicionales de tu Carta de Acción jugada.\r\n\r\n', 12, 'http://riograndegames.com/games.html?id=240', '/images/race.jpg', 4, 5),
(9, 'Agricola', 2007, 1, 5, 60, 'En Agricola representas ser un granjero que vive con su pareja en una cabaña de madera. En tu turno únicamente puedes ejecutar 2 acciones, una por tí y otra por tu pareja, de entre las que se pueden realizar en una granja: recoger arcilla, madera o piedra; construir vallados; cultivar campos y muchas más. Posiblemente pienses en tener hijos para obtener más acciones por turno y conseguir más rápidamente tus objetivos, pero para ello antes deberás ampliar tu casa. ¿Y qué piensas hacer con todos esos pequeñajos?\r\n\r\nEl juego está pensado para jugarse con diferentes niveles de complejidad, a través del uso (o no) de ciertas cartas (Adquisiciones Menores y Ocupaciones). En la versión para principiantes, llamada Variante Familiar, estas cartas no se utilizan para nada. Para partidas avanzadas se incluyen tres mazos de cartas: Básico (mazo E), Interactivo (mazo I) y Complejo (mazo K). El propio manual del juego te invita a experimentar con las distintas variantes.\r\n\r\nAgricola es un juego basado en turnos (concretamente hay 14) y se ejecutan en 6 grandes rondas. Al final de cada una de ellas (tras los turnos 4, 7, 9, 11, 13 y 14) se produce la Cosecha, en la cual los jugadores deberán alimentar a sus familias. Cada jugador comienza con dos fichas de juego (el granjero y su pareja) y se ejecutan 2 acciones por turno. A medida que el juego avanza las opciones se van ampliando, aunque existe un problema: una acción únicamente se puede ejecutar por un único personaje en cada turno, por lo que hay que tomar importantes decisiones sobre qué acciones son prioritarias. \r\n\r\nEn definitiva, es un juego tenso, táctico y con múltiples decisiones a tomar en cada turno. Al final de la partida se hace un recuento de puntos de victoria que se basa en la calidad y cantidad de elementos de cada granja. El que obtiene más puntos de victoria gana la partida.', 12, 'http://www.devir.es/producto/agricola/', '/images/agri.jpg', 1, 5),
(10, 'Descent: Journeys in the Dark', 2012, 2, 5, 120, 'Descent: Journeys in the Dark (Segunda Edición) es un juego de mesa en el que un jugador toma el papel de un traicionero Señor Oscuro y hasta cuatro jugadores toman el rol de héroes valerosos. Durante cada partida los héroes embarcan en apasionantes aventuras y se adentran en peligrosas cuevas, antiguas ruinas y oscuras mazmorras para luchar contra monstruos, obtener riquezas e intentar detener el maligno plan del Señor Oscuro. \r\n\r\nHabiendo peligros acechando en cada esquina, el combate es una necesidad. Para estas ocasiones, Descent utiliza un sistema único de dados. Los jugadores construyen una reserva de dados de acuerdo con sus habilidades y armas. Cada dado contribuye al ataque de diferentes modos: Ataques, Curaciones y Símbolos Especiales. \r\n\r\nEl juego incluye piezas de mapa a doble cara modulares, incontables héroes y combinaciones de habilidades y una campaña narrativa inmersiva que transporta a los héroes a un reino de fantasía vibrante en el que deben permanecer unidos contra el Mal Antiguo que acecha en las tierras de Terrinoth.', 10, 'http://www.edgeent.com/juegos/articulo/descent_viaje_a_las_tinieblas/descent_viaje_a_las_tinieblas_segunda_edicion', '/images/descent.jpg', 2, 7),
(11, 'Patchwork', 2014, 2, 0, 30, 'Patchwork es una técnica de costura en la que se van cosiendo trozos de tela unos a otros para crear una pieza más grande. Antiguamente, era una manera de usar retales de tela sobrantes para crear ropa y colchas\r\n\r\nHoy en día, el Patchwork se considera un arte, en el cual se usan telas de calidad para crear un bello diseño. Piezas de diferentes telas producen unos resultados que pueden llegar a considerarse verdaderas obras de arte.\r\n\r\nElaborar una preciosa colcha requiere mucho tiempo y esfuerzo, puesto que los retales disponibles no encajan fácilmente. Escoge tus parches sabiamente, colócalos en tu colcha, acumula una gran reserva de botones y no dejes demasiados huecos… o te costarán la partida.', 8, '', '/images/patch.jpg', 3, 4),
(12, 'El principito: Hazme un planeta', 2013, 2, 5, 25, 'En El Principito: Hazme un planeta, cada jugador construirá su propio planeta para proveer de un bello hogar a los adorables animales de la novela El Principito: el zorro, la oveja, el elefante y la serpiente. ¡Pero asegúrate que no haya demasiados baobabs o volcanes!\r\n\r\nEn cada ronda, el jugador inicial elige una de entre cuatro pilas de losetas y coge tantas losetas como el número de jugadores. Muestra todas las losetas, elige la que más le guste y elige a otro jugador para que elija otra. Esto es así hasta que todos los jugadores tienen una loseta, que procederán a colocar en su zona de juego para construir sus respectivos planetas.\r\n\r\nEn algunas losetas crecen árboles baobab, y tener demasiados de estos árboles es perjudicial. Si un jugador tiene tres baobab en su planeta, las tres losetas que los contienen se tendrán que voltear boca abajo, perdiendo su puntuación al final de la partida. \r\n\r\nAl final de la partida, cuando todo el mundo ha completado su planeta, cada jugador coloca 4 personajes (sacados de la novela original) que establecerán de qué manera puntuará el jugador. Cada volcán que posea un jugador en su planeta le restará un punto de victoria. Tras el recuento de puntos de victoria, el que sume más puntos gana la partida. ', 8, '', '/images/prince.jpg', 0, 4),
(14, 'Bohnanza', 1997, 2, 7, 45, 'Bohnanza es el primer juego de una serie de juegos familiares, publicados en distintas editoriales a lo largo de los años. Es un juego de cartas cuya mecánica más interesante consiste en que no puedes reponer tu mano de cartas de la forma normal. Cada carta contiene una ilustración de una habichuela antropomórfica de colores vivos, y el objetivo del juego es acumular monedas para plantar campos de estas habichuelas para, posteriormente, cosecharlas. Para conseguir las habichuelas de los colores que necesitas, tendrás que comerciar con los demás jugadores y llegar a acuerdos.\r\n', 13, '', '/images/bona.jpg', 5, 4),
(15, 'Ora et Labora', 2011, 1, 4, 180, '', 12, '', '/images/ora.jpg', 1, 5),
(16, 'Galactica: El juego de mesa', 2008, 3, 6, 120, 'Battlestar Galactica: El juego de mesa es un juego semi-cooperativo de 3 a 6 jugadores en el que cada uno elige un personaje de entre los pilotos, líderes políticos, jefes militares o ingenieros pertenecientes a la serie de TV Galactica. \r\n\r\nCada jugador recibe una carta de Lealtad al principio del juego para determinar si es un humano o un infiltrado Cylon. Cada tarjeta de personaje además tiene unas habilidades especiales que lo diferencian del resto de personajes. \r\n\r\nLos jugadores mueven y toman acciones cada turno, ya sea en la nave Galactica, en la Colonial One o en un caza Viper. El objetivo es acumular cartas de habilidad, expulsar a los cylon y mantener a Galactica a salvo durante su viaje. Al final de cada turno, se saca una carta de Crisis, con una serie de tareas que los jugadores deben superar para superarla. Los cylons infiltrados, a su vez, intentarán sabotear estas pruebas que no se superen las Crisis y entorpecer el viaje de Galactica lo más posible. \r\n\r\nEl objetivo del juego es obtener 8 puntos de viaje para llegar al planeta Kobol. Si esto sucede, los humanos ganan la partida. Si Galactica es destruida o alguno de sus recursos (Combustible, Moral, Alimentos o Población) llega a 0, los cylons ganan la partida. \r\n\r\n', 14, 'http://www.edgeent.com/juegos/coleccion/battlestar_galactica', '/images/galac.jpg', 2, 7),
(17, 'Mansiones de la Locura', 2011, 2, 5, 120, 'Horrendos monstruos y presencias espectrales acechan en mansiones, criptas, escuelas y monasterios cercanos a Arkham, Massachussets. Algunos elaboran oscuras conspiraciones mientras otros esperan pacientes para devorar a sus víctimas. \r\n\r\nEstá en la mano de un grupo de valientes investigadores el explorar estos lugares malditos y descubrir la verdad acerca de las pesadillas que habitan en ellos.\r\n\r\nDiseñado por Corey Konieczka, Mansiones de la Locura es un juego macabro de terror, locura y misterio para 2 a 5 jugadores. Cada partida transcurre en una historia pre-diseñada que proporciona a los jugadores un mapa único y diferentes combinaciones de subtramas. Estas subtramas afectan a los monstruos que los investigadores pueden encontrar, las pistas que necesitan encontrar y el clímax de la historia.\r\n\r\nUno de los jugadores adopta el papel del Guardián, controlando a los monstruos y demás poderes maliciosos de la historia. Los otros jugadores se convierten en los investigadores que buscan respuestas mientras luchan para sobrevivir con sus mentes intactas. ¿Os atreveréis a penetrar en las Mansiones de la Locura?\r\n', 14, 'http://www.edgeent.com/libros/coleccion/las_mansiones_de_la_locura', '/images/mansiones.jpg', 2, 7),
(18, 'Guerra del Anillo', 2012, 2, 4, 150, 'En Guerra del Anillo, un jugador toma el control de los Pueblos Libres mientras que el otro controla el Ejército de la Sombra. Inicialmente, los Pueblos Libres son reacios a alzarse en armas contra Sauron, por lo que deben ser atacados previamente o ser persuadidos por Gandalf u otros compañeros antes de comenzar a guerrear. \r\n\r\nLa victoria se puede obtener mediante Victoria Militar, si Sauron conquista un determinado número de Baluartes de los Pueblos Libres. Estos, por otra parte, ponen sus esperanzas en la misión del Portador del Anillo.\r\n\r\n The game can be won by a military victory, if Sauron conquers a certain number of Free People cities and strongholds or vice versa. But the true hope of the Free Peoples lies with the quest of the Ringbearer: while the armies clash across Middle Earth, the Fellowship of the Ring is trying to get secretly to Mount Doom to destroy the One Ring. Sauron is not aware of the real intention of his enemies but is looking across Middle Earth for the precious Ring, so that the Fellowship is going to face numerous dangers, represented by the rules of The Hunt for the Ring. But the Companions can spur the Free Peoples to the fight against Sauron, so the Free People player must balance the need to protect the Ringbearer from harm, against the attempt to raise a proper defense against the armies of the Shadow, so that they do not overrun Middle Earth before the Ringbearer completes his quest.  Each game turn revolves around the roll of Action Dice: each die corresponds to an action that a player can do during a turn. Depending on the face rolled on each die, different actions are possible (moving armies, characters, recruiting troops, advancing a Political Track).  Action dice can also be used to draw or play Event Cards. Event Cards are played to represent specific events from the story (or events which could possibly have happened) which cannot be portrayed through normal game-play. Each Event Card can also create an unexpected turn in the game, allowing special actions or altering the course of a battle.', 14, 'http://www.aresgames.eu/games/war-of-the-ring-line/war-of-the-ring-second-edition', '/images/anillo.jpg', 1, 7),
(19, 'Civilization: El juego de mesa', 2010, 2, 4, 180, 'Before you lies a vast bounty of land, ripe for the plucking. Your meager beginnings will influence the paths you must take. Lead your people well and they will take you to infinite heights of greatness. If civilization manages to endure the ages, your name will hang in every whisper of its legacy...  Fantasy Flight Games is excited to announce the upcoming release of Sid Meier’s Civilization: The Board Game! Forge an empire to stand the test of time using innovative game mechanics with multiple paths to victory.  Will you lead the greatest army in the world to conquer your foes? Or will you be the first to journey to the stars, becoming the most technologically advanced civilization known to man? The choice is yours.  Designed by Kevin Wilson, Civilization: The Board Game is inspired by the legendary video game series created by Sid Meier. Players are tasked with guiding an entire civilization throughout the ages, taking ownership of your people’s technology, economy, culture, and military, as well as all the choices that go along with them. There are four different paths to victory, and each is riddled with opposition.  In Civilization: The Board Game, 2-4 players take on the roles of famous leaders in charge of historical civilizations, each with their own abilities. Players will be able to explore a module game board, build cities and buildings, fight battles, research powerful technology, and attract great people by advancing their culture. No matter what your play style is, there is a civilization for you!  Fans of Sid Meier’s classic video game franchise will find familiar footing in Civilization: The Board Game. Staying true to the foundations of its video game predecessor while creating a new and unique way to play, Civilization: The Board Game captures the spirit and grandeur of carving out a magnificent empire from modest beginnings.  Players start off with a single city, one army figure, and one scout, and from these meager origins you must forge through the ages and become the greatest civilization in the world.  Those unfamiliar with the video game series will find Civilization: The Board Game a great way to enter into the world of Civilization. The strategy and tactical decisions involved in Civilization: The Board Game will appeal to strategy gamers and war gamers alike, and the ability to win through culture and technological advancement will give those who only wish to focus on their own empire a chance at victory as well.', 14, 'http://www.edgeent.com/libros/coleccion/civilization', '/images/civi.jpg', 2, 7),
(20, 'Twilight Struggle', 2011, 2, 0, 180, 'Twilight Struggle es un juego de mesa temático de guerra y estrategia para dos jugadores ambientado en la Guerra Fría. Un jugador representa a los Estados Unidos y el otro a la Unión Soviética.\r\n\r\nEl tablero es un mapa del mundo a finales de la Guerra Fría. Está dividido en seis regiones geo-políticas: África, América central, Asia (con la sub-región del sudeste asiático), Europa (dividida en oriental y occidental), Oriente Medio y Sudamérica. Las fronteras entre los países responden más a consideraciones de su relación durante el período en cuestión que a la geografía, pues países limítrofes en el mundo real pueden no tener relación directa en el tablero o viceversa. Además, posee múltiples áreas donde se colocan los marcadores usados para los diversos aspectos del juego, como la puntuación, la carrera espacial o la DEFCON actual.\r\n\r\nEl juego incluye 103 cartas (110 en la edición de lujo y una carta especial en la edición en español), 228 marcadores, el reglamento, dos cartillas de ayuda y dos dados de seis caras.', 14, 'http://www.devir.es/producto/twilight-struggle-la-guerra-fria-1945-1989/', '/images/twil.jpg', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `id` int(6) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `privado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`id`, `descripcion`, `privado`) VALUES
(1, 'oferta de trabajo', 1),
(2, 'currículum', 1),
(3, 'actividad', 1),
(4, 'experencia', 1),
(5, 'formación', 1),
(6, 'valía', 1),
(7, 'inscripción', 1),
(8, 'solicitud', 1),
(9, 'bolsa de trabajo', 1),
(10, 'idiomas', 1),
(11, 'wer', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(6) NOT NULL COMMENT 'Identificador',
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contraseña',
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `ciudad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ciudad',
  `firma` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Firma'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `id_tipousuario`, `ciudad`, `firma`) VALUES
(31, 'Alex', '338aede87c8cf2bd9e6e5e4440c21d34', 1, 'Valencia', 'No es oro todo lo que reluce, ni toda la gente errante anda perdida.'),
(32, 'Yolanda', '338aede87c8cf2bd9e6e5e4440c21d34', 1, 'Valencia', 'Dios no quiere que seas feliz, quiere que seas fuerte.'),
(35, 'Rafael', '9135d8523ad3da99d8a4eb83afac13d1', 1, 'Valencia', 'The Best');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autorjuego`
--
ALTER TABLE `autorjuego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoriajuego`
--
ALTER TABLE `categoriajuego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dependencialenguaje`
--
ALTER TABLE `dependencialenguaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ilustrador`
--
ALTER TABLE `ilustrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ilustradorjuego`
--
ALTER TABLE `ilustradorjuego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `autorjuego`
--
ALTER TABLE `autorjuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `categoriajuego`
--
ALTER TABLE `categoriajuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `dependencialenguaje`
--
ALTER TABLE `dependencialenguaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Num.',AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ilustrador`
--
ALTER TABLE `ilustrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `ilustradorjuego`
--
ALTER TABLE `ilustradorjuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
