unit cadCategoriaU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  cadModelU, DataModule, DB;

type

  { TcadCategoriaF }

  TcadCategoriaF = class(TcadModelF)
    inputId: TDBEdit;
    inputCategoria: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Title2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBG_BuscarClick(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
  private

  public

  end;

var
  cadCategoriaF: TcadCategoriaF;

implementation

{$R *.lfm}

{ TcadCategoriaF }

procedure TcadCategoriaF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  inputCategoria.SetFocus;
end;

procedure TcadCategoriaF.Button1Click(Sender: TObject);
begin
  inherited;

  if (DataModuleF.qryCategoriaProd.State in [dsInsert, dsEdit]) then
  begin
    DataModuleF.qryCategoriaProd.Post;
    DataModuleF.qryCategoriaProd.ApplyUpdates;
    DBG_Novo.Enabled := True;
  end;
end;

procedure TcadCategoriaF.DBG_BuscarClick(Sender: TObject);
var
  codigoId, AuxWhere: String;
  iValue, iCode: Integer;
begin
  codigoId := DBG_Codigo.Text;

  Val(codigoId, iValue, iCode);

  if (codigoId = '') then
     AuxWhere := '1 = 1'
  else if (iCode = 0) then
     AuxWhere := 'CATEGORIAPRODUTOID = ' + codigoId
  else
     AuxWhere := '1 != 1';

  with DataModuleF.qryCategoriaProd do
  begin
     Close;
     SQL.Text := 'SELECT * FROM CATEGORIA_PRODUTO ' +
                 'WHERE ' + AuxWhere + ' ' +
                 'ORDER BY CATEGORIAPRODUTOID';
     Open;
  end;

end;

end.

