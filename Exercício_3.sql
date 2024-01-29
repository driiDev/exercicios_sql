SELECT pedido.CodCliente, cliente.Nome, pedido.CodPedido 
FROM pedido LEFT JOIN cliente
ON pedido.CodCliente = cliente.CodCliente
ORDER BY CodPedido ASC, CodCliente ASC;