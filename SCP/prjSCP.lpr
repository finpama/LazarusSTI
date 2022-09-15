program prjSCP;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, CadModelo, OpLogin, CadEsqSenha, MenuPrincipal, OpSobre,
  CadClientes, CadVendedores, CadFornecedor, CadProdutos
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TOpLoginF, OpLoginF);
  Application.CreateForm(TCadClientesF, CadClientesF);
  Application.CreateForm(TCadVendedoresF, CadVendedoresF);
  Application.CreateForm(TCadFornecedorF, CadFornecedorF);
  Application.CreateForm(TCadProdutosF, CadProdutosF);
  Application.Run;
end.

