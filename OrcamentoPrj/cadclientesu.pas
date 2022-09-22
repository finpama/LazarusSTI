unit cadClientesU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, cadModelU, DB;

type

  { TcadClientesF }

  TcadClientesF = class(TcadModelF)
    dsClientes: TDataSource;
  private

  public

  end;

var
  cadClientesF: TcadClientesF;

implementation

{$R *.lfm}

end.

