program OrcamentoPrj;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, cadModelU, DataModule, zcomponent, MenuPrincipalU,
  cadClientesU, cadCategoriaU, cadProdutoU, cadOrcamentoU, orc_modalClienteU,
  orc_modalProdutosU, orc_modalNovoItem;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModuleF, DataModuleF);
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(Torc_modalProdutosF, orc_modalProdutosF);
  Application.CreateForm(Torc_modalNovoItemF, orc_modalNovoItemF);
  Application.Run;
end.

