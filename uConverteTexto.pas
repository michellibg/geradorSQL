unit uConverteTexto;

interface

uses System.Classes, uIConverter, Vcl.Forms, System.StrUtils,
SysUtils;

type

ExcepcionErroConverter = class(Exception);

TConverteTexto = class(TInterfacedObject, IConverter)
private
  FTexto: string;
public
  function Converter: string; virtual; abstract;
  function GetTexto: string;
  procedure SetTexto(const value: string);
  property Texto: string read GetTexto write SetTexto;
end;

TConverteInvertido = class(TConverteTexto)
  function Converter: string;  override;
  function GetTexto: string;
  procedure SetTexto(const value: string);
  property Texto: string read GetTexto write SetTexto;
end;

TConvertePrimeiraMaiuscula = class(TConverteTexto)
  function Converter: string; override;
  function GetTexto: string;
  procedure SetTexto(const value: string);
  property Texto: string read GetTexto write SetTexto;
end;

TConverteOrdenado = class(TConverteTexto)
  function Converter: string; override;
  function GetTexto: string;
  procedure SetTexto(const value: string);
  property Texto: string read GetTexto write SetTexto;
end;


implementation

{ TConverteTexto }

function TConverteTexto.GetTexto: string;
begin
  result := FTexto;
end;

procedure TConverteTexto.SetTexto(const value: string);
begin
  if value = '' then
    raise Exception.Create('O texto está vazio.');

  FTexto := Value;
end;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.Converter: string;
begin
  Result := UpperCase(Copy(Texto,1,1))+LowerCase(Copy(Texto,2,Length(Texto)));
end;

function TConvertePrimeiraMaiuscula.GetTexto: string;
begin
  result := FTexto;
end;

procedure TConvertePrimeiraMaiuscula.SetTexto(const value: string);
begin
  FTexto := Value;
end;

{ TConverteInvertido }

function TConverteInvertido.Converter: string;
begin
  result := ReverseString(Texto);
end;

function TConverteInvertido.GetTexto: string;
begin
  result := FTexto;
end;

procedure TConverteInvertido.SetTexto(const value: string);
begin
  FTexto := Value;
end;

{ TConverteOrdenado }

function TConverteOrdenado.Converter: string;
var
  oTexto: TStringList;
  i: integer;
begin
  oTexto := TStringList.Create;
  try
    for i := 0 to Length(FTexto)-1 do
    begin
      oTexto.Add(FTexto[i]);
    end;
    oTexto.Sorted := True;
    result := oTexto.Text;
  finally
    FreeAndnIl(oTexto);
  end;
end;

function TConverteOrdenado.GetTexto: string;
begin
  Result := FTexto;
end;

procedure TConverteOrdenado.SetTexto(const value: string);
begin
  FTexto := Value;
end;

end.
