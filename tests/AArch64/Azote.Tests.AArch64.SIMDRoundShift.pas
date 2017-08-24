// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-rounding-shift.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDRoundShift;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDRoundShiftTest = class(TObject)
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
    procedure Test13;
    procedure Test14;
  end;

implementation

procedure TSIMDRoundShiftTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDRoundShiftTest.TearDown;
begin

end;	

procedure TSIMDRoundShiftTest.Test1;
begin
  // srshl v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $0E225420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDRoundShiftTest.Test2;
begin
  // srshl v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $4E225420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDRoundShiftTest.Test3;
begin
  // srshl v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E625420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDRoundShiftTest.Test4;
begin
  // srshl v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E625420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDRoundShiftTest.Test5;
begin
  // srshl v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA25420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDRoundShiftTest.Test6;
begin
  // srshl v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA25420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDRoundShiftTest.Test7;
begin
  // srshl v0.2d, v1.2d, v2.2d.
  FInsn.OpCode := $4EE25420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDRoundShiftTest.Test8;
begin
  // urshl v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $2E225420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDRoundShiftTest.Test9;
begin
  // urshl v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $6E225420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDRoundShiftTest.Test10;
begin
  // urshl v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $2E625420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDRoundShiftTest.Test11;
begin
  // urshl v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $6E625420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDRoundShiftTest.Test12;
begin
  // urshl v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $2EA25420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDRoundShiftTest.Test13;
begin
  // urshl v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $6EA25420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDRoundShiftTest.Test14;
begin
  // urshl v0.2d, v1.2d, v2.2d.
  FInsn.OpCode := $6EE25420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDRoundShiftTest);

end.
