unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  CadModelo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    comboxTipo: TComboBox;
    inputIdProduto: TLabeledEdit;
    inputDescSimples: TLabeledEdit;
    Label1: TLabel;
    inputValor: TLabeledEdit;
    inputDescCompleta: TMemo;
  private

  public

  end;

var
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

{ TCadProdutosF }

end.

