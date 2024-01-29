SELECT cliente.CodCliente, cliente.Nome, pedido.CodPedido
FROM cliente
LEFT JOIN pedido ON cliente.CodCliente = pedido.CodCliente
ORDER BY CodPedido ASC, CodCliente ASC;