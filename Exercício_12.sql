SELECT cliente.CodCliente, cliente.Nome, pedido.CodPedido, 
COALESCE(SUM(produto.ValorUnitario * itempedido.Quantidade),0) AS total
FROM cliente JOIN pedido 
ON cliente.CodCliente = pedido.CodCliente 
LEFT JOIN itempedido ON pedido.CodPedido = itempedido.CodPedido 
LEFT JOIN produto ON itempedido.CodProduto = produto.CodProduto
GROUP BY CodPedido
ORDER BY CodPedido ASC;