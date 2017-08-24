// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-adr.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Adr;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TAdrTest = class(TObject)
  private
    FInsn: TA64Instruction;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    { Tests }
  published
    procedure Test1;
    procedure Test2;
    procedure Test3;
    procedure Test4;
  end;

implementation

procedure TAdrTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TAdrTest.TearDown;
begin

end;	

procedure TAdrTest.Test1;
begin
  // adr x0, #0.
  FInsn.OpCode := $10000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(0));
end;

procedure TAdrTest.Test2;
begin
  // adr x0, #1.
  FInsn.OpCode := $30000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(1));
end;

procedure TAdrTest.Test3;
begin
  // adrp x0, #0.
  FInsn.OpCode := $90000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADRP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(0));
end;

procedure TAdrTest.Test4;
begin
  // adrp x0, #4096.
  FInsn.OpCode := $B0000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADRP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(4096));
end;

initialization
  TDUnitX.RegisterTestFixture(TAdrTest);

end.
