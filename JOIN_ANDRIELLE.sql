-- INNER JOIN -- 
/* MODELO:
   SELECT NomeColunas
   FROM tabela1 JOIN tabela2 
   ON tabela1.coluna = tabela2.coluna;
*/
SELECT * FROM pedido
INNER JOIN cliente 
ON pedido.CodCliente=cliente.CodCliente; -- AQUI JUNTA AS DUAS

-- SELECIONA TODAS AS COLUNAS DA TABELA PEDIDO FAZENDO INNER JOIN COM A TABELA CLIENTE

SELECT C.Nome, C.Cep FROM cliente AS C
INNER JOIN pedido p ON C.CodCliente = p.CodCliente;
-- AS = muda o nome da tabela

-- OUTER JOIN -- 

-- LEFT JOIN - RETORNA AS LINHAS DA TABELA A ESQUERDA, MESMO SEM
-- CORRESPONDENCIA NA TABELA DA DIREITA --

-- MOSTRA TODOS OS CLIENTES, MESMO SEM PEDIDO.
SELECT * FROM cliente LEFT JOIN pedido 
ON cliente.CodCliente = pedido.CodCliente; 

-- MOSTRA SÓ OS CLIENTES SEM PEDIDO
SELECT * FROM cliente LEFT JOIN pedido 
ON cliente.CodCliente = pedido.CodCliente
WHERE pedido.CodCliente IS NULL; 

-- RIGHT JOIN --
-- trouxe os dados dos clientes mesmo sem pedidos
SELECT * FROM pedido RIGHT JOIN cliente 
ON cliente.CodCliente = pedido.CodCliente 
WHERE pedido.CodCliente IS NULL;

-- FUNÇÕES AGREGADAS --
SELECT COUNT(ValorUnitario) FROM produto; -- QUANTOS PREÇOS TEM
SELECT MAX(ValorUnitario) AS PreçoMaximo FROM produto; -- PRODUTO MAIS CARO
SELECT MIN(ValorUnitario) FROM produto; -- PRODUTO MAIS BARATO
SELECT AVG(ValorUnitario) FROM produto; -- VALOR MÉDIO DOS PRODUTOS 
SELECT ROUND(AVG(ValorUnitario),2) FROM produto; -- '' COM 2 CASAS DECIMAIS
SELECT SUM(ValorUnitario) FROM produto; -- SOMAR TODOS OS PRODUTOS
SELECT TIMESTAMPDIFF(day,pedido.DataPedido, pedido.PrazoEntrega); -- SUBTRAI A DATA DO PEDIDO
SELECT ROUND((ValorUnitario),2) FROM produto; -- CASAS DECIMAIS
-- GROUP BY --
-- QUANTOS PRODUTOS TEM DE CADA
SELECT CodProduto, COUNT(Quantidade) AS Total
FROM itempedido
GROUP BY CodProduto;


-- ORDER BY --
-- ASC = ORDEM CRESCENTE
SELECT * FROM cliente ORDER BY Nome ASC;
-- DESC = ORDEM DECRECENTE (INVERSA) 
SELECT * FROM cliente ORDER BY Nome DESC;

/* DATEDIFF RETORNA O NÚMERO DE DIAS ENTRE DUAS DATAS
DATEDIFF(pedido.PrazoEntrega, pedido.DataPedido)
*/

/* TIMESTAMPDIFF 
TIMESTAMPDIFF(day,pedido.DataPedido, pedido.PrazoEntrega)
*/




