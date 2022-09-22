
select * from categoria_produto;
select MAX(CATEGORIAPRODUTOID) from categoria_produto;

CREATE SEQUENCE categoria_produto_categoriaprodutoid_seq
START with 5;



select * from cliente;
select MAX(CLIENTEID) from CLIENTE;

CREATE sequence cliente_clienteid
START WITH 4;



select * from produto;
select MAX(PRODUTOID) from produto;

CREATE SEQUENCE produto_produtoid
START WITH 4;



select * from usuarios;
select MAX(ID) from usuarios;

CREATE SEQUENCE usuario_oid;



select * from orcamento;
select MAX(ORCAMENTOID) from ORCAMENTO;

CREATE SEQUENCE orcamento_orcamentoid_seq
START WITH 4;