unit uTabuada;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TTabuadaForm }

  TTabuadaForm = class(TForm)
    btnGerar: TButton;
    InputStart: TEdit;
    InputEnd: TEdit;
    Input: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo: TMemo;     
    procedure FormCreate(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private

  public

  end;

var
  TabuadaForm: TTabuadaForm;

implementation

{$R *.lfm}

{ TTabuadaForm } 

procedure TTabuadaForm.FormCreate(Sender: TObject);
begin
  Memo.Lines.Clear;
end;


procedure TTabuadaForm.btnGerarClick(Sender: TObject);
var
  i, iStart, iEnd: Integer;
  num, res: Double;

begin
  Memo.Lines.Clear;

  if (Input.Text='') or (InputStart.Text='') or (InputEnd.Text='')  then
  begin
     ShowMessage('Digite um valor.');
     Input.SetFocus;
     Exit;
  end;
       
  num := StrToFloat(Input.Text);
  iStart := StrToInt(InputStart.Text);
  iEnd := StrToInt(InputEnd.Text);

  for i := iStart to iEnd do
  begin
    res := num * i;
    Memo.Lines.Add(FloatToStr(num) + ' x ' + FloatToStr(i) + ' = ' + FloatToStr(res));
  end;

  Input.SetFocus;

end;

end.

