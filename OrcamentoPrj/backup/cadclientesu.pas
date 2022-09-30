unit cadClientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  StdCtrls, Menus, cadModelU, DataModule, DB;

type

  { TcadClientesF }

  TcadClientesF = class(TcadModelF)
    DBEdit1: TDBEdit;
    inputTipoCliente: TDBEdit;
    InputCpfCpnj: TDBEdit;
    inputNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Title2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBG_BuscarClick();
    procedure DBG_NovoClick(Sender: TObject);
  private

  public

  end;

var
  cadClientesF: TcadClientesF;

implementation

{$R *.lfm}

{ TcadClientesF }

procedure TcadClientesF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  inputNome.SetFocus;
end;

procedure TcadClientesF.Button1Click(Sender: TObject);
begin
  inherited;

  if DataModuleF.qryClientes.State in [dsEdit, dsInsert] then
  begin
    DataModuleF.qryClientes.Post;
    DataModuleF.qryClientes.ApplyUpdates;
    DBG_Novo.Enabled := True;
  end;

end;

procedure TcadClientesF.DBG_BuscarClick();
var
  s: String;
  iCode: Integer;
  AuxWhere: String;
begin
  s := DBG_Codigo.Text;
  Val(s, 'i', iCode);

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

end.
