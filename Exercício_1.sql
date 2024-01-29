SELECT produto.CodProduto, produto.Descricao,
SUM(COALESCE(itempedido.Quantidade, 0)) AS Total -- retorna o primeiro não nulo
FROM produto LEFT JOIN itempedido
ON produto.CodProduto = itempedido.CodProduto
GROUP BY produto.CodProduto
ORDER BY Total ASC, produto.CodProduto ASC;
