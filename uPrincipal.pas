unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm9 = class(TForm)
    MemColuna: TMemo;
    MemTabelas: TMemo;
    MemCondicoes: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    MemSQL: TMemo;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses uGeraSQL;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var
  GeradorSQL: TGeradorSQL;
  I: Integer;
begin

  if (MemColuna.Lines.Count = 0) then
    raise Exception.Create('O campo coluna não foi preenchido!');

  if (MemTabelas.Lines.Count = 0) then
    raise Exception.Create('O campo Tabela não foi preenchido!');

  if (MemCondicoes.Lines.Count = 0) then
    raise Exception.Create('O campo Condição não foi preenchido!');
    
  GeradorSQL := TGeradorSQL.Create;
  try
    for I := 0 to MemColuna.Lines.Count -1 do
      GeradorSQL.AdicionarColuna(MemColuna.Lines[I]);

    for I := 0 to MemTabelas.Lines.Count -1 do
      GeradorSQL.AdicionarTabela(MemTabelas.Lines[I]);
      
    for I := 0 to MemCondicoes.Lines.Count -1 do
      GeradorSQL.AdicionarCondicao(MemCondicoes.Lines[I]);

    MemSQL.Text := GeradorSQL.GerarSQL;
  finally
    GeradorSQL.Free;
  end;

end;


end.
