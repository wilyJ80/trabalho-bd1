/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

--
-- Table structure for table `ator`
--

DROP TABLE IF EXISTS `ator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ator` (
  `idator` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ator`
--

LOCK TABLES `ator` WRITE;
/*!40000 ALTER TABLE `ator` DISABLE KEYS */;
INSERT INTO `ator` VALUES
(1,'Robert Downey Jr.'),
(2,'Chris Evans'),
(3,'Scarlett Johansson'),
(4,'Mark Ruffalo'),
(5,'Chris Hemsworth'),
(6,'Jeremy Renner'),
(7,'Tom Hiddleston'),
(8,'Paul Rudd'),
(9,'Brie Larson'),
(10,'Benedict Cumberbatch'),
(11,'Chadwick Boseman'),
(12,'Elizabeth Olsen'),
(13,'Tom Holland'),
(14,'Zoe Saldana'),
(15,'Karen Gillan'),
(16,'Josh Brolin'),
(17,'Chris Pratt'),
(18,'Dave Bautista'),
(19,'Bradley Cooper'),
(20,'Keanu Reeves'),
(21,'Carrie-Anne Moss'),
(22,'Tom Hanks'),
(23,'Robin Wright'),
(24,'Al Pacino'),
(25,'Diane Keaton'),
(26,'Christian Bale'),
(27,'Heath Ledger'),
(28,'Edward Norton'),
(29,'Helena Bonham Carter'),
(30,'Matthew McConaughey'),
(31,'Jessica Chastain'),
(32,'Russel Crowe'),
(33,'Joaquin Phoenix'),
(34,'Morgan Freeman'),
(35,'Tim Robbins'),
(36,'Leonardo DiCaprio'),
(37,'Kate Winslet'),
(38,'Ryan Gosling'),
(39,'Margot Robbie');
/*!40000 ALTER TABLE `ator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao` (
  `idavaliacao` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `comentario` text DEFAULT NULL,
  `espectador_idespectador` int(11) NOT NULL,
  `filme_idfilme` int(11) NOT NULL,
  PRIMARY KEY (`idavaliacao`),
  KEY `fk_avaliacao_clientes1_idx` (`espectador_idespectador`),
  KEY `fk_avaliacao_filmes1_idx` (`filme_idfilme`),
  CONSTRAINT `fk_avaliacao_clientes1` FOREIGN KEY (`espectador_idespectador`) REFERENCES `espectador` (`idespectador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_filmes1` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES
(1,9,'Incrível! Muito emocionante.',1,7),
(2,8,'Adorei a história e os efeitos especiais.',2,8),
(3,10,'Um clássico que todos devem assistir.',3,9),
(4,9,'Muito bem feito, atuação excelente.',4,10),
(5,7,'Interessante, mas um pouco confuso.',5,11),
(6,8,'A trama é envolvente do início ao fim.',6,12),
(7,9,'Uma obra-prima visual.',7,13),
(8,10,'Inspirador e comovente.',8,14),
(9,8,'Um filme para ver e rever.',9,15),
(10,9,'Muito bem dirigido e escrito.',10,7),
(11,7,'Gostei, mas achei um pouco longo.',11,8),
(12,10,'Um dos melhores filmes que já vi.',12,9),
(13,8,'Ótima trilha sonora e efeitos.',13,10),
(14,9,'Uma história que te prende do começo ao fim.',14,11),
(15,10,'Simplesmente espetacular.',15,12);
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_do_premio`
--

DROP TABLE IF EXISTS `categoria_do_premio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria_do_premio` (
  `idcategoria_do_premio` int(11) NOT NULL,
  `nome_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria_do_premio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_do_premio`
--

LOCK TABLES `categoria_do_premio` WRITE;
/*!40000 ALTER TABLE `categoria_do_premio` DISABLE KEYS */;
INSERT INTO `categoria_do_premio` VALUES
(1,'Melhor Filme'),
(2,'Melhor Ator'),
(3,'Melhor Atriz'),
(4,'Melhor Diretor'),
(5,'Melhor Roteiro'),
(6,'Melhor Elenco'),
(7,'Melhor Fotografia'),
(8,'Melhor Edição'),
(9,'Melhor Trilha Sonora'),
(10,'Melhor Filme Estrangeiro'),
(11,'Melhor Filme de Animação'),
(12,'Melhor Canção Original'),
(13,'Melhor Ator Coadjuvante'),
(14,'Melhor Atriz Coadjuvante'),
(15,'Melhor Direção de Arte'),
(16,'Melhor Figurino');
/*!40000 ALTER TABLE `categoria_do_premio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificacao_indicativa`
--

DROP TABLE IF EXISTS `classificacao_indicativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classificacao_indicativa` (
  `idclassificacao_indicativa` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `idade_minima` int(11) NOT NULL,
  PRIMARY KEY (`idclassificacao_indicativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificacao_indicativa`
--

LOCK TABLES `classificacao_indicativa` WRITE;
/*!40000 ALTER TABLE `classificacao_indicativa` DISABLE KEYS */;
INSERT INTO `classificacao_indicativa` VALUES
(1,'Livre para todos os públicos','Verde',0),
(2,'Não recomendado para menores de 10 anos','Azul',10),
(3,'Não recomendado para menores de 12 anos','Amarelo',12),
(4,'Não recomendado para menores de 14 anos','Laranja',14),
(5,'Não recomendado para menores de 16 anos','Vermelho',16),
(6,'Não recomendado para menores de 18 anos','Preto',18);
/*!40000 ALTER TABLE `classificacao_indicativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretor`
--

DROP TABLE IF EXISTS `diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretor` (
  `iddiretor` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`iddiretor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretor`
--

LOCK TABLES `diretor` WRITE;
/*!40000 ALTER TABLE `diretor` DISABLE KEYS */;
INSERT INTO `diretor` VALUES
(1,'Quentin Tarantino'),
(2,'Christopher Nolan'),
(3,'David Fincher'),
(4,'Greta Gerwig'),
(5,'Michel Gondry'),
(6,'Jordan Peele'),
(7,'Wes Anderson'),
(8,'Sofia Coppola'),
(9,'Noah Baumbach'),
(10,'Guillermo del Toro'),
(11,'Martin Scorsese'),
(12,'Steven Spielberg'),
(13,'Akira Kurosawa'),
(15,'Tim Burton'),
(16,'James Cameron'),
(17,'Stanley Kubrick'),
(18,'Peter Jackson'),
(19,'Lana Wachowski'),
(20,'Lily Wachowski'),
(21,'Robert Zemeckis'),
(22,'Francis Ford Coppola'),
(23,'Ridley Scott'),
(24,'Franck Darabont');
/*!40000 ALTER TABLE `diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dublagem`
--

DROP TABLE IF EXISTS `dublagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dublagem` (
  `idioma_ididioma` int(11) NOT NULL,
  `filme_idfilme` int(11) NOT NULL,
  PRIMARY KEY (`idioma_ididioma`,`filme_idfilme`),
  KEY `fk_idiomas_has_filmes_filmes1_idx` (`filme_idfilme`),
  KEY `fk_idiomas_has_filmes_idiomas1_idx` (`idioma_ididioma`),
  CONSTRAINT `fk_idiomas_has_filmes_filmes1` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idiomas_has_filmes_idiomas1` FOREIGN KEY (`idioma_ididioma`) REFERENCES `idioma` (`ididioma`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dublagem`
--

LOCK TABLES `dublagem` WRITE;
/*!40000 ALTER TABLE `dublagem` DISABLE KEYS */;
INSERT INTO `dublagem` VALUES
(7,1),
(9,1),
(11,1),
(13,1),
(15,1),
(7,2),
(9,2),
(11,2),
(13,2),
(15,2),
(8,3),
(10,3),
(12,3),
(14,3),
(8,4),
(10,4),
(12,4),
(14,4);
/*!40000 ALTER TABLE `dublagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elenco`
--

DROP TABLE IF EXISTS `elenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elenco` (
  `filme_idfilme` int(11) NOT NULL,
  `ator_idator` int(11) NOT NULL,
  PRIMARY KEY (`filme_idfilme`,`ator_idator`),
  KEY `fk_filmes_has_atores_atores1_idx` (`ator_idator`),
  KEY `fk_filmes_has_atores_filmes1_idx` (`filme_idfilme`),
  CONSTRAINT `fk_filmes_has_atores_atores1` FOREIGN KEY (`ator_idator`) REFERENCES `ator` (`idator`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmes_has_atores_filmes1` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elenco`
--

LOCK TABLES `elenco` WRITE;
/*!40000 ALTER TABLE `elenco` DISABLE KEYS */;
INSERT INTO `elenco` VALUES
(7,20),
(7,21),
(8,22),
(8,23),
(9,24),
(9,25),
(10,26),
(10,27),
(11,28),
(11,29),
(12,30),
(12,31),
(13,32),
(13,33),
(14,34),
(14,35),
(15,36),
(15,37);
/*!40000 ALTER TABLE `elenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espectador`
--

DROP TABLE IF EXISTS `espectador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `espectador` (
  `idespectador` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `idade` int(11) NOT NULL,
  `n_filmes_assistidos` int(11) NOT NULL,
  `pais_idpais` int(11) NOT NULL,
  PRIMARY KEY (`idespectador`),
  KEY `fk_espectador_pais1_idx` (`pais_idpais`),
  CONSTRAINT `fk_espectador_pais1` FOREIGN KEY (`pais_idpais`) REFERENCES `pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espectador`
--

LOCK TABLES `espectador` WRITE;
/*!40000 ALTER TABLE `espectador` DISABLE KEYS */;
INSERT INTO `espectador` VALUES
(1,'Ana Silva',25,12,16),
(2,'Carlos Mendes',32,20,16),
(3,'Fernanda Costa',28,15,16),
(4,'Lucas Pereira',22,8,16),
(5,'Mariana Santos',30,18,16),
(6,'Pedro Lima',35,25,16),
(7,'Roberta Rocha',27,10,16),
(8,'Thiago Souza',31,22,16),
(9,'Vanessa Oliveira',26,14,16),
(10,'João Gonçalves',29,17,16),
(11,'Laura Martins',33,21,16),
(12,'Paulo Ferreira',24,9,16),
(13,'Juliana Almeida',28,16,16),
(14,'Ricardo Ribeiro',30,19,16),
(15,'Patrícia Carvalho',27,13,16);
/*!40000 ALTER TABLE `espectador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme` (
  `idfilme` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `duracao` int(11) NOT NULL,
  `ano_lancamento` int(4) NOT NULL,
  `descricao` text NOT NULL,
  `classificacao_indicativa_idclassificacao_indicativa` int(11) NOT NULL,
  `produtora_idprodutora` int(11) NOT NULL,
  `diretor_principal_iddiretor` int(11) NOT NULL,
  `roteirista_principal_idroteirista` int(11) NOT NULL,
  PRIMARY KEY (`idfilme`),
  KEY `fk_filmes_classificacao_indicativa1_idx` (`classificacao_indicativa_idclassificacao_indicativa`),
  KEY `fk_filmes_produtora1_idx` (`produtora_idprodutora`),
  KEY `fk_filmes_diretor1_idx` (`diretor_principal_iddiretor`),
  KEY `fk_filmes_roteiristas1_idx` (`roteirista_principal_idroteirista`),
  CONSTRAINT `fk_filmes_classificacao_indicativa1` FOREIGN KEY (`classificacao_indicativa_idclassificacao_indicativa`) REFERENCES `classificacao_indicativa` (`idclassificacao_indicativa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmes_diretor1` FOREIGN KEY (`diretor_principal_iddiretor`) REFERENCES `diretor` (`iddiretor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmes_produtora1` FOREIGN KEY (`produtora_idprodutora`) REFERENCES `produtora` (`idprodutora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmes_roteiristas1` FOREIGN KEY (`roteirista_principal_idroteirista`) REFERENCES `roteirista` (`idroteirista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES
(1,'A Origem',148,2010,'Um ladrão que rouba segredos empresariais através da utilização de tecnologia de partilha de sonhos recebe a tarefa inversa de plantar uma ideia na mente de um diretor executivo.',5,1,2,3),
(2,'Jurassic Park',127,1993,'Durante uma visita de antevisão, um parque temático sofre uma grande falha de energia que permite que as suas exposições de dinossauros clonados se descontrolem.',3,2,12,16),
(3,'Pulp Fiction',154,1994,'As vidas de dois assassinos da máfia, um pugilista, um gangster e a sua mulher, e um par de bandidos de um restaurante entrelaçam-se em quatro histórias de violência e redenção.',6,16,1,2),
(4,'The Social Network',120,2010,'A história dos fundadores do site Web de redes sociais, Facebook.',4,5,3,1),
(5,'Avatar',162,2009,'Um fuzileiro paraplégico enviado para a lua Pandora numa missão única fica dividido entre cumprir as suas ordens e proteger o mundo que sente ser a sua casa.',5,4,16,17),
(6,'Barbie',114,2023,'Depois de ser expulsa da Barbieland por ser uma boneca de aparência menos do que perfeita, Barbie parte para o mundo humano em busca da verdadeira felicidade.',3,17,4,14),
(7,'The Matrix',136,1999,'Um programador de computador descobre que a realidade é uma simulação e se junta a uma rebelião para libertar a humanidade.',6,1,19,18),
(8,'Forrest Gump',142,1994,'A história de um homem simples com um coração puro que testemunha e influencia eventos históricos importantes.',5,18,21,19),
(9,'The Godfather',175,1972,'O patriarca envelhecido de uma dinastia do crime organizado transfere o controle do seu império clandestino para seu filho relutante.',6,3,22,20),
(10,'The Dark Knight',152,2008,'Batman enfrenta o Coringa, um criminoso maquiavélico que semeia o caos e desafia a justiça de Gotham.',6,1,2,3),
(11,'Fight Club',139,1999,'Um homem descontente com a sua vida forma um clube de luta clandestino com um vendedor de sabonetes.',6,4,3,21),
(12,'Interstellar',169,2014,'Um grupo de exploradores viaja através de um buraco de minhoca no espaço em uma tentativa de assegurar a sobrevivência da humanidade.',5,3,2,3),
(13,'Gladiator',155,2000,'Um general romano traído busca vingança contra o imperador corrupto que assassinou sua família e o condenou à escravidão.',5,2,23,22),
(14,'The Shawshank Redemption',142,1994,'Dois homens presos formam um vínculo ao longo dos anos, encontrando consolo e redenção através de atos de decência comum.',5,5,24,23),
(15,'Titanic',195,1997,'Uma jovem aristocrata se apaixona por um artista gentil, mas pobre, a bordo do luxuoso e infeliz R.M.S. Titanic.',5,9,16,17);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_has_genero`
--

DROP TABLE IF EXISTS `filme_has_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme_has_genero` (
  `filme_idfilmes` int(11) NOT NULL,
  `genero_idgenero` int(11) NOT NULL,
  PRIMARY KEY (`filme_idfilmes`,`genero_idgenero`),
  KEY `fk_filmes_has_generos_generos1_idx` (`genero_idgenero`),
  KEY `fk_filmes_has_generos_filmes1_idx` (`filme_idfilmes`),
  CONSTRAINT `fk_filmes_has_generos_filmes1` FOREIGN KEY (`filme_idfilmes`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmes_has_generos_generos1` FOREIGN KEY (`genero_idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_has_genero`
--

LOCK TABLES `filme_has_genero` WRITE;
/*!40000 ALTER TABLE `filme_has_genero` DISABLE KEYS */;
INSERT INTO `filme_has_genero` VALUES
(7,1),
(10,1),
(13,1),
(8,3),
(9,3),
(11,3),
(14,3),
(15,3),
(7,4),
(12,4),
(15,7),
(12,8),
(13,8),
(8,11),
(9,15),
(10,15),
(11,15),
(14,15);
/*!40000 ALTER TABLE `filme_has_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES
(1,'Ação'),
(2,'Comédia'),
(3,'Drama'),
(4,'Ficção Científica'),
(5,'Fantasia'),
(6,'Terror'),
(7,'Romance'),
(8,'Aventura'),
(9,'Animação'),
(10,'Documentário'),
(11,'Comédia Romântica'),
(12,'Faroeste'),
(13,'Cult'),
(15,'Suspense'),
(16,'Policial');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `ididioma` int(11) NOT NULL,
  `nome_idioma` varchar(45) NOT NULL,
  PRIMARY KEY (`ididioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES
(1,'Inglês'),
(2,'Espanhol'),
(3,'Francês'),
(4,'Alemão'),
(5,'Italiano'),
(6,'Português'),
(7,'Russo'),
(8,'Japonês'),
(9,'Chinês'),
(10,'Coreano'),
(11,'Árabe'),
(12,'Hindi'),
(13,'Bengali'),
(14,'Turco'),
(15,'Vietnamita');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legenda`
--

DROP TABLE IF EXISTS `legenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legenda` (
  `idioma_ididioma` int(11) NOT NULL,
  `filme_idfilme` int(11) NOT NULL,
  PRIMARY KEY (`idioma_ididioma`,`filme_idfilme`),
  KEY `fk_idiomas_has_filmes_filmes2_idx` (`filme_idfilme`),
  KEY `fk_idiomas_has_filmes_idiomas2_idx` (`idioma_ididioma`),
  CONSTRAINT `fk_idiomas_has_filmes_filmes2` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idiomas_has_filmes_idiomas2` FOREIGN KEY (`idioma_ididioma`) REFERENCES `idioma` (`ididioma`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legenda`
--

LOCK TABLES `legenda` WRITE;
/*!40000 ALTER TABLE `legenda` DISABLE KEYS */;
INSERT INTO `legenda` VALUES
(6,1),
(7,1),
(9,1),
(11,1),
(13,1),
(15,1),
(6,2),
(7,2),
(9,2),
(11,2),
(13,2),
(15,2),
(6,3),
(8,3),
(10,3),
(12,3),
(14,3),
(6,4),
(8,4),
(10,4),
(12,4),
(14,4),
(6,5),
(6,6),
(6,7),
(6,8),
(6,9),
(6,10),
(6,11),
(6,12),
(6,13),
(6,14),
(6,15);
/*!40000 ALTER TABLE `legenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES
(1,'Estados Unidos'),
(2,'Espanha'),
(3,'França'),
(4,'Alemanha'),
(5,'Itália'),
(6,'Portugal'),
(7,'Rússia'),
(8,'Japão'),
(9,'China'),
(10,'Coreia do Sul'),
(11,'Arábia Saudita'),
(12,'Índia'),
(13,'Bangladesh'),
(14,'Turquia'),
(15,'Vietnã'),
(16,'Brasil');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premio`
--

DROP TABLE IF EXISTS `premio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premio` (
  `idpremio` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `ano` int(4) NOT NULL,
  `categoria_idcategoria_do_premio` int(11) NOT NULL,
  `elenco_filme_idfilme` int(11) DEFAULT NULL,
  `elenco_ator_idator` int(11) DEFAULT NULL,
  `ator_idator` int(11) DEFAULT NULL,
  `diretor_iddiretor` int(11) DEFAULT NULL,
  `roteirista_idroteirista` int(11) DEFAULT NULL,
  `produtora_idprodutora` int(11) DEFAULT NULL,
  `filme_idfilme` int(11) NOT NULL,
  PRIMARY KEY (`idpremio`),
  KEY `fk_premios_categoria_do_premio1_idx` (`categoria_idcategoria_do_premio`),
  KEY `fk_premios_Elenco1_idx` (`elenco_filme_idfilme`,`elenco_ator_idator`),
  KEY `fk_premios_atores1_idx` (`ator_idator`),
  KEY `fk_premios_diretores1_idx` (`diretor_iddiretor`),
  KEY `fk_premios_roteiristas1_idx` (`roteirista_idroteirista`),
  KEY `fk_premios_produtora1_idx` (`produtora_idprodutora`),
  KEY `fk_premios_filmes1_idx` (`filme_idfilme`),
  CONSTRAINT `fk_premios_Elenco1` FOREIGN KEY (`elenco_filme_idfilme`, `elenco_ator_idator`) REFERENCES `elenco` (`filme_idfilme`, `ator_idator`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_premios_atores1` FOREIGN KEY (`ator_idator`) REFERENCES `ator` (`idator`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_premios_categoria_do_premio1` FOREIGN KEY (`categoria_idcategoria_do_premio`) REFERENCES `categoria_do_premio` (`idcategoria_do_premio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_premios_diretores1` FOREIGN KEY (`diretor_iddiretor`) REFERENCES `diretor` (`iddiretor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_premios_filmes1` FOREIGN KEY (`filme_idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_premios_produtora1` FOREIGN KEY (`produtora_idprodutora`) REFERENCES `produtora` (`idprodutora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_premios_roteiristas1` FOREIGN KEY (`roteirista_idroteirista`) REFERENCES `roteirista` (`idroteirista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premio`
--

LOCK TABLES `premio` WRITE;
/*!40000 ALTER TABLE `premio` DISABLE KEYS */;
INSERT INTO `premio` VALUES
(1,'Melhor Filme',2008,1,NULL,NULL,NULL,2,NULL,NULL,10),
(2,'Melhor Coadjuvante',2008,13,NULL,NULL,27,NULL,NULL,NULL,10),
(3,'Melhor Filme',1997,1,NULL,NULL,NULL,16,NULL,NULL,15),
(4,'Melhor Canção',1997,12,NULL,NULL,NULL,16,NULL,NULL,15),
(5,'Melhor Fotografia',1997,7,NULL,NULL,NULL,16,NULL,NULL,15),
(6,'Melhor Filme',1999,1,NULL,NULL,NULL,20,NULL,NULL,7),
(7,'Melhor Trilha',2010,9,NULL,NULL,NULL,3,NULL,NULL,4),
(8,'Melhor Roteiro',2010,5,NULL,NULL,NULL,NULL,1,NULL,4),
(9,'Melhor Diretor',2010,4,NULL,NULL,NULL,3,NULL,NULL,4),
(10,'Melhor Ator',2023,2,NULL,NULL,38,NULL,NULL,NULL,6),
(11,'Melhor Figurino',2023,16,NULL,NULL,NULL,4,NULL,NULL,6),
(12,'Melhor Atriz',2023,16,NULL,NULL,39,NULL,NULL,NULL,6),
(13,'Melhor Filme',2014,1,NULL,NULL,NULL,2,NULL,NULL,12),
(14,'Melhor Diretor',2014,4,NULL,NULL,NULL,2,NULL,NULL,12),
(15,'Melhor Diretor',1994,4,NULL,NULL,NULL,21,NULL,NULL,8);
/*!40000 ALTER TABLE `premio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtora`
--

DROP TABLE IF EXISTS `produtora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtora` (
  `idprodutora` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `pais_sede_idpais` int(11) NOT NULL,
  PRIMARY KEY (`idprodutora`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  KEY `fk_produtora_pais1_idx` (`pais_sede_idpais`),
  CONSTRAINT `fk_produtora_pais1` FOREIGN KEY (`pais_sede_idpais`) REFERENCES `pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtora`
--

LOCK TABLES `produtora` WRITE;
/*!40000 ALTER TABLE `produtora` DISABLE KEYS */;
INSERT INTO `produtora` VALUES
(1,'Warner Bros',1),
(2,'Universal Pictures',1),
(3,'Paramount Pictures',1),
(4,'20th Century Fox',1),
(5,'Columbia Pictures',1),
(6,'Walt Disney Pictures',1),
(7,'Pixar Animation Studios',1),
(8,'Sony Pictures',1),
(9,'MGM',1),
(10,'Lionsgate',1),
(11,'New Line Cinema',1),
(12,'DreamWorks',1),
(13,'Legendary Pictures',1),
(14,'Focus Features',1),
(15,'A24',1),
(16,'Miramax',1),
(17,'Mattel',1),
(18,'The Tisch Company',1);
/*!40000 ALTER TABLE `produtora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roteirista`
--

DROP TABLE IF EXISTS `roteirista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roteirista` (
  `idroteirista` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`idroteirista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roteirista`
--

LOCK TABLES `roteirista` WRITE;
/*!40000 ALTER TABLE `roteirista` DISABLE KEYS */;
INSERT INTO `roteirista` VALUES
(1,'Aaron Sorkin'),
(2,'Quentin Tarantino'),
(3,'Christopher Nolan'),
(4,'Steven Zaillian'),
(5,'Charlie Kaufman'),
(6,'Paul Schrader'),
(7,'John Logan'),
(8,'David Koepp'),
(9,'Michael Arndt'),
(10,'Diablo Cody'),
(11,'Alan Ball'),
(12,'Andrew Stanton'),
(13,'Brad Bird'),
(14,'Greta Gerwig'),
(15,'Jordan Peele'),
(16,'Michael Crichton'),
(17,'James Cameron'),
(18,'Lily Wachowski'),
(19,'Winston Groom'),
(20,'Francis Ford Coppola'),
(21,'Jim Uhls'),
(22,'David Franzoni'),
(23,'Franck Darabont');
/*!40000 ALTER TABLE `roteirista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-27 13:55:01
