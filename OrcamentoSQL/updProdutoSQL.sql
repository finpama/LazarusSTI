UPDATE CLIENTE SET
    clienteid = :clienteid,
    tipo_cliente = :tipo_cliente,
    cpf_cnpj_cliente = :cpf_cnpj_cliente,
    nome_cliente = :nome_cliente
WHERE
    CLIENTE.clienteid = :OLD_clienteid AND
    CLIENTE.tipo_cliente = :OLD_tipo_cliente AND
    CLIENTE.cpf_cnpj_cliente = :OLD_cpf_cnpj_cliente AND
    CLIENTE.nome_cliente = :OLD_nome_cliente
;

UPDATE PRODUTO P SET    
    categoriaprodutoid = :categoriaprodutoid
    obs_produto = :obs_produto
    vl_venda_produto = :vl_venda_produto
    produto = :produto
    produtoid = :produtoid
    ds_produto = :ds_produto
    dt_cadastro_produto = :dt_cadastro_produto
    status_produto = :status_produto
WHERE
    P.categoriaprodutoid = :OLD_categoriaprodutoid AND
    P.obs_produto = :OLD_obs_produto AND
    P.vl_venda_produto = :OLD_vl_venda_produto AND
    P.produto = :OLD_produto AND
    P.produtoid = :OLD_produtoid AND
    P.ds_produto = :OLD_ds_produto AND
    P.dt_cadastro_produto = :OLD_dt_cadastro_produto AND
    P.status_produto = :OLD_status_produto
;



INSERT INTO CLIENTE
    (clienteid, tipo_cliente, cpf_cnpj_cliente, nome_cliente)
VALUES
    (:clienteid, :tipo_cliente, :cpf_cnpj_cliente, :nome_cliente)
;

INSERT INTO PRODUTO (
    categoriaprodutoid,
    obs_produto,
    vl_venda_produto,
    produto,
    produtoid,
    ds_produto,
    dt_cadastro_produto,
    status_produto
) VALUES (  
    :categoriaprodutoid,
    :obs_produto,
    :vl_venda_produto,
    :produto,
    :produtoid,
    :ds_produto,
    :dt_cadastro_produto,
    :status_produto
);

DELETE FROM CLIENTE
WHERE
    CLIENTE.clienteid = :OLD_clienteid AND
    CLIENTE.tipo_cliente = :OLD_tipo_cliente AND
    CLIENTE.cpf_cnpj_cliente = :OLD_cpf_cnpj_cliente AND
    CLIENTE.nome_cliente = :OLD_nome_cliente
;

DELETE FROM PRODUTO P
WHERE
    P.categoriaprodutoid = :OLD_categoriaprodutoid AND
    P.obs_produto = :OLD_obs_produto AND
    P.vl_venda_produto = :OLD_vl_venda_produto AND
    P.produto = :OLD_produto AND
    P.produtoid = :OLD_produtoid AND
    P.ds_produto = :OLD_ds_produto AND
    P.dt_cadastro_produto = :OLD_dt_cadastro_produto AND
    P.status_produto = :OLD_status_produto
;

SELECT
	OI.orcamentoitemid,
	OI.orcamentoid,
	P.ds_produto,
	OI.produtodesc,
	OI.qt_produto,
	OI.vl_unitario,
	OI.vl_total
FROM ORCAMENTO_ITEM OI LEFT JOIN PRODUTO P 
ON OI.produtoid = P.produtoid 
WHERE OI.orcamentoid = 
ORDER BY OI.orcamentoitemid 
;

SELECT 
	OI.orcamentoitemid, 
	OI.orcamentoid, 
    OI.produtoid, 
    P.ds_produto, 
	OI.produtodesc, 
	OI.qt_produto, 
	OI.vl_unitario, 
	OI.vl_total 
FROM ORCAMENTO_ITEM OI LEFT JOIN PRODUTO P 
ON OI.produtoid = P.produtoid 
WHERE OI.orcamentoid =  DataModuleF.qryOrcamentosorcamentoid.AsString  
ORDER BY OI.orcamentoitemid;