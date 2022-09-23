unit cadCategoriaProd;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, cadModelU, DB;

type

  { TcadCategoriaProdF }

  TcadCategoriaProdF = class(TcadModelF)
    dsCategoriaProd: TDataSource;
  private

  public

  end;

var
  cadCategoriaProdF: TcadCategoriaProdF;

implementation

{$R *.lfm}

{ TcadCategoriaProdF }

end.

