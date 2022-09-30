unit cadModelU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Menus, DBGrids,
  ExtCtrls, StdCtrls, ActnList, ComCtrls, DBCtrls;

type

  { TcadModelF }

  TcadModelF = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    dsCadModel: TDataSource;
    DBG_Buscar: TButton;
    DBG_Codigo: TLabeledEdit;
    DBG_Fechar: TButton;
    DBG_Novo: TButton;
    DBGrid: TDBGrid;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PagePesquisa: TTabSheet;
    PageCadastro: TTabSheet;
    Panel5: TPanel;
    Title: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBG_FecharClick(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure modoCadastro(modo: String);
  private

  public

  end;

var
  cadModelF: TcadModelF;

implementation

{$R *.lfm}

{ TcadModelF }

procedure TcadModelF.modoCadastro(modo: String);
begin
  modo := UpperCase(modo);

  if (modo = 'INSERT') then
  begin
    PageCadastro.Caption := 'Novo Cadastro';
    Title.Caption := 'Novo';
  end;

  if (modo = 'EDIT') then
  begin
    PageCadastro.Caption := 'Editar Cadastro';
    Title.Caption := 'Editar';
  end;
end;

procedure TcadModelF.DBG_NovoClick(Sender: TObject);
begin
  dsCadModel.DataSet.Insert;
  modoCadastro('Insert');

  PageControl1.ActivePage := PageCadastro;
  DBG_Novo.Enabled := False;

end;

procedure TcadModelF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
end;

procedure TcadModelF.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;
end;

procedure TcadModelF.PageControl1Change(Sender: TObject);
begin
  if (not (dsCadModel.DataSet.State in [dsEdit, dsInsert])) and (PageControl1.ActivePage = PageCadastro) then
  begin
    dsCadModel.DataSet.Insert;
  end;

end;

procedure TcadModelF.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;
  DBG_Novo.Enabled := True;
  modoCadastro('Insert');

  dsCadModel.DataSet.Cancel;
end;

procedure TcadModelF.DBGridDblClick(Sender: TObject);
begin
  dsCadModel.DataSet.Edit;   
  modoCadastro('Edit');

  PageControl1.ActivePage := PageCadastro;
end;

procedure TcadModelF.Button1Click(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;
  modoCadastro('Insert');
  DBG_Novo.Enabled := True;
end;

procedure TcadModelF.Button2Click(Sender: TObject);
var
  dlgResult: TModalResult;
begin
  PageControl1.ActivePage := PagePesquisa;

  dlgResult := MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0);

  if dlgResult = 6 then
  begin
    dsCadModel.DataSet.Delete;

    DBG_Novo.Enabled := True;
  end;

end;

procedure TcadModelF.DBG_FecharClick(Sender: TObject);
begin
  Close;
end;

end.

