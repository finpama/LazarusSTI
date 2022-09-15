unit CadModelo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  DBCtrls;

type

  { TCadModeloF }

  TCadModeloF = class(TForm)
    optionNovo: TButton;
    optionEditar: TButton;
    optionGravar: TButton;
    optionSair: TButton;
    optionExcluir: TButton;
    navButtons: TDBNavigator;
    options: TPanel;
    optionRight: TPanel;
    nav: TPanel;
    procedure optionSairClick(Sender: TObject);
  private

  public

  end;

var
  CadModeloF: TCadModeloF;

implementation

{$R *.lfm}

{ TCadModeloF }

procedure TCadModeloF.optionSairClick(Sender: TObject);
begin
  Close;
end;

end.

