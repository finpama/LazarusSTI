unit orc_modalNovoItem;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  orc_modalProdutosU, DataModule;

type

  { Torc_modalNovoItemF }

  Torc_modalNovoItemF = class(TForm)
    btnClientes: TButton;
    btnAdicionar: TButton;
    dsItensOrcamento: TDataSource;
    inputProdutoId: TDBEdit;
    inputProdutoDs: TDBEdit;
    inputQuantidade: TDBEdit;
    inputValorUni: TDBEdit;
    inputTotal: TDBEdit;
    labelProdutoId: TLabel;
    labelProdutoDs: TLabel;
    labelQuantidade: TLabel;
    labelValorUni: TLabel;
    labelTotal: TLabel;
    labelClienteSel: TLabel;
    procedure btnClientesClick(Sender: TObject);
    procedure inputQuantidadeEditingDone(Sender: TObject);
    procedure inputValorUniEditingDone(Sender: TObject);
  private

  public

  end;

var
  orc_modalNovoItemF: Torc_modalNovoItemF;

implementation

{$R *.lfm}

{ Torc_modalNovoItemF }

procedure Torc_modalNovoItemF.btnClientesClick(Sender: TObject);
begin
  orc_modalProdutosF := Torc_modalProdutosF.Create(Self);
  orc_modalProdutosF.ShowModal;
end;

procedure Torc_modalNovoItemF.inputQuantidadeEditingDone(Sender: TObject);
var
  total, unidade: Double;
  quantidade: Integer;
begin
  total := DataModuleF.qryItensOrcamentos;
end;

procedure Torc_modalNovoItemF.inputValorUniEditingDone(Sender: TObject);
begin

end;

end.

