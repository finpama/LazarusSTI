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
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  TabuadaForm: TTabuadaForm;

implementation

{$R *.lfm}




{ TTabuadaForm }

procedure TTabuadaForm.btnGerarClick(Sender: TObject);
var
  i, iStart, iEnd: Integer;
  num, res: Double;

begin
  Memo.Lines.Clear;

  num := StrToFloat(Input.Text);

  iStart := StrToInt(InputStart.Text);
  iEnd := StrToInt(InputEnd.Text);

  for i := iStart to iEnd do
  begin
    res := num * i;
    Memo.Lines.Add(FloatToStr(num) + ' x ' + FloatToStr(i) + ' = ' + FloatToStr(res));
  end;

end;

procedure TTabuadaForm.FormCreate(Sender: TObject);
begin
  Memo.Lines.Clear;
end;


end.

