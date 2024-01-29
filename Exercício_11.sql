SELECT cliente.CodCliente, cliente.Nome, pedido.CodPedido, COALESCE((itempedido.Quantidade),0) AS total 
FROM cliente JOIN pedido ON cliente.CodCliente = pedido.CodCliente LEFT JOIN itempedido
ON pedido.CodPedido = itempedido.CodPedido
GROUP BY CodPedido
ORDER BY total ASC, CodPedido ASC;

