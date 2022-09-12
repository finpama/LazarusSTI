unit uRepeticao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TRepeticaoForm }

  TRepeticaoForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    InputStart1: TEdit;
    InputEnd1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    forMemo3: TMemo;
    whileMemo3: TMemo;
    repeatMemo3: TMemo;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  RepeticaoForm: TRepeticaoForm;

implementation

{$R *.lfm}



{ TRepeticaoForm }

procedure TRepeticaoForm.Button1Click(Sender: TObject);
var
  i, iStart, iEnd: Integer;
begin              
  Memo1.Lines.Clear;

  iStart := StrToInt(InputStart1.Text);
  iEnd := StrToInt(InputEnd1.Text);

  for i := iStart downto iEnd do
  begin
     Memo1.Lines.Add(IntToStr(i));
  end;

end;

procedure TRepeticaoForm.Button2Click(Sender: TObject);
var
  pares: Array[1..3] of Integer;
  i, paresI: Integer;
const
  start = 0;
begin
  pares[1] := 0;
  pares[2] := 0;
  pares[3] := 0;
  paresI := 1;

  i := start;

  while pares[3]=0 do
  begin
     if (i mod 2)=0 then
     begin
       pares[paresI] := i;
       Memo2.Lines.Add(IntToStr(pares[paresI]));

       paresI := paresI + 1;
     end;

     i := i+1
  end;

end;

procedure TRepeticaoForm.Button3Click(Sender: TObject);
const
  startI = 0;
  endI = 10;
var
  iFor, iWhile, iRepeat: Integer;
begin

  //For:
  for iFor:= startI to endI do
  begin
     if (iFor mod 2)<>0 then
     begin
       forMemo3.Lines.Add(IntToStr(iFor));
     end;
  end;

  //While
  iWhile := startI;

  while iWhile <= endI do
  begin
     if (iWhile mod 2)<>0 then
     begin
       whileMemo3.Lines.Add(IntToStr(iWhile));
     end;

     iWhile := iWhile + 1
  end;

  //Repeat...Until:
  iRepeat := startI;

  repeat
    if (iRepeat mod 2)<>0 then
     begin
       repeatMemo3.Lines.Add(IntToStr(iRepeat));
     end;

    iRepeat := iRepeat + 1;
//
//    ShowMessage(IntToStr(iRepeat));
//
  until iRepeat >= endI;

end;



end.

