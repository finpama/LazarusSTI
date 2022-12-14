unit MenuPrincipalU;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  cadClientesU, cadCategoriaU, cadProdutoU, cadOrcamentoU;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu: TMainMenu;
    menuCadastros: TMenuItem;
    menuCadClientes: TMenuItem;
    menuCadProdutos: TMenuItem;
    menuCadCategoriasProd: TMenuItem;
    menuCadOrcamentos: TMenuItem;
    procedure menuCadCategoriasProdClick(Sender: TObject);
    procedure menuCadClientesClick(Sender: TObject);
    procedure menuCadOrcamentosClick(Sender: TObject);
    procedure menuCadProdutosClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.menuCadProdutosClick(Sender: TObject);
begin
  cadProdutoF := TcadProdutoF.Create(Self);
  cadProdutoF.Show;
end;

procedure TMenuPrincipalF.menuCadOrcamentosClick(Sender: TObject);
begin
  cadOrcamentoF := TcadOrcamentoF.Create(Self);
  cadOrcamentoF.Show;
end;

procedure TMenuPrincipalF.menuCadCategoriasProdClick(Sender: TObject);
begin
  cadCategoriaF := TcadCategoriaF.Create(Self);
  cadCategoriaF.Show;
end;

procedure TMenuPrincipalF.menuCadClientesClick(Sender: TObject);
begin
  cadClientesF := TcadClientesF.Create(Self);
  cadClientesF.Show;
end;

end.

