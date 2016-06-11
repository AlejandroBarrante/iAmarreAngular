-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-06-2016 a las 07:53:31
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `fechaNac`, `bio`, `website`) VALUES
(1, 'Klaus Teuber', 1952, 'Klaus Teuber (n. 25 de junio de 1952), Alemán. Es conocido como diseñador de juegos de mesa. Ha ganado cuatro veces el premio Spiel des Jahres, para el juego Los Colonos de Catán, Barbarroja , Drunter und Drüber y Adel Verpflichtet. Se retiró de su profesión como protésico dental para convertirse a tiempo completo en diseñador de juegos en 1999. Desde 2007 vive en Darmstadt con su esposa Claudia. Tienen dos hijos, Guido y Cathan.', 'http://www.klausteuber.de/'),
(20, 'Thomas Lehmann', 1958, 'Tom Lehmann (nacido 1 de julio de 1958) ha trabajado como economista y escritor, pero es más conocido por ser diseñador de juegos. Tom Lehman fue el creador de la editorial Prism Games. Sus trabajos incluyen Fast Food Franchise, Time Agent, 2038 (con Jim Hlavaty), 1846, Magellan/Pizarro & Co., Jericho, To Court the King, Phoenicia y Race for the Galaxy. \r\n\r\nActualmente, Lehman diseña juegos para el mercado internacional. \r\n', 'http://sites.google.com/site/ptlehmann/gaming'),
(21, 'Klaus-Jürgen Wrede', 1963, 'Klaus-Jürgen Wrede (nacido en 1963 en Alemania) es un diseñador de juegos de mesa y profesor de música y teología. Ha creado el popular juego de mesa Carcassonne, además de todas sus expansiones.', 'http://www.kjwrede.de/'),
(22, 'Uwe Rosenberg', 1970, 'Uwe Rosenberg (nacido en Aurich, Baja Sajonia, el 27 Marzo de 1970) es un diseñador alemán de juegos de mesa modernos. Comenzó destacando con su juego de cartas Bohnanza, con el que obtuvo notoriedad tanto en su país natal como internacionalmente. Es el creador de Agricola, juego de mesa de estilo europeo que ostentó el número uno del ranking de la prestigiosa web de juegos de mesa BoardGameGeek desde septiembre de 2008 a marzo de 2010.  Conocido también por otros juegos de mesa basados en la gestión de recursos como Le Havre, Caverna y Ora et labora.', 'http://boardgamegeek.com/boardgamedesigner/10/uwe-rosenberg'),
(23, 'Corey Konieczka', 0, 'No se ha encontrado información', 'https://boardgamegeek.com/boardgamedesigner/6651/corey-konieczka'),
(24, 'Adam Sadler', 0, 'Adam Sadler ha trabajado como diseñador para Fantasy Flight Games hasta el año 2013. Durante ese tiempo, Adam trabajó como Director de Diseño para el juego Descent (2a Edición), así como diversas expansiones del mismo. Además, trabajó en otras líneas de juego como Tannhauser y Star Wars: X-Wing. Desde que ha dejado FFG, Adam ha perseguido el sueño de diseñar juegos de forma freelance junto a su hermano Brady.\r\n', 'https://boardgamegeek.com/boardgamedesigner/50880/adam-sadler'),
(25, 'Kevin Wilson', 0, 'Kevin Wilson es un diseñador de juegos conocido por su trabajo en Fantasy Flight Games. Previamente trabajó para Alderac Entertainment Group. Se introdujo en el mundo de los juegos de a través de la caja de Dungeons & Dragons cuando tenía 8 años. Su primer juego importante fue Madgar. Siempre ha considerado a Bruno Faidutti como uno de sus diseñadores de juegos favorito.\r\n\r\n', 'http://www.wilsoncreativellc.com/'),
(26, 'Antoine Bauza', 1978, 'Antoine Bauza es el popular diseñador de gran cantidad de juegos ganadores de premios, incluyendo 7 Wonders y Hanabi. Incluso antes del gran éxito de 7 Wonders, Antoine era bien conocido por muchos otros juegos, incluyendo el juego cooperativo Ghost Stories y la experiencia inmersiva de Tokaido.', 'http://www.antoinebauza.fr/'),
(27, 'Bruno Cathala', 1963, 'Bruno Cathala (nacido en 1963) es un diseñador de juegos francés que ha vivido en Haute-Savoie, cerca de Génova, Suiza, desde 1986.\r\n\r\nBruno Cathala es conocido por co-diseñar el juego Sombras sobre Camelot (2005, con Serge Laget), Mr. Jack (2006), Mr. Jack en New York (2009) y Cleopatra y la Sociedad de Arquitectos (2006), tdos ellos co-diseñados con Ludovic Maublanc.', 'http://www.brunocathala.com/'),
(29, 'Roberto Di Meglio', 1966, 'Roberto Di Meglio (Pisa, 29 de Marzo de 1966) es un diseñador de juegos italiano. Además de autor, también es editor de juegos de mesa y juegos de rol. Entre otras actividades, ha traducido historias de fantasía y ciencia-ficción para la revista de ciencia ficción de Isaac Asimov (edición italiana de la revista estadounidense) y ha publicado artículos en la revista Tolkien Endore.', 'http://boardgamegeek.com/boardgamedesigner/3247/roberto-di-meglio'),
(30, 'Francesco Nepitello', 0, 'Francesco Nepitello es un diseñador de juegos italiano. Es conocido principalmente por ser uno de los tres diseñadores del popular juego Guerra del Anillo, publicado actualmente por Ares Games. Es además uno de los diseñadores del juego de rol El Anillo Único, publicado por la editorial Cubicle 7. \r\n', 'http://cohorsarcana.blogspot.com/'),
(31, 'Jason Matthews', 0, 'Jason Matthews es un diseñador de juegos de mesa que vive en Alexandria, Virginia (EEUU). Es conocido por su trabajo en el juego Twilight Struggle.', 'http://talk.consimworld.com/WebX?230@@.1dd11464'),
(32, 'Ananda Gupta', 0, 'Ananda Gupta es un diseñador de juegos de mesa y de videojuegos, con 12 años de experiencia en el sector. Su último trabajo ha sido el videojuego XCOM: Enemy Unknown y su expansión XCOM: Enemy Within. Ganador en 2005 del premio James Dunnigan por la co-creación del juego de tablero Twilight Struggle, un juego de mesa sobre la Guerra Fría.', 'https://www.linkedin.com/in/ananda-gupta-8b0ba01/es'),
(33, 'Diego Ibáñez', NULL, 'Diego Ibáñez es un diseñador de juegos español, conocido por ser el autor del juego de Asylum Games Banjooli Xeet.', ''),
(34, 'Richard H Berg', 1943, 'Richard Harvey Berg es un prolífico diseñador de wargames residente en Charleston, South Carolina (EEUU).\n\nDiseñador de juegos desde 1975, conocido como el Pope de los Wargames, con cerca de 140 juegos publicados.  Ganador de diversos premios de la industria de los juegos, realiza su labor principalmente para GMT Games.', ''),
(35, 'Richard Borg', NULL, 'Richard Borg es un diseñador de juegos, conocido por la serie Command and Colors, pero también reconocido por muchos otros diseños. Borg diseñó su primer juego, Liars Dice, en 1987 para MB. Borg ha continuado desde entonces en el diseño de juegos, adaptando el sistema de Command and Colors a los juegos Battle Cry y Memoir 44.0 with Battle Cry.', 'http://www.aleaspiele.de/Pages/Borg/'),
(36, 'Philippe Keyaerts', NULL, 'Philippe Keyaerts es un diseñador de juegos belga y profesor de matemáticas en Bruselas. Además tiene un Doctorado en Matemáticas. Entre sus juegos más reconocidos se encuentran: Small World, Vinci, Evo y Olympos.', 'https://en.wikipedia.org/wiki/Philippe_Keyaerts'),
(37, 'Gabriele Mari', NULL, 'No se ha encontrado información.', ''),
(38, 'Gianluca Santopietro', 1962, 'Gianluca Santopietro (nacido el 8 de agosto de 1962), es un diseñador italiano de juegos, diseñador gráfico y director de arte en el estudio de desarrollo eNigma.it.\n\nSus juegos diseñados incluyen: Wizards of Mickey GCC, ¡Si Padrino Oscuro!, MotoGrandPrix y Sombras sobre Londres.\n\nAl mismo tiempo, también ha realizado el diseño gráfico para muchos juegos de mesa, trabajando con Stratelibri, Nexus, NG International, TenkiGames, NewMedia editorial y Giochi Uniti.\nLa mayoría de los juegos que ha diseñado como autor o como director de arte en todo el mundo han sido publicados gracias a Fantasy Flight Games y muchas otras grandes empresas internacionales', 'http://www.e-nigma.it/'),
(39, 'Frédéric Henry', NULL, 'Frédéric Henry es un diseñador de juegos de mesa y sociólogo francés.', 'http://www.mythologica.net/les-intervenants-du-monde-du-jeu-itw-ii-frederic-henry/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorjuego`
--

CREATE TABLE IF NOT EXISTS `autorjuego` (
  `id` int(11) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(14, 22, 15),
(15, 23, 16),
(16, 23, 17),
(17, 29, 18),
(18, 30, 18),
(32, 25, 19),
(33, 32, 20),
(34, 31, 20),
(35, 33, 24),
(36, 34, 25),
(37, 26, 27),
(38, 35, 26),
(39, 36, 28),
(40, 37, 29),
(41, 38, 29),
(42, 39, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Medieval', 'Los juegos Medievales suelen tener temáticas o argumentos localizados en Europa o Asia, entre el siglo V y el siglo XVI.'),
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
(34, 'Wargame', 'Wargames son los juegos que representan acciones militares. Los wargames están situados en un variedad de líneas de tiempo, recreando conflictos desde el período antiguo hasta el presente e incluso en el futuro. Temáticamente, los wargames cubren todo, desde las acciones entre las unidades pequeñas en un pequeño tablero hasta grandes y extremadamente detallados conflictos e incluso guerras a escala mundial. Aunque la mayoría de los wargames se basan en situaciones históricas, hay algunos basados en la fantasía o la ciencia ficción, así como wargames basados en situaciones hipotéticas, pero con base histórica (por ejemplo, la guerra nuclear entre la Unión Soviética y los EE.UU.). Probablemente el período más popular para wargames es la Segunda Guerra Mundial, seguido de las Guerras Napoleónicas y la Guerra Civil Americana. Sin embargo, los wargames cubren una amplia gama de conflictos, y si estás interesado en una guerra en particular, que es bastante probable que seas capaz de encontrar un juego que lo cubre de alguna manera.'),
(35, 'Basado en Videojuego', 'Los juegos Basados en Videojuegos son aquellos cuya temática está relacionada con algún popular videojuego. \r\n'),
(36, 'Guerra Moderna', 'Los juegos de Guerra Moderna cubren conflictos armados posteriores a la II Guerra Mundial. Hay dos guerras concretas que entran dentro de esta categoría: la Guerra de Corea y la Guerra de Vietnam.  Los juegos de esta categoría más populares están también categorizados bajo la categoría de Wargames.'),
(37, 'Carreras', 'Los juegos de Carreras normalmente implica a los jugadores en algún tipo de carrera, donde el objetivo es llegar el primero a un punto de control o meta, ya sea teniendo mayor velocidad o control que tus oponentes. Aunque aquellos juegos en el que los jugadores intentan conseguir un objetivo antes que sus rivales también son considerados juegos de Carreras (como el Dominion, esta categoría se refiere realmente a los juegos en los que hay una pista o circuito y en el que puede haber obstáculos que los jugadores deben sortear.'),
(38, 'Piratas', 'Los juegos de PIratas suelen tener temáticas relacionadas con la piratería. Algunos de los temas más populares conciernen a la búsqueda de tesoros, abordajes en el mar, combates de espadas y cañones, etc.'),
(39, 'Náutico', 'Los juegos Náuticos suelen estar relacionados con barcos, naves y con la navegación marítima como un componente principal del juego. Muchos juegos de este género requiere de los jugadores que puedan controlar barcos de forma efectiva.'),
(40, 'Segunda Guerra Mundial', 'Los juegos de Segunda Guerra Mundial están situados durante las campañas militares realizadas en Europa, Asia y África desde 1939 hasta 1945. Muchos juegos de esta categoría también suelen ser Wargames.'),
(41, 'Música', 'Los juegos de Música están temáticamente relacionados con con la música, los grupos o la industria musical. La mayoría de juegos de este tipo se centran en probar los conocimientos de los jugadores acerca del mundo musical, aunque hay algunos que usan el tema de la música como entorno del juego.'),
(42, 'Apuestas', 'Esta mecánica requiere que se haga una oferta, por lo general monetaria, en artículos en una subasta de bienes con el fin de mejorar su posición en el juego. Estos productos permiten a los jugadores acciones futuras o mejorar una posición. La subasta consiste en tomar turnos colocando las ofertas sobre un determinado artículo hasta que se establezca un ganador, lo que permite al mismo tomar control del elemento que se oferta. Por lo general, hay una regla de juego que ayuda a bajar el precio de los artículos que se oferta en caso de que no haya jugadores interesados en el producto con su precio actual.  Esta categoría es similar a Colocación de Trabajadores.'),
(43, 'Educativo', 'Los juegos Educativos han sido diseñados específicamente para enseñar a personas sobre un determinado tema, expandir conceptos, reforzar el desarrollo, entender un evento histórico o cultural, o asistirles en el aprendizaje de una habilidad mientras juegan.'),
(44, 'Memoria', 'Los juegos que usan la mecánica de Memoria requieren de los jugadores que recuerden eventos previos o información anterior del juego con el objetivo de alcanzar un objetivo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriajuego`
--

CREATE TABLE IF NOT EXISTS `categoriajuego` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(65, 35, 19),
(66, 34, 20),
(67, 29, 20),
(68, 33, 24),
(69, 26, 24),
(70, 37, 24),
(71, 15, 25),
(72, 34, 25),
(73, 38, 25),
(74, 39, 25),
(75, 34, 26),
(76, 40, 26),
(77, 12, 27),
(78, 41, 27),
(79, 42, 27),
(81, 43, 30),
(82, 12, 30),
(83, 26, 29),
(84, 27, 29),
(85, 32, 29),
(86, 44, 29),
(87, 17, 28),
(88, 18, 28),
(89, 2, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

CREATE TABLE IF NOT EXISTS `coleccion` (
  `id` int(11) NOT NULL,
  `id_juego` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `coleccion`
--

INSERT INTO `coleccion` (`id`, `id_juego`, `id_usuario`) VALUES
(2, 2, 31),
(3, 11, 32),
(8, 9, 31),
(10, 8, 31),
(12, 8, 35),
(13, 11, 31),
(15, 1, 31),
(16, 9, 35),
(17, 20, 35),
(18, 17, 31),
(19, 12, 31);

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
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE IF NOT EXISTS `editorial` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id`, `nombre`, `bio`, `website`, `imagen`) VALUES
(1, 'Devir', 'Devir es un grupo editorial brasileño fundado en 1987 y especializado en productos de ocio y entretenimiento: literatura fantástica, cómics y juegos de toda clase como juegos de rol, de tablero, de cartas coleccionables, de naipes, de miniaturas etc. El grupo tiene filiales en cinco países diferentes: Brasil, Portugal, España, Estados Unidos y Chile.', 'http://www.devir.es/', '/images/devir.jpg'),
(2, 'Edge Entertainment', 'Edge Entertainment es una editorial española especializada en la publicación de juegos de rol, aunque también publica juegos de tablero, de cartas y de miniaturas. Publica también historietas desde 2009 y libros de literatura desde 2011.\n\nOrganiza anualmente los Edge Days, unas jornadas nacionales dedicadas a demostraciones y campeonatos de muchos de los juegos de su catálogo.', 'http://www.edgeent.com/index.php/', '/images/edge.jpg'),
(3, 'Maldito Games', 'Maldito Games es una editorial de juegos de mesa de reciente creación.  A finales de noviembre llegará a las tiendas nuestro primer juego, “Patchwork”, un juego para dos jugadores de Uwe Rosenberg, diseñador de éxitos como Agrícola, Le Havre, Caverna…  Un magnífico juego de dos jugadores, que pese a no llevar ni un año en el mercado, ya se ha colado entre los cien mejores juegos de la BGG.  Ahora estamos trabajando en sacar el crowdfunding del Xia: Legends of a Drift System, un 4x del espacio, con 21 miniaturas pintadas, monedas de metal y muchas componentes más. La campaña está ahora mismo activa en Verkami.  Por favor, haznos un favor y regálanos un like en Facebook o siguénos en Twitter, que acabamos de empezar y toda ayuda es importante.  ¡ A jugar !', 'http://www.malditogames.com/', '/images/maldito.jpg'),
(4, 'Rio Grande Games', 'Rio Grande Games is dedicated to bringing you the best in family entertainment. We offer the best family strategy games available! We have games for younger children to play with their older siblings and parents, games for their older siblings to play with their friends, and games for teens and parents to play with each other or when they get together for social occasions.  We publish a large variety of our own games, but also import many multi-lingual games (in English, French, and, occasionally, other languages), that we feel could have a place in your homes.', 'http://www.riograndegames.com/', '/images/rio.jpg'),
(5, 'Mercurio', 'Mercurio Distribuciones es una empresa nacida en 2005 con el fin de distribuir ocio para toda la familia. Nuestras líneas de trabajo han sido muy amplias desde entonces, pero desde 2013 tomamos la decisión de dedicarnos plenamente a los juegos educativos, actualmente distribuyendo juegos de las marcas ThinkFun, Amigo y Zoch entre otras.     Somos un equipo formado por personas preparadas y concienciadas con su trabajo y con los productos que ofrecemos. Nuestra filosofía es acercar al público nuevos juegos en los que se prime el aprendizaje, el desarrollo de habilidades, la relación entre las personas y, en general, el fomento de la curiosidad humana a través del juego. Por eso, nosotros somos los primeros en probar nuestros juegos ¡y en disfrutarlos!  En nuestro catálogo podrás encontrar juegos para niños desde los 18 meses hasta los 99 años ¡y más! Creemos que el juego no tiene edad y es una manera saludable de ejercitar nuestras mentes.', 'http://www.mercurio.com.es/', '/images/mercurio.jpg'),
(6, 'Asmodee', 'Asmodee es el líder europeo en distribución de juegos de mesa y cartas coleccionables. Asmodee tiene presencia en Francia, Alemania, Bélgica, Holanda y España. Así como en Norte América ( Canadá y EEUU).\n\nAsmodee también es un reconocido editor, globalmente exitoso en juegos. Jungle Speed es nuestro juego más vendido y al mismo tiempo el juego más vendido en Francia, Bélgica y Holanda.', 'http://es.asmodee.com/', '/images/asmo.jpg'),
(7, 'GMT Games', 'GMT Games es un editor de wargames con sede en California fundada en 1990. La gestión actual y el equipo creativo incluye a Tony Curtis, Rodger MacGowan, Mark Simonitch, y Andy Lewis. La compañía ha llegado a ser bien conocida por juegos gráficamente atractivos que van desde ''monster games'' , de muchos mapas y contadores, hasta juegos bastante simples adecuados para introducir nuevos jugadores a los juegos de guerra. También producen juegos de cartas y juegos de mesa.\n\nEl nombre de GMT proviene de las iniciales del nombre de los fundadores de Gene Billingsley, Mike Crane, y Terry Shrum. Sin embargo, Crane y Shrum pronto se separaron de la compañía y fundaron su propia compañía, la Fresno Gaming Association', 'http://www.gmtgames.com/', '/images/gmt.jpg'),
(8, 'Days of Wonder', 'Days of Wonder es un editor de juegos de tablero propiedad de Asmodee Grupo desde 2014. Fundada en 2002, Days of Wonder distribuye sus juegos a 25 países. Se especializa en juegos de mesa de estilo alemán y se han diversificado para incluir algunos juegos online. Days of Wonder ha publicado juegos en Inglés, francés, alemán, español, italiano, holandés, húngaro, finlandés, polaco, danés, checo, sueco, noruego, coreano, japonés, portugués, ruso y griego. Days of Wonder fue co-fundada por Eric Hautemont, Pierre Gaubil, Mark Kaufman y Yann Corno. Bajo la guía del director creativo de la compañía, Cyrille Daujean, la compañía se consolidó rápidamente como un editor de juegos de mesa con componentes de primera clase y magníficos diseños.', 'https://www.daysofwonder.com/en/', '/images/days.jpg'),
(9, 'Asylum Games', 'Asylum Games es una empresa española, creada en 2011, cuyo principal objetivo es la publicación de juegos de mesa diseñados por autores nacionales y para todo tipo de públicos.\n\nAsí, en agosto de 2012 fue publicado su primer juego Polis: Fight for the Hegemony, diseñador por Fran Díaz e ilustrado por Marek Rutkowski. Al año siguiente fueron publicados dos juegos más: Banjooli Xeet, diseñado por Diego Ibáñez e ilustrado por Pedro Soto; y 21 Mutinies Arrr! Edition, diseñado por Pere Pau Llistosella e ilustrado por Chechu Nieto y repitiendo Pedro Soto. En 2013 también fue publicada por Pegasus Spiele la versión en alemán de Polis: Fight for the Hegemony. Para 2014 se esperan, al menos, dos juegos más.', 'http://www.asylumgameseditorial.com/', '/images/asylum.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ilustrador`
--

INSERT INTO `ilustrador` (`id`, `nombre`, `fechaNac`, `bio`, `website`) VALUES
(2, 'Doris Matthaus', 1963, 'Doris Matthäus (nacida el 3 de abril de 1963 en Erlangen, Bavaria, Alemania) es una artista e ilustradora, quizás la primera ilustradora alemana que recibió reconocimiento internacional. Es también conocida por ilustrar el popular juego Carcassonne.\r\n\r\nEn 1992, se casó con su amigo diseñador de juegos Frank Nestel.\r\n\r\n', 'http://doris-frank.de/doris.html'),
(3, ' 	\r\nAnne Pätzke', 1982, 'Anne Patzke nació en Frankfurt (Oder) y estudió pintura clásica desde 1998 a 2000 en la Escuela Rosengarten. Desde 2002 vive en Berlín y trabaja en el sector multimedia y desarrolla, entre otros, el diseño de personajes. De 2003 a 2007 trabajó como co-editor de la revista Paper Theater de la editorial Verlag Schwarzer. En 2006 se publicó su primer libro para niños en Verlag Schwarzer, protagonizado por Kulla, un adorable conejito. En 2008, la serie fue continuada por la editorial Tokyopop.', 'https://de.wikipedia.org/wiki/Anne_P%C3%A4tzke'),
(4, 'Chris Quilliams', NULL, 'Chris Quilliams ha sido ilustrador freelance en la industria de juegos durante la última década y ha trabajado en licencias como Conan, Elric de Melnibone, Shadowfist, Starship Troopers, Ruin Quest, Traveller, Banestorm, Cybernet, Slaine y Godzilla. \n\nHa vivido en Winnipeg, Manitoba, Canada durante casi toda su vida y estudió Bellas Artes en la Universidad de Manitoba. En 2011 ganó el premio BGG ''Golden Geek'' a la ''Mejor Ilustración/Arte de un juego de mesa'' por su trabajo en el juego Merchants and Marauders.', 'http://chrisquilliams.deviantart.com/'),
(7, 'Kristofer Bengtsson', NULL, 'Escritor freelance, artista y editor. ', 'http://www.warofthering.eu/index.htm#ATHS'),
(8, 'John Howe', 1957, 'John Howe (nacido el 21 de agosto de 1957 en Vancouver, Canada) es un artista que ha vivido muchos años en Suiza. Es un ilustrador famoso de la obra de Tolkien. ', 'http://www.john-howe.com/blog/'),
(9, 'Fabio Maiorana', NULL, 'Fabio Maiorana es un artista que trabajó en el diseño gráfico del juego de 2004 Guerra del Anillo. \r\n\r\n', ''),
(10, 'Christopher Burdett', NULL, 'Christopher Burdett es un artista freelance asentado en Florida, EEUU. Trabaja de forma intensiva con el gobierno local y estatal y diseña monstruos para películas y compañías de videojuegos. \r\n\r\nChristopher ha trabajado con Wizards of the Coast, Paizo Publishing, Fantasy Flight Games y Privateer Press en numerosas ilustraciones de libros y cartas, y en algunos proyectos de miniaturas. \r\n\r\nChristopher comenzó trabajando en TV y en el cine con proyectos como Buffy la Cazavampiros, Angel y Firefly. Numerosos monstruos del cine y la televisión pertenecen a la obra de Christopher. Después de dejar Los Angeles, comenzó a trabajar para Wizards of the Coast en Dreamblade, para pasar a realizar diseños para la 4a edición de Dungeons & Dragons y Magic: the Gathering.\r\n', 'http://www.christopherburdett.com/'),
(11, 'Anders Finér', NULL, 'Anders Finér es un artista auto-didacta originario de Sunne, Suecia, que vive actualmente en Oslo, Noruega.', 'http://www.andersfiner.com/'),
(12, 'Henning Ludvigsen', 1975, 'Henning Ludvigsen (nacido en 1975 en Holmestrand, Noruega) es un ilustrador digial con educación de Arte tradicional, 10 años de experiencia en Publicidad y 12 años de experiencia en desarrollo de videojuegos.\r\n\r\nEn su tiempo libre trabaja creado ilustraciones para juegos de mesa (en Fantasy Flight Games) y otros proyectos para otros clientes y su propia compañía. Ha ganado varios premios y se mantiene activo en varias comunidades artísticas de Internet. \r\n\r\nHenning trabaja como Director de Arte para Rock Pocket Games en Noruega, posee su propia compañía (Badger Punch Ltd.) y es socio de la compañía griega Aventurine S.A.\r\n\r\nLos juegos son su pasión, ya sean digitales o juegos de mesa. Ha trabajado en títulos como: Descent 2a Edición, Juego de Tronos (juego de cartas y de tablero), La Llamada de Cthulhu LCG,  varias expansiones para Arkham Horror, Civilization: El juego de mesa, El Señor de los Anillos LCG, además de haber realizado ilustraciones interiores y portadas de los juegos de rol de Warhammer 40K.', 'http://www.henningludvigsen.com/'),
(13, 'Martin Hoffman', NULL, 'Martin Hoffmann es un artista e ilustrador originario de Colonia, Alemania.', ''),
(14, 'Claus Stephan', NULL, '', ''),
(15, 'Mirko Suzuki', NULL, 'No se ha encontrado información', ''),
(16, 'Volkan Baga', 1977, 'Volkan Baga (nacido en 1977 en Würzburg, Bavaria, Alemania) es un artista que ha trabajado principalmente en el arte del popular juego de cartas Magic: The Gathering.', 'http://www.volkanbaga.de/'),
(17, 'Tanja Donner', 1970, 'Nacida en 1970 en Stuttgart, Alemania. Actualmente vive con un perro y dos gatos en Reutlingen, Alemania.\n\nDespués de estudiar en la Waldorf School, asistió a la Escuela de Arte de Stuttgart, donde hizo las prácticas como secretaria y, más tarde, como diseñadora. Su mayor éxito llegó al convertirse en ilustradora freelance. Su trabajo puede ser encontrado  en algunos libros y varios juegos de mesa, el más conocido de ellos el exitoso Catan, así como sus secuelas.', ''),
(18, 'Pete Fenlon', 1955, 'Peter C. Fenlon, Jr. (nacido en 1955 en Japón) es un ilustrador y desarrollador de juegos, ejecutivo y fundador de empresas de juegos, abogado, cartógrafo, diseñador gráfico, y editor. Es famoso sobre todo por ser el ex presidente y uno de los fundadores de Iron Crown Enterprises, uno de los creadores originales del sistema de juego de rol Rolemaster, y más tarde como director general de Mayfair Games. También ha sido el vicepresidente de Castle Hill Studios, una compañía de software con sede en Charlottesville, Virginia.\n\nTambién ha trabajado con Hero Games y Eidolon Studio. La mayor parte de mapas a todo color de la Tierra Media incluídos en el juego de rol MERP (El Señor de los Anillos) también son obras suyas. Ha trabajado en el campo de los juegos desde 1980. Se unió al equipo directivo de Mayfair Games en 1996, donde ha desempeñado los papeles de accionista, consejero, director del estudio y presidente.\n\nFenlon obtuvo un título en historia y antropología en la Universidad de Virginia y obtuvo el título de abogado en la Universidad de William & Mary.  Sus padres sirvieron ambos en la Fuerzas Aéreas de los Estados Unidos. Su padre, también llamado Peter C. Fenlon, era un coronel de las Fuerzas Aéreas, mientras que su madre era una enfermera de combate del ejército, que sirvió en el ejército de Patton en el norte de África e Italia.\n\nSe ha casado con la también diseñadora de juegos Olivia Johnston.', ''),
(19, 'Michael Menzel', 1974, 'Michael Menzel nació en 1974. Vive con su esposa Stefanie y su hijo Johannes en Krefeld, Alemania. En 2003 tuvo un golpe de suerte cuando empezó a ilustrar juegos. Hasta 2007 principalmente ilustró juegos familiares. En ese mismo año, la empresa HABA le ofreció la posibilidad de ilustrar juegos para niños y desde entonces, ilustrar juegos infantiles se ha convertido en una de sus actividades favoritas. \n\nEn los últimos años ha trabajado para HABA realizando exquisitas ilustraciones.', 'http://www.atelier-krapplack.de/'),
(20, 'Klemens Franz', 1979, 'Klemens Franz (nacido el 17 de abril de 1979 en Graz, Austria) es un ilustrador de juegos conocido por su trabajo en juegos como Agricola,  Luna, Merkator y Le Havre.', 'http://www.atelier198.com/'),
(21, 'Allison Theus', 1984, 'Allison Theus  es una artista de Portland, Oregon (EEUU) que nació y creció en el estado de Maryland (EEUU). Ha trabajado para Fantasy Flight Games, Rackham Games, Rainmaker Games y Disney.', 'http://oblivionunleashed.com/unleashed/index.php'),
(22, 'Alex Aparin', 1979, 'Alexey Aparin (nacido en 1979 en Moscú, Rusia) es un artista que ha trabajado para empresas como Fantasy Flight Games, Wizards of the Coast y Paizo Publishing.', 'http://www.belibr.com/'),
(23, 'Antoine de Saint Exupéry', 1900, '(Lyon, 1900 - en el mar Tirreno, 1944) Novelista y aviador francés; sus experiencias como piloto fueron a menudo su fuente de inspiración. Tercero de los cinco hijos de una familia de la aristocracia su padre tenía el título de vizconde, vivió una infancia feliz en las propiedades familiares, aunque perdió a su progenitor a la edad de cuatro años. Estuvo muy ligado a su madre, cuya sensibilidad y cultura lo marcaron profundamente, y con la que mantuvo una voluminosa correspondencia durante toda su vida.\n\nEl año 1926 marcó un giro decisivo en su vida, con la publicación de la novela breve, El aviador, en Le Navire dargent de J. Prévost, y con un contrato como piloto de línea para una sociedad de aviación. A partir de entonces, a cada escala del piloto correspondió una etapa de su producción literaria, alimentada con la experiencia. Mientras se desempeñaba como jefe de estación aérea en el Sahara español, escribió su primera novela, Correo del Sur (1928).\n\nDurante la Segunda Guerra Mundial luchó con la aviación francesa en misiones peligrosas, en especial sobre Arras, en mayo de 1940. Con la caída de Francia marchó a Nueva York, donde contó esta experiencia en Piloto de guerra (1942). En Estados Unidos se mantuvo al margen de los compromisos partidistas, lo que le atrajo la hostilidad de los gaullistas. Su meditación se elevaba por encima de la historia inmediata: sin desconocer las amenazas que la época hacía pesar sobre el ''respeto del hombre'', como lo relata en Carta a un rehén (1943), optó por la parábola con El principito (1943), una fábula infantil de contenido lirismo e ilustrada por él mismo, que le dio fama mundial.', ''),
(24, 'Kevin Childress', 1983, 'Kevin Childress es un artisto del área de Minneapolis (EEUU) que ha trabajado como diseñador a tiempo completo para Fantasy Flight Games. También ha trabajado para Games Workshop, Blizzard y el estudio de cine Paramount. Es un graduado en Bellas Artes en la Lynchburg College.', 'http://kevinchildress.carbonmade.com/'),
(25, 'Brian Schomburg', NULL, 'Brian Schomburg es un ilustrador que ha trabajado para Fantasy Flight Games desde 1999 y ha trabajado anteriormente para West End Games en muchos libros de Star Wars entre 1994 y 1998.', 'http://www.brianschomburg.com/'),
(26, 'Rodger B MacGowan', NULL, 'Rodger B. MacGowan (RBM) es el presidente de RBM Design Studio (fundada en 1973), vicepresidente y director de arte de GMT Games LLC (fundada en 1990), y el Fundador, Editor en Jefe y Director de Arte de C3i Magazine (una publicación fundada en 1992), que ganó un Premio a la  ''Mejor Revista Profesional'' en 2009.\n\nRodger B. MacGowan ha trabajado en más de 250 wargames y diseñado varias revistas de juegos en su carrera. También ha ganado numerosos premios de la industria de los juegos.', 'http://www.c3iopscenter.com/currentops/about/'),
(27, 'Chechu Nieto', NULL, 'Artista freelance de Barcelona, España, especializado en Dirección de Arte, DIseño Gráfico e Ilustraciones para juegos de mesa. Trabaja principalmente para White Goblin Games, GMT Games, Stronghold Games, Homoludicus, Asylum Games, Z-Man Games, Nestorgames y Quixotic Games.', 'https://chechunieto.carbonmade.com/'),
(28, 'Guillaume Ries', NULL, 'Ilustrador de juegos de mesa y Director de Arte residente en Levallois, Francia. Diseñador del arte de la nueva versión de Twilight Struggle. Trabaja como artista gráfico freelance para Lock''n Load Publishing  desde hace unos años, donde ha diseñado Line Of fire (la revista de LNL), así como cajas de juegos y mapas.', 'http://social.consimworld.com/profile/RiesGuillaume'),
(29, 'Pedro Soto', NULL, 'Artista autónomo español desde 2004. Ha realizado trabajos de diseño gráfico, web e ilustración para entidades públicas, editoriales y agencias de publicidad en forma de libros, cartelería, cómic, diseño de stands para convenciones e incluso, pequeños videojuegos para niños.\n\nActualmente, su interés acerca de los juegos de mesa ha guiado su trabajo de ilustración y diseño hacia los editores de este sector. También le gusta crear juegos y ha desarrollado varios prototipos de muy diversos estilos desde juegos duros de gestión a juegos más ligeros, todos basados en temas con oportunidades comerciales.', 'http://www.pedrosoto.es/'),
(30, 'Mark Mahaffey', NULL, 'Mark es un artista de juegos a tiempo completo, y un diseñador novato, que está actualmente finalizando su primer juego de mesa: The Inmost Sea: The Battle of Lepanto 1571.', 'http://www.west2productions.com/Mapology'),
(31, 'Leona Preston', 1984, 'Leona Preston (nacida en junio de 1984 en Londres, Inglaterra) es una artista y animadora. \n\nPreston ha vivido en Inglaterra, aunque creció en Alemania y Kenya. Le gusta que la llamen Leo.', 'https://boardgamegeek.com/weblink/75452/leona-preston-deviantartcom'),
(32, 'Michael Lemick', NULL, 'Michael Lemick fue el desarrollador de los juegos Corsairs & Hellcats y Zero!, artista de las piezas y fichas de Cataphract, Justinian, y War Galley,y el ilustrador de las cartas de Corsairs & Hellcats y Zero!', ''),
(33, 'Frank E Schoonover', 1877, 'Frank E. Schoonover (1877 - 1972) era un artista de New Jersey conocido como el Decano de los Artistas de Delaware. Fue un importante ilustrador americano, de la misma escuela que Howard Pyle. Cuando murió con la edad de 94 años, había dejado tras de sí más de 2000 ilustraciones.', ''),
(34, 'Don Perrin', 1964, 'Don Perrin (nacido el 1 de octubre de 1964 en Iserlohn, Alemania) es un diseñador de juegos canadiense, escritor y antiguo oficial militar que vive actualmente en Wisconsin (EEUU). Ha contribuido a las ilustraciones para novelas de Dragonlance. Además, junto con Michael Cosentino y Kathyrn Plamback compraron las revistas de wargames ''The Courier'' y ''MWAN'' y las combinaron en la revista ''Historical Miniature Gamer Magazine''. También dirige la empresa True North Miniatures. Estaba anteriormente casado con la diseñadora de juegos Margaret Weis.', 'https://en.wikipedia.org/wiki/Don_Perrin'),
(35, 'Raúl Castellanos', NULL, 'No se ha encontrado información.', ''),
(36, 'Miguel Coimbra', 1977, 'Miguel Coimbra (nacido el 9 de diciembre de 1977) es un artista y diseñador gráfico francés de origen portugués.', 'http://www.miguelcoimbra.com/myblog/folio.php'),
(37, 'Gianluca Santopietro', 1962, 'Gianluca Santopietro (nacido el 8 de agosto de 1962), es un diseñador italiano de juegos, diseñador gráfico y director de arte en el estudio de desarrollo eNigma.it. Sus juegos diseñados incluyen: Wizards of Mickey GCC, ¡Si Padrino Oscuro!, MotoGrandPrix y Sombras sobre Londres. Al mismo tiempo, también ha realizado el diseño gráfico para muchos juegos de mesa, trabajando con Stratelibri, Nexus, NG International, TenkiGames, NewMedia editorial y Giochi Uniti. La mayoría de los juegos que ha diseñado como autor o como director de arte en todo el mundo han sido publicados gracias a Fantasy Flight Games y muchas otras grandes empresas internacionales', 'http://www.e-nigma.it/'),
(38, 'Xavier Collette', NULL, 'Xavier Collette es un artista belga que ha proporcionado el arte para el juego de mesa Timeline y el juego de rol Kuro.', 'http://www.xaviercollette.com/'),
(39, 'Nicolas Fructus', 1970, 'Nicolas Fructus (nacido el 24 de junio de 1970 enLyon, Francia) es un artista de cómic francés que ha trabajado en diseño de videojuegos y en el campo de la animación. Ha estudiado en la École Emile Cohl en Lyron.', 'http://fructusnico.free.fr/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ilustradorjuego`
--

CREATE TABLE IF NOT EXISTS `ilustradorjuego` (
  `id` int(11) NOT NULL,
  `id_ilustrador` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(19, 15, 8),
(20, 16, 1),
(21, 17, 1),
(22, 18, 1),
(23, 19, 1),
(24, 20, 0),
(25, 20, 9),
(26, 12, 10),
(27, 21, 10),
(28, 22, 10),
(29, 20, 11),
(30, 23, 12),
(31, 20, 15),
(32, 24, 16),
(33, 25, 16),
(34, 26, 20),
(35, 27, 20),
(36, 28, 20),
(37, 29, 24),
(38, 26, 25),
(39, 30, 25),
(40, 31, 25),
(41, 32, 25),
(42, 33, 25),
(43, 34, 26),
(44, 35, 27),
(45, 36, 28),
(46, 37, 29),
(47, 38, 30),
(48, 39, 30);

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
  `imagen2` longtext COLLATE utf8_unicode_ci,
  `id_editorial` int(11) DEFAULT NULL,
  `id_dependencialenguaje` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id`, `titulo`, `fechaPublicacion`, `jugMin`, `jugMax`, `duracion`, `descripcion`, `edad`, `website`, `imagen`, `imagen2`, `id_editorial`, `id_dependencialenguaje`) VALUES
(1, 'Catan', 1995, 3, 4, 60, 'En Catan (anteriormente conocido como Los Colonos de Catan), los jugadores intentan convertirse en la fuerza dominante en la isla de Catan mediante la construcción de asentamientos, ciudades y carreteras. En cada turno, los dados son lanzados para determinar qué recursos produce la isla. Los jugadores recolectan estos recursos (cartas): madera, trigo, ladrillo, oveja y piedra. El objetivo es construir su civilización y obtener 10 puntos de victoria para ganar el juego. \r\n\r\nLos puntos se acumulan mediante la construcción de asentamientos y ciudades, obteniendo la carretera más larga, teniendo el ejército más grande u obteniendo ciertas cartas de puntuación. Cuando un jugador alcanza 10 puntos de victoria (algunos de los cuales pueden ser secretos), anuncia que ha obtenido los puntos necesarios y se proclama vencedor. \r\n\r\nCatan ha recibido múltiples premios y uno de los juegos más populares de los últimos tipos debido a su asombrosa habilidad para atraer por igual a jugadores expertos como novatos.\r\n\r\n', 8, 'http://www.catan.com/', '/images/catan.jpg', '/images/catan2.jpg', 1, 5),
(2, 'Carcassonne', 2000, 2, 5, 30, 'Carcassonne es un juego de colocación de losetas en el cual los jugadores roban y colocan una pieza cuadrada que contiene un trozo de paisaje típico del sur de Francia. La loseta puede contener una ciudad, una carretera, un monasterio, campos o una mezcla de todo ello, y debe ser colocada adyacente a otra loseta que haya sido jugada previamente. Las ciudades deben conectar entre sí, al igual que los caminos. \r\n\r\nUna vez colocada la loseta, el jugador debe decidir si colocar una de sus figuras (meeple) en alguna de las áreas de la loseta: un caballero en una ciudad, un ladrón en un camino, un monje en un monasterio o un granjero en un campo. Cuando un área concreta está completa, ese meeple obtiene cierta puntuación para su dueño.\r\n\r\nDurante una partida de Carcassonne, los jugadores se enfrentan a decisiones como: ''¿Vale la pena colocar mi último meeple ahí?'' o ''¿Debería utilizar esta loseta para expandir mi ciudad, o debería colocarla cerca de mi rival para entorpecer sus obras?''. Dado que los jugadores únicamente poseen una loseta por turno y solo pueden colocar un meeple en ella, el turno de juego es rápido pero lleno de posibilidades y decisiones a tomar. ', 8, 'http://www.devir.es/producto/carcassonne-2015/', '/images/carca.jpg', '/images/carca2.jpg', 1, 4),
(8, 'Race for the Galaxy', 2007, 2, 4, 60, 'En el juego de cartas Race for the Galaxy los jugadores construyen civilizaciones galácticas mediante la colocación de cartas que representan planetas o avances tecnológicos y sociales. Algunos de los planetas permiten a los jugadores producir bienes, que pueden ser consumidos más tarde para obtener más cartas o puntos de victoria. \r\n\r\nLos puntos de victoria son obtenidos principalmente por cartas de Desarrollo y Planetas que no tienen la capacidad de producir bienes, aunque ciertos planetas extraños hacen ambas cosas. \r\n\r\nAl comienzo de cada ronda, los jugadores seleccionan (de forma secreta y simultáneamente), una de entre 7 Cartas de Acción que se corresponde con una de las fases del juego. Al seleccionar una carta de Acción, los jugadores la activan en la fase correspondiente de esa ronda, concediendo a cada jugador la oportunidad de ejecutar la acción correspondiente a esa fase. Por ejemplo, si un jugador elige la carta de Colonizar, cada jugador tiene la oportunidad de colonizar uno de los planetas (cartas) que tienen en su mano. El jugador que eligió la carta, además, obtiene una bonificación que únicamente se aplica a él. Bonificaciones adicionales pueden ser obtenidas a través de la compra de cartas de Desarrollo, por lo que debes estar atento a las cartas jugadas por los demás jugadores, porque podrían obtener beneficios adicionales de tu Carta de Acción jugada.\r\n\r\n', 12, 'http://riograndegames.com/games.html?id=240', '/images/race.jpg', '/images/race2.jpg', 4, 5),
(9, 'Agricola', 2007, 1, 5, 60, 'En Agricola representas ser un granjero que vive con su pareja en una cabaña de madera. En tu turno únicamente puedes ejecutar 2 acciones, una por tí y otra por tu pareja, de entre las que se pueden realizar en una granja: recoger arcilla, madera o piedra; construir vallados; cultivar campos y muchas más. Posiblemente pienses en tener hijos para obtener más acciones por turno y conseguir más rápidamente tus objetivos, pero para ello antes deberás ampliar tu casa. ¿Y qué piensas hacer con todos esos pequeñajos?\r\n\r\nEl juego está pensado para jugarse con diferentes niveles de complejidad, a través del uso (o no) de ciertas cartas (Adquisiciones Menores y Ocupaciones). En la versión para principiantes, llamada Variante Familiar, estas cartas no se utilizan para nada. Para partidas avanzadas se incluyen tres mazos de cartas: Básico (mazo E), Interactivo (mazo I) y Complejo (mazo K). El propio manual del juego te invita a experimentar con las distintas variantes.\r\n\r\nAgricola es un juego basado en turnos (concretamente hay 14) y se ejecutan en 6 grandes rondas. Al final de cada una de ellas (tras los turnos 4, 7, 9, 11, 13 y 14) se produce la Cosecha, en la cual los jugadores deberán alimentar a sus familias. Cada jugador comienza con dos fichas de juego (el granjero y su pareja) y se ejecutan 2 acciones por turno. A medida que el juego avanza las opciones se van ampliando, aunque existe un problema: una acción únicamente se puede ejecutar por un único personaje en cada turno, por lo que hay que tomar importantes decisiones sobre qué acciones son prioritarias. \r\n\r\nEn definitiva, es un juego tenso, táctico y con múltiples decisiones a tomar en cada turno. Al final de la partida se hace un recuento de puntos de victoria que se basa en la calidad y cantidad de elementos de cada granja. El que obtiene más puntos de victoria gana la partida.', 12, 'http://www.devir.es/producto/agricola/', '/images/agri.jpg', '/images/agri2.jpg', 1, 5),
(10, 'Descent 2a Edición', 2012, 2, 5, 120, 'Descent: Journeys in the Dark (Segunda Edición) es un juego de mesa en el que un jugador toma el papel de un traicionero Señor Oscuro y hasta cuatro jugadores toman el rol de héroes valerosos. Durante cada partida los héroes embarcan en apasionantes aventuras y se adentran en peligrosas cuevas, antiguas ruinas y oscuras mazmorras para luchar contra monstruos, obtener riquezas e intentar detener el maligno plan del Señor Oscuro. \r\n\r\nHabiendo peligros acechando en cada esquina, el combate es una necesidad. Para estas ocasiones, Descent utiliza un sistema único de dados. Los jugadores construyen una reserva de dados de acuerdo con sus habilidades y armas. Cada dado contribuye al ataque de diferentes modos: Ataques, Curaciones y Símbolos Especiales. \r\n\r\nEl juego incluye piezas de mapa a doble cara modulares, incontables héroes y combinaciones de habilidades y una campaña narrativa inmersiva que transporta a los héroes a un reino de fantasía vibrante en el que deben permanecer unidos contra el Mal Antiguo que acecha en las tierras de Terrinoth.', 10, 'http://www.edgeent.com/juegos/articulo/descent_viaje_a_las_tinieblas/descent_viaje_a_las_tinieblas_segunda_edicion', '/images/descent.jpg', '/images/descent2.jpg', 2, 7),
(11, 'Patchwork', 2014, 2, 0, 30, 'Patchwork es una técnica de costura en la que se van cosiendo trozos de tela unos a otros para crear una pieza más grande. Antiguamente, era una manera de usar retales de tela sobrantes para crear ropa y colchas\r\n\r\nHoy en día, el Patchwork se considera un arte, en el cual se usan telas de calidad para crear un bello diseño. Piezas de diferentes telas producen unos resultados que pueden llegar a considerarse verdaderas obras de arte.\r\n\r\nElaborar una preciosa colcha requiere mucho tiempo y esfuerzo, puesto que los retales disponibles no encajan fácilmente. Escoge tus parches sabiamente, colócalos en tu colcha, acumula una gran reserva de botones y no dejes demasiados huecos… o te costarán la partida.', 8, 'http://www.malditogames.com/juegos/', '/images/patch.jpg', '/images/patch2.jpg', 3, 4),
(12, 'El Principito', 2013, 2, 5, 25, 'En El Principito: Hazme un planeta, cada jugador construirá su propio planeta para proveer de un bello hogar a los adorables animales de la novela El Principito: el zorro, la oveja, el elefante y la serpiente. ¡Pero asegúrate que no haya demasiados baobabs o volcanes!\n\nEn cada ronda, el jugador inicial elige una de entre cuatro pilas de losetas y coge tantas losetas como el número de jugadores. Muestra todas las losetas, elige la que más le guste y elige a otro jugador para que elija otra. Esto es así hasta que todos los jugadores tienen una loseta, que procederán a colocar en su zona de juego para construir sus respectivos planetas.\n\nEn algunas losetas crecen árboles baobab, y tener demasiados de estos árboles es perjudicial. Si un jugador tiene tres baobab en su planeta, las tres losetas que los contienen se tendrán que voltear boca abajo, perdiendo su puntuación al final de la partida. \n\nAl final de la partida, cuando todo el mundo ha completado su planeta, cada jugador coloca 4 personajes (sacados de la novela original) que establecerán de qué manera puntuará el jugador. Cada volcán que posea un jugador en su planeta le restará un punto de victoria. Tras el recuento de puntos de victoria, el que sume más puntos gana la partida.', 8, '', '/images/prince.jpg', '/images/prince2.jpg', 6, 4),
(15, 'Ora et Labora', 2011, 1, 4, 180, 'Un juego sobre economía monástica en la Edad Media.\n\nCon Ora et Labora te pondrás a la cabeza de un monasterio medieval como su prior. Consigue tierras, obtén recursos y construye edificios para obtener una infraestructura de trabajo que te permita fabricar artículos a cada cual más codiciado.\n\nGanará quien a través de la oración (Ora) y el trabajo duro (Labora) consiga la mayor gloria de Dios.\n\nOra et Labora ofrece dos variantes de juego: Francia e Irlanda.\n\nOra et Labora es un juego para 1-4 jugadores que incorpora a su vez una versión corta. Incluye asimismo dos reglamentos, uno narrativo y otro detallado, para facilitar el aprendizaje y una versión en solitario que permite una primera toma de contacto con las mecánicas.', 12, 'http://www.devir.es/producto/ora-et-labora/', '/images/ora.jpg', '/images/ora2.jpg', 1, 5),
(16, 'Galactica: El juego de mesa', 2008, 3, 6, 120, 'Battlestar Galactica: El juego de mesa es un juego semi-cooperativo de 3 a 6 jugadores en el que cada uno elige un personaje de entre los pilotos, líderes políticos, jefes militares o ingenieros pertenecientes a la serie de TV Galactica. \r\n\r\nCada jugador recibe una carta de Lealtad al principio del juego para determinar si es un humano o un infiltrado Cylon. Cada tarjeta de personaje además tiene unas habilidades especiales que lo diferencian del resto de personajes. \r\n\r\nLos jugadores mueven y toman acciones cada turno, ya sea en la nave Galactica, en la Colonial One o en un caza Viper. El objetivo es acumular cartas de habilidad, expulsar a los cylon y mantener a Galactica a salvo durante su viaje. Al final de cada turno, se saca una carta de Crisis, con una serie de tareas que los jugadores deben superar para superarla. Los cylons infiltrados, a su vez, intentarán sabotear estas pruebas que no se superen las Crisis y entorpecer el viaje de Galactica lo más posible. \r\n\r\nEl objetivo del juego es obtener 8 puntos de viaje para llegar al planeta Kobol. Si esto sucede, los humanos ganan la partida. Si Galactica es destruida o alguno de sus recursos (Combustible, Moral, Alimentos o Población) llega a 0, los cylons ganan la partida. \r\n\r\n', 14, 'http://www.edgeent.com/juegos/coleccion/battlestar_galactica', '/images/galac.jpg', '/images/galac2.jpg', 2, 7),
(17, 'Mansiones de la Locura', 2011, 2, 5, 120, 'Horrendos monstruos y presencias espectrales acechan en mansiones, criptas, escuelas y monasterios cercanos a Arkham, Massachussets. Algunos elaboran oscuras conspiraciones mientras otros esperan pacientes para devorar a sus víctimas. \r\n\r\nEstá en la mano de un grupo de valientes investigadores el explorar estos lugares malditos y descubrir la verdad acerca de las pesadillas que habitan en ellos.\r\n\r\nDiseñado por Corey Konieczka, Mansiones de la Locura es un juego macabro de terror, locura y misterio para 2 a 5 jugadores. Cada partida transcurre en una historia pre-diseñada que proporciona a los jugadores un mapa único y diferentes combinaciones de subtramas. Estas subtramas afectan a los monstruos que los investigadores pueden encontrar, las pistas que necesitan encontrar y el clímax de la historia.\r\n\r\nUno de los jugadores adopta el papel del Guardián, controlando a los monstruos y demás poderes maliciosos de la historia. Los otros jugadores se convierten en los investigadores que buscan respuestas mientras luchan para sobrevivir con sus mentes intactas. ¿Os atreveréis a penetrar en las Mansiones de la Locura?\r\n', 14, 'http://www.edgeent.com/libros/coleccion/las_mansiones_de_la_locura', '/images/mansiones.jpg', '/images/mansiones2.jpg', 2, 7),
(18, 'Guerra del Anillo', 2012, 2, 4, 150, 'Bienvenido a Guerra del anillo, el juego de tablero de estrategia.\n\nGuerra del anillo es un juego para dos a cuatro jugadores, basado en El Señor de los AnillosTM de J. R. R. Tolkien.\n\nLos jugadores toman parte en el conflicto entre los ejércitos de los Pueblos Libres y los heroicos compañeros de la Comunidad del Anillo contra las oscuras huestes de la Sombra y los poderosos Servidores del Señor Oscuro.\n\nEn una partida de dos jugadores, cada oponente liderará a los Pueblos Libres o a los ejércitos de la Sombra, mientras que en una partida de tres o cuatro jugadores, los jugadores se organizarán en dos equipos, cada uno de ellos controlando una de las dos facciones.\n\nEn cada partida de Guerra del anillo, el jugador que controle la Sombra intentará usar su poder militar superior para conquistar la Tierra Media.\n\nBajo su mando se reúnen las legiones de Sauron de Orcos y Trolls, las fuerzas del mago Saruman y las huestes de los Hombres del Sur y los Hombres del Este, dispuestos a hacer caer la oscuridad sobre el Oeste.', 14, 'http://www.devir.es/producto/la-guerra-del-anillo/', '/images/anillo.jpg', '/images/anillo2.jpg', 1, 7),
(19, 'Sid Meier''s: Civilization', 2010, 2, 4, 180, 'Diseñado por Kevin Wilson, Civilization está inspirado en el legendario videojuego creado por Sid Meier. Los jugadores deben guíar a una civilización a través de las eras, controlando la economía, tecnología, cultura y fuerza militar de dicha civilización. Hay cuatro formas diferentes de ganar, y cada una de ellas supone un reto para los jugadores. En el juego, los jugadores toman el rol de famosos líderes a cargo de civilizaciones históricos, con sus propias habilidades. Los jugadores construirán ciudades y edificios, librarán batallas, desarrollarán poderosas tecnologías y atraerán a inventores y artistas que avanzarán su nivel cultural. Las decisiones estratégicas y tácticas de Civilization atraen por igual a los amantes de la estrategia y de los wargames.', 14, 'http://www.edgeent.com/libros/coleccion/civilization', '/images/civi.jpg', '/images/civi2.jpg', 2, 7),
(20, 'Twilight Struggle', 2011, 2, 0, 180, 'Twilight Struggle es un juego de mesa temático de guerra y estrategia para dos jugadores ambientado en la Guerra Fría. Un jugador representa a los Estados Unidos y el otro a la Unión Soviética.\r\n\r\nEl tablero es un mapa del mundo a finales de la Guerra Fría. Está dividido en seis regiones geo-políticas: África, América central, Asia (con la sub-región del sudeste asiático), Europa (dividida en oriental y occidental), Oriente Medio y Sudamérica. Las fronteras entre los países responden más a consideraciones de su relación durante el período en cuestión que a la geografía, pues países limítrofes en el mundo real pueden no tener relación directa en el tablero o viceversa. Además, posee múltiples áreas donde se colocan los marcadores usados para los diversos aspectos del juego, como la puntuación, la carrera espacial o la DEFCON actual.\r\n\r\nEl juego incluye 103 cartas (110 en la edición de lujo y una carta especial en la edición en español), 228 marcadores, el reglamento, dos cartillas de ayuda y dos dados de seis caras.', 14, 'http://www.devir.es/producto/twilight-struggle-la-guerra-fria-1945-1989/', '/images/twil.jpg', '/images/twil2.jpg', 1, 7),
(24, 'Banjooli Xeet', 2013, 2, 5, 30, 'La tribu Noamomi debe elegir a un nuevo hechicero y no se les ha ocurrido otra manera que a través de una tradición milenaria: ¡una carrera de avestruces!. Los aspirantes deberán demostrar sus poderes adivinando cuáles de estas imprevisibles aves avestruces llegarán a meta y en qué orden lo harán. Los aspirantes respiran hondo y se acercan al cauce seco del río en una mañana calurosa. Los avestruces están tras la cerca, aguardando nerviosos. Los candidatos se observan y se evalúan. ¡Quién sabe cuánta magia recorre sus cuerpos! El anciano de la tribu levanta la valla del cercado y… ¡Comienza la carrera por convertirse en el nuevo brujo!', 8, 'http://www.asylumgameseditorial.com/project/banjooli-xeet/', '/images/banj1.jpg', '/images/banj2.jpg', 9, 4),
(25, 'Blackbeard', 2008, 1, 5, 120, 'Uno de los juegos de Avalon Hill de la década de 1990 fue Blackbeard, un juego de piratas totalmente diferente de cualquier otros disponible en aquel momento, ya que simulaba la vida real y la carrera de los piratas históricos, y cómo lo hicieron sus profesiones. Richard Berg ha tomado ahora el original y lo ha rediseñado, casi en su totalidad, para ponerlo en consonancia con lo que los jugadores les gusta ver y jugar en estos días. Todos esos piratas que amabas - Negro Bart Roberts, Long Ben Avery, Ned Lowe, L''Ollonais, y, por supuesto, Edward Teach (Barbanegra) - 23 en total, están todavía allí, al igual que los comisarios del rey enviados para detenerlos . Sin embargo, todo el sistema de juego ha sido revisado, y el resultado es un juego que pone de relieve y se especializa en la interacción del jugador, con casi ningún tiempo de inactividad para cualquier jugador.', 12, 'http://www.gmtgames.com/p-236-blackbeard-the-golden-age-of-piracy-2nd-printing.aspx', '/images/black1.jpg', '/images/black2.jpg', 7, 7),
(26, 'Memoir 44', 2004, 2, 0, 60, 'Memoir 44 es un juego de tablero histórico donde se enfrentan dos jugadores en representaciones de algunas de las más famosas batallas históricas de la Segunda Guerra Mundial, incluyendo la playa de Omaha, Puente Pegasus, la Operación Cobra y de las Ardenas.\n\nIncluye más de 15 diferentes escenarios de batalla y cuenta con un tablero compuesto por varias losetas hexagonales de doble cara para los desembarcos en la playa y el combate de campo. Cada escenario imita el terreno histórico, las colocaciones y los objetivos de cada ejército de tropas. Los comandantes deberán desplegar tropas a través del tablero y para ello utilizaran cartas de estrategia y habilidades únicas de sus unidades de infantería paracaidista, tanques, artillería, e incluso combatientes de la resistencia.', 8, 'https://www.daysofwonder.com/memoir44/en/', '/images/memo1.jpg', '/images/memo2.jpg', 8, 7),
(27, 'Rockband Manager', 2010, 3, 6, 45, '¡Reune una banda épica y rocanrolea hasta la cima con el Rockband Manager!\n\nEn este juego de cartas de tres a seis jugadores, tomas el papel de manager de una banda, debes reunir todos los componentes de un grupo, y guiarlos a la fama. Usa a tus estrellas del rock para grabar discos, organizar conciertos, y ganar decibelios para convertir a tu banda en la mejor del juego. Hay múltiples caminos hacia la gloria, por lo que debes desarrollar un plan para superar a la competencia. ¿Estás listo para rockear?', 14, '', '/images/rock1.jpg', '/images/rock2.jpg', 2, 5),
(28, 'Small World', 2009, 2, 5, 60, 'En Small World, los jugadores compiten por la conquista y el control de un mundo que es simplemente demasiado pequeño para dar cabida a todos.\n\nSmall World está habitado por 14 razas de fantasía diferentes como enanos, magos, amazonas, gigantes, orcos, e incluso seres humanos, con 20 poderes especiales únicos, que utilizan sus tropas para ocupar territorios y conquistar tierras adyacentes con el fin de reemplazar a las otras razas, incluso las del propio jugador cuando sea necesario.', 8, 'https://www.daysofwonder.com/smallworld/en/', '/images/small1.jpg', '/images/small2.jpg', 8, 0),
(29, 'Sombras sobre Londres', 2011, 2, 6, 120, 'Prepárate para entrar en el Whitechapel de Londres donde tuvieron lugar los misteriosos asesinatos de Jack el Destripador, con sus concurridos y malolientes callejones, vendedores ambulantes, comerciantes gritando, niños sucios cubiertos de trapos y prostitutas en cada esquina.\n\nUn jugador juega como Jack el Destripador, cuyo objetivo es asesinar a cinco víctimas antes de ser capturado. Los otros jugadores son detectives de policía que deben cooperar para atrapar al asesino antes de finalizar el juego.', 13, 'http://www.devir.es/producto/sombras-sobre-londres/', '/images/sombras1.jpg', '/images/sombras2.jpg', 1, 4),
(30, 'Timeline Inventos', 2010, 2, 8, 15, 'Timeline Inventos es un juego de cartas que se juega usando 109 Cartas. Cada una representa el mismo invento en ambos lados, con el año en que fue creado solo en uno. Los jugadores se turnan para colocar una carta de su mano en una fila en el centro de la mesa. Después de colocar la carta en la fila, el jugador la gira y muestra la fecha en ella. Si la carta se coloca correctamente con la fecha en orden cronológico se queda en el sitio, de lo contrario se retira del juego y el jugador toma una nueva carta de la baraja en su mano.', 8, 'http://es.asmodee.com/ressources/jeux_versions/timeline-inventos.php', '/images/time1.jpg', '/images/time2.jpg', 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `id_tipousuario`, `ciudad`, `firma`) VALUES
(31, 'Alex', '338aede87c8cf2bd9e6e5e4440c21d34', 1, 'Valencia', 'No es oro todo lo que reluce, ni toda la gente errante anda perdida.'),
(32, 'Yolanda', '338aede87c8cf2bd9e6e5e4440c21d34', 1, 'Valencia', 'Dios no quiere que seas feliz, quiere que seas fuerte.'),
(35, 'Rafael', '9135d8523ad3da99d8a4eb83afac13d1', 2, 'Valencia', 'The Best');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `autorjuego`
--
ALTER TABLE `autorjuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `categoriajuego`
--
ALTER TABLE `categoriajuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `dependencialenguaje`
--
ALTER TABLE `dependencialenguaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `ilustrador`
--
ALTER TABLE `ilustrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `ilustradorjuego`
--
ALTER TABLE `ilustradorjuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
