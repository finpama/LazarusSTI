unit MenuPrincipalU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  cadprodutou, cadCategoriaProd;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu: TMainMenu;
    menuCategoriaProd: TMenuItem;
    menuOrcamentos: TMenuItem;
    menuProdutos: TMenuItem;
    procedure menuCategoriaProdClick(Sender: TObject);
    procedure menuProdutosClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.menuProdutosClick(Sender: TObject);
begin
  cadProdutosF := TcadProdutosF.Create(Self);
  cadprodutosF.Show;
end;

procedure TMenuPrincipalF.menuCategoriaProdClick(Sender: TObject);
begin
  cadCategoriaProdF := TcadCategoriaProdF.Create(Self);
  cadCategoriaProdF.Show;
end;

end.

