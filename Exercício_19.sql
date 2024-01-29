SELECT produto.CodProduto,produto.Descricao, SUM(COALESCE(itempedido.Quantidade * produto.ValorUnitario, 0)) AS total 
FROM produto LEFT JOIN itempedido ON produto.CodProduto = itempedido.CodProduto
GROUP BY CodProduto
ORDER BY total DESC;