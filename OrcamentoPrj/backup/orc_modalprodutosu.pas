unit orc_modalProdutosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, ExtCtrls,
  StdCtrls, DataModule, DB;

type

  { Torc_modalProdutosF }

  Torc_modalProdutosF = class(TForm)
    dsOrc_Produtos: TDataSource;
    DBGrid1: TDBGrid;
    DBG_Buscar: TButton;
    DBG_Codigo: TLabeledEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBG_BuscarClick();
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  orc_modalProdutosF: Torc_modalProdutosF;

implementation

{$R *.lfm}

{ Torc_modalProdutosF }

procedure Torc_modalProdutosF.DBG_BuscarClick();
var
  s: String;
  iValue, iCode: Integer;
  AuxWhere: String;
begin
  s := DBG_Codigo.Text;
  Val(s, iValue, iCode);

  if (DBG_Codigo.Text = '') then
    AuxWhere := '1 = 1'
  else if (iCode = 0) then
    AuxWhere := 'PRODUTOID = ' + DBG_Codigo.Text
  else
    AuxWhere := '1 != 1';


  with DataModuleF.qryProdutos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM PRODUTO ' +
                'WHERE '+ AuxWhere + ' ' +
                'ORDER BY PRODUTOID ';
    Open;
  end;
end;

procedure Torc_modalProdutosF.DBGrid1DblClick(Sender: TObject);
begin
  DataModuleF.qryItensOrcamentosprodutoid.AsInteger := DataModuleF.qryProdutosprodutoid.AsInteger;
  DataModuleF.qryItensOrcamentosprodutodesc.AsString := DataModuleF.qryProdutosds_produto.AsString;

  Close;
end;

procedure Torc_modalProdutosF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
end;

end.

