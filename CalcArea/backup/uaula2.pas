unit uAula2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfAula2 }

  TfAula2 = class(TForm)
    calc: TButton;
    input1: TEdit;
    res: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure calcClick(Sender: TObject);
  private

  public
    function calcArea(raio:Double):Double;
  end;

var
  fAula2: TfAula2;

const
  pi = 3.141593;

implementation

{$R *.lfm}


function TfAula2.calcArea(raio:Double):Double;
var
  area, pi: Double;
begin
  area := pi * (raio * raio);
  result := area
end;

procedure TfAula2.calcClick(Sender: TObject);
var
  raio: Double;
begin
  raio := StrToFloat(input1.Text);
  res.Text := FloatToStr(calcArea(raio));
end;

end.

