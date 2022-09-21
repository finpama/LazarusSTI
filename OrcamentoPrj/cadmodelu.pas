unit cadModelU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Menus, DBGrids,
  ExtCtrls, StdCtrls, ActnList, ComCtrls;

type

  { TcadModelF }

  TcadModelF = class(TForm)
    DBG_Fechar: TButton;
    DBG_Novo: TButton;
    DBG_Buscar: TButton;
    DBGrid: TDBGrid;
    DBG_Codigo: TLabeledEdit;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PagePesquisa: TTabSheet;
    PageCadastro: TTabSheet;
    procedure Button3Click(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
  private

  public

  end;

var
  cadModelF: TcadModelF;

implementation

{$R *.lfm}

{ TcadModelF }

procedure TcadModelF.DBG_NovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := PageCadastro;
end;

procedure TcadModelF.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;
end;

end.

