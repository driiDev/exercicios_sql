SELECT vendedor.CodVendedor, vendedor.Nome, vendedor.FaixaComissao,vendedor.SalarioFixo, COUNT(pedido.CodVendedor) AS total_pedidos
FROM pedido RIGHT JOIN vendedor ON pedido.CodVendedor = vendedor.CodVendedor WHERE FaixaComissao = 'A'
GROUP BY CodVendedor
ORDER BY total_pedidos, nome;


