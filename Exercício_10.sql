SELECT cliente.CodCliente, cliente.Nome,COUNT(pedido.CodCliente) AS Total
FROM pedido RIGHT JOIN cliente ON pedido.CodCliente = cliente.CodCliente
GROUP BY cliente.CodCliente
ORDER BY Total ASC, CodCliente ASC;

