unit cadOrcamentoU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ExtCtrls, DBGrids, DBDateTimePicker, cadModelU, DataModule, orc_modalClienteU,
  DB;

type

  { TcadOrcamentoF }

  TcadOrcamentoF = class(TcadModelF)
    btnClientes: TButton;
    btnAdicionarItem: TButton;
    btnExcluirItem: TButton;
    dsItensOrcamento: TDataSource;
    DBGrid1: TDBGrid;
    inputDataValidade: TDBDateTimePicker;
    inputData: TDBDateTimePicker;
    inputId: TDBEdit;
    inputClienteId: TDBEdit;
    inputTotal: TDBEdit;
    labelClienteSel: TLabel;
    labelCliente: TBoundLabel;
    inputCliente: TLabeledEdit;
    labelTotal: TLabel;
    labelDataValidade: TLabel;
    labelData: TLabel;
    labelClienteId: TLabel;
    labelId: TLabel;
    Title2: TLabel;
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBG_BuscarClick();
    procedure DBG_NovoClick(Sender: TObject);
    procedure dsCadModelStateChange(Sender: TObject);
    procedure inputClienteChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

var
  cadOrcamentoF: TcadOrcamentoF;

implementation

{$R *.lfm}

{ TcadOrcamentoF }

procedure TcadOrcamentoF.DBG_BuscarClick();
var
  s: String;
  iValue, iCode: Integer;
  AuxWhere: String;
begin
  s := DBG_Codigo.Text;
  Val(s, iValue, iCode);

  if (DBG_Codigo.Text = '') then
    AuxWhere := '1 = 1'
  else if (iCode = 0) then
    AuxWhere := 'ORCAMENTOID = ' + DBG_Codigo.Text
  else
    AuxWhere := '1 != 1';


  with DataModuleF.qryOrcamentos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM ORCAMENTO ' +
                'WHERE '+ AuxWhere + ' ' +
                'ORDER BY ORCAMENTOID ';
    Open;
  end;
end;

procedure TcadOrcamentoF.btnClientesClick(Sender: TObject);
begin
  orc_modalClienteF := Torc_modalClienteF.Create(Self);
  orc_modalClienteF.ShowModal;
end;

procedure TcadOrcamentoF.btnAdicionarItemClick(Sender: TObject);
begin
end;

procedure TcadOrcamentoF.DBGridDblClick(Sender: TObject);
begin
  inherited;

  DataModuleF.qryOrcamentosclienteid.AsInteger := DataModuleF.qryClientesclienteid.AsInteger;
  cadOrcamentoF.inputCliente.Text := DataModuleF.qryClientesnome_cliente.AsString;

end;

procedure TcadOrcamentoF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  inputClienteId.SetFocus;

  with DataModuleF.qryItensOrcamentos do
  begin
    Close;
    SQL.Text :=
        'SELECT * ' +
        'FROM ORCAMENTO_ITEM OI WHERE 1 = 0'
        ;
    Open;
  end;
end;

procedure TcadOrcamentoF.dsCadModelStateChange(Sender: TObject);
begin
  inherited;

  if DataModuleF.qryOrcamentos.State = dsInsert then
  begin
    DataModuleF.qryOrcamentosdt_orcamento.AsDateTime := Date;
    DataModuleF.qryOrcamentosdt_validade_orcamento.AsDateTime := Date + 30;
  end;
end;

procedure TcadOrcamentoF.inputClienteChange(Sender: TObject);
begin
  if Text = '' then
     labelClienteSel.Visible := True
  else
     labelClienteSel.Visible := False;
end;

procedure TcadOrcamentoF.PageControl1Change(Sender: TObject);
begin
  inherited;

end;

end.

