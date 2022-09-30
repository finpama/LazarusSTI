unit cadProdutoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBDateTimePicker, cadModelU;

type

  { TcadProdutoF }

  TcadProdutoF = class(TcadModelF)
    inputCategoria: TEdit;
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
    labelCategoria: TLabel;
    labelCategoriaId: TLabel;
    labelValor: TLabel;
    labelProduto: TLabel;
    labelId: TLabel;
    Title2: TLabel;
  private

  public

  end;

var
  cadProdutoF: TcadProdutoF;

implementation

{$R *.lfm}

{ TcadProdutoF }

end.

