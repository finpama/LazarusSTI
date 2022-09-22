unit cadCategoriaProd;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, cadModelU, DB;

type

  { TcadCategoriaProdF }

  TcadCategoriaProdF = class(TcadModelF)
    dsCategoriaProd: TDataSource;
    procedure dsCategoriaProdDataChange(Sender: TObject; Field: TField);
  private

  public

  end;

var
  cadCategoriaProdF: TcadCategoriaProdF;

implementation

{$R *.lfm}

{ TcadCategoriaProdF }

end.

