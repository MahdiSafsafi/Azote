// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-branch-encoding.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Branch;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TBranchTest = class(TObject)
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
    procedure Test5;
    procedure Test6;
    procedure Test7;
    procedure Test8;
    procedure Test9;
    procedure Test10;
  end;

implementation

procedure TBranchTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TBranchTest.TearDown;
begin

end;	

procedure TBranchTest.Test1;
begin
  // b.lo #1048572.
  FInsn.OpCode := $547FFFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(1048572));
end;

procedure TBranchTest.Test2;
begin
  // b #134217724.
  FInsn.OpCode := $15FFFFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(134217724));
end;

procedure TBranchTest.Test3;
begin
  // b #-134217728.
  FInsn.OpCode := $16000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(-134217728));
end;

procedure TBranchTest.Test4;
begin
  // cbz w20, #1048572.
  FInsn.OpCode := $347FFFF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CBZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(1048572));
end;

procedure TBranchTest.Test5;
begin
  // cbnz x2, #-1048576.
  FInsn.OpCode := $B5800002;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CBNZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-1048576));
end;

procedure TBranchTest.Test6;
begin
  // tbz w3, #5, #32764.
  FInsn.OpCode := $362BFFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(5));
  Assert.AreEqual(FInsn.Operands[2].RelOffset, Int64(32764));
end;

procedure TBranchTest.Test7;
begin
  // tbnz w3, #8, #-32768.
  FInsn.OpCode := $37440003;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBNZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(8));
  Assert.AreEqual(FInsn.Operands[2].RelOffset, Int64(-32768));
end;

procedure TBranchTest.Test8;
begin
  // dcps1.
  FInsn.OpCode := $D4A00001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS1);
end;

procedure TBranchTest.Test9;
begin
  // dcps2.
  FInsn.OpCode := $D4A00002;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS2);
end;

procedure TBranchTest.Test10;
begin
  // dcps3.
  FInsn.OpCode := $D4A00003;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS3);
end;

initialization
  TDUnitX.RegisterTestFixture(TBranchTest);

end.
