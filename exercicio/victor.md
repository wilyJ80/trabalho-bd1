# ALUNO: VICTOR HUGO SANTOS BITENCOURT

1) Liste o nome do produto, a quantidade do produto, o valor de venda do produto e a quantidade x valor de venda.

```sql

SELECT 
    p.nome AS nome_produto,
    p.quantidade AS quantidade_produto,
    p.valor_venda AS valor_venda_produto,
    (p.quantidade * p.valor_venda) AS total_venda
FROM 
    produto p;

```

2) Liste o nome da classificação do produto e a soma da quantidade de produtos por classificação.

```sql

SELECT 
    c.nome AS nome_classificacao,
    SUM(p.quantidade) AS soma_quantidade_produtos
FROM 
    classificacao c
JOIN 
    produto p ON c.idclassificacao = p.idclassificacao
GROUP BY 
    c.nome;

```

3) Liste o nome do produto e a soma da quantidade de produtos comprados no período de 01/01/2010 até 30/06/2010.

```sql

SELECT 
    p.nome AS nome_produto,
    SUM(phn.quantidade) AS soma_quantidade_comprada
FROM 
    produto p
JOIN 
    produto_has_nfe phn ON p.idproduto = phn.idproduto
JOIN 
    nfe n ON phn.idnfe = n.idnfe
WHERE 
    n.data BETWEEN '2010-01-01' AND '2010-06-30'
GROUP BY 
    p.nome;

```

4) Liste a quantidade de compras e tíquete médio (média do valor_total da nf de entrada) no período de 01/01/2010 até 30/06/2010.

```sql

SELECT 
    COUNT(n.idnfe) AS quantidade_compras,
    AVG(n.valor_total) AS ticket_medio
FROM 
    nfe n
WHERE 
    n.data BETWEEN '2010-01-01' AND '2010-06-30';

```

5) Liste o nome dos produtos e a soma da quantidade vendida, por produto cujos produtos tenham a soma da quantidade vendida abaixo de 100.

```sql

SELECT 
    p.nome AS nome_produto,
    SUM(phs.quantidade) AS soma_quantidade_vendida
FROM 
    produto p
JOIN 
    produto_has_nfs phs ON p.idproduto = phs.idproduto
GROUP BY 
    p.nome
HAVING 
    SUM(phs.quantidade) < 100;

```

6) Liste o nome dos produtos e a soma da quantidade vendida, por produto cujos produtos tenham a soma da quantidade vendida abaixo de 100 e as vendas tenham sido efetivadas no período de 01/01/2010 até 30/06/2010.

```sql

SELECT 
    p.nome AS nome_produto,
    SUM(phs.quantidade) AS soma_quantidade_vendida
FROM 
    produto p
JOIN 
    produto_has_nfs phs ON p.idproduto = phs.idproduto
JOIN 
    nfs s ON phs.idnfs = s.idfs
WHERE 
    s.data BETWEEN '2010-01-01' AND '2010-06-30'
GROUP BY 
    p.nome
HAVING 
    SUM(phs.quantidade) < 100;

```
