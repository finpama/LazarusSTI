unit DataModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZSqlUpdate;

type

  { TDataModuleF }

  TDataModuleF = class(TDataModule)
    qryCategoriaProd: TZQuery;
    qryClientesclienteid: TLongintField;
    qryClientescpf_cnpj_cliente: TStringField;
    qryClientesnome_cliente: TStringField;
    qryClientestipo_cliente: TStringField;
    qryOrcamentos: TZQuery;
    qryCategoriaProdcategoriaprodutoid: TLongintField;
    qryCategoriaProdds_categoria_produto: TStringField;
    qryClientes: TZQuery;
    qryOrcamentosclienteid: TLongintField;
    qryOrcamentosdt_orcamento: TDateTimeField;
    qryOrcamentosdt_validade_orcamento: TDateTimeField;
    qryOrcamentosorcamentoid: TLongintField;
    qryOrcamentosvl_total_orcamento: TFloatField;
    qryProdutoscategoriaprodutoid: TLongintField;
    qryProdutosds_produto: TStringField;
    qryProdutosdt_cadastro_produto: TDateTimeField;
    qryProdutosobs_produto: TStringField;
    qryProdutosprodutoid: TLongintField;
    qryProdutosstatus_produto: TStringField;
    qryProdutosvl_venda_produto: TFloatField;
    updCategoriaProd: TZUpdateSQL;
    updOrcamentos: TZUpdateSQL;
    updClientes: TZUpdateSQL;
    ZConnection: TZConnection;
    qryProdutos: TZQuery;
    updProdutos: TZUpdateSQL;
    qryGenerica: TZQuery;
    procedure qryCategoriaProdAfterInsert();
    procedure qryClientesAfterInsert();
  private

  public         
    function getSequence(const pNomeSequence: String): String;

  end;

var
  DataModuleF: TDataModuleF;

implementation

{$R *.lfm}

{ TDataModuleF }

function TDataModuleF.getSequence(const pNomeSequence: String): String;
begin
     Result := '';
 try
     qryGenerica.close;
     qryGenerica.SQL.Clear;
     qryGenerica.SQL.Add('SELECT NEXTVAL(' + QuotedStr(pNomeSequence) + ') AS CODIGO');
     qryGenerica.Open;
     Result := qryGenerica.FieldByName('CODIGO').AsString;
 finally
     qryGenerica.Close;
 end;
end;

procedure TDataModuleF.qryCategoriaProdAfterInsert();
begin
  qryCategoriaProdcategoriaprodutoid.AsInteger := StrToInt(getSequence('categoria_produto_categoriaprodutoid_seq'));
end;

procedure TDataModuleF.qryClientesAfterInsert();
begin
  qryClientesclienteid.AsInteger := StrToInt(getSequence('cliente_clienteid'));
end;


end.

