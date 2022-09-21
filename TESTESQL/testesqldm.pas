unit TesteSqlDM;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    zqryCategoria_Produtos: TZQuery;
    zqryCategoria_Produtoscategoriaprodutoid: TLongintField;
    zqryCategoria_Produtosds_categoria_produto: TStringField;
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

end.

