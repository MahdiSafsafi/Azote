// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-bitfield-encoding.s
// ===========================================================================================================

unit Azote.Tests.AArch64.BitField;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TBitFieldTest = class(TObject)
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
    procedure Test11;
    procedure Test12;
  end;

implementation

procedure TBitFieldTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TBitFieldTest.TearDown;
begin

end;	

procedure TBitFieldTest.Test1;
begin
  // bfxil w1, w2, #1, #15.
  FInsn.OpCode := $33013C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test2;
begin
  // bfxil x1, x2, #1, #15.
  FInsn.OpCode := $B3413C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test3;
begin
  // sbfx w1, w2, #1, #15.
  FInsn.OpCode := $13013C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test4;
begin
  // sbfx x1, x2, #1, #15.
  FInsn.OpCode := $93413C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test5;
begin
  // ubfx w1, w2, #1, #15.
  FInsn.OpCode := $53013C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test6;
begin
  // ubfx x1, x2, #1, #15.
  FInsn.OpCode := $D3413C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test7;
begin
  // sbfiz wzr, w0, #31, #1.
  FInsn.OpCode := $1301001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBitFieldTest.Test8;
begin
  // sbfiz xzr, x0, #31, #1.
  FInsn.OpCode := $9361001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBitFieldTest.Test9;
begin
  // lsl wzr, w0, #31.
  FInsn.OpCode := $5301001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBitFieldTest.Test10;
begin
  // ubfiz xzr, x0, #31, #1.
  FInsn.OpCode := $D361001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBitFieldTest.Test11;
begin
  // extr w1, w2, w3, #15.
  FInsn.OpCode := $13833C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EXTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBitFieldTest.Test12;
begin
  // extr x2, x3, x4, #1.
  FInsn.OpCode := $93C40462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EXTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

initialization
  TDUnitX.RegisterTestFixture(TBitFieldTest);

end.
