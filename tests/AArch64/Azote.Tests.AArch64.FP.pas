// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-fp-encoding.s
// ===========================================================================================================

unit Azote.Tests.AArch64.FP;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TFPTest = class(TObject)
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
  end;

implementation

procedure TFPTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TFPTest.TearDown;
begin

end;	

procedure TFPTest.Test1;
begin
  // fabs s1, s2.
  FInsn.OpCode := $1E20C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test2;
begin
  // fabs d1, d2.
  FInsn.OpCode := $1E60C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test3;
begin
  // fadd s1, s2, s3.
  FInsn.OpCode := $1E232841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test4;
begin
  // fadd d1, d2, d3.
  FInsn.OpCode := $1E632841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test5;
begin
  // fdiv s1, s2, s3.
  FInsn.OpCode := $1E231841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test6;
begin
  // fdiv d1, d2, d3.
  FInsn.OpCode := $1E631841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test7;
begin
  // fmadd s1, s2, s3, s4.
  FInsn.OpCode := $1F031041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S4);
end;

procedure TFPTest.Test8;
begin
  // fmadd d1, d2, d3, d4.
  FInsn.OpCode := $1F431041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D4);
end;

procedure TFPTest.Test9;
begin
  // fmax s1, s2, s3.
  FInsn.OpCode := $1E234841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test10;
begin
  // fmax d1, d2, d3.
  FInsn.OpCode := $1E634841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test11;
begin
  // fmaxnm s1, s2, s3.
  FInsn.OpCode := $1E236841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test12;
begin
  // fmaxnm d1, d2, d3.
  FInsn.OpCode := $1E636841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test13;
begin
  // fmin s1, s2, s3.
  FInsn.OpCode := $1E235841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test14;
begin
  // fmin d1, d2, d3.
  FInsn.OpCode := $1E635841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test15;
begin
  // fminnm s1, s2, s3.
  FInsn.OpCode := $1E237841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test16;
begin
  // fminnm d1, d2, d3.
  FInsn.OpCode := $1E637841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test17;
begin
  // fmsub s1, s2, s3, s4.
  FInsn.OpCode := $1F039041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S4);
end;

procedure TFPTest.Test18;
begin
  // fmsub d1, d2, d3, d4.
  FInsn.OpCode := $1F439041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D4);
end;

procedure TFPTest.Test19;
begin
  // fmul s1, s2, s3.
  FInsn.OpCode := $1E230841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test20;
begin
  // fmul d1, d2, d3.
  FInsn.OpCode := $1E630841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test21;
begin
  // fneg s1, s2.
  FInsn.OpCode := $1E214041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test22;
begin
  // fneg d1, d2.
  FInsn.OpCode := $1E614041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test23;
begin
  // fnmadd s1, s2, s3, s4.
  FInsn.OpCode := $1F231041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S4);
end;

procedure TFPTest.Test24;
begin
  // fnmadd d1, d2, d3, d4.
  FInsn.OpCode := $1F631041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D4);
end;

procedure TFPTest.Test25;
begin
  // fnmsub s1, s2, s3, s4.
  FInsn.OpCode := $1F239041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S4);
end;

procedure TFPTest.Test26;
begin
  // fnmsub d1, d2, d3, d4.
  FInsn.OpCode := $1F639041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D4);
end;

procedure TFPTest.Test27;
begin
  // fnmul s1, s2, s3.
  FInsn.OpCode := $1E238841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test28;
begin
  // fnmul d1, d2, d3.
  FInsn.OpCode := $1E638841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test29;
begin
  // fsqrt s1, s2.
  FInsn.OpCode := $1E21C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test30;
begin
  // fsqrt d1, d2.
  FInsn.OpCode := $1E61C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test31;
begin
  // fsub s1, s2, s3.
  FInsn.OpCode := $1E233841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TFPTest.Test32;
begin
  // fsub d1, d2, d3.
  FInsn.OpCode := $1E633841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TFPTest.Test33;
begin
  // fcmp s1, s2.
  FInsn.OpCode := $1E222020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test34;
begin
  // fcmp d1, d2.
  FInsn.OpCode := $1E622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test35;
begin
  // fcmp s1, #0.0.
  FInsn.OpCode := $1E202028;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TFPTest.Test36;
begin
  // fcmp d1, #0.0.
  FInsn.OpCode := $1E602028;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TFPTest.Test37;
begin
  // fcmpe s1, s2.
  FInsn.OpCode := $1E222030;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test38;
begin
  // fcmpe d1, d2.
  FInsn.OpCode := $1E622030;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test39;
begin
  // fcmpe s1, #0.0.
  FInsn.OpCode := $1E202038;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TFPTest.Test40;
begin
  // fcmpe d1, #0.0.
  FInsn.OpCode := $1E602038;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TFPTest.Test41;
begin
  // fcvt h1, d2.
  FInsn.OpCode := $1E63C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test42;
begin
  // fcvt s1, d2.
  FInsn.OpCode := $1E624041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test43;
begin
  // fcvt d1, h2.
  FInsn.OpCode := $1EE2C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H2);
end;

procedure TFPTest.Test44;
begin
  // fcvt s1, h2.
  FInsn.OpCode := $1EE24041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H2);
end;

procedure TFPTest.Test45;
begin
  // fcvt d1, s2.
  FInsn.OpCode := $1E22C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test46;
begin
  // fcvt h1, s2.
  FInsn.OpCode := $1E23C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test47;
begin
  // fcvtas w1, d2.
  FInsn.OpCode := $1E640041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test48;
begin
  // fcvtas x1, d2.
  FInsn.OpCode := $9E640041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test49;
begin
  // fcvtas w1, s2.
  FInsn.OpCode := $1E240041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test50;
begin
  // fcvtas x1, s2.
  FInsn.OpCode := $9E240041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test51;
begin
  // fcvtau w1, s2.
  FInsn.OpCode := $1E250041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test52;
begin
  // fcvtau w1, d2.
  FInsn.OpCode := $1E650041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test53;
begin
  // fcvtau x1, s2.
  FInsn.OpCode := $9E250041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test54;
begin
  // fcvtau x1, d2.
  FInsn.OpCode := $9E650041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test55;
begin
  // fcvtms w1, s2.
  FInsn.OpCode := $1E300041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test56;
begin
  // fcvtms w1, d2.
  FInsn.OpCode := $1E700041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test57;
begin
  // fcvtms x1, s2.
  FInsn.OpCode := $9E300041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test58;
begin
  // fcvtms x1, d2.
  FInsn.OpCode := $9E700041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test59;
begin
  // fcvtmu w1, s2.
  FInsn.OpCode := $1E310041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test60;
begin
  // fcvtmu w1, d2.
  FInsn.OpCode := $1E710041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test61;
begin
  // fcvtmu x1, s2.
  FInsn.OpCode := $9E310041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test62;
begin
  // fcvtmu x1, d2.
  FInsn.OpCode := $9E710041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test63;
begin
  // fcvtns w1, s2.
  FInsn.OpCode := $1E200041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test64;
begin
  // fcvtns w1, d2.
  FInsn.OpCode := $1E600041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test65;
begin
  // fcvtns x1, s2.
  FInsn.OpCode := $9E200041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test66;
begin
  // fcvtns x1, d2.
  FInsn.OpCode := $9E600041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test67;
begin
  // fcvtnu w1, s2.
  FInsn.OpCode := $1E210041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test68;
begin
  // fcvtnu w1, d2.
  FInsn.OpCode := $1E610041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test69;
begin
  // fcvtnu x1, s2.
  FInsn.OpCode := $9E210041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test70;
begin
  // fcvtnu x1, d2.
  FInsn.OpCode := $9E610041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test71;
begin
  // fcvtps w1, s2.
  FInsn.OpCode := $1E280041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test72;
begin
  // fcvtps w1, d2.
  FInsn.OpCode := $1E680041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test73;
begin
  // fcvtps x1, s2.
  FInsn.OpCode := $9E280041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test74;
begin
  // fcvtps x1, d2.
  FInsn.OpCode := $9E680041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test75;
begin
  // fcvtpu w1, s2.
  FInsn.OpCode := $1E290041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test76;
begin
  // fcvtpu w1, d2.
  FInsn.OpCode := $1E690041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test77;
begin
  // fcvtpu x1, s2.
  FInsn.OpCode := $9E290041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test78;
begin
  // fcvtpu x1, d2.
  FInsn.OpCode := $9E690041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test79;
begin
  // fcvtzs w1, s2.
  FInsn.OpCode := $1E380041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test80;
begin
  // fcvtzs w1, s2, #1.
  FInsn.OpCode := $1E18FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test81;
begin
  // fcvtzs w1, d2.
  FInsn.OpCode := $1E780041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test82;
begin
  // fcvtzs w1, d2, #1.
  FInsn.OpCode := $1E58FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test83;
begin
  // fcvtzs x1, s2.
  FInsn.OpCode := $9E380041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test84;
begin
  // fcvtzs x1, s2, #1.
  FInsn.OpCode := $9E18FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test85;
begin
  // fcvtzs x1, d2.
  FInsn.OpCode := $9E780041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test86;
begin
  // fcvtzs x1, d2, #1.
  FInsn.OpCode := $9E58FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test87;
begin
  // fcvtzu w1, s2.
  FInsn.OpCode := $1E390041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test88;
begin
  // fcvtzu w1, s2, #1.
  FInsn.OpCode := $1E19FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test89;
begin
  // fcvtzu w1, d2.
  FInsn.OpCode := $1E790041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test90;
begin
  // fcvtzu w1, d2, #1.
  FInsn.OpCode := $1E59FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test91;
begin
  // fcvtzu x1, s2.
  FInsn.OpCode := $9E390041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test92;
begin
  // fcvtzu x1, s2, #1.
  FInsn.OpCode := $9E19FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test93;
begin
  // fcvtzu x1, d2.
  FInsn.OpCode := $9E790041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test94;
begin
  // fcvtzu x1, d2, #1.
  FInsn.OpCode := $9E59FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test95;
begin
  // scvtf s1, w2.
  FInsn.OpCode := $1E220041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TFPTest.Test96;
begin
  // scvtf s1, w2, #1.
  FInsn.OpCode := $1E02FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test97;
begin
  // scvtf d1, w2.
  FInsn.OpCode := $1E620041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TFPTest.Test98;
begin
  // scvtf d1, w2, #1.
  FInsn.OpCode := $1E42FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test99;
begin
  // scvtf s1, x2.
  FInsn.OpCode := $9E220041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TFPTest.Test100;
begin
  // scvtf s1, x2, #1.
  FInsn.OpCode := $9E02FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test101;
begin
  // scvtf d1, x2.
  FInsn.OpCode := $9E620041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TFPTest.Test102;
begin
  // scvtf d1, x2, #1.
  FInsn.OpCode := $9E42FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test103;
begin
  // ucvtf s1, w2.
  FInsn.OpCode := $1E230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TFPTest.Test104;
begin
  // ucvtf s1, w2, #1.
  FInsn.OpCode := $1E03FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test105;
begin
  // ucvtf d1, w2.
  FInsn.OpCode := $1E630041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TFPTest.Test106;
begin
  // ucvtf d1, w2, #1.
  FInsn.OpCode := $1E43FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test107;
begin
  // ucvtf s1, x2.
  FInsn.OpCode := $9E230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TFPTest.Test108;
begin
  // ucvtf s1, x2, #1.
  FInsn.OpCode := $9E03FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test109;
begin
  // ucvtf d1, x2.
  FInsn.OpCode := $9E630041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TFPTest.Test110;
begin
  // ucvtf d1, x2, #1.
  FInsn.OpCode := $9E43FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TFPTest.Test111;
begin
  // fmov s1, w2.
  FInsn.OpCode := $1E270041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TFPTest.Test112;
begin
  // fmov w1, s2.
  FInsn.OpCode := $1E260041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test113;
begin
  // fmov d1, x2.
  FInsn.OpCode := $9E670041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TFPTest.Test114;
begin
  // fmov x1, d2.
  FInsn.OpCode := $9E660041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test115;
begin
  // fmov s1, #0.12500000.
  FInsn.OpCode := $1E281001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TFPTest.Test116;
begin
  // fmov s1, #0.12500000.
  FInsn.OpCode := $1E281001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TFPTest.Test117;
begin
  // fmov d1, #0.12500000.
  FInsn.OpCode := $1E681001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TFPTest.Test118;
begin
  // fmov d1, #0.12500000.
  FInsn.OpCode := $1E681001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TFPTest.Test119;
begin
  // fmov d1, #-0.48437500.
  FInsn.OpCode := $1E7BF001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(-0.48437500));
end;

procedure TFPTest.Test120;
begin
  // fmov d1, #0.48437500.
  FInsn.OpCode := $1E6BF001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.48437500));
end;

procedure TFPTest.Test121;
begin
  // fmov d3, #3.00000000.
  FInsn.OpCode := $1E611003;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(3.00000000));
end;

procedure TFPTest.Test122;
begin
  // fmov s2, wzr.
  FInsn.OpCode := $1E2703E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TFPTest.Test123;
begin
  // fmov d2, xzr.
  FInsn.OpCode := $9E6703E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TFPTest.Test124;
begin
  // fmov s1, s2.
  FInsn.OpCode := $1E204041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test125;
begin
  // fmov d1, d2.
  FInsn.OpCode := $1E604041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test126;
begin
  // fmov.d x2, v5[1].
  FInsn.OpCode := $9EAE00A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TFPTest.Test127;
begin
  // fmov.d x9, v7[1].
  FInsn.OpCode := $9EAE00E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TFPTest.Test128;
begin
  // fmov.d v1[1], x1.
  FInsn.OpCode := $9EAF0021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
end;

procedure TFPTest.Test129;
begin
  // fmov.d v8[1], x6.
  FInsn.OpCode := $9EAF00C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
end;

procedure TFPTest.Test130;
begin
  // frinta s1, s2.
  FInsn.OpCode := $1E264041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test131;
begin
  // frinta d1, d2.
  FInsn.OpCode := $1E664041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test132;
begin
  // frinti s1, s2.
  FInsn.OpCode := $1E27C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test133;
begin
  // frinti d1, d2.
  FInsn.OpCode := $1E67C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test134;
begin
  // frintm s1, s2.
  FInsn.OpCode := $1E254041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test135;
begin
  // frintm d1, d2.
  FInsn.OpCode := $1E654041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test136;
begin
  // frintn s1, s2.
  FInsn.OpCode := $1E244041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test137;
begin
  // frintn d1, d2.
  FInsn.OpCode := $1E644041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test138;
begin
  // frintp s1, s2.
  FInsn.OpCode := $1E24C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test139;
begin
  // frintp d1, d2.
  FInsn.OpCode := $1E64C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test140;
begin
  // frintx s1, s2.
  FInsn.OpCode := $1E274041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test141;
begin
  // frintx d1, d2.
  FInsn.OpCode := $1E674041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test142;
begin
  // frintz s1, s2.
  FInsn.OpCode := $1E25C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
end;

procedure TFPTest.Test143;
begin
  // frintz d1, d2.
  FInsn.OpCode := $1E65C041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test144;
begin
  // cmhs d0, d0, d0.
  FInsn.OpCode := $7EE03C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D0);
end;

procedure TFPTest.Test145;
begin
  // cmtst d0, d0, d0.
  FInsn.OpCode := $5EE08C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D0);
end;

procedure TFPTest.Test146;
begin
  // sqxtn b4, h2.
  FInsn.OpCode := $5E214844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H2);
end;

procedure TFPTest.Test147;
begin
  // sqxtn h2, s3.
  FInsn.OpCode := $5E614862;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TFPTest.Test148;
begin
  // sqxtn s9, d2.
  FInsn.OpCode := $5EA14849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test149;
begin
  // sqxtun b4, h2.
  FInsn.OpCode := $7E212844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H2);
end;

procedure TFPTest.Test150;
begin
  // sqxtun h2, s3.
  FInsn.OpCode := $7E612862;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TFPTest.Test151;
begin
  // sqxtun s9, d2.
  FInsn.OpCode := $7EA12849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

procedure TFPTest.Test152;
begin
  // uqxtn b4, h2.
  FInsn.OpCode := $7E214844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H2);
end;

procedure TFPTest.Test153;
begin
  // uqxtn h2, s3.
  FInsn.OpCode := $7E614862;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TFPTest.Test154;
begin
  // uqxtn s9, d2.
  FInsn.OpCode := $7EA14849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
end;

initialization
  TDUnitX.RegisterTestFixture(TFPTest);

end.
