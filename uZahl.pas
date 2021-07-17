unit uZahl;

interface

uses
  uiFizzBuzz;

type
  TZahl = class(TInterfacedObject, IFizzBuzz)
  public
    function DoIt(i: integer): String;
  end;

implementation

uses
  SysUtils;

{ TZahl }


function TZahl.DoIt(i: integer): String;
begin
  result:='';
  if not ((i mod 3=0) or (i mod 5=0)) then
    result:=inttostr(i);
end;

end.
