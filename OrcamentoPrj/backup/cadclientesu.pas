unit cadClientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  cadModelU, DataModule;

type

  { TcadClientesF }

  TcadClientesF = class(TcadModelF)
    inputNome: TLabeledEdit;
    InputCpfCpnj: TLabeledEdit;
    inputTipoCliente: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
  private

  public

  end;

var
  cadClientesF: TcadClientesF;

implementation

{$R *.lfm}

{ TcadClientesF }

procedure TcadClientesF.DBG_NovoClick(Sender: TObject);
begin
  inherited;

  //dbDesc.SetFocus;
  inputNome.SetFocus;
end;

procedure TcadClientesF.Button1Click(Sender: TObject);
begin
  inherited;

  //Botão Gravar
  //if DataModule1.qryCategoria.State in [dsEdit, dsInsert] then
  //begin
  //     DataModule1.qryCategoria.Post;
  //     DataModule1.qryCategoria.ApplyUpdates;
  //     btnNovo.Enabled:=True;
  //end;

  if DataModule.qryClientes.State in [dsEdit, dsInsert] then
  begin
  end;
end;

end.

