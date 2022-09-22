unit DataModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset;

type

  { TDataModuleF }

  TDataModuleF = class(TDataModule)
    ZConnection1: TZConnection;
    zqryProdutos: TZQuery;
  private

  public

  end;

var
  DataModuleF: TDataModuleF;

implementation

{$R *.lfm}

end.

