SELECT cliente.Nome, COUNT(pedido.CodCliente) AS total_pedidos
FROM cliente LEFT JOIN pedido ON cliente.CodCliente = pedido.CodCliente
GROUP BY cliente.CodCliente
ORDER BY total_pedidos ASC, nome ASC;