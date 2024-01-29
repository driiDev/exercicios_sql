SELECT itempedido.CodProduto, produto.Descricao, produto.ValorUnitario, pedido.DataPedido
FROM produto JOIN itempedido ON produto.CodProduto = itempedido.CodProduto
JOIN pedido ON itempedido.CodPedido = pedido.CodPedido
WHERE MONTH(DataPedido) = 6
GROUP BY CodProduto
ORDER BY ValorUnitario DESC;
