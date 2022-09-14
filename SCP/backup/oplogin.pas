unit OpLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  CadEsqSenha, MenuPrincipal;

type

  { TOpLoginF }

  TOpLoginF = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Email: TLabeledEdit;
    Senha: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  OpLoginF: TOpLoginF;

implementation

{$R *.lfm}

{ TOpLoginF }

//Botão Esqueci minha senha
procedure TOpLoginF.Button3Click(Sender: TObject);
begin
  CadEsqSenhaF := TCadEsqSenhaF.Create(Self);
  CadEsqSenhaF.ShowModal;
end;

//Botão Cancelar
procedure TOpLoginF.Button2Click(Sender: TObject);
begin
  Close;
end;

//botão entrar
procedure TOpLoginF.Button1Click(Sender: TObject);
begin
  MenuPrincipalF := TMenuPrincipalF.Create(Self);
  Hide;
  //Application.Terminate;
  MenuPrincipalF.Show;
end;

end.

