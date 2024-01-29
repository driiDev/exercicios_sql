SELECT cliente.CodCliente, cliente.Nome, 
vendedor.CodVendedor, vendedor.Nome, pedido.DataPedido 
FROM cliente JOIN pedido ON cliente.CodCliente = pedido.CodCliente 
JOIN vendedor ON pedido.CodVendedor = vendedor.CodVendedor
ORDER BY CodCliente ASC, CodVendedor ASC;