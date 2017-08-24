// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-3vdiff.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMD3Diff;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMD3DiffTest = class(TObject)
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
    procedure Test45;
    procedure Test46;
    procedure Test47;
    procedure Test48;
    procedure Test49;
    procedure Test50;
    procedure Test51;
    procedure Test52;
    procedure Test53;
    procedure Test54;
    procedure Test55;
    procedure Test56;
    procedure Test57;
    procedure Test58;
    procedure Test59;
    procedure Test60;
    procedure Test61;
    procedure Test62;
    procedure Test63;
    procedure Test64;
    procedure Test65;
    procedure Test66;
    procedure Test67;
    procedure Test68;
    procedure Test69;
    procedure Test70;
    procedure Test71;
    procedure Test72;
    procedure Test73;
    procedure Test74;
    procedure Test75;
    procedure Test76;
    procedure Test77;
    procedure Test78;
    procedure Test79;
    procedure Test80;
    procedure Test81;
    procedure Test82;
    procedure Test83;
    procedure Test84;
    procedure Test85;
    procedure Test86;
    procedure Test87;
    procedure Test88;
    procedure Test89;
    procedure Test90;
    procedure Test91;
    procedure Test92;
    procedure Test93;
    procedure Test94;
    procedure Test95;
    procedure Test96;
    procedure Test97;
    procedure Test98;
    procedure Test99;
    procedure Test100;
    procedure Test101;
    procedure Test102;
    procedure Test103;
    procedure Test104;
    procedure Test105;
    procedure Test106;
    procedure Test107;
    procedure Test108;
    procedure Test109;
    procedure Test110;
    procedure Test111;
    procedure Test112;
    procedure Test113;
    procedure Test114;
    procedure Test115;
    procedure Test116;
    procedure Test117;
    procedure Test118;
    procedure Test119;
    procedure Test120;
    procedure Test121;
    procedure Test122;
    procedure Test123;
    procedure Test124;
    procedure Test125;
    procedure Test126;
    procedure Test127;
    procedure Test128;
    procedure Test129;
    procedure Test130;
    procedure Test131;
    procedure Test132;
    procedure Test133;
    procedure Test134;
    procedure Test135;
    procedure Test136;
    procedure Test137;
    procedure Test138;
    procedure Test139;
    procedure Test140;
    procedure Test141;
    procedure Test142;
  end;

implementation

procedure TSIMD3DiffTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMD3DiffTest.TearDown;
begin

end;	

procedure TSIMD3DiffTest.Test1;
begin
  // saddl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E220020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test2;
begin
  // saddl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E620020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test3;
begin
  // saddl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA20020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test4;
begin
  // saddl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E620020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test5;
begin
  // saddl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E220020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test6;
begin
  // saddl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA20020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test7;
begin
  // uaddl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E220020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test8;
begin
  // uaddl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E620020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test9;
begin
  // uaddl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA20020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test10;
begin
  // uaddl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E220020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test11;
begin
  // uaddl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E620020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test12;
begin
  // uaddl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA20020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test13;
begin
  // ssubl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E222020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test14;
begin
  // ssubl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test15;
begin
  // ssubl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA22020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test16;
begin
  // ssubl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E222020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test17;
begin
  // ssubl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test18;
begin
  // ssubl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA22020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test19;
begin
  // usubl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E222020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test20;
begin
  // usubl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test21;
begin
  // usubl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA22020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test22;
begin
  // usubl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E222020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test23;
begin
  // usubl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test24;
begin
  // usubl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA22020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test25;
begin
  // sabal v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E225020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test26;
begin
  // sabal v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E625020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test27;
begin
  // sabal v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA25020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test28;
begin
  // sabal2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E225020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test29;
begin
  // sabal2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E625020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test30;
begin
  // sabal2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA25020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test31;
begin
  // uabal v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E225020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test32;
begin
  // uabal v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E625020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test33;
begin
  // uabal v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA25020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test34;
begin
  // uabal2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E225020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test35;
begin
  // uabal2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E625020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test36;
begin
  // uabal2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA25020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test37;
begin
  // sabdl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E227020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test38;
begin
  // sabdl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E627020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test39;
begin
  // sabdl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA27020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test40;
begin
  // sabdl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E227020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test41;
begin
  // sabdl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E627020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test42;
begin
  // sabdl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA27020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test43;
begin
  // uabdl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E227020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test44;
begin
  // uabdl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E627020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test45;
begin
  // uabdl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA27020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test46;
begin
  // uabdl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E227020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test47;
begin
  // uabdl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E627020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test48;
begin
  // uabdl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA27020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test49;
begin
  // smlal v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E228020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test50;
begin
  // smlal v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E628020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test51;
begin
  // smlal v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA28020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test52;
begin
  // smlal2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E228020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test53;
begin
  // smlal2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E628020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test54;
begin
  // smlal2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA28020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test55;
begin
  // umlal v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E228020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test56;
begin
  // umlal v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E628020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test57;
begin
  // umlal v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA28020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test58;
begin
  // umlal2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E228020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test59;
begin
  // umlal2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E628020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test60;
begin
  // umlal2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA28020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test61;
begin
  // smlsl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E22A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test62;
begin
  // smlsl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test63;
begin
  // smlsl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA2A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test64;
begin
  // smlsl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E22A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test65;
begin
  // smlsl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test66;
begin
  // smlsl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA2A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test67;
begin
  // umlsl v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E22A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test68;
begin
  // umlsl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test69;
begin
  // umlsl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA2A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test70;
begin
  // umlsl2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E22A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test71;
begin
  // umlsl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test72;
begin
  // umlsl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA2A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test73;
begin
  // smull v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E22C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test74;
begin
  // smull v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E62C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test75;
begin
  // smull v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA2C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test76;
begin
  // smull2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E22C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test77;
begin
  // smull2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E62C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test78;
begin
  // smull2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA2C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test79;
begin
  // umull v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $2E22C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test80;
begin
  // umull v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $2E62C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test81;
begin
  // umull v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $2EA2C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test82;
begin
  // umull2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $6E22C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test83;
begin
  // umull2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $6E62C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test84;
begin
  // umull2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $6EA2C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test85;
begin
  // sqdmlal v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E629020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test86;
begin
  // sqdmlal v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA29020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test87;
begin
  // sqdmlal2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E629020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test88;
begin
  // sqdmlal2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA29020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test89;
begin
  // sqdmlsl v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E62B020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test90;
begin
  // sqdmlsl v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA2B020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test91;
begin
  // sqdmlsl2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E62B020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test92;
begin
  // sqdmlsl2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA2B020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test93;
begin
  // sqdmull v0.4s, v1.4h, v2.4h.
  FInsn.OpCode := $0E62D020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test94;
begin
  // sqdmull v0.2d, v1.2s, v2.2s.
  FInsn.OpCode := $0EA2D020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test95;
begin
  // sqdmull2 v0.4s, v1.8h, v2.8h.
  FInsn.OpCode := $4E62D020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test96;
begin
  // sqdmull2 v0.2d, v1.4s, v2.4s.
  FInsn.OpCode := $4EA2D020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test97;
begin
  // pmull v0.8h, v1.8b, v2.8b.
  FInsn.OpCode := $0E22E020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test98;
begin
  // pmull v0.1q, v1.1d, v2.1d.
  FInsn.OpCode := $0EE2E020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_1Q);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_1D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_1D);
end;

procedure TSIMD3DiffTest.Test99;
begin
  // pmull2 v0.8h, v1.16b, v2.16b.
  FInsn.OpCode := $4E22E020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test100;
begin
  // pmull2 v0.1q, v1.2d, v2.2d.
  FInsn.OpCode := $4EE2E020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_1Q);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMD3DiffTest.Test101;
begin
  // saddw v0.8h, v1.8h, v2.8b.
  FInsn.OpCode := $0E221020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test102;
begin
  // saddw v0.4s, v1.4s, v2.4h.
  FInsn.OpCode := $0E621020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test103;
begin
  // saddw v0.2d, v1.2d, v2.2s.
  FInsn.OpCode := $0EA21020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test104;
begin
  // saddw2 v0.8h, v1.8h, v2.16b.
  FInsn.OpCode := $4E221020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test105;
begin
  // saddw2 v0.4s, v1.4s, v2.8h.
  FInsn.OpCode := $4E621020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test106;
begin
  // saddw2 v0.2d, v1.2d, v2.4s.
  FInsn.OpCode := $4EA21020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test107;
begin
  // uaddw v0.8h, v1.8h, v2.8b.
  FInsn.OpCode := $2E221020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test108;
begin
  // uaddw v0.4s, v1.4s, v2.4h.
  FInsn.OpCode := $2E621020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test109;
begin
  // uaddw v0.2d, v1.2d, v2.2s.
  FInsn.OpCode := $2EA21020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test110;
begin
  // uaddw2 v0.8h, v1.8h, v2.16b.
  FInsn.OpCode := $6E221020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test111;
begin
  // uaddw2 v0.4s, v1.4s, v2.8h.
  FInsn.OpCode := $6E621020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test112;
begin
  // uaddw2 v0.2d, v1.2d, v2.4s.
  FInsn.OpCode := $6EA21020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test113;
begin
  // ssubw v0.8h, v1.8h, v2.8b.
  FInsn.OpCode := $0E223020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test114;
begin
  // ssubw v0.4s, v1.4s, v2.4h.
  FInsn.OpCode := $0E623020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test115;
begin
  // ssubw v0.2d, v1.2d, v2.2s.
  FInsn.OpCode := $0EA23020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test116;
begin
  // ssubw2 v0.8h, v1.8h, v2.16b.
  FInsn.OpCode := $4E223020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test117;
begin
  // ssubw2 v0.4s, v1.4s, v2.8h.
  FInsn.OpCode := $4E623020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test118;
begin
  // ssubw2 v0.2d, v1.2d, v2.4s.
  FInsn.OpCode := $4EA23020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSUBW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test119;
begin
  // usubw v0.8h, v1.8h, v2.8b.
  FInsn.OpCode := $2E223020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMD3DiffTest.Test120;
begin
  // usubw v0.4s, v1.4s, v2.4h.
  FInsn.OpCode := $2E623020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMD3DiffTest.Test121;
begin
  // usubw v0.2d, v1.2d, v2.2s.
  FInsn.OpCode := $2EA23020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMD3DiffTest.Test122;
begin
  // usubw2 v0.8h, v1.8h, v2.16b.
  FInsn.OpCode := $6E223020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMD3DiffTest.Test123;
begin
  // usubw2 v0.4s, v1.4s, v2.8h.
  FInsn.OpCode := $6E623020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test124;
begin
  // usubw2 v0.2d, v1.2d, v2.4s.
  FInsn.OpCode := $6EA23020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBW2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test125;
begin
  // addhn v0.8b, v1.8h, v2.8h.
  FInsn.OpCode := $0E224020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test126;
begin
  // addhn v0.4h, v1.4s, v2.4s.
  FInsn.OpCode := $0E624020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test127;
begin
  // addhn v0.2s, v1.2d, v2.2d.
  FInsn.OpCode := $0EA24020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMD3DiffTest.Test128;
begin
  // addhn2 v0.16b, v1.8h, v2.8h.
  FInsn.OpCode := $4E224020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test129;
begin
  // addhn2 v0.8h, v1.4s, v2.4s.
  FInsn.OpCode := $4E624020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test130;
begin
  // addhn2 v0.4s, v1.2d, v2.2d.
  FInsn.OpCode := $4EA24020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMD3DiffTest.Test131;
begin
  // raddhn v0.8b, v1.8h, v2.8h.
  FInsn.OpCode := $2E224020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test132;
begin
  // raddhn v0.4h, v1.4s, v2.4s.
  FInsn.OpCode := $2E624020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test133;
begin
  // raddhn v0.2s, v1.2d, v2.2d.
  FInsn.OpCode := $2EA24020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMD3DiffTest.Test134;
begin
  // raddhn2 v0.16b, v1.8h, v2.8h.
  FInsn.OpCode := $6E224020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test135;
begin
  // raddhn2 v0.8h, v1.4s, v2.4s.
  FInsn.OpCode := $6E624020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test136;
begin
  // raddhn2 v0.4s, v1.2d, v2.2d.
  FInsn.OpCode := $6EA24020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMD3DiffTest.Test137;
begin
  // rsubhn v0.8b, v1.8h, v2.8h.
  FInsn.OpCode := $2E226020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSUBHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test138;
begin
  // rsubhn v0.4h, v1.4s, v2.4s.
  FInsn.OpCode := $2E626020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSUBHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test139;
begin
  // rsubhn v0.2s, v1.2d, v2.2d.
  FInsn.OpCode := $2EA26020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSUBHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMD3DiffTest.Test140;
begin
  // rsubhn2 v0.16b, v1.8h, v2.8h.
  FInsn.OpCode := $6E226020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSUBHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMD3DiffTest.Test141;
begin
  // rsubhn2 v0.8h, v1.4s, v2.4s.
  FInsn.OpCode := $6E626020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSUBHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMD3DiffTest.Test142;
begin
  // rsubhn2 v0.4s, v1.2d, v2.2d.
  FInsn.OpCode := $6EA26020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSUBHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMD3DiffTest);

end.
