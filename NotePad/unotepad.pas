unit uNotepad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  RTTICtrls, PrintersDlgs, StrUtils;

type

  { TNotepadForm }

  TNotepadForm = class(TForm)
    FindDialog: TFindDialog;
    MainMenu: TMainMenu;
    Edit: TTIMemo;
    Arquivo: TMenuItem;
    Editar: TMenuItem;
    Formatar: TMenuItem;
    LocalizarBtn: TMenuItem;
    ReplaceDialog: TReplaceDialog;
    SubstituirBtn: TMenuItem;
    MenuItem3: TMenuItem;
    PrintDialog: TPrintDialog;
    PrinterBtn: TMenuItem;
    NovoBtn: TMenuItem;
    AbrirBtn: TMenuItem;
    OpenDialog: TOpenDialog;
    SalvarBtn: TMenuItem;
    SaveDialog: TSaveDialog;
    NewDialog: TSaveDialog;
    procedure FindDialogFind(Sender: TObject);
    procedure LocalizarBtnClick(Sender: TObject);
    procedure NovoBtnClick(Sender: TObject);
    procedure AbrirBtnClick(Sender: TObject);
    procedure PrinterBtnClick(Sender: TObject);
    procedure SalvarBtnClick(Sender: TObject);
    procedure SubstituirBtnClick(Sender: TObject);
  private
    FFoundPos: Integer;

  public

  end;

var
  NotepadForm: TNotepadForm;

implementation

{$R *.lfm}

{ TNotepadForm }


procedure TNotepadForm.NovoBtnClick(Sender: TObject);
begin
     Edit.Lines.Clear;
end;

//Botão find
procedure TNotepadForm.FindDialogFind(Sender: TObject);
begin
  with Sender as TFindDialog do
  begin
    FFoundPos := PosEx(FindText, Edit.Lines.Text, FFoundPos+1);
    if FFoundPos > 0 then
    begin
      Edit.SelStart := FFoundPos - 1;
      Edit.SelLength := Length(FindText);
      Edit.SetFocus; // Edit must be activated, otherwise the selection effect will not be displayed
    end else
      Beep();
  end;

end;

//Botão localizar
procedure TNotepadForm.LocalizarBtnClick(Sender: TObject);
begin
  with FindDialog do
  begin
    if frEntireScope in Options then    // Search begins at file start
      FFoundPos := 0
    else
      FFoundPos := Edit.SelStart;      // Search begins at current cursor position
    Execute;
  end;
end;

procedure TNotepadForm.AbrirBtnClick(Sender: TObject);
var
  filename: String;
begin
   if OpenDialog.Execute then
   begin
     filename := OpenDialog.FileName;

     Edit.Lines.LoadFromFile(filename);
   end;

end;

procedure TNotepadForm.SalvarBtnClick(Sender: TObject);
begin  
    if SaveDialog.Execute then
        Edit.Lines.SaveToFile(SaveDialog.FileName);
end;

//Botão Substituir
procedure TNotepadForm.SubstituirBtnClick(Sender: TObject);
begin
  with ReplaceDialog do

end;

procedure TNotepadForm.PrinterBtnClick(Sender: TObject);
begin
    if PrintDialog.Execute then
    begin
       //terminar dps
    end;
end;

end.

