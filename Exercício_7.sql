/* Apresentar os vendedores, em ordem alfabética, que emitiram pedidos com prazos de entrega
superiores a 15 dias e que tenham salários fixos iguais ou superiores a R$ 1.000,00 (vendedor asc,
codvendedor asc)
Linhas: 221 */
SELECT vendedor.CodVendedor, vendedor.Nome AS vendedor FROM vendedor 
LEFT JOIN pedido ON vendedor.CodVendedor = pedido.CodVendedor
WHERE vendedor.SalarioFixo >= 1000 AND DATEDIFF(PrazoEntrega, DataPedido) > 15
GROUP BY Codvendedor
ORDER BY vendedor ASC, CodVendedor ASC;
