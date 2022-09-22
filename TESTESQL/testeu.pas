unit TesteU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, DBCtrls;

type

  { TTesteF }

  TTesteF = class(TForm)
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure DBEdit1Change(Sender: TObject);
  private

  public

  end;

var
  TesteF: TTesteF;

implementation

{$R *.lfm}

{ TTesteF }

procedure TTesteF.DBEdit1Change(Sender: TObject);
begin

end;

end.

