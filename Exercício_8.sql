SELECT v.CodVendedor, v.nome, ROUND(COALESCE(SUM(i.quantidade * pr.ValorUnitario) * 0.2 +(v.SalarioFixo),0),2) AS comissao
FROM vendedor v LEFT JOIN pedido p ON v.CodVendedor = p.CodVendedor
LEFT JOIN itempedido i ON p.CodPedido = i.CodPedido LEFT JOIN produto pr
ON  i.CodProduto = pr.CodProduto
where month(dataPedido)=4 and year(dataPedido)=2016
GROUP BY v.CodVendedor
ORDER BY comissao ASC, v.nome ASC;
