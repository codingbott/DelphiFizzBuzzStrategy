unit uBuzzTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TBuzzTest = class
  public
    [Test]
    procedure Test5;
    [Test]
    procedure TestNix;
  end;

implementation

uses
  uBuzz;

{ TBuzzTest }

procedure TBuzzTest.Test5;
begin
  assert.AreEqual(TBuzz.Create().DoIt(5), 'Buzz');
end;

procedure TBuzzTest.TestNix;
begin
  assert.AreEqual(TBuzz.Create().DoIt(1), '');
end;


initialization
  TDUnitX.RegisterTestFixture(TBuzzTest);

end.
