// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-halving-add-sub.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDHalvingAddSub;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDHalvingAddSubTest = class(TObject)
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

procedure TSIMDHalvingAddSubTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDHalvingAddSubTest.TearDown;
begin

end;	

procedure TSIMDHalvingAddSubTest.Test1;
begin
  // shadd v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $0E220420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDHalvingAddSubTest.Test2;
begin
  // shadd v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $4E220420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDHalvingAddSubTest.Test3;
begin
  // shadd v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E620420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDHalvingAddSubTest.Test4;
begin
  // shadd v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E620420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDHalvingAddSubTest.Test5;
begin
  // shadd v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA20420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDHalvingAddSubTest.Test6;
begin
  // shadd v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA20420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDHalvingAddSubTest.Test7;
begin
  // uhadd v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $2E220420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDHalvingAddSubTest.Test8;
begin
  // uhadd v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $6E220420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDHalvingAddSubTest.Test9;
begin
  // uhadd v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $2E620420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDHalvingAddSubTest.Test10;
begin
  // uhadd v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $6E620420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDHalvingAddSubTest.Test11;
begin
  // uhadd v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $2EA20420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDHalvingAddSubTest.Test12;
begin
  // uhadd v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $6EA20420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDHalvingAddSubTest.Test13;
begin
  // shsub v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $0E222420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDHalvingAddSubTest.Test14;
begin
  // shsub v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $4E222420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDHalvingAddSubTest.Test15;
begin
  // shsub v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E622420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDHalvingAddSubTest.Test16;
begin
  // shsub v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E622420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDHalvingAddSubTest.Test17;
begin
  // shsub v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA22420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDHalvingAddSubTest.Test18;
begin
  // shsub v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA22420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDHalvingAddSubTest.Test19;
begin
  // uhsub v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $2E222420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDHalvingAddSubTest.Test20;
begin
  // uhsub v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $6E222420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDHalvingAddSubTest.Test21;
begin
  // uhsub v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $2E622420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDHalvingAddSubTest.Test22;
begin
  // uhsub v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $6E622420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDHalvingAddSubTest.Test23;
begin
  // uhsub v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $2EA22420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDHalvingAddSubTest.Test24;
begin
  // uhsub v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $6EA22420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDHalvingAddSubTest);

end.
