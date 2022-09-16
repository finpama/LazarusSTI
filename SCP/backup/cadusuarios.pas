unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, CadModelo;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TCadModeloF)
    inputCpfCpnj: TLabeledEdit;
    inputEmail: TLabeledEdit;
    inputEmail1: TLabeledEdit;
    inputEmail2: TLabeledEdit;
    inputEndereco: TLabeledEdit;
    inputEstado: TLabeledEdit;
    inputIdCliente: TLabeledEdit;
    inputNomeFantasia: TLabeledEdit;
    inputRazaoSocial: TLabeledEdit;
    inputTelefone: TLabeledEdit;
  private

  public

  end;

var
  CadUsuariosF: TCadUsuariosF;

implementation

{$R *.lfm}

end.

