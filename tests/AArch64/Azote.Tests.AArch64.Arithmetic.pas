// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-arithmetic-encoding.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Arithmetic;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TArithmeticTest = class(TObject)
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
  end;

implementation

procedure TArithmeticTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TArithmeticTest.TearDown;
begin

end;	

procedure TArithmeticTest.Test1;
begin
  // adc w1, w2, w3.
  FInsn.OpCode := $1A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test2;
begin
  // adc x1, x2, x3.
  FInsn.OpCode := $9A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test3;
begin
  // adcs w5, w4, w3.
  FInsn.OpCode := $3A030085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test4;
begin
  // adcs x5, x4, x3.
  FInsn.OpCode := $BA030085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test5;
begin
  // sbc w1, w2, w3.
  FInsn.OpCode := $5A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test6;
begin
  // sbc x1, x2, x3.
  FInsn.OpCode := $DA030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test7;
begin
  // sbcs w1, w2, w3.
  FInsn.OpCode := $7A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test8;
begin
  // sbcs x1, x2, x3.
  FInsn.OpCode := $FA030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test9;
begin
  // add w3, w4, #1024.
  FInsn.OpCode := $11100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test10;
begin
  // add w3, w4, #1024.
  FInsn.OpCode := $11100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test11;
begin
  // add x3, x4, #1024.
  FInsn.OpCode := $91100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test12;
begin
  // add x3, x4, #1024.
  FInsn.OpCode := $91100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test13;
begin
  // add w3, w4, #1024, lsl #12.
  FInsn.OpCode := $11500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test14;
begin
  // add w3, w4, #1024, lsl #12.
  FInsn.OpCode := $11500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test15;
begin
  // add w3, w4, #0, lsl #12.
  FInsn.OpCode := $11400083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test16;
begin
  // add x3, x4, #1024, lsl #12.
  FInsn.OpCode := $91500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test17;
begin
  // add x3, x4, #1024, lsl #12.
  FInsn.OpCode := $91500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test18;
begin
  // add x3, x4, #0, lsl #12.
  FInsn.OpCode := $91400083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test19;
begin
  // add sp, sp, #32.
  FInsn.OpCode := $910083FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TArithmeticTest.Test20;
begin
  // adds w3, w4, #1024.
  FInsn.OpCode := $31100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test21;
begin
  // adds w3, w4, #1024.
  FInsn.OpCode := $31100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test22;
begin
  // adds w3, w4, #1024, lsl #12.
  FInsn.OpCode := $31500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test23;
begin
  // adds x3, x4, #1024.
  FInsn.OpCode := $B1100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test24;
begin
  // adds x3, x4, #1024.
  FInsn.OpCode := $B1100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test25;
begin
  // adds x3, x4, #1024, lsl #12.
  FInsn.OpCode := $B1500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test26;
begin
  // sub w3, w4, #1024.
  FInsn.OpCode := $51100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test27;
begin
  // sub w3, w4, #1024.
  FInsn.OpCode := $51100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test28;
begin
  // sub w3, w4, #1024, lsl #12.
  FInsn.OpCode := $51500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test29;
begin
  // sub x3, x4, #1024.
  FInsn.OpCode := $D1100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test30;
begin
  // sub x3, x4, #1024.
  FInsn.OpCode := $D1100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test31;
begin
  // sub x3, x4, #1024, lsl #12.
  FInsn.OpCode := $D1500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test32;
begin
  // sub sp, sp, #32.
  FInsn.OpCode := $D10083FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TArithmeticTest.Test33;
begin
  // subs w3, w4, #1024.
  FInsn.OpCode := $71100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test34;
begin
  // subs w3, w4, #1024.
  FInsn.OpCode := $71100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test35;
begin
  // subs w3, w4, #1024, lsl #12.
  FInsn.OpCode := $71500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test36;
begin
  // subs x3, x4, #1024.
  FInsn.OpCode := $F1100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test37;
begin
  // subs x3, x4, #1024.
  FInsn.OpCode := $F1100083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
end;

procedure TArithmeticTest.Test38;
begin
  // subs x3, x4, #1024, lsl #12.
  FInsn.OpCode := $F1500083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1024));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test39;
begin
  // add w12, w13, w14.
  FInsn.OpCode := $0B0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
end;

procedure TArithmeticTest.Test40;
begin
  // add x12, x13, x14.
  FInsn.OpCode := $8B0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
end;

procedure TArithmeticTest.Test41;
begin
  // add w12, w13, w14, lsl #12.
  FInsn.OpCode := $0B0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test42;
begin
  // add x12, x13, x14, lsl #12.
  FInsn.OpCode := $8B0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test43;
begin
  // add x12, x13, x14, lsr #42.
  FInsn.OpCode := $8B4EA9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(42));
end;

procedure TArithmeticTest.Test44;
begin
  // add x12, x13, x14, asr #39.
  FInsn.OpCode := $8B8E9DAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(39));
end;

procedure TArithmeticTest.Test45;
begin
  // sub w12, w13, w14.
  FInsn.OpCode := $4B0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
end;

procedure TArithmeticTest.Test46;
begin
  // sub x12, x13, x14.
  FInsn.OpCode := $CB0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
end;

procedure TArithmeticTest.Test47;
begin
  // sub w12, w13, w14, lsl #12.
  FInsn.OpCode := $4B0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test48;
begin
  // sub x12, x13, x14, lsl #12.
  FInsn.OpCode := $CB0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test49;
begin
  // sub x12, x13, x14, lsr #42.
  FInsn.OpCode := $CB4EA9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(42));
end;

procedure TArithmeticTest.Test50;
begin
  // sub x12, x13, x14, asr #39.
  FInsn.OpCode := $CB8E9DAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(39));
end;

procedure TArithmeticTest.Test51;
begin
  // adds w12, w13, w14.
  FInsn.OpCode := $2B0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
end;

procedure TArithmeticTest.Test52;
begin
  // adds x12, x13, x14.
  FInsn.OpCode := $AB0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
end;

procedure TArithmeticTest.Test53;
begin
  // adds w12, w13, w14, lsl #12.
  FInsn.OpCode := $2B0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test54;
begin
  // adds x12, x13, x14, lsl #12.
  FInsn.OpCode := $AB0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test55;
begin
  // adds x12, x13, x14, lsr #42.
  FInsn.OpCode := $AB4EA9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(42));
end;

procedure TArithmeticTest.Test56;
begin
  // adds x12, x13, x14, asr #39.
  FInsn.OpCode := $AB8E9DAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(39));
end;

procedure TArithmeticTest.Test57;
begin
  // subs w12, w13, w14.
  FInsn.OpCode := $6B0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
end;

procedure TArithmeticTest.Test58;
begin
  // subs x12, x13, x14.
  FInsn.OpCode := $EB0E01AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
end;

procedure TArithmeticTest.Test59;
begin
  // subs w12, w13, w14, lsl #12.
  FInsn.OpCode := $6B0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test60;
begin
  // subs x12, x13, x14, lsl #12.
  FInsn.OpCode := $EB0E31AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TArithmeticTest.Test61;
begin
  // subs x12, x13, x14, lsr #42.
  FInsn.OpCode := $EB4EA9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(42));
end;

procedure TArithmeticTest.Test62;
begin
  // subs x12, x13, x14, asr #39.
  FInsn.OpCode := $EB8E9DAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(39));
end;

procedure TArithmeticTest.Test63;
begin
  // add x2, x2, x2.
  FInsn.OpCode := $8B020042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X2);
end;

procedure TArithmeticTest.Test64;
begin
  // add w1, w2, w3, uxtb.
  FInsn.OpCode := $0B230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test65;
begin
  // add w1, w2, w3, uxth.
  FInsn.OpCode := $0B232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test66;
begin
  // add w1, w2, w3, uxtw.
  FInsn.OpCode := $0B234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test67;
begin
  // add w1, w2, w3, uxtx.
  FInsn.OpCode := $0B236041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TArithmeticTest.Test68;
begin
  // add w1, w2, w3, sxtb.
  FInsn.OpCode := $0B238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test69;
begin
  // add w1, w2, w3, sxth.
  FInsn.OpCode := $0B23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test70;
begin
  // add w1, w2, w3, sxtw.
  FInsn.OpCode := $0B23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test71;
begin
  // add w1, w2, w3, sxtx.
  FInsn.OpCode := $0B23E041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TArithmeticTest.Test72;
begin
  // add x1, x2, w3, uxtb.
  FInsn.OpCode := $8B230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test73;
begin
  // add x1, x2, w3, uxth.
  FInsn.OpCode := $8B232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test74;
begin
  // add x1, x2, w3, uxtw.
  FInsn.OpCode := $8B234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test75;
begin
  // add x1, x2, w3, sxtb.
  FInsn.OpCode := $8B238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test76;
begin
  // add x1, x2, w3, sxth.
  FInsn.OpCode := $8B23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test77;
begin
  // add x1, x2, w3, sxtw.
  FInsn.OpCode := $8B23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test78;
begin
  // add w1, wsp, w3.
  FInsn.OpCode := $0B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test79;
begin
  // add w1, wsp, w3.
  FInsn.OpCode := $0B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test80;
begin
  // add w2, wsp, w3, lsl #1.
  FInsn.OpCode := $0B2347E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TArithmeticTest.Test81;
begin
  // add sp, x2, x3.
  FInsn.OpCode := $8B23605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test82;
begin
  // add sp, x2, x3.
  FInsn.OpCode := $8B23605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test83;
begin
  // sub w1, w2, w3, uxtb.
  FInsn.OpCode := $4B230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test84;
begin
  // sub w1, w2, w3, uxth.
  FInsn.OpCode := $4B232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test85;
begin
  // sub w1, w2, w3, uxtw.
  FInsn.OpCode := $4B234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test86;
begin
  // sub w1, w2, w3, uxtx.
  FInsn.OpCode := $4B236041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TArithmeticTest.Test87;
begin
  // sub w1, w2, w3, sxtb.
  FInsn.OpCode := $4B238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test88;
begin
  // sub w1, w2, w3, sxth.
  FInsn.OpCode := $4B23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test89;
begin
  // sub w1, w2, w3, sxtw.
  FInsn.OpCode := $4B23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test90;
begin
  // sub w1, w2, w3, sxtx.
  FInsn.OpCode := $4B23E041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TArithmeticTest.Test91;
begin
  // sub x1, x2, w3, uxtb.
  FInsn.OpCode := $CB230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test92;
begin
  // sub x1, x2, w3, uxth.
  FInsn.OpCode := $CB232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test93;
begin
  // sub x1, x2, w3, uxtw.
  FInsn.OpCode := $CB234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test94;
begin
  // sub x1, x2, w3, sxtb.
  FInsn.OpCode := $CB238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test95;
begin
  // sub x1, x2, w3, sxth.
  FInsn.OpCode := $CB23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test96;
begin
  // sub x1, x2, w3, sxtw.
  FInsn.OpCode := $CB23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test97;
begin
  // sub w1, wsp, w3.
  FInsn.OpCode := $4B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test98;
begin
  // sub w1, wsp, w3.
  FInsn.OpCode := $4B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test99;
begin
  // sub sp, x2, x3.
  FInsn.OpCode := $CB23605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test100;
begin
  // sub sp, x2, x3.
  FInsn.OpCode := $CB23605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test101;
begin
  // sub sp, x3, x7, lsl #4.
  FInsn.OpCode := $CB27707F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TArithmeticTest.Test102;
begin
  // adds w1, w2, w3, uxtb.
  FInsn.OpCode := $2B230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test103;
begin
  // adds w1, w2, w3, uxth.
  FInsn.OpCode := $2B232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test104;
begin
  // adds w1, w2, w3, uxtw.
  FInsn.OpCode := $2B234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test105;
begin
  // adds w1, w2, w3, uxtx.
  FInsn.OpCode := $2B236041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TArithmeticTest.Test106;
begin
  // adds w1, w2, w3, sxtb.
  FInsn.OpCode := $2B238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test107;
begin
  // adds w1, w2, w3, sxth.
  FInsn.OpCode := $2B23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test108;
begin
  // adds w1, w2, w3, sxtw.
  FInsn.OpCode := $2B23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test109;
begin
  // adds w1, w2, w3, sxtx.
  FInsn.OpCode := $2B23E041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TArithmeticTest.Test110;
begin
  // adds x1, x2, w3, uxtb.
  FInsn.OpCode := $AB230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test111;
begin
  // adds x1, x2, w3, uxth.
  FInsn.OpCode := $AB232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test112;
begin
  // adds x1, x2, w3, uxtw.
  FInsn.OpCode := $AB234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test113;
begin
  // adds x1, x2, x3, uxtx.
  FInsn.OpCode := $AB236041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TArithmeticTest.Test114;
begin
  // adds x1, x2, w3, sxtb.
  FInsn.OpCode := $AB238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test115;
begin
  // adds x1, x2, w3, sxth.
  FInsn.OpCode := $AB23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test116;
begin
  // adds x1, x2, w3, sxtw.
  FInsn.OpCode := $AB23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test117;
begin
  // adds x1, x2, x3, sxtx.
  FInsn.OpCode := $AB23E041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TArithmeticTest.Test118;
begin
  // adds w1, wsp, w3.
  FInsn.OpCode := $2B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test119;
begin
  // adds w1, wsp, w3.
  FInsn.OpCode := $2B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test120;
begin
  // cmn wsp, w3, lsl #4.
  FInsn.OpCode := $2B2353FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TArithmeticTest.Test121;
begin
  // subs w1, w2, w3, uxtb.
  FInsn.OpCode := $6B230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test122;
begin
  // subs w1, w2, w3, uxth.
  FInsn.OpCode := $6B232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test123;
begin
  // subs w1, w2, w3, uxtw.
  FInsn.OpCode := $6B234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test124;
begin
  // subs w1, w2, w3, uxtx.
  FInsn.OpCode := $6B236041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TArithmeticTest.Test125;
begin
  // subs w1, w2, w3, sxtb.
  FInsn.OpCode := $6B238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test126;
begin
  // subs w1, w2, w3, sxth.
  FInsn.OpCode := $6B23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test127;
begin
  // subs w1, w2, w3, sxtw.
  FInsn.OpCode := $6B23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test128;
begin
  // subs w1, w2, w3, sxtx.
  FInsn.OpCode := $6B23E041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TArithmeticTest.Test129;
begin
  // subs x1, x2, w3, uxtb.
  FInsn.OpCode := $EB230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TArithmeticTest.Test130;
begin
  // subs x1, x2, w3, uxth.
  FInsn.OpCode := $EB232041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TArithmeticTest.Test131;
begin
  // subs x1, x2, w3, uxtw.
  FInsn.OpCode := $EB234041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test132;
begin
  // subs x1, x2, x3, uxtx.
  FInsn.OpCode := $EB236041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TArithmeticTest.Test133;
begin
  // subs x1, x2, w3, sxtb.
  FInsn.OpCode := $EB238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TArithmeticTest.Test134;
begin
  // subs x1, x2, w3, sxth.
  FInsn.OpCode := $EB23A041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TArithmeticTest.Test135;
begin
  // subs x1, x2, w3, sxtw.
  FInsn.OpCode := $EB23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TArithmeticTest.Test136;
begin
  // subs x1, x2, x3, sxtx.
  FInsn.OpCode := $EB23E041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TArithmeticTest.Test137;
begin
  // subs w1, wsp, w3.
  FInsn.OpCode := $6B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test138;
begin
  // subs w1, wsp, w3.
  FInsn.OpCode := $6B2343E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test139;
begin
  // cmp wsp, w9.
  FInsn.OpCode := $6B2943FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TArithmeticTest.Test140;
begin
  // subs x3, sp, x9, lsl #2.
  FInsn.OpCode := $EB296BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TArithmeticTest.Test141;
begin
  // cmp wsp, w8.
  FInsn.OpCode := $6B2843FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
end;

procedure TArithmeticTest.Test142;
begin
  // cmp wsp, w8.
  FInsn.OpCode := $6B2843FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
end;

procedure TArithmeticTest.Test143;
begin
  // cmp sp, w8, uxtw.
  FInsn.OpCode := $EB2843FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test144;
begin
  // cmp sp, w8, uxtw.
  FInsn.OpCode := $EB2843FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test145;
begin
  // sub wsp, w9, w8.
  FInsn.OpCode := $4B28413F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
end;

procedure TArithmeticTest.Test146;
begin
  // sub w1, wsp, w8.
  FInsn.OpCode := $4B2843E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
end;

procedure TArithmeticTest.Test147;
begin
  // sub wsp, wsp, w8.
  FInsn.OpCode := $4B2843FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
end;

procedure TArithmeticTest.Test148;
begin
  // sub sp, x9, w8, uxtw.
  FInsn.OpCode := $CB28413F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test149;
begin
  // sub x1, sp, w8, uxtw.
  FInsn.OpCode := $CB2843E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test150;
begin
  // sub sp, sp, w8, uxtw.
  FInsn.OpCode := $CB2843FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test151;
begin
  // subs w1, wsp, w8.
  FInsn.OpCode := $6B2843E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
end;

procedure TArithmeticTest.Test152;
begin
  // subs x1, sp, w8, uxtw.
  FInsn.OpCode := $EB2843E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TArithmeticTest.Test153;
begin
  // sdiv w1, w2, w3.
  FInsn.OpCode := $1AC30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test154;
begin
  // sdiv x1, x2, x3.
  FInsn.OpCode := $9AC30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test155;
begin
  // udiv w1, w2, w3.
  FInsn.OpCode := $1AC30841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TArithmeticTest.Test156;
begin
  // udiv x1, x2, x3.
  FInsn.OpCode := $9AC30841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test157;
begin
  // madd w1, w2, w3, w4.
  FInsn.OpCode := $1B031041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W4);
end;

procedure TArithmeticTest.Test158;
begin
  // madd x1, x2, x3, x4.
  FInsn.OpCode := $9B031041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TArithmeticTest.Test159;
begin
  // msub w1, w2, w3, w4.
  FInsn.OpCode := $1B039041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W4);
end;

procedure TArithmeticTest.Test160;
begin
  // msub x1, x2, x3, x4.
  FInsn.OpCode := $9B039041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TArithmeticTest.Test161;
begin
  // smaddl x1, w2, w3, x4.
  FInsn.OpCode := $9B231041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TArithmeticTest.Test162;
begin
  // smsubl x1, w2, w3, x4.
  FInsn.OpCode := $9B239041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TArithmeticTest.Test163;
begin
  // umaddl x1, w2, w3, x4.
  FInsn.OpCode := $9BA31041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TArithmeticTest.Test164;
begin
  // umsubl x1, w2, w3, x4.
  FInsn.OpCode := $9BA39041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TArithmeticTest.Test165;
begin
  // smulh x1, x2, x3.
  FInsn.OpCode := $9B437C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test166;
begin
  // umulh x1, x2, x3.
  FInsn.OpCode := $9BC37C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TArithmeticTest.Test167;
begin
  // mov w0, #1.
  FInsn.OpCode := $52800020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TArithmeticTest.Test168;
begin
  // mov x0, #1.
  FInsn.OpCode := $D2800020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TArithmeticTest.Test169;
begin
  // mov w0, #65536.
  FInsn.OpCode := $52A00020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(65536));
end;

procedure TArithmeticTest.Test170;
begin
  // mov x0, #65536.
  FInsn.OpCode := $D2A00020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(65536));
end;

procedure TArithmeticTest.Test171;
begin
  // mov w0, #-3.
  FInsn.OpCode := $12800040;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(-3));
end;

procedure TArithmeticTest.Test172;
begin
  // mov x0, #-3.
  FInsn.OpCode := $92800040;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(-3));
end;

procedure TArithmeticTest.Test173;
begin
  // mov w0, #-131073.
  FInsn.OpCode := $12A00040;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(-131073));
end;

procedure TArithmeticTest.Test174;
begin
  // mov x0, #-131073.
  FInsn.OpCode := $92A00040;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(-131073));
end;

procedure TArithmeticTest.Test175;
begin
  // movk w0, #1.
  FInsn.OpCode := $72800020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVK);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TArithmeticTest.Test176;
begin
  // movk x0, #1.
  FInsn.OpCode := $F2800020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVK);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TArithmeticTest.Test177;
begin
  // movk w0, #1, lsl #16.
  FInsn.OpCode := $72A00020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVK);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TArithmeticTest.Test178;
begin
  // movk x0, #1, lsl #16.
  FInsn.OpCode := $F2A00020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVK);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TArithmeticTest.Test179;
begin
  // uqxtn b4, h2.
  FInsn.OpCode := $7E214844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H2);
end;

procedure TArithmeticTest.Test180;
begin
  // uqxtn h2, s3.
  FInsn.OpCode := $7E614862;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TArithmeticTest.Test181;
begin
  // uqxtn s9, d2.
  FInsn.OpCode := $7EA14849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

initialization
  TDUnitX.RegisterTestFixture(TArithmeticTest);

end.
