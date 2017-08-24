// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-add-sub-instructions.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDAddSub;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDAddSubTest = class(TObject)
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
    procedure Test15;
    procedure Test16;
    procedure Test17;
    procedure Test18;
    procedure Test19;
    procedure Test20;
    procedure Test21;
    procedure Test22;
    procedure Test23;
    procedure Test24;
  end;

implementation

procedure TSIMDAddSubTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDAddSubTest.TearDown;
begin

end;	

procedure TSIMDAddSubTest.Test1;
begin
  // add v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $0E228420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDAddSubTest.Test2;
begin
  // add v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $4E228420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDAddSubTest.Test3;
begin
  // add v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E628420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDAddSubTest.Test4;
begin
  // add v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E628420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDAddSubTest.Test5;
begin
  // add v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA28420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDAddSubTest.Test6;
begin
  // add v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA28420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDAddSubTest.Test7;
begin
  // add v0.2d, v1.2d, v2.2d.
  FInsn.OpCode := $4EE28420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDAddSubTest.Test8;
begin
  // sub v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $2E228420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDAddSubTest.Test9;
begin
  // sub v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $6E228420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDAddSubTest.Test10;
begin
  // sub v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $2E628420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDAddSubTest.Test11;
begin
  // sub v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $6E628420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDAddSubTest.Test12;
begin
  // sub v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $2EA28420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDAddSubTest.Test13;
begin
  // sub v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $6EA28420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDAddSubTest.Test14;
begin
  // sub v0.2d, v1.2d, v2.2d.
  FInsn.OpCode := $6EE28420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDAddSubTest.Test15;
begin
  // fadd v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E421420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDAddSubTest.Test16;
begin
  // fadd v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E421420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDAddSubTest.Test17;
begin
  // fadd v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0E22D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDAddSubTest.Test18;
begin
  // fadd v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4E22D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDAddSubTest.Test19;
begin
  // fadd v0.2d, v1.2d, v2.2d.
  FInsn.OpCode := $4E62D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDAddSubTest.Test20;
begin
  // fsub v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0EC21420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDAddSubTest.Test21;
begin
  // fsub v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4EC21420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDAddSubTest.Test22;
begin
  // fsub v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA2D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDAddSubTest.Test23;
begin
  // fsub v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA2D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDAddSubTest.Test24;
begin
  // fsub v0.2d, v1.2d, v2.2d.
  FInsn.OpCode := $4EE2D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDAddSubTest);

end.
