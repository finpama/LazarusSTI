unit orc_modalClienteU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids, ExtCtrls,
  StdCtrls, DataModule;

type

  { Torc_modalClienteF }

  Torc_modalClienteF = class(TForm)
    DBG_Buscar: TButton;
    DBG_Codigo: TLabeledEdit;
    dsOrc_Clientes: TDataSource;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBG_BuscarClick();
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  orc_modalClienteF: Torc_modalClienteF;

implementation

{$R *.lfm}
uses
  cadOrcamentoU;

{ Torc_modalClienteF }

procedure Torc_modalClienteF.DBG_BuscarClick();
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
    AuxWhere := 'CLIENTEID = ' + DBG_Codigo.Text
  else
    AuxWhere := '1 != 1';


  with DataModuleF.qryClientes do
  begin
    Close;
    SQL.Text := 'SELECT * FROM CLIENTE ' +
                'WHERE '+ AuxWhere + ' ' +
                'ORDER BY CLIENTEID ';
    Open;
  end;
end;

procedure Torc_modalClienteF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
end;

procedure Torc_modalClienteF.DBGrid1DblClick(Sender: TObject);
begin
  DataModuleF.qryOrcamentosclienteid.AsInteger := DataModuleF.qryClientesclienteid.AsInteger;
  cadOrcamentoF.inputCliente.Text := DataModuleF.qryClientesnome_cliente.AsString;

  Close;
end;

end.

