unit CadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TCadEsqSenhaF }

  TCadEsqSenhaF = class(TForm)
    A: TBoundLabel;
    btnEntrar: TButton;
    btnCancelar: TButton;
    inputEmail: TLabeledEdit;
    inputNSenha: TLabeledEdit;
    inputConfirNSenha: TLabeledEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private

  public

  end;

var
   CadEsqSenhaF: TCadEsqSenhaF;

implementation

{$R *.lfm}

{ TCadEsqSenhaF }

procedure TCadEsqSenhaF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TCadEsqSenhaF.btnEntrarClick(Sender: TObject);
begin
  Close;
end;

end.

