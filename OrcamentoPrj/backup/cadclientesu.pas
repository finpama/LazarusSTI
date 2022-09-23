unit cadClientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  StdCtrls, cadModelU, DataModule, DB;

type

  { TcadClientesF }

  TcadClientesF = class(TcadModelF)
    inputTipoCliente: TDBEdit;
    InputCpfCpnj: TDBEdit;
    inputNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
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

procedure TcadClientesF.FormCreate(Sender: TObject);
begin
  DataModuleF.qryClientes.Close;
  DataModuleF.qryClientes.SQL.Text := 'SELECT * FROM CLIENTE';    
  DataModuleF.qryClientes.Open;
end;

procedure TcadClientesF.PageControl1Change(Sender: TObject);
begin
  DBG_Novo.Enabled := False;

  if PageControl1.ActivePage = PageCadastro then
  begin
    DataModuleF.qryClientes.Insert;
  end;

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

procedure TcadClientesF.Button2Click(Sender: TObject);
var
  result: TModalResult;
begin
  inherited;

  result := MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0);

  if result = 6 then
  begin
    dsCadModel.DataSet.Delete;

    DBG_Novo.Enabled := True;
  end;

end;

procedure TcadClientesF.Button3Click(Sender: TObject);
begin
  inherited;

  DataModuleF.qryClientes.Cancel;
end;

end.
