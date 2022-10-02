unit cadProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBGrids, DBDateTimePicker, cadModelU, DB, DataModule;

type

  { TcadProdutoF }

  TcadProdutoF = class(TcadModelF)
    btnCategorias: TButton;
    dsProdutoCategorias: TDataSource;
    DBG_Categorias: TDBGrid;
    inputStatus: TDBComboBox;
    inputData: TDBDateTimePicker;
    inputId: TDBEdit;
    inputCategoriaId: TDBEdit;
    inputProduto: TDBEdit;
    inputValor: TDBEdit;
    inputObs: TDBMemo;
    labelStatus: TLabel;
    labelData: TLabel;
    labelObs: TLabel;
    labelCategoriaId: TLabel;
    labelValor: TLabel;
    labelProduto: TLabel;
    labelId: TLabel;
    Title2: TLabel;
    procedure btnCategoriasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBG_BuscarClick(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
    procedure dsCadModelStateChange(Sender: TObject);
  private

  public

  end;

var
  cadProdutoF: TcadProdutoF;

implementation

{$R *.lfm}

{ TcadProdutoF }

procedure TcadProdutoF.btnCategoriasClick(Sender: TObject);
begin
  if DBG_Categorias.Visible = False then
  begin
    DBG_Categorias.Visible := True;
    btnCategorias.Caption := 'Esconder Categorias';
  end else
  begin
    DBG_Categorias.Visible := False;
    btnCategorias.Caption := 'Mostrar Categorias';
  end;
end;

procedure TcadProdutoF.Button1Click(Sender: TObject);
begin
  inherited;

  if DataModuleF.qryProdutos.State in [dsEdit, dsInsert] then
  begin
    DataModuleF.qryProdutos.Post;
    DataModuleF.qryProdutos.ApplyUpdates;
    DBG_Novo.Enabled := True;
  end;
end;

procedure TcadProdutoF.DBG_BuscarClick(Sender: TObject);
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

procedure TcadProdutoF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  inputProduto.SetFocus;
end;

procedure TcadProdutoF.dsCadModelStateChange(Sender: TObject);
begin
  inherited;

  if DataModuleF.qryProdutos.State = dsInsert then
  begin
    DataModuleF.qryProdutosdt_cadastro_produto.AsDateTime := Date;
  end;
end;

end.

