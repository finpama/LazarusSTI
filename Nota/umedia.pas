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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    resMedia: TEdit;
    inputFaltas: TEdit;
    resTxt: TEdit;
    resFaltas: TEdit;
    procedure buttonClick(Sender: TObject);
  private

  public
    function calcMedia(a, b, c, d:Double):Double;
    function checkPassou(media: Double; faltas:Integer):Boolean;

  end;

var
  Form1: TForm1;
  media: Double;
  faltas: Integer;
  aprovado: Boolean;

const
  minMedia = 6.0;
  maxFaltas = 100;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.calcMedia(a, b, c, d:Double):Double;
var
  total: Double;
begin
  total := a + b + c + d;
  result := total/4;
end;

function TForm1.checkPassou(media: Double; faltas:Integer):Boolean;
begin
  if (media >= minMedia) and (faltas <= maxFaltas) then
     result := True
  else    
     result := False
end;

procedure TForm1.buttonClick(Sender: TObject);
var
  nota1, nota2, nota3, nota4: Double;
begin
  nota1 := StrToFloat(input1.Text);
  nota2 := StrToFloat(input2.Text);
  nota3 := StrToFloat(input3.Text);
  nota4 := StrToFloat(input4.Text);

  media := calcMedia(nota1, nota2, nota3, nota4);
  resMedia.Text := FloatToStr(media);

  faltas := StrToInt(inputFaltas.Text);
  resFaltas.Text := IntToStr(faltas);

  aprovado := checkPassou(media, faltas);

  if aprovado then
     resTxt.Text := 'O Aluno Foi Aprovado'
  else                                     
     resTxt.Text := 'O Aluno Foi Reprovado'


end;


end.

