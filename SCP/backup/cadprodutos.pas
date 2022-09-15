unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  CadModelo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    ComboBox1: TComboBox;
    iptId: TLabeledEdit;
    iptNomeFantasia: TLabeledEdit;
    Label1: TLabel;
    LabeledEdit3: TLabeledEdit;
    Memo1: TMemo;
  private

  public

  end;

var
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

{ TCadProdutosF }

end.

