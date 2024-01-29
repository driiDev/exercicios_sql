SELECT pedido.CodPedido, COALESCE(SUM(itempedido.Quantidade),0) AS total_produtos FROM pedido
LEFT JOIN itempedido ON pedido.CodPedido = itempedido.CodPedido
GROUP BY pedido.CodPedido
ORDER BY CodPedido ASC;