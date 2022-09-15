unit CadVendedores;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, CadModelo;

type

  { TCadVendedoresF }

  TCadVendedoresF = class(TCadModeloF)
    iptCpfCpnj: TLabeledEdit;
    iptId: TLabeledEdit;
    iptNomeFantasia: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
  private

  public

  end;

var
  CadVendedoresF: TCadVendedoresF;

implementation

{$R *.lfm}

end.

