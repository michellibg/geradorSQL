unit uProjetoIntConverter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uConverteTexto;

type
  TForm1 = class(TForm)
    MemoOriginal: TMemo;
    Label1: TLabel;
    MemoConvertido: TMemo;
    Label2: TLabel;
    RGOpcoes: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  oConverter: TConverteTexto;
begin
  case RGOpcoes.ItemIndex of
    0: oConverter := TConverteInvertido.Create;
    1: oConverter := TConvertePrimeiraMaiuscula.Create;
    2: oConverter := TConverteOrdenado.Create;
  end;
  oConverter.Texto := MemoOriginal.Text;
  MemoConvertido.Text := oConverter.Converter;
end;

end.
