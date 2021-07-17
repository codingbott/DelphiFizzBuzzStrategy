program FizzBuzz;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FizzBuzzer in 'FizzBuzzer.pas',
  uZahl in 'uZahl.pas',
  uiFizzBuzz in 'uiFizzBuzz.pas',
  uBuzz in 'uBuzz.pas',
  uFizz in 'uFizz.pas';

var
  i: integer;
  sut: TFizzBuzzer;
  sl: TStratListe;
begin
  sl:=TStratListe.Create;
  try
  sl.add(TFizz.Create());
  sl.add(TBuzz.Create());
  sl.add(TZahl.Create());

  sut:=TFizzBuzzer.Create(sl);
  try
    try
      for i:=1 to 100 do
        writeln(sut.DoIt(i));
      readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
    finally
      sut.free;
    end;
  finally
    sl.free;
  end;
end.
