unit cadModelU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Menus, DBGrids,
  ExtCtrls, StdCtrls, ActnList, ComCtrls, DBCtrls;

type

  { TcadModelF }

  TcadModelF = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    dsCadModel: TDataSource;
    DBG_Buscar: TButton;
    DBG_Codigo: TLabeledEdit;
    DBG_Fechar: TButton;
    DBG_Novo: TButton;
    DBGrid: TDBGrid;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PagePesquisa: TTabSheet;
    PageCadastro: TTabSheet;
    Panel5: TPanel;
    Title: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBG_FecharClick(Sender: TObject);
    procedure DBG_NovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
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
  DBG_Novo.Enabled := False;

  dsCadModel.DataSet.Insert;
end;

procedure TcadModelF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
end;

procedure TcadModelF.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;
end;

procedure TcadModelF.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa; 

  DBG_Novo.Enabled := True;
end;

procedure TcadModelF.Button1Click(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;   
  DBG_Novo.Enabled := True;
end;

procedure TcadModelF.Button2Click(Sender: TObject);
begin
  PageControl1.ActivePage := PagePesquisa;
end;

procedure TcadModelF.DBG_FecharClick(Sender: TObject);
begin
  Close;
end;

end.

