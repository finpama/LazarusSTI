unit cadprodutou;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, cadModelU, DB;

type

  { TcadProdutosF }

  TcadProdutosF = class(TcadModelF)
    dsProdutos: TDataSource;
  private

  public

  end;

var
  cadProdutosF: TcadProdutosF;

implementation

{$R *.lfm}

end.

