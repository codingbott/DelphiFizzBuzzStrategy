unit uFizzTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TFizzTest = class
  public
    [Test]
    procedure Test3;
    [Test]
    procedure TestNix;
  end;

implementation

uses
  uDummy,
  uFizz;


{ TFizzTest }

procedure TFizzTest.Test3;
begin
  assert.AreEqual(TFizz.Create().DoIt(3), 'Fizz');
end;

procedure TFizzTest.TestNix;
begin
  assert.AreEqual(TFizz.Create().DoIt(1), '');
end;

initialization
  TDUnitX.RegisterTestFixture(TFizzTest);

end.
