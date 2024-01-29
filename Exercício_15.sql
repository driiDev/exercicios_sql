SELECT cliente.nome, vendedor.nome AS vendedor, pedido.CodPedido,
SUM(itempedido.Quantidade * produto.ValorUnitario) AS total
FROM produto JOIN itempedido ON produto.CodProduto = itempedido.CodProduto
RIGHT JOIN pedido ON itempedido.CodPedido = pedido.CodPedido JOIN cliente
ON pedido.CodCliente = cliente.CodCliente
JOIN vendedor ON vendedor.CodVendedor = pedido.CodVendedor
GROUP BY CodPedido
ORDER BY total DESC;

