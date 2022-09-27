unit cadCategoriaProdU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  cadModelU, DataModule, DB;

type

  { TcadCategoriaProdF }

  TcadCategoriaProdF = class(TcadModelF)
    Button4: TButton;
    DBEdit1: TDBEdit;
    inputDsCategoria: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBG_BuscarClick(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
  private

  public

  end;

var
  cadCategoriaProdF: TcadCategoriaProdF;

implementation

{$R *.lfm}

{ TcadCategoriaProdF }

procedure TcadCategoriaProdF.DBG_BuscarClick(Sender: TObject);
var
    AuxWhere: String;
begin
  if DBG_Codigo.Text = '' then
    AuxWhere := '1 = 1'
  else
    AuxWhere := 'CATEGORIAPRODUTOID = ' + DBG_Codigo.Text;

  DataModuleF.qryCategoriaProd.Close;
  DataModuleF.qryCategoriaProd.SQL.Text :=
      'SELECT * FROM CATEGORIA_PRODUTO ' +
      'WHERE ' + AuxWhere +
      'ORDER BY CATEGORIAPRODUTOID ';
  DataModuleF.qryCategoriaProd.Open;

end;

procedure TcadCategoriaProdF.Button1Click(Sender: TObject);
begin
  inherited;

  if DataModuleF.qryCategoriaProd.State in [dsEdit, dsInsert] then
  begin
    DataModuleF.qryCategoriaProd.Post;
    DataModuleF.qryCategoriaProd.ApplyUpdates;
    DBG_Novo.Enabled := True;
  end;
end;

procedure TcadCategoriaProdF.Button2Click(Sender: TObject);
begin
  inherited;

  if MessageDlg('Tem certeza que deseja excluir a Categoria?',
     mtConfirmation, [mbYes, mbNo], 0) = 6 then
  begin
    dsCadModel.DataSet.Delete;
    DBG_Novo.Enabled := True;
  end;
end;

procedure TcadCategoriaProdF.Button3Click(Sender: TObject);
begin
  inherited;

  DataModuleF.qryCategoriaProd.Cancel;
end;

procedure TcadCategoriaProdF.Button4Click(Sender: TObject);
begin
  DataModuleF.qryCategoriaProd.Edit;
end;

procedure TcadCategoriaProdF.DBGridDblClick(Sender: TObject);
begin
  PageControl1.ActivePage := PageCadastro;
  DataModuleF.qryCategoriaProd.Edit;
end;

procedure TcadCategoriaProdF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  inputDsCategoria.SetFocus;
end;

end.

