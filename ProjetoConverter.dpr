program ProjetoConverter;

uses
  Vcl.Forms,
  uProjetoIntConverter in 'uProjetoIntConverter.pas' {Form1},
  uIConverter in 'uIConverter.pas',
  uConverteTexto in 'uConverteTexto.pas',
  uConverteTextoFuncao in 'uConverteTextoFuncao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
