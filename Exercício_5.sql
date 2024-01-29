SELECT cliente.CodCliente, cliente.Nome FROM cliente
JOIN pedido ON cliente.CodCliente = pedido.CodCliente WHERE cliente.Uf = 'RS' OR cliente.Uf = 'SC' 
AND DATEDIFF(pedido.PrazoEntrega, pedido.DataPedido) > 10
GROUP BY cliente.Nome
ORDER BY CodCliente ASC;


