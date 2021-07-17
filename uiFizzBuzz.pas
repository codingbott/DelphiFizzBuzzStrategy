unit uiFizzBuzz;

interface

uses
  System.Generics.Collections;

type
  IFizzBuzz = interface
    function DoIt(i: integer): String;
  end;
  TStratListe = TList<IFizzBuzz>;

implementation

end.
