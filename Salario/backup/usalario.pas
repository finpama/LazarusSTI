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
  reducao := (bru * des)* 100;
  liq := bru - reducao;

  result := liq
end;



procedure TSalarioForm.calcularClick(Sender: TObject);
var
  brutos: array[0..11] of Integer;

  i: Integer;
begin
   i := 0;
   while i < 11 do
   begin
      ShowMessage(IntToStr(i));
      i := i+1;
   end;

end;


end.

