# ALUNOS: ALYSSON OLIVEIRA, KAIK COSTA, VICTOR BITENCOURT

![](bdSQL.svg)

# Requisitos mínimos do sistema (2ª etapa) 

## 1 banco de dados em funcionamento com os ajustes indicados na 1ª etapa do projeto 

- [X] No mínimo 8 tabelas (sem contar com as tabelas usadas para autenticação de usuários) 

- [X] Criação de banco, tabelas e demais objetos fiéis ao DER, além de script de povoamento 
    
- [X] As tabelas devem contemplar o uso de default, check, primary key e foreign key (sempre que necessário) em conformidade com os ajustes sinalizados na primeira etapa da entrega do trabalho. 

- [X] INSERT, no mínimo 15 registros em cada tabela (se possível). 

- [X] Um DELETE e um UPDATE em alguma tabela. 

```sql
DELETE FROM diretor WHERE nome LIKE 'Peter Jackson';
```

```sql
UPDATE espectador SET nome = 'Victor Hugo' WHERE idespectador = 15;
```

---

## A aplicação deve efetuar também as seguintes consultas separadamente:  

- [X] SELECT com LIKE. 

```sql
SELECT * FROM ator WHERE nome LIKE 'Chris%';
```

![](img/selectlike2.png)

---

- [X] SELECT com order by. 

```sql
SELECT * FROM espectador ORDER BY n_filmes_assistidos;
```

![](img/selectorder2.png)

---

- [X] SELECT com GROUP BY E HAVING. 

```sql
SELECT genero_idgenero, count(*) FROM filme_has_genero 
GROUP BY genero_idgenero 
HAVING count(*) > 1;
```

![](img/selectgroupbyhavingnew.png)

---

- [X] SELECT com JOIN com duas tabelas 
```sql
SELECT es.idespectador, es.nome, es.idade, av.nota, av.comentario
FROM espectador es INNER JOIN avaliacao av ON es.idespectador = av.espectador_idespectador
```

![](img/selectjoinin2.png)

---

- [X] SELECT com JOIN com três tabelas 
```sql
SELECT f.idfilme, f.nome, f.descricao, a.nome
FROM filme f
INNER JOIN elenco e ON f.idfilme = e.filme_idfilme
INNER JOIN ator a ON a.idator = e.ator_idator
```

![](img/selectjoinin3.png)

---

- [X] SELECT com JOIN com quatro tabelas 
```sql
SELECT f.idfilme, f.nome, f.descricao,d.nome as diretor_principal,p.nome as produtora,r.nome as roteirista_principal
FROM filme f
INNER JOIN diretor d ON f.diretor_principal_iddiretor = d.iddiretor
INNER JOIN produtora p ON f.produtora_idprodutora = p.idprodutora
INNER JOIN roteirista r ON f.roteirista_principal_idroteirista = r.idroteirista
```

![](img/selectjoinin4.png)

---

- [X] SELECT com JOIN com no mínimo 3 tabelas, group by e having 
```sql
SELECT  f.nome,f.descricao, AVG(av.nota) as nota, count(p.nome) as quantidade_premios
FROM filme f
INNER JOIN avaliacao av on av.filme_idfilme = f.idfilme
INNER JOIN premio p on p.filme_idfilme = f.idfilme
GROUP BY f.nome
HAVING AVG(av.nota) > 8
```

![](img/seljoinmin3gbh.png)

---

- [X] SELECT com JOIN com no mínimo 3 tabelas, group by (diferente do item h) 

```sql
SELECT COUNT(f.idfilme) AS quantidade_filmes, i.nome_idioma as legendas_disponiveis, g.nome
FROM filme f
INNER JOIN legenda ON legenda.filme_idfilme = f.idfilme
INNER JOIN idioma i ON legenda.idioma_ididioma = i.ididioma
INNER JOIN filme_has_genero  fg ON fg.filme_idfilmes = f.idfilme
INNER JOIN genero g ON fg.genero_idgenero = g.idgenero
GROUP BY i.nome_idioma, g.nome
```

![](img/seljoinpen.png)

---

- [X] SELECT com JOIN com no mínimo 2 tabelas, Where, group by e having (diferente do item h e i) 
```sql
SELECT pais.nome as pais,count(es.nome) as quantidade_pessoas, ROUND(AVG(es.idade),2) as media_idade
FROM espectador es
INNER JOIN pais ON pais.idpais = es.pais_idpais
WHERE es.nome LIKE '%s'
GROUP BY pais
HAVING AVG(es.idade) > 27

```

![](img/seljoinlast.png)
