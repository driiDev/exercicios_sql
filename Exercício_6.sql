/* Mostrar os clientes e seus respectivos prazos de entrega, ordenando do maior para o menor.
(prazo desc, codcliente asc)
Linhas: 8432 */
SELECT cliente.CodCliente, cliente.Nome AS cliente, pedido.PrazoEntrega AS prazo FROM cliente
 JOIN pedido ON cliente.CodCliente = pedido.CodCliente
 ORDER BY PrazoEntrega DESC, CodCliente ASC;
