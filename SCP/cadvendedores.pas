unit CadVendedores;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, CadModelo;

type

  { TCadVendedoresF }

  TCadVendedoresF = class(TCadModeloF)
    inputCpfCpnj: TLabeledEdit;
    inputIdVendedores: TLabeledEdit;
    inputNomeFantasia: TLabeledEdit;
    inputEstado: TLabeledEdit;
    inputRazaoSocial: TLabeledEdit;
    inputTelefone: TLabeledEdit;
    inputComissao: TLabeledEdit;
    inputEmail: TLabeledEdit;
    inputEndereco: TLabeledEdit;
  private

  public

  end;

var
  CadVendedoresF: TCadVendedoresF;

implementation

{$R *.lfm}

{ TCadVendedoresF }


end.

