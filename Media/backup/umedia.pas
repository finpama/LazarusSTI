unit uMedia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    button: TButton;
    input1: TEdit;
    input2: TEdit;
    input3: TEdit;
    input4: TEdit;
    res: TEdit;
    procedure buttonClick(Sender: TObject);
  private

  public
    function calcMedia(a, b, c, d: Integer):Double;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.calcMedia(a, b, c, d: Integer):Double;
var
  total: Integer;
begin
  total := a + b + c + d;
  result := total/4;
end;

procedure TForm1.buttonClick(Sender: TObject);
var
  idade1, idade2, idade3, idade4: Integer;
  media: Double;
begin
  idade1 := StrToInt(input1.Text);
  idade2 := StrToInt(input2.Text);
  idade3 := StrToInt(input3.Text);
  idade4 := StrToInt(input4.Text);

  media := calcMedia(idade1, idade2, idade3, idade4);

  res.Text := IntToStr(media);
end;




end.

