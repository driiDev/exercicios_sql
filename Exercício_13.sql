SELECT produto.CodProduto, produto.Descricao, pedido.DataPedido,  itempedido.Quantidade AS total FROM produto
JOIN itempedido ON produto.CodProduto = itempedido.CodProduto JOIN pedido 
ON itempedido.CodPedido = pedido.CodPedido WHERE DataPedido > '2015-05-00' AND DataPedido < '2015-06-00'
ORDER BY Total DESC;

SELECT produto.CodProduto, produto.Descricao, pedido.DataPedido,  itempedido.Quantidade AS total FROM produto
JOIN itempedido ON produto.CodProduto = itempedido.CodProduto JOIN pedido 
ON itempedido.CodPedido = pedido.CodPedido  WHERE YEAR(DataPedido)=2015 AND MONTH(DataPedido)=5
ORDER BY Total DESC, DataPedido ASC;