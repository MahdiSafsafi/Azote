// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-max-min.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDMaxMin;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDMaxMinTest = class(TObject)
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
    procedure Test25;
    procedure Test26;
    procedure Test27;
    procedure Test28;
    procedure Test29;
    procedure Test30;
    procedure Test31;
    procedure Test32;
    procedure Test33;
    procedure Test34;
    procedure Test35;
    procedure Test36;
    procedure Test37;
    procedure Test38;
    procedure Test39;
    procedure Test40;
    procedure Test41;
    procedure Test42;
    procedure Test43;
    procedure Test44;
  end;

implementation

procedure TSIMDMaxMinTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDMaxMinTest.TearDown;
begin

end;	

procedure TSIMDMaxMinTest.Test1;
begin
  // smax v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $0E226420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDMaxMinTest.Test2;
begin
  // smax v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $4E226420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDMaxMinTest.Test3;
begin
  // smax v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E626420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test4;
begin
  // smax v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E626420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test5;
begin
  // smax v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA26420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test6;
begin
  // smax v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA26420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test7;
begin
  // umax v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $2E226420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDMaxMinTest.Test8;
begin
  // umax v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $6E226420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDMaxMinTest.Test9;
begin
  // umax v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $2E626420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test10;
begin
  // umax v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $6E626420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test11;
begin
  // umax v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $2EA26420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test12;
begin
  // umax v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $6EA26420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test13;
begin
  // smin v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $0E226C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDMaxMinTest.Test14;
begin
  // smin v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $4E226C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDMaxMinTest.Test15;
begin
  // smin v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E626C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test16;
begin
  // smin v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E626C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test17;
begin
  // smin v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0EA26C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test18;
begin
  // smin v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $4EA26C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test19;
begin
  // umin v0.8b, v1.8b, v2.8b.
  FInsn.OpCode := $2E226C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDMaxMinTest.Test20;
begin
  // umin v0.16b, v1.16b, v2.16b.
  FInsn.OpCode := $6E226C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDMaxMinTest.Test21;
begin
  // umin v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $2E626C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test22;
begin
  // umin v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $6E626C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test23;
begin
  // umin v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $2EA26C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test24;
begin
  // umin v0.4s, v1.4s, v2.4s.
  FInsn.OpCode := $6EA26C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test25;
begin
  // fmax v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E423420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test26;
begin
  // fmax v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E423420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test27;
begin
  // fmax v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0E22F420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test28;
begin
  // fmax v31.4s, v15.4s, v16.4s.
  FInsn.OpCode := $4E30F5FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test29;
begin
  // fmax v7.2d, v8.2d, v25.2d.
  FInsn.OpCode := $4E79F507;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V25);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDMaxMinTest.Test30;
begin
  // fmin v10.4h, v15.4h, v22.4h.
  FInsn.OpCode := $0ED635EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test31;
begin
  // fmin v10.8h, v15.8h, v22.8h.
  FInsn.OpCode := $4ED635EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test32;
begin
  // fmin v10.2s, v15.2s, v22.2s.
  FInsn.OpCode := $0EB6F5EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test33;
begin
  // fmin v3.4s, v5.4s, v6.4s.
  FInsn.OpCode := $4EA6F4A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test34;
begin
  // fmin v17.2d, v13.2d, v2.2d.
  FInsn.OpCode := $4EE2F5B1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDMaxMinTest.Test35;
begin
  // fmaxnm v0.4h, v1.4h, v2.4h.
  FInsn.OpCode := $0E420420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test36;
begin
  // fmaxnm v0.8h, v1.8h, v2.8h.
  FInsn.OpCode := $4E420420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test37;
begin
  // fmaxnm v0.2s, v1.2s, v2.2s.
  FInsn.OpCode := $0E22C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test38;
begin
  // fmaxnm v31.4s, v15.4s, v16.4s.
  FInsn.OpCode := $4E30C5FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test39;
begin
  // fmaxnm v7.2d, v8.2d, v25.2d.
  FInsn.OpCode := $4E79C507;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V25);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDMaxMinTest.Test40;
begin
  // fminnm v10.4h, v15.4h, v22.4h.
  FInsn.OpCode := $0ED605EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDMaxMinTest.Test41;
begin
  // fminnm v10.8h, v15.8h, v22.8h.
  FInsn.OpCode := $4ED605EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDMaxMinTest.Test42;
begin
  // fminnm v10.2s, v15.2s, v22.2s.
  FInsn.OpCode := $0EB6C5EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDMaxMinTest.Test43;
begin
  // fminnm v3.4s, v5.4s, v6.4s.
  FInsn.OpCode := $4EA6C4A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDMaxMinTest.Test44;
begin
  // fminnm v17.2d, v13.2d, v2.2d.
  FInsn.OpCode := $4EE2C5B1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDMaxMinTest);

end.
