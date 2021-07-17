unit uDummy;

interface

uses
  uiFizzBuzz;

type
  TLeerStub = class(TInterfacedObject, IFizzBuzz)
  public
    function DoIt(i: integer): string;
  end;

implementation

function TLeerStub.DoIt(i: integer): string;
begin
  result:='';
end;

end.
