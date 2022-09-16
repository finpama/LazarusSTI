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
    inputUsuario: TLabeledEdit;
    inputSenha: TLabeledEdit;
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

