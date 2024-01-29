SELECT vendedor.Nome, YEAR(pedido.DataPedido) AS ano, COUNT(pedido.CodVendedor) AS pedidos
FROM pedido JOIN vendedor ON pedido.CodVendedor = vendedor.CodVendedor
WHERE MONTH(DataPedido) = 9
GROUP BY nome, YEAR(DataPedido)
ORDER BY ano DESC, pedidos DESC, nome;