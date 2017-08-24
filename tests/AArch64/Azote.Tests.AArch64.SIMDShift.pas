// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-simd-shift.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDShift;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDShiftTest = class(TObject)
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
  end;

implementation

procedure TSIMDShiftTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDShiftTest.TearDown;
begin

end;	

procedure TSIMDShiftTest.Test1;
begin
  // sshr v0.8b, v1.8b, #3.
  FInsn.OpCode := $0F0D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test2;
begin
  // sshr v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F1D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test3;
begin
  // sshr v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F3D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test4;
begin
  // sshr v0.16b, v1.16b, #3.
  FInsn.OpCode := $4F0D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test5;
begin
  // sshr v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F1D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test6;
begin
  // sshr v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F3D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test7;
begin
  // sshr v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F7D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test8;
begin
  // ushr v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test9;
begin
  // ushr v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test10;
begin
  // ushr v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test11;
begin
  // ushr v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test12;
begin
  // ushr v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test13;
begin
  // ushr v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test14;
begin
  // ushr v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F7D0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test15;
begin
  // ssra v0.8b, v1.8b, #3.
  FInsn.OpCode := $0F0D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test16;
begin
  // ssra v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F1D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test17;
begin
  // ssra v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F3D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test18;
begin
  // ssra v0.16b, v1.16b, #3.
  FInsn.OpCode := $4F0D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test19;
begin
  // ssra v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F1D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test20;
begin
  // ssra v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F3D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test21;
begin
  // ssra v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F7D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test22;
begin
  // usra v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test23;
begin
  // usra v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test24;
begin
  // usra v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test25;
begin
  // usra v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test26;
begin
  // usra v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test27;
begin
  // usra v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test28;
begin
  // usra v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F7D1420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test29;
begin
  // srshr v0.8b, v1.8b, #3.
  FInsn.OpCode := $0F0D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test30;
begin
  // srshr v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F1D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test31;
begin
  // srshr v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F3D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test32;
begin
  // srshr v0.16b, v1.16b, #3.
  FInsn.OpCode := $4F0D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test33;
begin
  // srshr v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F1D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test34;
begin
  // srshr v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F3D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test35;
begin
  // srshr v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F7D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test36;
begin
  // urshr v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test37;
begin
  // urshr v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test38;
begin
  // urshr v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test39;
begin
  // urshr v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test40;
begin
  // urshr v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test41;
begin
  // urshr v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test42;
begin
  // urshr v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F7D2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test43;
begin
  // srsra v0.8b, v1.8b, #3.
  FInsn.OpCode := $0F0D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test44;
begin
  // srsra v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F1D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test45;
begin
  // srsra v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F3D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test46;
begin
  // srsra v0.16b, v1.16b, #3.
  FInsn.OpCode := $4F0D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test47;
begin
  // srsra v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F1D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test48;
begin
  // srsra v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F3D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test49;
begin
  // srsra v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F7D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test50;
begin
  // ursra v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test51;
begin
  // ursra v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test52;
begin
  // ursra v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test53;
begin
  // ursra v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test54;
begin
  // ursra v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test55;
begin
  // ursra v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test56;
begin
  // ursra v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F7D3420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test57;
begin
  // sri v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0D4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test58;
begin
  // sri v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1D4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test59;
begin
  // sri v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3D4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test60;
begin
  // sri v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0D4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test61;
begin
  // sri v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1D4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test62;
begin
  // sri v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3D4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test63;
begin
  // sli v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0B5420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test64;
begin
  // sli v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F135420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test65;
begin
  // sli v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F235420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test66;
begin
  // sli v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0B5420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test67;
begin
  // sli v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F135420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test68;
begin
  // sli v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F235420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test69;
begin
  // sli v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F435420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test70;
begin
  // sqshlu v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0B6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test71;
begin
  // sqshlu v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F136420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test72;
begin
  // sqshlu v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F236420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test73;
begin
  // sqshlu v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0B6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test74;
begin
  // sqshlu v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F136420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test75;
begin
  // sqshlu v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F236420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test76;
begin
  // sqshlu v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F436420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test77;
begin
  // sqshl v0.8b, v1.8b, #3.
  FInsn.OpCode := $0F0B7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test78;
begin
  // sqshl v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F137420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test79;
begin
  // sqshl v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F237420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test80;
begin
  // sqshl v0.16b, v1.16b, #3.
  FInsn.OpCode := $4F0B7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test81;
begin
  // sqshl v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F137420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test82;
begin
  // sqshl v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F237420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test83;
begin
  // sqshl v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F437420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test84;
begin
  // uqshl v0.8b, v1.8b, #3.
  FInsn.OpCode := $2F0B7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test85;
begin
  // uqshl v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F137420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test86;
begin
  // uqshl v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F237420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test87;
begin
  // uqshl v0.16b, v1.16b, #3.
  FInsn.OpCode := $6F0B7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test88;
begin
  // uqshl v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F137420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test89;
begin
  // uqshl v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F237420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test90;
begin
  // uqshl v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F437420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test91;
begin
  // shrn v0.8b, v1.8h, #3.
  FInsn.OpCode := $0F0D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test92;
begin
  // shrn v0.4h, v1.4s, #3.
  FInsn.OpCode := $0F1D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test93;
begin
  // shrn v0.2s, v1.2d, #3.
  FInsn.OpCode := $0F3D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test94;
begin
  // shrn2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $4F0D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test95;
begin
  // shrn2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $4F1D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test96;
begin
  // shrn2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $4F3D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test97;
begin
  // sqshrun v0.8b, v1.8h, #3.
  FInsn.OpCode := $2F0D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test98;
begin
  // sqshrun v0.4h, v1.4s, #3.
  FInsn.OpCode := $2F1D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test99;
begin
  // sqshrun v0.2s, v1.2d, #3.
  FInsn.OpCode := $2F3D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test100;
begin
  // sqshrun2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $6F0D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test101;
begin
  // sqshrun2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $6F1D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test102;
begin
  // sqshrun2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $6F3D8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test103;
begin
  // rshrn v0.8b, v1.8h, #3.
  FInsn.OpCode := $0F0D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test104;
begin
  // rshrn v0.4h, v1.4s, #3.
  FInsn.OpCode := $0F1D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test105;
begin
  // rshrn v0.2s, v1.2d, #3.
  FInsn.OpCode := $0F3D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test106;
begin
  // rshrn2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $4F0D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test107;
begin
  // rshrn2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $4F1D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test108;
begin
  // rshrn2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $4F3D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test109;
begin
  // sqrshrun v0.8b, v1.8h, #3.
  FInsn.OpCode := $2F0D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test110;
begin
  // sqrshrun v0.4h, v1.4s, #3.
  FInsn.OpCode := $2F1D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test111;
begin
  // sqrshrun v0.2s, v1.2d, #3.
  FInsn.OpCode := $2F3D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test112;
begin
  // sqrshrun2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $6F0D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test113;
begin
  // sqrshrun2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $6F1D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test114;
begin
  // sqrshrun2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $6F3D8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test115;
begin
  // sqshrn v0.8b, v1.8h, #3.
  FInsn.OpCode := $0F0D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test116;
begin
  // sqshrn v0.4h, v1.4s, #3.
  FInsn.OpCode := $0F1D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test117;
begin
  // sqshrn v0.2s, v1.2d, #3.
  FInsn.OpCode := $0F3D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test118;
begin
  // sqshrn2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $4F0D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test119;
begin
  // sqshrn2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $4F1D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test120;
begin
  // sqshrn2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $4F3D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test121;
begin
  // uqshrn v0.8b, v1.8h, #3.
  FInsn.OpCode := $2F0D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test122;
begin
  // uqshrn v0.4h, v1.4s, #3.
  FInsn.OpCode := $2F1D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test123;
begin
  // uqshrn v0.2s, v1.2d, #3.
  FInsn.OpCode := $2F3D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test124;
begin
  // uqshrn2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $6F0D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test125;
begin
  // uqshrn2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $6F1D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test126;
begin
  // uqshrn2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $6F3D9420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test127;
begin
  // sqrshrn v0.8b, v1.8h, #3.
  FInsn.OpCode := $0F0D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test128;
begin
  // sqrshrn v0.4h, v1.4s, #3.
  FInsn.OpCode := $0F1D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test129;
begin
  // sqrshrn v0.2s, v1.2d, #3.
  FInsn.OpCode := $0F3D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test130;
begin
  // sqrshrn2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $4F0D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test131;
begin
  // sqrshrn2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $4F1D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test132;
begin
  // sqrshrn2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $4F3D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test133;
begin
  // uqrshrn v0.8b, v1.8h, #3.
  FInsn.OpCode := $2F0D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test134;
begin
  // uqrshrn v0.4h, v1.4s, #3.
  FInsn.OpCode := $2F1D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test135;
begin
  // uqrshrn v0.2s, v1.2d, #3.
  FInsn.OpCode := $2F3D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test136;
begin
  // uqrshrn2 v0.16b, v1.8h, #3.
  FInsn.OpCode := $6F0D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test137;
begin
  // uqrshrn2 v0.8h, v1.4s, #3.
  FInsn.OpCode := $6F1D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test138;
begin
  // uqrshrn2 v0.4s, v1.2d, #3.
  FInsn.OpCode := $6F3D9C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test139;
begin
  // scvtf v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F1DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test140;
begin
  // scvtf v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F1DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test141;
begin
  // scvtf v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F3DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test142;
begin
  // scvtf v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F3DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test143;
begin
  // scvtf v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F7DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test144;
begin
  // ucvtf v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test145;
begin
  // ucvtf v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test146;
begin
  // ucvtf v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test147;
begin
  // ucvtf v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test148;
begin
  // ucvtf v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F7DE420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test149;
begin
  // fcvtzs v0.4h, v1.4h, #3.
  FInsn.OpCode := $0F1DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test150;
begin
  // fcvtzs v0.8h, v1.8h, #3.
  FInsn.OpCode := $4F1DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test151;
begin
  // fcvtzs v0.2s, v1.2s, #3.
  FInsn.OpCode := $0F3DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test152;
begin
  // fcvtzs v0.4s, v1.4s, #3.
  FInsn.OpCode := $4F3DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test153;
begin
  // fcvtzs v0.2d, v1.2d, #3.
  FInsn.OpCode := $4F7DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test154;
begin
  // fcvtzu v0.4h, v1.4h, #3.
  FInsn.OpCode := $2F1DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test155;
begin
  // fcvtzu v0.8h, v1.8h, #3.
  FInsn.OpCode := $6F1DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test156;
begin
  // fcvtzu v0.2s, v1.2s, #3.
  FInsn.OpCode := $2F3DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test157;
begin
  // fcvtzu v0.4s, v1.4s, #3.
  FInsn.OpCode := $6F3DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDShiftTest.Test158;
begin
  // fcvtzu v0.2d, v1.2d, #3.
  FInsn.OpCode := $6F7DFC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDShiftTest);

end.
