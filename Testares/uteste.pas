unit uTeste;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfTeste }

  TfTeste = class(TForm)
    button: TButton;
    Image1: TImage;
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

