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
  Forms, cadModelU, DataModule, zcomponent, cadprodutou
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TcadModelF, cadModelF);
  Application.CreateForm(TDataModuleF, DataModuleF);
  Application.CreateForm(TcadProdutosF, cadProdutosF);
  Application.Run;
end.

