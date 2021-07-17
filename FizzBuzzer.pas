unit FizzBuzzer;

interface

uses
  uiFizzBuzz;

type
  TFizzBuzzer = class
  private
    fStratListe: TStratListe;
  public
    function DoIt(i: integer): string;
    constructor Create(aStratListe: TStratListe);
  end;

implementation

{ TFizzBuzzer }

constructor TFizzBuzzer.Create(aStratListe: TStratListe);
begin
  fStratListe:=aStratListe;
end;

function TFizzBuzzer.DoIt(i: integer): string;
var
  s: IFizzBuzz;
begin
  result:='';
  for s in fStratListe do
    result:=result+s.DoIt(i);
end;

end.
