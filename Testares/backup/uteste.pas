unit uTeste;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfTeste }

  TfTeste = class(TForm)
    button: TButton;
    input: TEdit;
    procedure buttonClick(Sender: TObject);
  private

  public

  end;

var
  fTeste: TfTeste;
  message: String;

implementation

{$R *.lfm}

{ TfTeste }

procedure TfTeste.buttonClick(Sender: TObject);
begin
  message := input.Text;
  ShowMessage(message);
end;

end.

