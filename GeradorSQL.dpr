program GeradorSQL;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form9},
  uGeraSQL in 'uGeraSQL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
