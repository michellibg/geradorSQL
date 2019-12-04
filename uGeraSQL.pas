unit uGeraSQL;

interface


uses windows, System.Classes;

type
  TGeradorSQL = class
  private
    FColunas: TStringList;
    FTabelas: TStringList;
    FCondicoes: TStringList;

    function PegarColunas: string;
    function PegarTabelas: string;
    function PegaCondicoes: string;
  public
    constructor Create();
    destructor Destroy;

    procedure AdicionarColuna(const sColuna: string);
    procedure AdicionarTabela(const sTabela: string);
    procedure AdicionarCondicao(const sCondicao: string);

    function GerarSQL: string;
  end;

implementation

uses
  System.SysUtils;

{ TGeradorSQL }

procedure TGeradorSQL.AdicionarColuna(const sColuna: string);
begin
  FColunas.Add(sColuna);
end;

procedure TGeradorSQL.AdicionarCondicao(const sCondicao: string);
begin
   FCondicoes.Add(sCondicao);
end;

procedure TGeradorSQL.AdicionarTabela(const sTabela: string);
begin
  FTabelas.Add(sTabela);
end;

constructor TGeradorSQL.Create;
begin
  FColunas := TStringList.Create;
  FTabelas := TStringList.Create;
  FCondicoes := TStringList.Create;
end;

destructor TGeradorSQL.destroy;
begin
  FreeAndNil(FColunas);
  FreeAndNil(FTabelas);
  FreeAndNil(FCondicoes);
end;

function TGeradorSQL.GerarSQL: string;
begin
  Result := PegarColunas+
            PegarTabelas+
            PegaCondicoes;
end;

function TGeradorSQL.PegaCondicoes: string;
var
  I: Integer;
begin
  for I := 0 to FCondicoes.Count -1 do
  begin
    if I = FColunas.Count -1 then
      Result := Result +#13#10+ FCondicoes[I]
    else Result := Result + FCondicoes[I]+ ' and ';
  end;
end;

function TGeradorSQL.PegarColunas: string;
var
  I: Integer;
begin
  Result := 'Select '+ #13#10;

  for I := 0 to FColunas.Count -1 do
  begin
    if I = FColunas.Count -1  then
      Result := Result + FColunas[I]
    else Result := Result +' '+ FColunas[I] + ' , ';
  end;

  Result := Result + #13#10+' From ' ;

end;

function TGeradorSQL.PegarTabelas: string;
var
  I: Integer;
begin
  for I := 0 to FTabelas.Count -1 do
  begin
    if I = 0  then
      Result := Result + FTabelas[I]
    else Result := Result +' '+ FTabelas[I] + ' , ';
  end;

  Result := Result + #13#10 +' Where ' ;
end;

end.
