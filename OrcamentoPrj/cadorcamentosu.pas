unit cadOrcamentosU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, cadModelU, DB;

type

  { TcadOrcamentosF }

  TcadOrcamentosF = class(TcadModelF)
    dsOrcamentos: TDataSource;
  private

  public

  end;

var
  cadOrcamentosF: TcadOrcamentosF;

implementation

{$R *.lfm}

end.

