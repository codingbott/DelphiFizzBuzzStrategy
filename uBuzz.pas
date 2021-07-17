unit uBuzz;

interface

uses
  uiFizzBuzz;

type
  TBuzz = class(Tinterfacedobject, IFizzBuzz)
  public
    function DoIt(i: integer): string;
  end;

implementation

{ TBuzz }

function TBuzz.DoIt(i: integer): string;
begin
  result:='';
  if i mod 5=0 then
    result:='Buzz';
end;

end.
