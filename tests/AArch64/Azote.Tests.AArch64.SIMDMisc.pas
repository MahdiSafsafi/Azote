// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-simd-misc.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDMisc;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDMiscTest = class(TObject)
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
    procedure Test181;
    procedure Test182;
    procedure Test183;
    procedure Test184;
    procedure Test185;
    procedure Test186;
    procedure Test187;
    procedure Test188;
    procedure Test189;
    procedure Test190;
    procedure Test191;
    procedure Test192;
    procedure Test193;
    procedure Test194;
    procedure Test195;
    procedure Test196;
    procedure Test197;
    procedure Test198;
    procedure Test199;
    procedure Test200;
    procedure Test201;
    procedure Test202;
    procedure Test203;
    procedure Test204;
    procedure Test205;
    procedure Test206;
    procedure Test207;
    procedure Test208;
    procedure Test209;
    procedure Test210;
    procedure Test211;
    procedure Test212;
    procedure Test213;
    procedure Test214;
    procedure Test215;
    procedure Test216;
    procedure Test217;
    procedure Test218;
    procedure Test219;
    procedure Test220;
    procedure Test221;
    procedure Test222;
    procedure Test223;
    procedure Test224;
    procedure Test225;
    procedure Test226;
    procedure Test227;
    procedure Test228;
    procedure Test229;
    procedure Test230;
    procedure Test231;
    procedure Test232;
    procedure Test233;
    procedure Test234;
    procedure Test235;
    procedure Test236;
    procedure Test237;
    procedure Test238;
    procedure Test239;
    procedure Test240;
    procedure Test241;
    procedure Test242;
    procedure Test243;
    procedure Test244;
    procedure Test245;
    procedure Test246;
    procedure Test247;
    procedure Test248;
    procedure Test249;
    procedure Test250;
    procedure Test251;
    procedure Test252;
    procedure Test253;
    procedure Test254;
    procedure Test255;
    procedure Test256;
    procedure Test257;
    procedure Test258;
    procedure Test259;
    procedure Test260;
  end;

implementation

procedure TSIMDMiscTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDMiscTest.TearDown;
begin

end;	

procedure TSIMDMiscTest.Test1;
begin
  // rev64 v0.16b, v31.16b.
  FInsn.OpCode := $4E200BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test2;
begin
  // rev64 v2.8h, v4.8h.
  FInsn.OpCode := $4E600882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test3;
begin
  // rev64 v6.4s, v8.4s.
  FInsn.OpCode := $4EA00906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test4;
begin
  // rev64 v1.8b, v9.8b.
  FInsn.OpCode := $0E200921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test5;
begin
  // rev64 v13.4h, v21.4h.
  FInsn.OpCode := $0E600AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test6;
begin
  // rev64 v4.2s, v0.2s.
  FInsn.OpCode := $0EA00804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test7;
begin
  // rev32 v30.16b, v31.16b.
  FInsn.OpCode := $6E200BFE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V30);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test8;
begin
  // rev32 v4.8h, v7.8h.
  FInsn.OpCode := $6E6008E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test9;
begin
  // rev32 v21.8b, v1.8b.
  FInsn.OpCode := $2E200835;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test10;
begin
  // rev32 v0.4h, v9.4h.
  FInsn.OpCode := $2E600920;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test11;
begin
  // rev16 v30.16b, v31.16b.
  FInsn.OpCode := $4E201BFE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV16);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V30);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test12;
begin
  // rev16 v21.8b, v1.8b.
  FInsn.OpCode := $0E201835;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV16);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test13;
begin
  // saddlp v3.8h, v21.16b.
  FInsn.OpCode := $4E202AA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test14;
begin
  // saddlp v8.4h, v5.8b.
  FInsn.OpCode := $0E2028A8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test15;
begin
  // saddlp v9.4s, v1.8h.
  FInsn.OpCode := $4E602829;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test16;
begin
  // saddlp v0.2s, v1.4h.
  FInsn.OpCode := $0E602820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test17;
begin
  // saddlp v12.2d, v4.4s.
  FInsn.OpCode := $4EA0288C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test18;
begin
  // saddlp v17.1d, v28.2s.
  FInsn.OpCode := $0EA02B91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_1D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test19;
begin
  // uaddlp v3.8h, v21.16b.
  FInsn.OpCode := $6E202AA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test20;
begin
  // uaddlp v8.4h, v5.8b.
  FInsn.OpCode := $2E2028A8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test21;
begin
  // uaddlp v9.4s, v1.8h.
  FInsn.OpCode := $6E602829;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test22;
begin
  // uaddlp v0.2s, v1.4h.
  FInsn.OpCode := $2E602820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test23;
begin
  // uaddlp v12.2d, v4.4s.
  FInsn.OpCode := $6EA0288C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test24;
begin
  // uaddlp v17.1d, v28.2s.
  FInsn.OpCode := $2EA02B91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_1D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test25;
begin
  // sadalp v3.8h, v21.16b.
  FInsn.OpCode := $4E206AA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test26;
begin
  // sadalp v8.4h, v5.8b.
  FInsn.OpCode := $0E2068A8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test27;
begin
  // sadalp v9.4s, v1.8h.
  FInsn.OpCode := $4E606829;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test28;
begin
  // sadalp v0.2s, v1.4h.
  FInsn.OpCode := $0E606820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test29;
begin
  // sadalp v12.2d, v4.4s.
  FInsn.OpCode := $4EA0688C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test30;
begin
  // sadalp v17.1d, v28.2s.
  FInsn.OpCode := $0EA06B91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_1D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test31;
begin
  // uadalp v3.8h, v21.16b.
  FInsn.OpCode := $6E206AA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test32;
begin
  // uadalp v8.4h, v5.8b.
  FInsn.OpCode := $2E2068A8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test33;
begin
  // uadalp v9.4s, v1.8h.
  FInsn.OpCode := $6E606829;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test34;
begin
  // uadalp v0.2s, v1.4h.
  FInsn.OpCode := $2E606820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test35;
begin
  // uadalp v12.2d, v4.4s.
  FInsn.OpCode := $6EA0688C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test36;
begin
  // uadalp v17.1d, v28.2s.
  FInsn.OpCode := $2EA06B91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_1D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test37;
begin
  // suqadd v0.16b, v31.16b.
  FInsn.OpCode := $4E203BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test38;
begin
  // suqadd v2.8h, v4.8h.
  FInsn.OpCode := $4E603882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test39;
begin
  // suqadd v6.4s, v8.4s.
  FInsn.OpCode := $4EA03906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test40;
begin
  // suqadd v6.2d, v8.2d.
  FInsn.OpCode := $4EE03906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test41;
begin
  // suqadd v1.8b, v9.8b.
  FInsn.OpCode := $0E203921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test42;
begin
  // suqadd v13.4h, v21.4h.
  FInsn.OpCode := $0E603AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test43;
begin
  // suqadd v4.2s, v0.2s.
  FInsn.OpCode := $0EA03804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test44;
begin
  // usqadd v0.16b, v31.16b.
  FInsn.OpCode := $6E203BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test45;
begin
  // usqadd v2.8h, v4.8h.
  FInsn.OpCode := $6E603882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test46;
begin
  // usqadd v6.4s, v8.4s.
  FInsn.OpCode := $6EA03906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test47;
begin
  // usqadd v6.2d, v8.2d.
  FInsn.OpCode := $6EE03906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test48;
begin
  // usqadd v1.8b, v9.8b.
  FInsn.OpCode := $2E203921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test49;
begin
  // usqadd v13.4h, v21.4h.
  FInsn.OpCode := $2E603AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test50;
begin
  // usqadd v4.2s, v0.2s.
  FInsn.OpCode := $2EA03804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test51;
begin
  // sqabs v0.16b, v31.16b.
  FInsn.OpCode := $4E207BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test52;
begin
  // sqabs v2.8h, v4.8h.
  FInsn.OpCode := $4E607882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test53;
begin
  // sqabs v6.4s, v8.4s.
  FInsn.OpCode := $4EA07906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test54;
begin
  // sqabs v6.2d, v8.2d.
  FInsn.OpCode := $4EE07906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test55;
begin
  // sqabs v1.8b, v9.8b.
  FInsn.OpCode := $0E207921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test56;
begin
  // sqabs v13.4h, v21.4h.
  FInsn.OpCode := $0E607AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test57;
begin
  // sqabs v4.2s, v0.2s.
  FInsn.OpCode := $0EA07804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test58;
begin
  // sqneg v0.16b, v31.16b.
  FInsn.OpCode := $6E207BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test59;
begin
  // sqneg v2.8h, v4.8h.
  FInsn.OpCode := $6E607882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test60;
begin
  // sqneg v6.4s, v8.4s.
  FInsn.OpCode := $6EA07906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test61;
begin
  // sqneg v6.2d, v8.2d.
  FInsn.OpCode := $6EE07906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test62;
begin
  // sqneg v1.8b, v9.8b.
  FInsn.OpCode := $2E207921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test63;
begin
  // sqneg v13.4h, v21.4h.
  FInsn.OpCode := $2E607AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test64;
begin
  // sqneg v4.2s, v0.2s.
  FInsn.OpCode := $2EA07804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test65;
begin
  // abs v0.16b, v31.16b.
  FInsn.OpCode := $4E20BBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test66;
begin
  // abs v2.8h, v4.8h.
  FInsn.OpCode := $4E60B882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test67;
begin
  // abs v6.4s, v8.4s.
  FInsn.OpCode := $4EA0B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test68;
begin
  // abs v6.2d, v8.2d.
  FInsn.OpCode := $4EE0B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test69;
begin
  // abs v1.8b, v9.8b.
  FInsn.OpCode := $0E20B921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test70;
begin
  // abs v13.4h, v21.4h.
  FInsn.OpCode := $0E60BAAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test71;
begin
  // abs v4.2s, v0.2s.
  FInsn.OpCode := $0EA0B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test72;
begin
  // neg v0.16b, v31.16b.
  FInsn.OpCode := $6E20BBE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test73;
begin
  // neg v2.8h, v4.8h.
  FInsn.OpCode := $6E60B882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test74;
begin
  // neg v6.4s, v8.4s.
  FInsn.OpCode := $6EA0B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test75;
begin
  // neg v6.2d, v8.2d.
  FInsn.OpCode := $6EE0B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test76;
begin
  // neg v1.8b, v9.8b.
  FInsn.OpCode := $2E20B921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test77;
begin
  // neg v13.4h, v21.4h.
  FInsn.OpCode := $2E60BAAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test78;
begin
  // neg v4.2s, v0.2s.
  FInsn.OpCode := $2EA0B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test79;
begin
  // cls v0.16b, v31.16b.
  FInsn.OpCode := $4E204BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test80;
begin
  // cls v2.8h, v4.8h.
  FInsn.OpCode := $4E604882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test81;
begin
  // cls v6.4s, v8.4s.
  FInsn.OpCode := $4EA04906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test82;
begin
  // cls v1.8b, v9.8b.
  FInsn.OpCode := $0E204921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test83;
begin
  // cls v13.4h, v21.4h.
  FInsn.OpCode := $0E604AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test84;
begin
  // cls v4.2s, v0.2s.
  FInsn.OpCode := $0EA04804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test85;
begin
  // clz v0.16b, v31.16b.
  FInsn.OpCode := $6E204BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test86;
begin
  // clz v2.8h, v4.8h.
  FInsn.OpCode := $6E604882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test87;
begin
  // clz v6.4s, v8.4s.
  FInsn.OpCode := $6EA04906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test88;
begin
  // clz v1.8b, v9.8b.
  FInsn.OpCode := $2E204921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test89;
begin
  // clz v13.4h, v21.4h.
  FInsn.OpCode := $2E604AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test90;
begin
  // clz v4.2s, v0.2s.
  FInsn.OpCode := $2EA04804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test91;
begin
  // cnt v0.16b, v31.16b.
  FInsn.OpCode := $4E205BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CNT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test92;
begin
  // cnt v1.8b, v9.8b.
  FInsn.OpCode := $0E205921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CNT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test93;
begin
  // mvn v0.16b, v31.16b.
  FInsn.OpCode := $6E205BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test94;
begin
  // mvn v1.8b, v9.8b.
  FInsn.OpCode := $2E205921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test95;
begin
  // rbit v0.16b, v31.16b.
  FInsn.OpCode := $6E605BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RBIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMiscTest.Test96;
begin
  // rbit v1.8b, v9.8b.
  FInsn.OpCode := $2E605921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RBIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMiscTest.Test97;
begin
  // fabs v4.4h, v0.4h.
  FInsn.OpCode := $0EF8F804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test98;
begin
  // fabs v6.8h, v8.8h.
  FInsn.OpCode := $4EF8F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test99;
begin
  // fabs v6.4s, v8.4s.
  FInsn.OpCode := $4EA0F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test100;
begin
  // fabs v6.2d, v8.2d.
  FInsn.OpCode := $4EE0F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test101;
begin
  // fabs v4.2s, v0.2s.
  FInsn.OpCode := $0EA0F804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test102;
begin
  // fneg v4.4h, v0.4h.
  FInsn.OpCode := $2EF8F804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test103;
begin
  // fneg v6.8h, v8.8h.
  FInsn.OpCode := $6EF8F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test104;
begin
  // fneg v6.4s, v8.4s.
  FInsn.OpCode := $6EA0F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test105;
begin
  // fneg v6.2d, v8.2d.
  FInsn.OpCode := $6EE0F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test106;
begin
  // fneg v4.2s, v0.2s.
  FInsn.OpCode := $2EA0F804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test107;
begin
  // xtn2 v0.16b, v31.8h.
  FInsn.OpCode := $4E212BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test108;
begin
  // xtn2 v2.8h, v4.4s.
  FInsn.OpCode := $4E612882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test109;
begin
  // xtn2 v6.4s, v8.2d.
  FInsn.OpCode := $4EA12906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test110;
begin
  // xtn v1.8b, v9.8h.
  FInsn.OpCode := $0E212921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test111;
begin
  // xtn v13.4h, v21.4s.
  FInsn.OpCode := $0E612AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test112;
begin
  // xtn v4.2s, v0.2d.
  FInsn.OpCode := $0EA12804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test113;
begin
  // sqxtun2 v0.16b, v31.8h.
  FInsn.OpCode := $6E212BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test114;
begin
  // sqxtun2 v2.8h, v4.4s.
  FInsn.OpCode := $6E612882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test115;
begin
  // sqxtun2 v6.4s, v8.2d.
  FInsn.OpCode := $6EA12906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test116;
begin
  // sqxtun v1.8b, v9.8h.
  FInsn.OpCode := $2E212921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test117;
begin
  // sqxtun v13.4h, v21.4s.
  FInsn.OpCode := $2E612AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test118;
begin
  // sqxtun v4.2s, v0.2d.
  FInsn.OpCode := $2EA12804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test119;
begin
  // sqxtn2 v0.16b, v31.8h.
  FInsn.OpCode := $4E214BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test120;
begin
  // sqxtn2 v2.8h, v4.4s.
  FInsn.OpCode := $4E614882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test121;
begin
  // sqxtn2 v6.4s, v8.2d.
  FInsn.OpCode := $4EA14906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test122;
begin
  // sqxtn v1.8b, v9.8h.
  FInsn.OpCode := $0E214921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test123;
begin
  // sqxtn v13.4h, v21.4s.
  FInsn.OpCode := $0E614AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test124;
begin
  // sqxtn v4.2s, v0.2d.
  FInsn.OpCode := $0EA14804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test125;
begin
  // uqxtn2 v0.16b, v31.8h.
  FInsn.OpCode := $6E214BE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test126;
begin
  // uqxtn2 v2.8h, v4.4s.
  FInsn.OpCode := $6E614882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test127;
begin
  // uqxtn2 v6.4s, v8.2d.
  FInsn.OpCode := $6EA14906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test128;
begin
  // uqxtn v1.8b, v9.8h.
  FInsn.OpCode := $2E214921;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test129;
begin
  // uqxtn v13.4h, v21.4s.
  FInsn.OpCode := $2E614AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test130;
begin
  // uqxtn v4.2s, v0.2d.
  FInsn.OpCode := $2EA14804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test131;
begin
  // shll2 v2.8h, v4.16b, #8.
  FInsn.OpCode := $6E213882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(8));
end;

procedure TSIMDMiscTest.Test132;
begin
  // shll2 v6.4s, v8.8h, #16.
  FInsn.OpCode := $6E613906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TSIMDMiscTest.Test133;
begin
  // shll2 v6.2d, v8.4s, #32.
  FInsn.OpCode := $6EA13906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TSIMDMiscTest.Test134;
begin
  // shll v2.8h, v4.8b, #8.
  FInsn.OpCode := $2E213882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(8));
end;

procedure TSIMDMiscTest.Test135;
begin
  // shll v6.4s, v8.4h, #16.
  FInsn.OpCode := $2E613906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TSIMDMiscTest.Test136;
begin
  // shll v6.2d, v8.2s, #32.
  FInsn.OpCode := $2EA13906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TSIMDMiscTest.Test137;
begin
  // fcvtn2 v2.8h, v4.4s.
  FInsn.OpCode := $4E216882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test138;
begin
  // fcvtn2 v6.4s, v8.2d.
  FInsn.OpCode := $4E616906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test139;
begin
  // fcvtn v13.4h, v21.4s.
  FInsn.OpCode := $0E216AAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test140;
begin
  // fcvtn v4.2s, v0.2d.
  FInsn.OpCode := $0E616804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test141;
begin
  // fcvtxn2 v6.4s, v8.2d.
  FInsn.OpCode := $6E616906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTXN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test142;
begin
  // fcvtxn v4.2s, v0.2d.
  FInsn.OpCode := $2E616804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTXN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test143;
begin
  // fcvtl v9.4s, v1.4h.
  FInsn.OpCode := $0E217829;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test144;
begin
  // fcvtl v0.2d, v1.2s.
  FInsn.OpCode := $0E617820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test145;
begin
  // fcvtl2 v12.4s, v4.8h.
  FInsn.OpCode := $4E21788C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test146;
begin
  // fcvtl2 v17.2d, v28.4s.
  FInsn.OpCode := $4E617B91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V28);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test147;
begin
  // frintn v4.4h, v0.4h.
  FInsn.OpCode := $0E798804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test148;
begin
  // frintn v6.8h, v8.8h.
  FInsn.OpCode := $4E798906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test149;
begin
  // frintn v6.4s, v8.4s.
  FInsn.OpCode := $4E218906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test150;
begin
  // frintn v6.2d, v8.2d.
  FInsn.OpCode := $4E618906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test151;
begin
  // frintn v4.2s, v0.2s.
  FInsn.OpCode := $0E218804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test152;
begin
  // frinta v4.4h, v0.4h.
  FInsn.OpCode := $2E798804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test153;
begin
  // frinta v6.8h, v8.8h.
  FInsn.OpCode := $6E798906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test154;
begin
  // frinta v6.4s, v8.4s.
  FInsn.OpCode := $6E218906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test155;
begin
  // frinta v6.2d, v8.2d.
  FInsn.OpCode := $6E618906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test156;
begin
  // frinta v4.2s, v0.2s.
  FInsn.OpCode := $2E218804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test157;
begin
  // frintp v4.4h, v0.4h.
  FInsn.OpCode := $0EF98804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test158;
begin
  // frintp v6.8h, v8.8h.
  FInsn.OpCode := $4EF98906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test159;
begin
  // frintp v6.4s, v8.4s.
  FInsn.OpCode := $4EA18906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test160;
begin
  // frintp v6.2d, v8.2d.
  FInsn.OpCode := $4EE18906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test161;
begin
  // frintp v4.2s, v0.2s.
  FInsn.OpCode := $0EA18804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test162;
begin
  // frintm v4.4h, v0.4h.
  FInsn.OpCode := $0E799804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test163;
begin
  // frintm v6.8h, v8.8h.
  FInsn.OpCode := $4E799906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test164;
begin
  // frintm v6.4s, v8.4s.
  FInsn.OpCode := $4E219906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test165;
begin
  // frintm v6.2d, v8.2d.
  FInsn.OpCode := $4E619906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test166;
begin
  // frintm v4.2s, v0.2s.
  FInsn.OpCode := $0E219804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test167;
begin
  // frintx v4.4h, v0.4h.
  FInsn.OpCode := $2E799804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test168;
begin
  // frintx v6.8h, v8.8h.
  FInsn.OpCode := $6E799906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test169;
begin
  // frintx v6.4s, v8.4s.
  FInsn.OpCode := $6E219906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test170;
begin
  // frintx v6.2d, v8.2d.
  FInsn.OpCode := $6E619906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test171;
begin
  // frintx v4.2s, v0.2s.
  FInsn.OpCode := $2E219804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test172;
begin
  // frintz v4.4h, v0.4h.
  FInsn.OpCode := $0EF99804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test173;
begin
  // frintz v6.8h, v8.8h.
  FInsn.OpCode := $4EF99906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test174;
begin
  // frintz v6.4s, v8.4s.
  FInsn.OpCode := $4EA19906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test175;
begin
  // frintz v6.2d, v8.2d.
  FInsn.OpCode := $4EE19906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test176;
begin
  // frintz v4.2s, v0.2s.
  FInsn.OpCode := $0EA19804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test177;
begin
  // frinti v4.4h, v0.4h.
  FInsn.OpCode := $2EF99804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test178;
begin
  // frinti v6.8h, v8.8h.
  FInsn.OpCode := $6EF99906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test179;
begin
  // frinti v6.4s, v8.4s.
  FInsn.OpCode := $6EA19906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test180;
begin
  // frinti v6.2d, v8.2d.
  FInsn.OpCode := $6EE19906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test181;
begin
  // frinti v4.2s, v0.2s.
  FInsn.OpCode := $2EA19804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test182;
begin
  // fcvtns v4.4h, v0.4h.
  FInsn.OpCode := $0E79A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test183;
begin
  // fcvtns v6.8h, v8.8h.
  FInsn.OpCode := $4E79A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test184;
begin
  // fcvtns v6.4s, v8.4s.
  FInsn.OpCode := $4E21A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test185;
begin
  // fcvtns v6.2d, v8.2d.
  FInsn.OpCode := $4E61A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test186;
begin
  // fcvtns v4.2s, v0.2s.
  FInsn.OpCode := $0E21A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test187;
begin
  // fcvtnu v4.4h, v0.4h.
  FInsn.OpCode := $2E79A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test188;
begin
  // fcvtnu v6.8h, v8.8h.
  FInsn.OpCode := $6E79A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test189;
begin
  // fcvtnu v6.4s, v8.4s.
  FInsn.OpCode := $6E21A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test190;
begin
  // fcvtnu v6.2d, v8.2d.
  FInsn.OpCode := $6E61A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test191;
begin
  // fcvtnu v4.2s, v0.2s.
  FInsn.OpCode := $2E21A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test192;
begin
  // fcvtps v4.4h, v0.4h.
  FInsn.OpCode := $0EF9A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test193;
begin
  // fcvtps v6.8h, v8.8h.
  FInsn.OpCode := $4EF9A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test194;
begin
  // fcvtps v6.4s, v8.4s.
  FInsn.OpCode := $4EA1A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test195;
begin
  // fcvtps v6.2d, v8.2d.
  FInsn.OpCode := $4EE1A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test196;
begin
  // fcvtps v4.2s, v0.2s.
  FInsn.OpCode := $0EA1A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test197;
begin
  // fcvtpu v4.4h, v0.4h.
  FInsn.OpCode := $2EF9A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test198;
begin
  // fcvtpu v6.8h, v8.8h.
  FInsn.OpCode := $6EF9A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test199;
begin
  // fcvtpu v6.4s, v8.4s.
  FInsn.OpCode := $6EA1A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test200;
begin
  // fcvtpu v6.2d, v8.2d.
  FInsn.OpCode := $6EE1A906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test201;
begin
  // fcvtpu v4.2s, v0.2s.
  FInsn.OpCode := $2EA1A804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test202;
begin
  // fcvtms v4.4h, v0.4h.
  FInsn.OpCode := $0E79B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test203;
begin
  // fcvtms v6.8h, v8.8h.
  FInsn.OpCode := $4E79B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test204;
begin
  // fcvtms v6.4s, v8.4s.
  FInsn.OpCode := $4E21B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test205;
begin
  // fcvtms v6.2d, v8.2d.
  FInsn.OpCode := $4E61B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test206;
begin
  // fcvtms v4.2s, v0.2s.
  FInsn.OpCode := $0E21B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test207;
begin
  // fcvtmu v4.4h, v0.4h.
  FInsn.OpCode := $2E79B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test208;
begin
  // fcvtmu v6.8h, v8.8h.
  FInsn.OpCode := $6E79B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test209;
begin
  // fcvtmu v6.4s, v8.4s.
  FInsn.OpCode := $6E21B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test210;
begin
  // fcvtmu v6.2d, v8.2d.
  FInsn.OpCode := $6E61B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test211;
begin
  // fcvtmu v4.2s, v0.2s.
  FInsn.OpCode := $2E21B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test212;
begin
  // fcvtzs v4.4h, v0.4h.
  FInsn.OpCode := $0EF9B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test213;
begin
  // fcvtzs v6.8h, v8.8h.
  FInsn.OpCode := $4EF9B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test214;
begin
  // fcvtzs v6.4s, v8.4s.
  FInsn.OpCode := $4EA1B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test215;
begin
  // fcvtzs v6.2d, v8.2d.
  FInsn.OpCode := $4EE1B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test216;
begin
  // fcvtzs v4.2s, v0.2s.
  FInsn.OpCode := $0EA1B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test217;
begin
  // fcvtzu v4.4h, v0.4h.
  FInsn.OpCode := $2EF9B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test218;
begin
  // fcvtzu v6.8h, v8.8h.
  FInsn.OpCode := $6EF9B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test219;
begin
  // fcvtzu v6.4s, v8.4s.
  FInsn.OpCode := $6EA1B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test220;
begin
  // fcvtzu v6.2d, v8.2d.
  FInsn.OpCode := $6EE1B906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test221;
begin
  // fcvtzu v4.2s, v0.2s.
  FInsn.OpCode := $2EA1B804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test222;
begin
  // fcvtas v4.4h, v0.4h.
  FInsn.OpCode := $0E79C804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test223;
begin
  // fcvtas v6.8h, v8.8h.
  FInsn.OpCode := $4E79C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test224;
begin
  // fcvtas v6.4s, v8.4s.
  FInsn.OpCode := $4E21C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test225;
begin
  // fcvtas v6.2d, v8.2d.
  FInsn.OpCode := $4E61C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test226;
begin
  // fcvtas v4.2s, v0.2s.
  FInsn.OpCode := $0E21C804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test227;
begin
  // fcvtau v4.4h, v0.4h.
  FInsn.OpCode := $2E79C804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test228;
begin
  // fcvtau v6.8h, v8.8h.
  FInsn.OpCode := $6E79C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test229;
begin
  // fcvtau v6.4s, v8.4s.
  FInsn.OpCode := $6E21C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test230;
begin
  // fcvtau v6.2d, v8.2d.
  FInsn.OpCode := $6E61C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test231;
begin
  // fcvtau v4.2s, v0.2s.
  FInsn.OpCode := $2E21C804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test232;
begin
  // urecpe v6.4s, v8.4s.
  FInsn.OpCode := $4EA1C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test233;
begin
  // urecpe v4.2s, v0.2s.
  FInsn.OpCode := $0EA1C804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test234;
begin
  // ursqrte v6.4s, v8.4s.
  FInsn.OpCode := $6EA1C906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test235;
begin
  // ursqrte v4.2s, v0.2s.
  FInsn.OpCode := $2EA1C804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test236;
begin
  // scvtf v4.4h, v0.4h.
  FInsn.OpCode := $0E79D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test237;
begin
  // scvtf v6.8h, v8.8h.
  FInsn.OpCode := $4E79D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test238;
begin
  // scvtf v6.4s, v8.4s.
  FInsn.OpCode := $4E21D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test239;
begin
  // scvtf v6.2d, v8.2d.
  FInsn.OpCode := $4E61D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test240;
begin
  // scvtf v4.2s, v0.2s.
  FInsn.OpCode := $0E21D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test241;
begin
  // ucvtf v4.4h, v0.4h.
  FInsn.OpCode := $2E79D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test242;
begin
  // ucvtf v6.8h, v8.8h.
  FInsn.OpCode := $6E79D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test243;
begin
  // ucvtf v6.4s, v8.4s.
  FInsn.OpCode := $6E21D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test244;
begin
  // ucvtf v6.2d, v8.2d.
  FInsn.OpCode := $6E61D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test245;
begin
  // ucvtf v4.2s, v0.2s.
  FInsn.OpCode := $2E21D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test246;
begin
  // frecpe v4.4h, v0.4h.
  FInsn.OpCode := $0EF9D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test247;
begin
  // frecpe v6.8h, v8.8h.
  FInsn.OpCode := $4EF9D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test248;
begin
  // frecpe v6.4s, v8.4s.
  FInsn.OpCode := $4EA1D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test249;
begin
  // frecpe v6.2d, v8.2d.
  FInsn.OpCode := $4EE1D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test250;
begin
  // frecpe v4.2s, v0.2s.
  FInsn.OpCode := $0EA1D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test251;
begin
  // frsqrte v4.4h, v0.4h.
  FInsn.OpCode := $2EF9D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test252;
begin
  // frsqrte v6.8h, v8.8h.
  FInsn.OpCode := $6EF9D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test253;
begin
  // frsqrte v6.4s, v8.4s.
  FInsn.OpCode := $6EA1D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test254;
begin
  // frsqrte v6.2d, v8.2d.
  FInsn.OpCode := $6EE1D906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test255;
begin
  // frsqrte v4.2s, v0.2s.
  FInsn.OpCode := $2EA1D804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TSIMDMiscTest.Test256;
begin
  // fsqrt v4.4h, v0.4h.
  FInsn.OpCode := $2EF9F804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TSIMDMiscTest.Test257;
begin
  // fsqrt v6.8h, v8.8h.
  FInsn.OpCode := $6EF9F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TSIMDMiscTest.Test258;
begin
  // fsqrt v6.4s, v8.4s.
  FInsn.OpCode := $6EA1F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TSIMDMiscTest.Test259;
begin
  // fsqrt v6.2d, v8.2d.
  FInsn.OpCode := $6EE1F906;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TSIMDMiscTest.Test260;
begin
  // fsqrt v4.2s, v0.2s.
  FInsn.OpCode := $2EA1F804;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDMiscTest);

end.
