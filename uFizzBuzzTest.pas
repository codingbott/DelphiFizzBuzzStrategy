unit uFizzBuzzTest;

interface

uses
  uiFizzBuzz,
  FizzBuzzer,
  DUnitX.TestFramework;


type
  [TestFixture]
  TFizzBuzzTest = class
  private
    sut: TFizzBuzzer;
    sl: TStratListe;
  public
    [Test]
    [TestCase('TestA', '1,1')]
    [TestCase('TestB', '2,2')]
    [TestCase('TestC', '3,Fizz')]
    [TestCase('TestD', '4,4')]
    [TestCase('TestE', '5,Buzz')]
    [TestCase('TestF', '6,Fizz')]
    [TestCase('TestG', '7,7')]
    [TestCase('TestH', '8,8')]
    [TestCase('TestI', '9,Fizz')]
    [TestCase('TestJ', '10,Buzz')]
    [TestCase('TestK', '11,11')]
    [TestCase('TestL', '12,Fizz')]
    [TestCase('TestM', '13,13')]
    [TestCase('TestN', '14,14')]
    [TestCase('TestO', '15,FizzBuzz')]
    [TestCase('TestP', '16,16')]
    procedure Test(const i: integer; const soll: String);

    [SetupFixture]
    procedure Setup();
    [TeardownFixture]
    procedure Down();
  end;

implementation

uses
  uFizz,
  uZahl,
  uBuzz;

procedure TFizzBuzzTest.Down;
begin
  sut.Free;
  sl.Free;
end;

procedure TFizzBuzzTest.Setup;
begin
  sl:=TStratListe.Create;
  sl.add(TFizz.Create());
  sl.add(TBuzz.Create());
  sl.add(TZahl.Create());
  sut:=TFizzBuzzer.Create(sl);
end;

procedure TFizzBuzzTest.Test(const i: integer; const soll: String);
var
  ergebnis: string;
begin
  ergebnis:=sut.DoIt(i);
  Assert.AreEqual(ergebnis, soll);
end;

initialization

TDUnitX.RegisterTestFixture(TFizzBuzzTest);

end.
