// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-simd-post-ldst-multi-elem.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDPosLdstMultiElement;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDPosLdstMultiElementTest = class(TObject)
  private
    FInsn: TA64Instruction;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    { Tests }
  published
  end;

implementation

procedure TSIMDPosLdstMultiElementTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDPosLdstMultiElementTest.TearDown;
begin

end;	

initialization
  TDUnitX.RegisterTestFixture(TSIMDPosLdstMultiElementTest);

end.
