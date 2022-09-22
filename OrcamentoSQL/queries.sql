
--Ex1 - Dados do produto com status = 'ATIVO'
select * from produto p
	where p.status_produto = 'ATIVO';


--Ex2 - Descrição do produto e da categoria do mesmo
select 
	p.ds_produto, 
	cp.ds_categoria_produto 
from produto p inner join categoria_produto cp
	on p.produtoid  = cp.categoriaprodutoid;


--Ex3 - Dados dos produtos com valor de venda maior que 50
select * from produto p
	where vl_venda_produto > 50;


--Ex4 - Dados do orçamento e o nome do respectivo cliente 
select
	o,
	c.nome_cliente 
from cliente c left join orcamento o 
	on c.clienteid = o.clienteid;


--Ex5 - Dados do item do orçamento e respectivo produto e categoria
select
	oi,
	p.ds_produto,
	cp.ds_categoria_produto 
from orcamento_item oi full join produto p
	on oi.produtoid = p.produtoid
full join categoria_produto cp 
	on p.categoriaprodutoid = cp.categoriaprodutoid; 


--Ex6 - Orçamentos entre 01/02/2022 e 18/02/2022
select *
from orcamento o 
	where dt_orcamento between  '01/02/2022' and '18/02/2022';


--Ex7 - Orçamentos vencidos na data atual
select *
from orcamento o 
	where o.dt_validade_orcamento <= current_date;



--Ex8 - Maior valor de item orçamento por produto
select max(oi.vl_unitario) as maiorValor
from orcamento_item oi; 
--UNDONE



--Ex9 - Item mais caro de todos orçamentos
select *
from orcamento o full join orcamento_item oi;
--UNDONE



--Ex9 - Quantidade total de itens por orçamento
--UNDONE
