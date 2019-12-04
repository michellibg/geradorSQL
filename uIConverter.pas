unit uIConverter;

interface

uses
  System.Classes;

type
  IConverter = interface
    ['{1E9EB0EC-68FC-4592-94C2-99CAE7C7345A}']
    function Converter: string;

    function GetTexto: string;
    procedure SetTexto(const value: string);

    property Texto: string read GetTexto write SetTexto;
  end;



implementation

end.
