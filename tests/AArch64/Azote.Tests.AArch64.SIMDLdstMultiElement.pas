// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-simd-ldst-multi-elem.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDLdstMultiElement;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDLdstMultiElementTest = class(TObject)
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
  end;

implementation

procedure TSIMDLdstMultiElementTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDLdstMultiElementTest.TearDown;
begin

end;	

procedure TSIMDLdstMultiElementTest.Test1;
begin
  // st1 { v0.16b }, [x0].
  FInsn.OpCode := $4C007000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test2;
begin
  // st1 { v15.8h }, [x15].
  FInsn.OpCode := $4C0075EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test3;
begin
  // st1 { v31.4s }, [sp].
  FInsn.OpCode := $4C007BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test4;
begin
  // st1 { v0.2d }, [x0].
  FInsn.OpCode := $4C007C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test5;
begin
  // st1 { v0.8b }, [x0].
  FInsn.OpCode := $0C007000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test6;
begin
  // st1 { v15.4h }, [x15].
  FInsn.OpCode := $0C0075EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test7;
begin
  // st1 { v31.2s }, [sp].
  FInsn.OpCode := $0C007BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test8;
begin
  // st1 { v0.1d }, [x0].
  FInsn.OpCode := $0C007C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test9;
begin
  // st1 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C00A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test10;
begin
  // st1 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C00A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test11;
begin
  // st1 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C00ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test12;
begin
  // st1 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C00AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test13;
begin
  // st1 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C00A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test14;
begin
  // st1 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C00A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test15;
begin
  // st1 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C00ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test16;
begin
  // st1 { v0.1d, v1.1d }, [x0].
  FInsn.OpCode := $0C00AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test17;
begin
  // st1 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C00A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test18;
begin
  // st1 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C00A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test19;
begin
  // st1 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C00ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test20;
begin
  // st1 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C00AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test21;
begin
  // st1 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C00A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test22;
begin
  // st1 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C00A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test23;
begin
  // st1 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C00ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test24;
begin
  // st1 { v0.1d, v1.1d }, [x0].
  FInsn.OpCode := $0C00AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test25;
begin
  // st1 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C006000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test26;
begin
  // st1 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C0065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test27;
begin
  // st1 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C006BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test28;
begin
  // st1 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C006C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test29;
begin
  // st1 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C006000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test30;
begin
  // st1 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C0065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test31;
begin
  // st1 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C006BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test32;
begin
  // st1 { v0.1d, v1.1d, v2.1d }, [x0].
  FInsn.OpCode := $0C006C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test33;
begin
  // st1 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C006000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test34;
begin
  // st1 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C0065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test35;
begin
  // st1 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C006BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test36;
begin
  // st1 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C006C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test37;
begin
  // st1 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C006000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test38;
begin
  // st1 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C0065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test39;
begin
  // st1 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C006BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test40;
begin
  // st1 { v0.1d, v1.1d, v2.1d }, [x0].
  FInsn.OpCode := $0C006C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test41;
begin
  // st1 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C002000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test42;
begin
  // st1 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C0025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test43;
begin
  // st1 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C002BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test44;
begin
  // st1 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C002C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test45;
begin
  // st1 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C002000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test46;
begin
  // st1 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C0025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test47;
begin
  // st1 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C002BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test48;
begin
  // st1 { v0.1d, v1.1d, v2.1d, v3.1d }, [x0].
  FInsn.OpCode := $0C002C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test49;
begin
  // st1 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C002000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test50;
begin
  // st1 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C0025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test51;
begin
  // st1 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C002BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test52;
begin
  // st1 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C002C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test53;
begin
  // st1 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C002000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test54;
begin
  // st1 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C0025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test55;
begin
  // st1 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C002BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test56;
begin
  // st1 { v0.1d, v1.1d, v2.1d, v3.1d }, [x0].
  FInsn.OpCode := $0C002C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test57;
begin
  // st2 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C008000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test58;
begin
  // st2 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C0085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test59;
begin
  // st2 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C008BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test60;
begin
  // st2 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C008C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test61;
begin
  // st2 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C008000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test62;
begin
  // st2 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C0085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test63;
begin
  // st2 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C008BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test64;
begin
  // st2 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C008000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test65;
begin
  // st2 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C0085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test66;
begin
  // st2 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C008BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test67;
begin
  // st2 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C008C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test68;
begin
  // st2 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C008000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test69;
begin
  // st2 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C0085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test70;
begin
  // st2 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C008BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test71;
begin
  // st3 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C004000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test72;
begin
  // st3 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C0045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test73;
begin
  // st3 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C004BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test74;
begin
  // st3 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C004C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test75;
begin
  // st3 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C004000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test76;
begin
  // st3 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C0045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test77;
begin
  // st3 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C004BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test78;
begin
  // st3 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C004000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test79;
begin
  // st3 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C0045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test80;
begin
  // st3 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C004BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test81;
begin
  // st3 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C004C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test82;
begin
  // st3 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C004000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test83;
begin
  // st3 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C0045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test84;
begin
  // st3 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C004BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test85;
begin
  // st4 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test86;
begin
  // st4 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C0005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test87;
begin
  // st4 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C000BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test88;
begin
  // st4 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C000C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test89;
begin
  // st4 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test90;
begin
  // st4 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C0005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test91;
begin
  // st4 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C000BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test92;
begin
  // st4 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test93;
begin
  // st4 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C0005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test94;
begin
  // st4 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C000BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test95;
begin
  // st4 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C000C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test96;
begin
  // st4 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test97;
begin
  // st4 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C0005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test98;
begin
  // st4 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C000BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test99;
begin
  // ld1 { v0.16b }, [x0].
  FInsn.OpCode := $4C407000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test100;
begin
  // ld1 { v15.8h }, [x15].
  FInsn.OpCode := $4C4075EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test101;
begin
  // ld1 { v31.4s }, [sp].
  FInsn.OpCode := $4C407BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test102;
begin
  // ld1 { v0.2d }, [x0].
  FInsn.OpCode := $4C407C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test103;
begin
  // ld1 { v0.8b }, [x0].
  FInsn.OpCode := $0C407000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test104;
begin
  // ld1 { v15.4h }, [x15].
  FInsn.OpCode := $0C4075EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test105;
begin
  // ld1 { v31.2s }, [sp].
  FInsn.OpCode := $0C407BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test106;
begin
  // ld1 { v0.1d }, [x0].
  FInsn.OpCode := $0C407C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test107;
begin
  // ld1 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C40A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test108;
begin
  // ld1 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C40A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test109;
begin
  // ld1 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C40ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test110;
begin
  // ld1 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C40AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test111;
begin
  // ld1 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C40A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test112;
begin
  // ld1 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C40A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test113;
begin
  // ld1 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C40ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test114;
begin
  // ld1 { v0.1d, v1.1d }, [x0].
  FInsn.OpCode := $0C40AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test115;
begin
  // ld1 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C40A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test116;
begin
  // ld1 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C40A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test117;
begin
  // ld1 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C40ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test118;
begin
  // ld1 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C40AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test119;
begin
  // ld1 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C40A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test120;
begin
  // ld1 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C40A5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test121;
begin
  // ld1 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C40ABFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test122;
begin
  // ld1 { v0.1d, v1.1d }, [x0].
  FInsn.OpCode := $0C40AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test123;
begin
  // ld1 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C406000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test124;
begin
  // ld1 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C4065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test125;
begin
  // ld1 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C406BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test126;
begin
  // ld1 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C406C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test127;
begin
  // ld1 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C406000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test128;
begin
  // ld1 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C4065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test129;
begin
  // ld1 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C406BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test130;
begin
  // ld1 { v0.1d, v1.1d, v2.1d }, [x0].
  FInsn.OpCode := $0C406C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test131;
begin
  // ld1 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C406000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test132;
begin
  // ld1 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C4065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test133;
begin
  // ld1 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C406BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test134;
begin
  // ld1 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C406C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test135;
begin
  // ld1 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C406000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test136;
begin
  // ld1 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C4065EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test137;
begin
  // ld1 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C406BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test138;
begin
  // ld1 { v0.1d, v1.1d, v2.1d }, [x0].
  FInsn.OpCode := $0C406C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test139;
begin
  // ld1 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test140;
begin
  // ld1 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C4025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test141;
begin
  // ld1 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C402BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test142;
begin
  // ld1 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C402C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test143;
begin
  // ld1 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test144;
begin
  // ld1 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C4025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test145;
begin
  // ld1 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C402BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test146;
begin
  // ld1 { v0.1d, v1.1d, v2.1d, v3.1d }, [x0].
  FInsn.OpCode := $0C402C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test147;
begin
  // ld1 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test148;
begin
  // ld1 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C4025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test149;
begin
  // ld1 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C402BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test150;
begin
  // ld1 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C402C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test151;
begin
  // ld1 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test152;
begin
  // ld1 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C4025EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test153;
begin
  // ld1 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C402BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test154;
begin
  // ld1 { v0.1d, v1.1d, v2.1d, v3.1d }, [x0].
  FInsn.OpCode := $0C402C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test155;
begin
  // ld2 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C408000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test156;
begin
  // ld2 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C4085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test157;
begin
  // ld2 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C408BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test158;
begin
  // ld2 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C408C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test159;
begin
  // ld2 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C408000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test160;
begin
  // ld2 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C4085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test161;
begin
  // ld2 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C408BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test162;
begin
  // ld2 { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4C408000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test163;
begin
  // ld2 { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4C4085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test164;
begin
  // ld2 { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4C408BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test165;
begin
  // ld2 { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4C408C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test166;
begin
  // ld2 { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0C408000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test167;
begin
  // ld2 { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0C4085EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test168;
begin
  // ld2 { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0C408BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test169;
begin
  // ld3 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C404000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test170;
begin
  // ld3 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C4045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test171;
begin
  // ld3 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C404BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test172;
begin
  // ld3 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C404C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test173;
begin
  // ld3 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C404000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test174;
begin
  // ld3 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C4045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test175;
begin
  // ld3 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C404BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test176;
begin
  // ld3 { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4C404000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test177;
begin
  // ld3 { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4C4045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test178;
begin
  // ld3 { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4C404BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test179;
begin
  // ld3 { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4C404C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test180;
begin
  // ld3 { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0C404000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test181;
begin
  // ld3 { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0C4045EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test182;
begin
  // ld3 { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0C404BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test183;
begin
  // ld4 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test184;
begin
  // ld4 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C4005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test185;
begin
  // ld4 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C400BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test186;
begin
  // ld4 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C400C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test187;
begin
  // ld4 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test188;
begin
  // ld4 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C4005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test189;
begin
  // ld4 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C400BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test190;
begin
  // ld4 { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4C400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test191;
begin
  // ld4 { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4C4005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test192;
begin
  // ld4 { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4C400BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstMultiElementTest.Test193;
begin
  // ld4 { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4C400C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test194;
begin
  // ld4 { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0C400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstMultiElementTest.Test195;
begin
  // ld4 { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0C4005EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstMultiElementTest.Test196;
begin
  // ld4 { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0C400BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDLdstMultiElementTest);

end.
