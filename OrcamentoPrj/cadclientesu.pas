unit cadClientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  StdCtrls, Menus, cadModelU, DataModule, DB;

type

  { TcadClientesF }

  TcadClientesF = class(TcadModelF)
    Button4: TButton;
    inputTipoCliente: TDBEdit;
    InputCpfCpnj: TDBEdit;
    inputNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBG_BuscarClick(Sender: TObject);
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
  DataModuleF.qryClientes.SQL.Text := 'SELECT * FROM CLIENTE ORDER BY CLIENTEID';
  DataModuleF.qryClientes.Open;
end;

procedure TcadClientesF.PageControl1Change(Sender: TObject);
begin
  DBG_Novo.Enabled := False;

  if PageControl1.ActivePage = PageCadastro then
  begin
    DataModuleF.qryClientes.Insert;
  end;

  if PageControl1.ActivePage = PagePesquisa then
  begin
    DataModuleF.qryClientes.Cancel;
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
  dlgResult: TModalResult;
begin
  inherited;

  dlgResult := MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0);

  if dlgResult = 6 then
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

procedure TcadClientesF.Button4Click(Sender: TObject);
begin
  DataModuleF.qryClientes.Edit;
end;

procedure TcadClientesF.DBGridDblClick(Sender: TObject);
begin
  PageControl1.ActivePage := PageCadastro;
  DataModuleF.qryClientes.Edit;
end;

procedure TcadClientesF.DBG_BuscarClick(Sender: TObject);
var
  AuxWhere : String;
begin
  //Esta procedure irá executar a pesquisa dos Clientes
  if DBG_Codigo.Text = '' then
    AuxWhere := '1 = 1'
  else
    AuxWhere := 'CLIENTEID = ' + DBG_Codigo.Text;

  DataModuleF.qryClientes.Close;
  DataModuleF.qryClientes.SQL.Text :=
            'SELECT * FROM CLIENTE '+
            'WHERE ' + AuxWhere + ' ' +
            'ORDER BY CLIENTEID';
  DataModuleF.qryClientes.Open;
end;



end.
