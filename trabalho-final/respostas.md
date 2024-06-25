- INSERT, no mínimo 15 registros em cada tabela (se possível).

   - Evitar duplicação?

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
(10, 'Guillermo del Toro');

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
(30, 'Evangeline Lilly');

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
-- Não é possível adicionar mais registros nessa tabela

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
(10, 'Documentário');

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
(15, 'Vietnã');

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
(20, 'Universal Pictures', 1);
```
