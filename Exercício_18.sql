SELECT cliente.Nome, cliente.CodCliente, COALESCE((pedido.CodPedido),0) AS CodPedido
FROM cliente LEFT JOIN pedido ON cliente.CodCliente = pedido.CodCliente WHERE CodPedido IS NULL
GROUP BY CodCliente
ORDER BY nome;

