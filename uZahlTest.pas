unit uZahlTest;

interface

uses
  uiFizzBuzz,
  DUnitX.TestFramework;

type
  [TestFixture]
  TZahlTest = class
  public
    [Test]
    procedure Test1;

    [Test]
    [TestCase('Test1', '1,1')]
    [TestCase('Test5', '5,')]
    [TestCase('Test3', '3,')]
    [TestCase('Test15', '15,')]
    procedure TestNix(const i: integer; const soll: string);
  end;

implementation

uses
  uDummy,
  uZahl;

procedure TZahlTest.Test1;
begin
  Assert.AreEqual('1', TZahl.Create().DoIt(1));
end;

{ TDummy }

procedure TZahlTest.TestNix(const i: integer; const soll: string);
begin
  Assert.AreEqual(soll, TZahl.Create().DoIt(i));
end;

initialization

TDUnitX.RegisterTestFixture(TZahlTest);

end.
