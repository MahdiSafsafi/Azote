// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-compare-instructions.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDCompare;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDCompareTest = class(TObject)
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
    procedure Test143;
    procedure Test144;
    procedure Test145;
    procedure Test146;
    procedure Test147;
    procedure Test148;
    procedure Test149;
    procedure Test150;
    procedure Test151;
    procedure Test152;
    procedure Test153;
    procedure Test154;
    procedure Test155;
    procedure Test156;
    procedure Test157;
    procedure Test158;
    procedure Test159;
    procedure Test160;
    procedure Test161;
    procedure Test162;
    procedure Test163;
    procedure Test164;
    procedure Test165;
    procedure Test166;
    procedure Test167;
    procedure Test168;
    procedure Test169;
    procedure Test170;
    procedure Test171;
    procedure Test172;
    procedure Test173;
    procedure Test174;
    procedure Test175;
    procedure Test176;
    procedure Test177;
    procedure Test178;
    procedure Test179;
    procedure Test180;
  end;

implementation

procedure TSIMDCompareTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDCompareTest.TearDown;
begin

end;	

procedure TSIMDCompareTest.Test1;
begin
  // cmeq v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $2E318DE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test2;
begin
  // cmeq v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $6E288FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test3;
begin
  // cmeq v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $2E718E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test4;
begin
  // cmeq v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $6E678CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test5;
begin
  // cmeq v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $2EBC8F7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test6;
begin
  // cmeq v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $6EA88CE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test7;
begin
  // cmeq v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $6EF58FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test8;
begin
  // cmhs v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $2E313DE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test9;
begin
  // cmhs v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $6E283FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test10;
begin
  // cmhs v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $2E713E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test11;
begin
  // cmhs v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $6E673CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test12;
begin
  // cmhs v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $2EBC3F7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test13;
begin
  // cmhs v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $6EA83CE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test14;
begin
  // cmhs v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $6EF53FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test15;
begin
  // cmhs v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $2E313DE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test16;
begin
  // cmhs v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $6E283FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test17;
begin
  // cmhs v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $2E713E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test18;
begin
  // cmhs v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $6E673CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test19;
begin
  // cmhs v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $2EBC3F7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test20;
begin
  // cmhs v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $6EA83CE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test21;
begin
  // cmhs v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $6EF53FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test22;
begin
  // cmge v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $0E313DE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test23;
begin
  // cmge v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $4E283FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test24;
begin
  // cmge v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $0E713E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test25;
begin
  // cmge v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $4E673CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test26;
begin
  // cmge v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $0EBC3F7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test27;
begin
  // cmge v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $4EA83CE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test28;
begin
  // cmge v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $4EF53FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test29;
begin
  // cmge v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $0E313DE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test30;
begin
  // cmge v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $4E283FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test31;
begin
  // cmge v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $0E713E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test32;
begin
  // cmge v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $4E673CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test33;
begin
  // cmge v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $0EBC3F7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test34;
begin
  // cmge v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $4EA83CE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test35;
begin
  // cmge v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $4EF53FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test36;
begin
  // cmhi v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $2E3135E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test37;
begin
  // cmhi v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $6E2837E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test38;
begin
  // cmhi v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $2E71360F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test39;
begin
  // cmhi v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $6E6734C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test40;
begin
  // cmhi v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $2EBC377D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test41;
begin
  // cmhi v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $6EA834E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test42;
begin
  // cmhi v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $6EF537E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test43;
begin
  // cmhi v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $2E3135E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test44;
begin
  // cmhi v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $6E2837E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test45;
begin
  // cmhi v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $2E71360F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test46;
begin
  // cmhi v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $6E6734C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test47;
begin
  // cmhi v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $2EBC377D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test48;
begin
  // cmhi v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $6EA834E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test49;
begin
  // cmhi v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $6EF537E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test50;
begin
  // cmgt v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $0E3135E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test51;
begin
  // cmgt v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $4E2837E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test52;
begin
  // cmgt v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $0E71360F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test53;
begin
  // cmgt v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $4E6734C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test54;
begin
  // cmgt v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $0EBC377D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test55;
begin
  // cmgt v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $4EA834E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test56;
begin
  // cmgt v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $4EF537E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test57;
begin
  // cmgt v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $0E3135E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test58;
begin
  // cmgt v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $4E2837E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test59;
begin
  // cmgt v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $0E71360F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test60;
begin
  // cmgt v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $4E6734C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test61;
begin
  // cmgt v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $0EBC377D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test62;
begin
  // cmgt v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $4EA834E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test63;
begin
  // cmgt v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $4EF537E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test64;
begin
  // cmtst v0.8b, v15.8b, v17.8b.
  FInsn.OpCode := $0E318DE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8B);
end;

procedure TSIMDCompareTest.Test65;
begin
  // cmtst v1.16b, v31.16b, v8.16b.
  FInsn.OpCode := $4E288FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_16B);
end;

procedure TSIMDCompareTest.Test66;
begin
  // cmtst v15.4h, v16.4h, v17.4h.
  FInsn.OpCode := $0E718E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test67;
begin
  // cmtst v5.8h, v6.8h, v7.8h.
  FInsn.OpCode := $4E678CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test68;
begin
  // cmtst v29.2s, v27.2s, v28.2s.
  FInsn.OpCode := $0EBC8F7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test69;
begin
  // cmtst v9.4s, v7.4s, v8.4s.
  FInsn.OpCode := $4EA88CE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test70;
begin
  // cmtst v3.2d, v31.2d, v21.2d.
  FInsn.OpCode := $4EF58FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test71;
begin
  // fcmeq v0.4h, v31.4h, v16.4h.
  FInsn.OpCode := $0E5027E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test72;
begin
  // fcmeq v4.8h, v7.8h, v15.8h.
  FInsn.OpCode := $4E4F24E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test73;
begin
  // fcmeq v0.2s, v31.2s, v16.2s.
  FInsn.OpCode := $0E30E7E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test74;
begin
  // fcmeq v4.4s, v7.4s, v15.4s.
  FInsn.OpCode := $4E2FE4E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test75;
begin
  // fcmeq v29.2d, v2.2d, v5.2d.
  FInsn.OpCode := $4E65E45D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test76;
begin
  // fcmge v3.4h, v8.4h, v12.4h.
  FInsn.OpCode := $2E4C2503;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test77;
begin
  // fcmge v31.8h, v29.8h, v28.8h.
  FInsn.OpCode := $6E5C27BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test78;
begin
  // fcmge v3.4h, v8.4h, v12.4h.
  FInsn.OpCode := $2E4C2503;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test79;
begin
  // fcmge v31.8h, v29.8h, v28.8h.
  FInsn.OpCode := $6E5C27BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test80;
begin
  // fcmge v31.4s, v29.4s, v28.4s.
  FInsn.OpCode := $6E3CE7BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test81;
begin
  // fcmge v3.2s, v8.2s, v12.2s.
  FInsn.OpCode := $2E2CE503;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test82;
begin
  // fcmge v17.2d, v15.2d, v13.2d.
  FInsn.OpCode := $6E6DE5F1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test83;
begin
  // fcmge v31.4s, v29.4s, v28.4s.
  FInsn.OpCode := $6E3CE7BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test84;
begin
  // fcmge v3.2s, v8.2s, v12.2s.
  FInsn.OpCode := $2E2CE503;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test85;
begin
  // fcmge v17.2d, v15.2d, v13.2d.
  FInsn.OpCode := $6E6DE5F1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test86;
begin
  // fcmgt v0.4h, v31.4h, v16.4h.
  FInsn.OpCode := $2ED027E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test87;
begin
  // fcmgt v4.8h, v7.8h, v15.8h.
  FInsn.OpCode := $6ECF24E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test88;
begin
  // fcmgt v0.4h, v31.4h, v16.4h.
  FInsn.OpCode := $2ED027E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4H);
end;

procedure TSIMDCompareTest.Test89;
begin
  // fcmgt v4.8h, v7.8h, v15.8h.
  FInsn.OpCode := $6ECF24E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_8H);
end;

procedure TSIMDCompareTest.Test90;
begin
  // fcmgt v0.2s, v31.2s, v16.2s.
  FInsn.OpCode := $2EB0E7E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test91;
begin
  // fcmgt v4.4s, v7.4s, v15.4s.
  FInsn.OpCode := $6EAFE4E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test92;
begin
  // fcmgt v29.2d, v2.2d, v5.2d.
  FInsn.OpCode := $6EE5E45D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test93;
begin
  // fcmgt v0.2s, v31.2s, v16.2s.
  FInsn.OpCode := $2EB0E7E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2S);
end;

procedure TSIMDCompareTest.Test94;
begin
  // fcmgt v4.4s, v7.4s, v15.4s.
  FInsn.OpCode := $6EAFE4E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_4S);
end;

procedure TSIMDCompareTest.Test95;
begin
  // fcmgt v29.2d, v2.2d, v5.2d.
  FInsn.OpCode := $6EE5E45D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_2D);
end;

procedure TSIMDCompareTest.Test96;
begin
  // cmeq v0.8b, v15.8b, #0x0.
  FInsn.OpCode := $0E2099E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test97;
begin
  // cmeq v1.16b, v31.16b, #0x0.
  FInsn.OpCode := $4E209BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test98;
begin
  // cmeq v15.4h, v16.4h, #0x0.
  FInsn.OpCode := $0E609A0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test99;
begin
  // cmeq v5.8h, v6.8h, #0x0.
  FInsn.OpCode := $4E6098C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test100;
begin
  // cmeq v29.2s, v27.2s, #0x0.
  FInsn.OpCode := $0EA09B7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test101;
begin
  // cmeq v9.4s, v7.4s, #0x0.
  FInsn.OpCode := $4EA098E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test102;
begin
  // cmeq v3.2d, v31.2d, #0x0.
  FInsn.OpCode := $4EE09BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test103;
begin
  // cmge v0.8b, v15.8b, #0x0.
  FInsn.OpCode := $2E2089E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test104;
begin
  // cmge v1.16b, v31.16b, #0x0.
  FInsn.OpCode := $6E208BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test105;
begin
  // cmge v15.4h, v16.4h, #0x0.
  FInsn.OpCode := $2E608A0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test106;
begin
  // cmge v5.8h, v6.8h, #0x0.
  FInsn.OpCode := $6E6088C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test107;
begin
  // cmge v29.2s, v27.2s, #0x0.
  FInsn.OpCode := $2EA08B7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test108;
begin
  // cmge v17.4s, v20.4s, #0x0.
  FInsn.OpCode := $6EA08A91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test109;
begin
  // cmge v3.2d, v31.2d, #0x0.
  FInsn.OpCode := $6EE08BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test110;
begin
  // cmgt v0.8b, v15.8b, #0x0.
  FInsn.OpCode := $0E2089E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test111;
begin
  // cmgt v1.16b, v31.16b, #0x0.
  FInsn.OpCode := $4E208BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test112;
begin
  // cmgt v15.4h, v16.4h, #0x0.
  FInsn.OpCode := $0E608A0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test113;
begin
  // cmgt v5.8h, v6.8h, #0x0.
  FInsn.OpCode := $4E6088C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test114;
begin
  // cmgt v29.2s, v27.2s, #0x0.
  FInsn.OpCode := $0EA08B7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test115;
begin
  // cmgt v9.4s, v7.4s, #0x0.
  FInsn.OpCode := $4EA088E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test116;
begin
  // cmgt v3.2d, v31.2d, #0x0.
  FInsn.OpCode := $4EE08BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test117;
begin
  // cmle v0.8b, v15.8b, #0x0.
  FInsn.OpCode := $2E2099E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test118;
begin
  // cmle v1.16b, v31.16b, #0x0.
  FInsn.OpCode := $6E209BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test119;
begin
  // cmle v15.4h, v16.4h, #0x0.
  FInsn.OpCode := $2E609A0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test120;
begin
  // cmle v5.8h, v6.8h, #0x0.
  FInsn.OpCode := $6E6098C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test121;
begin
  // cmle v29.2s, v27.2s, #0x0.
  FInsn.OpCode := $2EA09B7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test122;
begin
  // cmle v9.4s, v7.4s, #0x0.
  FInsn.OpCode := $6EA098E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test123;
begin
  // cmle v3.2d, v31.2d, #0x0.
  FInsn.OpCode := $6EE09BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test124;
begin
  // cmlt v0.8b, v15.8b, #0x0.
  FInsn.OpCode := $0E20A9E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test125;
begin
  // cmlt v1.16b, v31.16b, #0x0.
  FInsn.OpCode := $4E20ABE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test126;
begin
  // cmlt v15.4h, v16.4h, #0x0.
  FInsn.OpCode := $0E60AA0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test127;
begin
  // cmlt v5.8h, v6.8h, #0x0.
  FInsn.OpCode := $4E60A8C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test128;
begin
  // cmlt v29.2s, v27.2s, #0x0.
  FInsn.OpCode := $0EA0AB7D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V27);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test129;
begin
  // cmlt v9.4s, v7.4s, #0x0.
  FInsn.OpCode := $4EA0A8E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test130;
begin
  // cmlt v3.2d, v31.2d, #0x0.
  FInsn.OpCode := $4EE0ABE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($0));
end;

procedure TSIMDCompareTest.Test131;
begin
  // fcmeq v0.4h, v31.4h, #0.0.
  FInsn.OpCode := $0EF8DBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test132;
begin
  // fcmeq v4.8h, v7.8h, #0.0.
  FInsn.OpCode := $4EF8D8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test133;
begin
  // fcmeq v0.2s, v31.2s, #0.0.
  FInsn.OpCode := $0EA0DBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test134;
begin
  // fcmeq v4.4s, v7.4s, #0.0.
  FInsn.OpCode := $4EA0D8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test135;
begin
  // fcmeq v29.2d, v2.2d, #0.0.
  FInsn.OpCode := $4EE0D85D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test136;
begin
  // fcmeq v0.4h, v31.4h, #0.0.
  FInsn.OpCode := $0EF8DBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test137;
begin
  // fcmeq v4.8h, v7.8h, #0.0.
  FInsn.OpCode := $4EF8D8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test138;
begin
  // fcmeq v0.2s, v31.2s, #0.0.
  FInsn.OpCode := $0EA0DBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test139;
begin
  // fcmeq v4.4s, v7.4s, #0.0.
  FInsn.OpCode := $4EA0D8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test140;
begin
  // fcmeq v29.2d, v2.2d, #0.0.
  FInsn.OpCode := $4EE0D85D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test141;
begin
  // fcmge v3.4h, v8.4h, #0.0.
  FInsn.OpCode := $2EF8C903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test142;
begin
  // fcmge v31.8h, v29.8h, #0.0.
  FInsn.OpCode := $6EF8CBBF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test143;
begin
  // fcmge v31.4s, v29.4s, #0.0.
  FInsn.OpCode := $6EA0CBBF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test144;
begin
  // fcmge v3.2s, v8.2s, #0.0.
  FInsn.OpCode := $2EA0C903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test145;
begin
  // fcmge v17.2d, v15.2d, #0.0.
  FInsn.OpCode := $6EE0C9F1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test146;
begin
  // fcmge v3.4h, v8.4h, #0.0.
  FInsn.OpCode := $2EF8C903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test147;
begin
  // fcmge v31.8h, v29.8h, #0.0.
  FInsn.OpCode := $6EF8CBBF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test148;
begin
  // fcmge v31.4s, v29.4s, #0.0.
  FInsn.OpCode := $6EA0CBBF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test149;
begin
  // fcmge v3.2s, v8.2s, #0.0.
  FInsn.OpCode := $2EA0C903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test150;
begin
  // fcmge v17.2d, v15.2d, #0.0.
  FInsn.OpCode := $6EE0C9F1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test151;
begin
  // fcmgt v0.4h, v31.4h, #0.0.
  FInsn.OpCode := $0EF8CBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test152;
begin
  // fcmgt v4.8h, v7.8h, #0.0.
  FInsn.OpCode := $4EF8C8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test153;
begin
  // fcmgt v0.2s, v31.2s, #0.0.
  FInsn.OpCode := $0EA0CBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test154;
begin
  // fcmgt v4.4s, v7.4s, #0.0.
  FInsn.OpCode := $4EA0C8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test155;
begin
  // fcmgt v29.2d, v2.2d, #0.0.
  FInsn.OpCode := $4EE0C85D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test156;
begin
  // fcmgt v0.4h, v31.4h, #0.0.
  FInsn.OpCode := $0EF8CBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test157;
begin
  // fcmgt v4.8h, v7.8h, #0.0.
  FInsn.OpCode := $4EF8C8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test158;
begin
  // fcmgt v0.2s, v31.2s, #0.0.
  FInsn.OpCode := $0EA0CBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test159;
begin
  // fcmgt v4.4s, v7.4s, #0.0.
  FInsn.OpCode := $4EA0C8E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test160;
begin
  // fcmgt v29.2d, v2.2d, #0.0.
  FInsn.OpCode := $4EE0C85D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test161;
begin
  // fcmle v3.4h, v20.4h, #0.0.
  FInsn.OpCode := $2EF8DA83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test162;
begin
  // fcmle v1.8h, v8.8h, #0.0.
  FInsn.OpCode := $6EF8D901;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test163;
begin
  // fcmle v1.4s, v8.4s, #0.0.
  FInsn.OpCode := $6EA0D901;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test164;
begin
  // fcmle v3.2s, v20.2s, #0.0.
  FInsn.OpCode := $2EA0DA83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test165;
begin
  // fcmle v7.2d, v13.2d, #0.0.
  FInsn.OpCode := $6EE0D9A7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test166;
begin
  // fcmle v3.4h, v20.4h, #0.0.
  FInsn.OpCode := $2EF8DA83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test167;
begin
  // fcmle v1.8h, v8.8h, #0.0.
  FInsn.OpCode := $6EF8D901;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test168;
begin
  // fcmle v1.4s, v8.4s, #0.0.
  FInsn.OpCode := $6EA0D901;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test169;
begin
  // fcmle v3.2s, v20.2s, #0.0.
  FInsn.OpCode := $2EA0DA83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test170;
begin
  // fcmle v7.2d, v13.2d, #0.0.
  FInsn.OpCode := $6EE0D9A7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test171;
begin
  // fcmlt v16.4h, v2.4h, #0.0.
  FInsn.OpCode := $0EF8E850;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test172;
begin
  // fcmlt v15.8h, v4.8h, #0.0.
  FInsn.OpCode := $4EF8E88F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test173;
begin
  // fcmlt v16.2s, v2.2s, #0.0.
  FInsn.OpCode := $0EA0E850;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test174;
begin
  // fcmlt v15.4s, v4.4s, #0.0.
  FInsn.OpCode := $4EA0E88F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test175;
begin
  // fcmlt v5.2d, v29.2d, #0.0.
  FInsn.OpCode := $4EE0EBA5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test176;
begin
  // fcmlt v16.4h, v2.4h, #0.0.
  FInsn.OpCode := $0EF8E850;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test177;
begin
  // fcmlt v15.8h, v4.8h, #0.0.
  FInsn.OpCode := $4EF8E88F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test178;
begin
  // fcmlt v16.2s, v2.2s, #0.0.
  FInsn.OpCode := $0EA0E850;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test179;
begin
  // fcmlt v15.4s, v4.4s, #0.0.
  FInsn.OpCode := $4EA0E88F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDCompareTest.Test180;
begin
  // fcmlt v5.2d, v29.2d, #0.0.
  FInsn.OpCode := $4EE0EBA5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V29);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDCompareTest);

end.
