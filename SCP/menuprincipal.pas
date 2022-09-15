unit MenuPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  OpSobre, CadClientes, CadVendedores, CadFornecedor,
  CadProdutos;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    menuCadastros: TMenuItem;
    menuCadClientes: TMenuItem;
    menuCadProdutos: TMenuItem;
    menuCadUsuarios: TMenuItem;
    menuCadFornecedor: TMenuItem;
    menuCadVendedores: TMenuItem;
    menuManutencao: TMenuItem;
    menuSobre: TMenuItem;
    menuSair: TMenuItem;
    procedure FormClose(Sender: TObject);
    procedure menuCadClientesClick(Sender: TObject);
    procedure menuCadFornecedorClick(Sender: TObject);
    procedure menuCadProdutosClick(Sender: TObject);
    //procedure menuCadUsuariosClick(Sender: TObject);
    procedure menuCadVendedoresClick(Sender: TObject);
    //procedure menuManutencaoClick(Sender: TObject);
    procedure menuSairClick(Sender: TObject);
    procedure menuSobreClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.menuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

//procedure TMenuPrincipalF.menuManutencaoClick(Sender: TObject);
//begin
//  CadUsuariosF := TCadUsuariosF.Create(Self);
//  CadUsuariosF.Show;
//end;

procedure TMenuPrincipalF.FormClose(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMenuPrincipalF.menuCadClientesClick(Sender: TObject);
begin
  CadClientesF := TCadClientesF.Create(Self);
  CadClientesF.Show;
end;

procedure TMenuPrincipalF.menuCadFornecedorClick(Sender: TObject);
begin
  CadFornecedorF := TCadFornecedorF.Create(Self);
  CadFornecedorF.Show;
end;

procedure TMenuPrincipalF.menuCadProdutosClick(Sender: TObject);
begin
  CadProdutosF := TCadProdutosF.Create(Self);
  CadProdutosF.Show;
end;

//procedure TMenuPrincipalF.menuCadUsuariosClick(Sender: TObject);
//begin
//  CadUsuariosF := TCadUsuariosF.Create(Self);
//  CadUsuariosF.Show;
//end;

procedure TMenuPrincipalF.menuCadVendedoresClick(Sender: TObject);
begin
  CadVendedoresF := TCadVendedoresF.Create(Self);
  CadVendedoresF.Show;
end;

procedure TMenuPrincipalF.menuSobreClick(Sender: TObject);
begin
  OpSobreF := TOpSobreF.Create(Self);
  OpSobreF.Show;
end;

end.

