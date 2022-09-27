unit cadprodutou;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  cadModelU, DataModule;

type

  { TcadProdutosF }

  TcadProdutosF = class(TcadModelF)
    Button4: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    inputCategoria: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBG_BuscarClick(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
  private

  public

  end;

var
  cadProdutosF: TcadProdutosF;

implementation

{$R *.lfm}

{ TcadProdutosF }


procedure TcadProdutosF.DBEdit1Change(Sender: TObject);
begin
  DataModuleF.qryGenerica.Close;
  DataModuleF.qryGenerica.SQL.Text :=
     'SELECT CP.DS_CATEGORIA_PRODUTO AS CATEGORIA '     +
     'FROM CATEGORIA_PRODUTO CP RIGHT JOIN PRODUTO P '  +
     'ON P.CATEGORIAPRODUTOID = CP.CATEGORIAPRODUTOID ' +
     'WHERE P.PRODUTOID = ' + DataModuleF.qryProdutos.FieldByName('PRODUTOID').AsString;
  DataModuleF.qryGenerica.Open;

  inputCategoria.Text := DataModuleF.qryGenerica.FieldByName('CATEGORIA').AsString;
end;

procedure TcadProdutosF.Button2Click(Sender: TObject);
begin
  inherited;

  if MessageDlg('Tem certeza que quer deletar o Produto?',
     mtConfirmation, [mbYes, mbNo], 0) = 6 then
  begin
    DataModuleF.qryProdutos.Delete;
  end;
end;

procedure TcadProdutosF.Button3Click(Sender: TObject);
begin
  inherited;

  DataModuleF.qryProdutos.Cancel;
end;

procedure TcadProdutosF.Button4Click(Sender: TObject);
begin
  DataModuleF.qryProdutos.Edit;
end;

procedure TcadProdutosF.DBG_BuscarClick(Sender: TObject);
var AuxWhere: String;
begin
  if DBG_Codigo.Text = '' then
      AuxWhere := '1 = 1'
  else
      AuxWhere := 'PRODUTOID = ' + DBG_Codigo.Text;

  DataModuleF.qryProdutos.Close;
  DataModuleF.qryProdutos.SQL.Text :=
               'SELECT * FROM PRODUTO ' +
               'WHERE ' + AuxWhere + ' ' +
               'ORDER BY PRODUTOID';
  DataModuleF.qryProdutos.Open;
end;

procedure TcadProdutosF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  DBEdit3.SetFocus;
//
//  DBEdit6.Text := DateToStr(Date);
end;

end.

