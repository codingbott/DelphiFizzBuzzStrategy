unit uFizz;

interface

uses
  uiFizzBuzz;

type
  TFizz = class(Tinterfacedobject, IFizzBuzz)
  public
    function DoIt(i: integer): string;
  end;

implementation

{ TFizz }

function TFizz.DoIt(i: integer): string;
begin
  result:='';
  if i mod 3=0 then
    result:='Fizz';
end;

end.
