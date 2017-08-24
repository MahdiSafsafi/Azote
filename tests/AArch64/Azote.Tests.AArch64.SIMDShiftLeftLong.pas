// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-shift-left-long.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDShiftLeftLong;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDShiftLeftLongTest = class(TObject)
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

procedure TSIMDShiftLeftLongTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDShiftLeftLongTest.TearDown;
begin

end;	

procedure TSIMDShiftLeftLongTest.Test1;
begin
  // sshll v0.8h, v1.8b, #3.
  FInsn.OpCode := $0F0BA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test2;
begin
  // sshll v0.4s, v1.4h, #3.
  FInsn.OpCode := $0F13A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test3;
begin
  // sshll v0.2d, v1.2s, #3.
  FInsn.OpCode := $0F23A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test4;
begin
  // sshll2 v0.8h, v1.16b, #3.
  FInsn.OpCode := $4F0BA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test5;
begin
  // sshll2 v0.4s, v1.8h, #3.
  FInsn.OpCode := $4F13A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test6;
begin
  // sshll2 v0.2d, v1.4s, #3.
  FInsn.OpCode := $4F23A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test7;
begin
  // ushll v0.8h, v1.8b, #3.
  FInsn.OpCode := $2F0BA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test8;
begin
  // ushll v0.4s, v1.4h, #3.
  FInsn.OpCode := $2F13A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test9;
begin
  // ushll v0.2d, v1.2s, #3.
  FInsn.OpCode := $2F23A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test10;
begin
  // ushll2 v0.8h, v1.16b, #3.
  FInsn.OpCode := $6F0BA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test11;
begin
  // ushll2 v0.4s, v1.8h, #3.
  FInsn.OpCode := $6F13A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftLeftLongTest.Test12;
begin
  // ushll2 v0.2d, v1.4s, #3.
  FInsn.OpCode := $6F23A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDShiftLeftLongTest);

end.
