- INSERT, no mínimo 15 registros em cada tabela (se possível).

- [X] Ator
- [ ] Avaliacao -- TODO ...
- [X] Categoria do premio
- [X] Classificacao indicativa
- [X] Diretor
- [ ] Dublagem -- TODO: terminar filmes! Dublagens devem corresponder ao idioma das avaliações! Esse é o campo mais importante para preencher os demais
- [ ] Elenco -- TODO ...
- [X] Espectador
- [ ] Filme -- TODO ...
- [ ] Filme_has_genero -- TODO ...
- [X] Genero
- [X] Idioma
- [ ] Legenda -- TODO ...
- [X] Pais
- [ ] Premio
- [X] Produtora
- [X] Roteirista

```sql
INSERT INTO `mydb`.`roteirista` (`idroteirista`, `nome`) VALUES
(1, 'Quentin Tarantino'),
(2, 'Christopher Nolan'),
(3, 'Aaron Sorkin'),
(4, 'Greta Gerwig'),
(5, 'Charlie Kaufman'),
(6, 'Jordan Peele'),
(7, 'Wes Anderson'),
(8, 'Sofia Coppola'),
(9, 'Noah Baumbach'),
(10, 'Guillermo del Toro'),
(11, 'James Cameron'),
(12, 'Paul Schrader'),
(13, 'David Lynch'),
(14, 'Peter Jackson'),
(15, 'George Lucas');

INSERT INTO `mydb`.`ator` (`idator`, `nome`) VALUES
(1, 'Robert Downey Jr.'),
(2, 'Chris Evans'),
(3, 'Scarlett Johansson'),
(4, 'Mark Ruffalo'),
(5, 'Chris Hemsworth'),
(6, 'Jeremy Renner'),
(7, 'Tom Hiddleston'),
(8, 'Paul Rudd'),
(9, 'Brie Larson'),
(10, 'Benedict Cumberbatch'),
(11, 'Chadwick Boseman'),
(12, 'Elizabeth Olsen'),
(13, 'Tom Holland'),
(14, 'Zoe Saldana'),
(15, 'Karen Gillan'),
(16, 'Josh Brolin'),
(17, 'Chris Pratt'),
(18, 'Dave Bautista'),
(19, 'Bradley Cooper'),
(20, 'Vin Diesel'),
(21, 'Samuel L. Jackson'),
(22, 'Anthony Mackie'),
(23, 'Sebastian Stan'),
(24, 'Don Cheadle'),
(25, 'Gwyneth Paltrow'),
(26, 'Letitia Wright'),
(27, 'Danai Gurira'),
(28, 'Pom Klementieff'),
(29, 'Tessa Thompson'),
(30, 'Evangeline Lilly'),
(31, 'Leonardo DiCaprio'),
(32, 'Cillian Murphy'),
(33, 'John Hardy'),
(34, 'Ken Watanabe'),
(35, 'Andrew Garfield');

INSERT INTO `mydb`.`categoria_do_premio` (`idcategoria_do_premio`, `nome_categoria`) VALUES
(1, 'Melhor Filme'),
(2, 'Melhor Ator'),
(3, 'Melhor Atriz'),
(4, 'Melhor Diretor'),
(5, 'Melhor Roteiro'),
(6, 'Melhor Elenco'),
(7, 'Melhor Fotografia'),
(8, 'Melhor Edição'),
(9, 'Melhor Trilha Sonora'),
(10, 'Melhor Filme Estrangeiro'),
(11, 'Melhor Filme de Animação'),
(12, 'Melhor Canção Original'),
(13, 'Melhor Ator Coadjuvante'),
(14, 'Melhor Atriz Coadjuvante'),
(15, 'Melhor Direção de Arte');

INSERT INTO `mydb`.`classificacao_indicativa` (`idclassificacao_indicativa`, `idade_minima`, `cor`, `descricao`) VALUES
(1, 0, 'Verde', 'Livre para todos os públicos'),
(2, 10, 'Azul', 'Não recomendado para menores de 10 anos'),
(3, 12, 'Amarelo', 'Não recomendado para menores de 12 anos'),
(4, 14, 'Laranja', 'Não recomendado para menores de 14 anos'),
(5, 16, 'Vermelho', 'Não recomendado para menores de 16 anos'),
(6, 18, 'Preto', 'Não recomendado para menores de 18 anos');
-- Não é possível adicionar mais registros nessa tabela!

INSERT INTO `mydb`.`diretor` (`iddiretor`, `nome`) VALUES
(1, 'Quentin Tarantino'),
(2, 'Christopher Nolan'),
(3, 'David Fincher'),
(4, 'Greta Gerwig'),
(5, 'Michel Gondry'),
(6, 'Jordan Peele'),
(7, 'Wes Anderson'),
(8, 'Sofia Coppola'),
(9, 'Noah Baumbach'),
(10, 'Guillermo del Toro'),
(11, 'Martin Scorsese'),
(12, 'Steven Spielberg'),
(13, 'Akira Kurosawa'),
(15, 'Tim Burton');

INSERT INTO `mydb`.`genero` (`idgenero`, `nome`) VALUES
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Drama'),
(4, 'Ficção Científica'),
(5, 'Fantasia'),
(6, 'Terror'),
(7, 'Romance'),
(8, 'Aventura'),
(9, 'Animação'),
(10, 'Documentário'),
(11, 'Comédia Romântica'),
(12, 'Faroeste'),
(13, 'Cult'),
(14, 'Musical'),
(15, 'Suspense');

INSERT INTO `mydb`.`pais` (`idpais`, `nome`) VALUES
(1, 'Estados Unidos'),
(2, 'Espanha'),
(3, 'França'),
(4, 'Alemanha'),
(5, 'Itália'),
(6, 'Portugal'),
(7, 'Rússia'),
(8, 'Japão'),
(9, 'China'),
(10, 'Coreia do Sul'),
(11, 'Arábia Saudita'),
(12, 'Índia'),
(13, 'Bangladesh'),
(14, 'Turquia'),
(15, 'Vietnã'),
(16, 'Brasil');

INSERT INTO `mydb`.`idioma` (`ididioma`, `nome_idioma`) VALUES
(1, 'Inglês'),
(2, 'Espanhol'),
(3, 'Francês'),
(4, 'Alemão'),
(5, 'Italiano'),
(6, 'Português'),
(7, 'Russo'),
(8, 'Japonês'),
(9, 'Chinês'),
(10, 'Coreano'),
(11, 'Árabe'),
(12, 'Hindi'),
(13, 'Bengali'),
(14, 'Turco'),
(15, 'Vietnamita');

INSERT INTO `mydb`.`produtora` (`idprodutora`, `nome`, `pais_sede_idpais`) VALUES
(1, 'A Band Apart', 1), 
(2, 'Syncopy', 1), 
(3, 'West Wing Studios', 1), 
(4, 'Heyday Films', 1), 
(5, 'Kaufman Astoria Studios', 1), 
(6, 'Monkeypaw Productions', 1),
(7, 'American Empirical Pictures', 1), 
(8, 'American Zoetrope', 1), 
(9, 'Frances Ha Films', 1), 
(10, 'Double Dare You Productions', 1), 
(11, 'Studio Ghibli', 8), 
(12, 'Toho', 8), 
(13, 'Pathé', 3), 
(14, 'EuropaCorp', 3), 
(15, 'Constantin Film', 4),
(16, 'Cattleya', 5),
(17, 'Mediapro', 2), 
(18, 'Miramax', 1), 
(19, 'Warner Bros. Pictures', 1), 
(20, 'Universal Pictures', 1),
(21, 'Sony Pictures', 1);

INSERT INTO `mydb`.`espectador` (`idespectador`, `nome`, `idade`, `n_filmes_assistidos`, `pais_idpais`) VALUES
(1, 'Victor', 24, 12, 16),
(2, 'Alysson', 18, 42, 16),
(3, 'Kaik', 19, 117, 16),
(4, 'Pedro', 49, 12, 16),
(5, 'John', 18, 122, 1),
(6, 'François', 29, 16, 3),
(7, 'Muhammad', 33, 23, 11),
(8, 'Adi', 16, 44, 12),
(9, 'Ronald', 56, 3, 1),
(10, 'Huang', 22, 20, 9),
(11, 'Akane', 26, 88, 8),
(12, 'Yuna', 21, 2, 8),
(13, 'Sveta', 41, 32, 7),
(14, 'Vladimir', 44, 181, 7),
(15, 'Gottfried', 17, 18, 4),
(16, 'Jochem', 29, 4, 4),
(17, 'Samara', 37, 1, 16);

INSERT INTO `mydb`.`filme` (`idfilme`, `nome`, `duracao`, `ano_lancamento`, `descricao`, `classificacao_indicativa_idclassificacao_indicativa`, `produtora_idprodutora`, `diretor_principal_iddiretor`, `roteirista_principal_idroteirista`) VALUES
(1, 'Inception', 148, 2010, 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.', 5, 5, 2, 2),
(2, 'Jurassic Park', 127, 1993, 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 3, 1, 1, 1),
(3, 'Pulp Fiction', 154, 1994, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 6, 4, 4, 3),
(4, 'The Social Network', 120, 2010, 'The story of the founders of the social-networking website, Facebook.', 4, 2, 3, 1),
(5, 'Avatar', 162, 2009, 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 5, 5, 5, 4);

-- Acima foi só para exemplo, vale a pena tentar melhorar

INSERT INTO `mydb`.`avaliacao` (`idavaliacao`, `nota`, `comentario`,`espectador_idespectador`, `filme_idfilme`) VALUES
(1, 1, 'Não gostei muito. Acho que filmes devem ser mais sutis e ter uma temática mais relevante.', 1, 1),
(2, 3, 'Abordar uma temática tão comum é um grande desafio, que o presente filme simplesmente não consegue.', 1, 4),
(3, 8, 'An absolute blast. I dont think it gets any better than this!', 5, 5),
(4, 10, 'Sinceramente, eu espero que os filmes dos dias atuais possam seguir esse mesmo padrão de qualidade.', 2, 5),
(5, 0, 'Onde já se viu um filme ser tão ruim assim?', 3, 3);

INSERT INTO `mydb`.`dublagem` (`idioma_ididioma`, `filme_idfilme`) VALUES
(6, 1),
(6, 3),
(6, 4),
(6, 1);

INSERT INTO `mydb`.`elenco` (`filme_idfilme`, `ator_idator`) VALUES
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(4, 35);

INSERT INTO `mydb`.`filme_has_genero` (`filme_idfilmes`, `genero_idgenero`) VALUES
(1, 1),
(1, 4),
(2, 8),
(2, 4),
(2, 5);

INSERT INTO `mydb`.`legenda` (`idioma_ididioma`, `filme_idfilme`) VALUES
(6, 1),
(6, 2),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

```
