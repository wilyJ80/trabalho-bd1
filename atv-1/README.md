- [x] Crie as tabelas usando o script enviado (não precisa enviar este, pois vai usar o disponibilizado no Teams)

- [x] 7) Altere em combustível o registro onde nome ="alcool" para nome="álcool". (ou vice-versa) 

```sql
UPDATE combustiveis SET nome = 'Alcool' WHERE nome LIKE '%lcool';
```

- [x] 8) Liste o nome dos modelos da marca 3.

```sql
SELECT * FROM modelos where idmarca = 3;
```

- [x] 9) Liste o renavam, data e tipo_infracao das infrações que ocorreram a partir do dia 01/04/2009. 

select renavam, date(datahora), idtipoinfracao from infracoes where date(datahora) > '2009-04-01';

select renavam, date(datahora) from infracoes where date(datahora) > '2009-04-01' and idtipoinfracao = 5;

select renavam, date(datahora) from infracoes where date(datahora) >= '2009-03-01' and date(datahora) <= '2009-03-31';
