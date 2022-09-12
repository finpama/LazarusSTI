unit uSalario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TSalarioForm }

  TSalarioForm = class(TForm)
    calcular: TButton;
    janBruto: TEdit;
    abrBruto: TEdit;
    abrDesconto: TEdit;
    abrLiquido: TEdit;
    maiBruto: TEdit;
    maiDesconto: TEdit;
    maiLiquido: TEdit;
    junBruto: TEdit;
    junDesconto: TEdit;
    junLiquido: TEdit;
    julBruto: TEdit;
    janDesconto: TEdit;
    julDesconto: TEdit;
    julLiquido: TEdit;
    agoBruto: TEdit;
    agoDesconto: TEdit;
    agoLiquido: TEdit;
    setBruto: TEdit;
    setDesconto: TEdit;
    setLiquido: TEdit;
    outBruto: TEdit;
    outDesconto: TEdit;
    janLiquido: TEdit;
    outLiquido: TEdit;
    novBruto: TEdit;
    novDesconto: TEdit;
    novLiquido: TEdit;
    dezBruto: TEdit;
    dezDesconto: TEdit;
    dezLiquido: TEdit;
    totalBruto: TEdit;
    totalDesconto: TEdit;
    totalLiquido: TEdit;
    fevBruto: TEdit;
    fevDesconto: TEdit;
    fevLiquido: TEdit;
    marBruto: TEdit;
    marDesconto: TEdit;
    marLiquido: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure calcularClick(Sender: TObject);
  private

  public 
     function calcLiquido(bru:Double; des:Double):Double;

  end;


var
  SalarioForm: TSalarioForm;

implementation

{$R *.lfm}

{ TSalarioForm }

function TSalarioForm.calcLiquido(bru:Double; des:Double):Double;
var
  liq, reducao: Double;
begin
  reducao := (bru * des)/ 100;
  liq := bru - reducao;

  result := liq
end;



procedure TSalarioForm.calcularClick(Sender: TObject);
var
  brutoMes, descontoMes, liquidoMes: array[1..12] of TEdit;
  brutoTotal, descontoTotal, liquidoTotal: Double;
  i: Integer;

begin
   brutoMes[1] := janBruto;
   brutoMes[2] := fevBruto;
   brutoMes[3] := marBruto;
   brutoMes[4] := abrBruto;
   brutoMes[5] := maiBruto;
   brutoMes[6] := junBruto;
   brutoMes[7] := julBruto;
   brutoMes[8] := agoBruto;
   brutoMes[9] := setBruto;
   brutoMes[10] := outBruto;
   brutoMes[11] := novBruto;
   brutoMes[12] := dezBruto;
   brutoTotal := 0;

   descontoMes[1] := janDesconto;
   descontoMes[2] := fevDesconto;
   descontoMes[3] := marDesconto;
   descontoMes[4] := abrDesconto;
   descontoMes[5] := maiDesconto;
   descontoMes[6] := junDesconto;
   descontoMes[7] := julDesconto;
   descontoMes[8] := agoDesconto;
   descontoMes[9] := setDesconto;
   descontoMes[10] := outDesconto;
   descontoMes[11] := novDesconto;
   descontoMes[12] := dezDesconto; 
   descontoTotal := 0;

   liquidoMes[1] := janLiquido;
   liquidoMes[2] := fevLiquido;
   liquidoMes[3] := marLiquido;
   liquidoMes[4] := abrLiquido;
   liquidoMes[5] := maiLiquido;
   liquidoMes[6] := junLiquido;
   liquidoMes[7] := julLiquido;
   liquidoMes[8] := agoLiquido;
   liquidoMes[9] := setLiquido;
   liquidoMes[10] := outLiquido;
   liquidoMes[11] := novLiquido;
   liquidoMes[12] := dezLiquido;  
   liquidoTotal := 0;

   for i:=1 to 12 do
   begin
       liquidoMes[i].Text := FloatToStr(calcLiquido(StrToFloat(brutoMes[i].Text), StrToFloat(descontoMes[i].Text)));

       brutoTotal := brutoTotal + StrToFloat(brutoMes[i].Text);
       descontoTotal := descontoTotal + StrToFloat(descontoMes[i].Text);
       liquidoTotal := liquidoTotal + StrToFloat(liquidoMes[i].Text);
   end;

   totalBruto.Text := FloatToStr(brutoTotal);
   totalDesconto.Text := FloatToStr(descontoTotal);
   totalLiquido.Text := FloatToStr(liquidoTotal);

end;


end.

