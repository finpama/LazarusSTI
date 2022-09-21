unit LoremDM;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZSqlUpdate;

type

  { TLoremDMF }

  TLoremDMF = class(TDataModule)
    DataSource1: TDataSource;
    qryCategoria_Produto: TZQuery;
    ZConnection1: TZConnection;
    zupdCategoria_Produto: TZUpdateSQL;
  private

  public

  end;

var
  LoremDMF: TLoremDMF;

implementation

{$R *.lfm}

{ TLoremDMF }



end.

