unit CadFornecedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, CadModelo;

type

  { TCadFornecedorF }

  TCadFornecedorF = class(TCadModeloF)
    inputCpfCpnj: TLabeledEdit;
    inputIdFornecedores: TLabeledEdit;
    inputNomeFantasia: TLabeledEdit;
    inputEstado: TLabeledEdit;
    inputRazaoSocial: TLabeledEdit;
    inputTelefone: TLabeledEdit;
    inputEmail: TLabeledEdit;
    InputEndereco: TLabeledEdit;
  private

  public

  end;

var
  CadFornecedorF: TCadFornecedorF;

implementation

{$R *.lfm}

end.

