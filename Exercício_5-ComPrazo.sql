-- SOLUÇÃO COM PRAZO
SELECT cliente.CodCliente, cliente.Nome,cliente.Uf,  TIMESTAMPDIFF(day,pedido.DataPedido, pedido.PrazoEntrega) AS Prazo, pedido.CodPedido FROM cliente
JOIN pedido ON cliente.CodCliente = pedido.CodCliente WHERE cliente.Uf = 'RS' OR cliente.Uf = 'SC'
GROUP BY cliente.Nome
ORDER BY CodCliente ASC;

SELECT cliente.CodCliente, cliente.Nome,cliente.Uf,  pedido.PrazoEntrega AS Prazo, pedido.CodPedido FROM cliente
JOIN pedido ON cliente.CodCliente = pedido.CodCliente WHERE cliente.Uf = 'RS' OR cliente.Uf = 'SC' AND pedido.PrazoEntrega > 10
GROUP BY cliente.Nome
ORDER BY CodCliente ASC, Prazo DESC;

SELECT * FROM pedido
ORDER BY CodCliente ASC;