unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, CadModelo;

type

  { TCadClientesF }

  TCadClientesF = class(TCadModeloF)
    inputCpfCpnj: TLabeledEdit;
    inputIdCliente: TLabeledEdit;
    inputNomeFantasia: TLabeledEdit;
    inputEstado: TLabeledEdit;
    inputRazaoSocial: TLabeledEdit;
    inputTelefone: TLabeledEdit;
    inputEmail: TLabeledEdit;
    inputEndereco: TLabeledEdit;
  private

  public

  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

end.

