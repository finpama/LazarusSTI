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
  Forms, CadModelo, OpLogin, CadEsqSenha
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TCadModeloF, CadModeloF);
  Application.CreateForm(TOpLoginF, OpLoginF);
  Application.CreateForm(TCadEsqSenhaF, CadEsqSenhaF);
  Application.Run;
end.

