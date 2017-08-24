// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-memory.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Memory;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TMemoryTest = class(TObject)
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
  end;

implementation

procedure TMemoryTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TMemoryTest.TearDown;
begin

end;	

procedure TMemoryTest.Test1;
begin
  // ldr w5, [x4, #20].
  FInsn.OpCode := $B9401485;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test2;
begin
  // ldr x4, [x3].
  FInsn.OpCode := $F9400064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test3;
begin
  // ldr x2, [sp, #32].
  FInsn.OpCode := $F94013E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test4;
begin
  // ldr b5, [sp, #1].
  FInsn.OpCode := $3D4007E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test5;
begin
  // ldr h6, [sp, #2].
  FInsn.OpCode := $7D4007E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TMemoryTest.Test6;
begin
  // ldr s7, [sp, #4].
  FInsn.OpCode := $BD4007E7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TMemoryTest.Test7;
begin
  // ldr d8, [sp, #8].
  FInsn.OpCode := $FD4007E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TMemoryTest.Test8;
begin
  // ldr q9, [sp, #16].
  FInsn.OpCode := $3DC007E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test9;
begin
  // ldrb w4, [x3].
  FInsn.OpCode := $39400064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test10;
begin
  // ldrb w5, [x4, #20].
  FInsn.OpCode := $39405085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test11;
begin
  // ldrsb w9, [x3].
  FInsn.OpCode := $39C00069;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test12;
begin
  // ldrsb x2, [sp, #128].
  FInsn.OpCode := $398203E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(128));
end;

procedure TMemoryTest.Test13;
begin
  // ldrh w2, [sp, #32].
  FInsn.OpCode := $794043E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test14;
begin
  // ldrsh w3, [sp, #32].
  FInsn.OpCode := $79C043E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test15;
begin
  // ldrsh x5, [x9, #24].
  FInsn.OpCode := $79803125;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
end;

procedure TMemoryTest.Test16;
begin
  // ldrsw x9, [sp, #512].
  FInsn.OpCode := $B98203E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(512));
end;

procedure TMemoryTest.Test17;
begin
  // prfm #31, [sp, #32].
  FInsn.OpCode := $F98013FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PRFM);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test18;
begin
  // str x4, [x3].
  FInsn.OpCode := $F9000064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test19;
begin
  // str x2, [sp, #32].
  FInsn.OpCode := $F90013E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test20;
begin
  // str w5, [x4, #20].
  FInsn.OpCode := $B9001485;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test21;
begin
  // str b5, [sp, #1].
  FInsn.OpCode := $3D0007E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test22;
begin
  // str h6, [sp, #2].
  FInsn.OpCode := $7D0007E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TMemoryTest.Test23;
begin
  // str s7, [sp, #4].
  FInsn.OpCode := $BD0007E7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TMemoryTest.Test24;
begin
  // str d8, [sp, #8].
  FInsn.OpCode := $FD0007E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TMemoryTest.Test25;
begin
  // str q9, [sp, #16].
  FInsn.OpCode := $3D8007E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test26;
begin
  // strb w4, [x3].
  FInsn.OpCode := $39000064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test27;
begin
  // strb w5, [x4, #20].
  FInsn.OpCode := $39005085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test28;
begin
  // strh w2, [sp, #32].
  FInsn.OpCode := $790043E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test29;
begin
  // ldur w2, [x3].
  FInsn.OpCode := $B8400062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test30;
begin
  // ldur w2, [sp, #24].
  FInsn.OpCode := $B84183E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
end;

procedure TMemoryTest.Test31;
begin
  // ldur x2, [x3].
  FInsn.OpCode := $F8400062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test32;
begin
  // ldur x2, [sp, #24].
  FInsn.OpCode := $F84183E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
end;

procedure TMemoryTest.Test33;
begin
  // ldur b5, [sp, #1].
  FInsn.OpCode := $3C4013E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test34;
begin
  // ldur h6, [sp, #2].
  FInsn.OpCode := $7C4023E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TMemoryTest.Test35;
begin
  // ldur s7, [sp, #4].
  FInsn.OpCode := $BC4043E7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TMemoryTest.Test36;
begin
  // ldur d8, [sp, #8].
  FInsn.OpCode := $FC4083E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TMemoryTest.Test37;
begin
  // ldur q9, [sp, #16].
  FInsn.OpCode := $3CC103E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test38;
begin
  // ldursb w9, [x3].
  FInsn.OpCode := $38C00069;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test39;
begin
  // ldursb x2, [sp, #128].
  FInsn.OpCode := $388803E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(128));
end;

procedure TMemoryTest.Test40;
begin
  // ldursh w3, [sp, #32].
  FInsn.OpCode := $78C203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test41;
begin
  // ldursh x5, [x9, #24].
  FInsn.OpCode := $78818125;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
end;

procedure TMemoryTest.Test42;
begin
  // ldursw x9, [sp, #-128].
  FInsn.OpCode := $B89803E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-128));
end;

procedure TMemoryTest.Test43;
begin
  // stur w4, [x3].
  FInsn.OpCode := $B8000064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test44;
begin
  // stur w2, [sp, #32].
  FInsn.OpCode := $B80203E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test45;
begin
  // stur x4, [x3].
  FInsn.OpCode := $F8000064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test46;
begin
  // stur x2, [sp, #32].
  FInsn.OpCode := $F80203E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test47;
begin
  // stur w5, [x4, #20].
  FInsn.OpCode := $B8014085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test48;
begin
  // stur b5, [sp, #1].
  FInsn.OpCode := $3C0013E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test49;
begin
  // stur h6, [sp, #2].
  FInsn.OpCode := $7C0023E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TMemoryTest.Test50;
begin
  // stur s7, [sp, #4].
  FInsn.OpCode := $BC0043E7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TMemoryTest.Test51;
begin
  // stur d8, [sp, #8].
  FInsn.OpCode := $FC0083E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TMemoryTest.Test52;
begin
  // stur q9, [sp, #16].
  FInsn.OpCode := $3C8103E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test53;
begin
  // sturb w4, [x3].
  FInsn.OpCode := $38000064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test54;
begin
  // sturb w5, [x4, #20].
  FInsn.OpCode := $38014085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test55;
begin
  // sturh w2, [sp, #32].
  FInsn.OpCode := $780203E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test56;
begin
  // ldtr w3, [x4, #16].
  FInsn.OpCode := $B8410883;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test57;
begin
  // ldtr x3, [x4, #16].
  FInsn.OpCode := $F8410883;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test58;
begin
  // ldtrb w3, [x4, #16].
  FInsn.OpCode := $38410883;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test59;
begin
  // ldtrsb w9, [x3].
  FInsn.OpCode := $38C00869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test60;
begin
  // ldtrsb x2, [sp, #128].
  FInsn.OpCode := $38880BE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(128));
end;

procedure TMemoryTest.Test61;
begin
  // ldtrh w3, [x4, #16].
  FInsn.OpCode := $78410883;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test62;
begin
  // ldtrsh w3, [sp, #32].
  FInsn.OpCode := $78C20BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test63;
begin
  // ldtrsh x5, [x9, #24].
  FInsn.OpCode := $78818925;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
end;

procedure TMemoryTest.Test64;
begin
  // ldtrsw x9, [sp, #-128].
  FInsn.OpCode := $B8980BE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-128));
end;

procedure TMemoryTest.Test65;
begin
  // sttr w5, [x4, #20].
  FInsn.OpCode := $B8014885;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test66;
begin
  // sttr x4, [x3].
  FInsn.OpCode := $F8000864;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test67;
begin
  // sttr x2, [sp, #32].
  FInsn.OpCode := $F8020BE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test68;
begin
  // sttrb w4, [x3].
  FInsn.OpCode := $38000864;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test69;
begin
  // sttrb w5, [x4, #20].
  FInsn.OpCode := $38014885;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(20));
end;

procedure TMemoryTest.Test70;
begin
  // sttrh w2, [sp, #32].
  FInsn.OpCode := $78020BE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test71;
begin
  // ldr x29, [x7, #8]!.
  FInsn.OpCode := $F8408CFD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test72;
begin
  // ldr x30, [x7, #8]!.
  FInsn.OpCode := $F8408CFE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test73;
begin
  // ldr b5, [x0, #1]!.
  FInsn.OpCode := $3C401C05;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test74;
begin
  // ldr h6, [x0, #2]!.
  FInsn.OpCode := $7C402C06;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test75;
begin
  // ldr s7, [x0, #4]!.
  FInsn.OpCode := $BC404C07;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test76;
begin
  // ldr d8, [x0, #8]!.
  FInsn.OpCode := $FC408C08;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test77;
begin
  // ldr q9, [x0, #16]!.
  FInsn.OpCode := $3CC10C09;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test78;
begin
  // str x30, [x7, #-8]!.
  FInsn.OpCode := $F81F8CFE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test79;
begin
  // str x29, [x7, #-8]!.
  FInsn.OpCode := $F81F8CFD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test80;
begin
  // str b5, [x0, #-1]!.
  FInsn.OpCode := $3C1FFC05;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test81;
begin
  // str h6, [x0, #-2]!.
  FInsn.OpCode := $7C1FEC06;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-2));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test82;
begin
  // str s7, [x0, #-4]!.
  FInsn.OpCode := $BC1FCC07;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-4));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test83;
begin
  // str d8, [x0, #-8]!.
  FInsn.OpCode := $FC1F8C08;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test84;
begin
  // str q9, [x0, #-16]!.
  FInsn.OpCode := $3C9F0C09;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test85;
begin
  // str x30, [x7], #-8.
  FInsn.OpCode := $F81F84FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test86;
begin
  // str x29, [x7], #-8.
  FInsn.OpCode := $F81F84FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test87;
begin
  // str b5, [x0], #-1.
  FInsn.OpCode := $3C1FF405;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test88;
begin
  // str h6, [x0], #-2.
  FInsn.OpCode := $7C1FE406;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test89;
begin
  // str s7, [x0], #-4.
  FInsn.OpCode := $BC1FC407;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test90;
begin
  // str d8, [x0], #-8.
  FInsn.OpCode := $FC1F8408;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test91;
begin
  // str q9, [x0], #-16.
  FInsn.OpCode := $3C9F0409;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test92;
begin
  // ldr x29, [x7], #8.
  FInsn.OpCode := $F84084FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test93;
begin
  // ldr x30, [x7], #8.
  FInsn.OpCode := $F84084FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test94;
begin
  // ldr b5, [x0], #1.
  FInsn.OpCode := $3C401405;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test95;
begin
  // ldr h6, [x0], #2.
  FInsn.OpCode := $7C402406;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test96;
begin
  // ldr s7, [x0], #4.
  FInsn.OpCode := $BC404407;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test97;
begin
  // ldr d8, [x0], #8.
  FInsn.OpCode := $FC408408;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test98;
begin
  // ldr q9, [x0], #16.
  FInsn.OpCode := $3CC10409;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test99;
begin
  // ldp w3, w2, [x15, #16].
  FInsn.OpCode := $294209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test100;
begin
  // ldp x4, x9, [sp, #-16].
  FInsn.OpCode := $A97F27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test101;
begin
  // ldpsw x2, x3, [x14, #16].
  FInsn.OpCode := $69420DC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test102;
begin
  // ldpsw x2, x3, [sp, #-16].
  FInsn.OpCode := $697E0FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test103;
begin
  // ldp s10, s1, [x2, #64].
  FInsn.OpCode := $2D48044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
end;

procedure TMemoryTest.Test104;
begin
  // ldp d10, d1, [x2].
  FInsn.OpCode := $6D40044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TMemoryTest.Test105;
begin
  // ldp q2, q3, [x0, #32].
  FInsn.OpCode := $AD410C02;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test106;
begin
  // stp w3, w2, [x15, #16].
  FInsn.OpCode := $290209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test107;
begin
  // stp x4, x9, [sp, #-16].
  FInsn.OpCode := $A93F27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test108;
begin
  // stp s10, s1, [x2, #64].
  FInsn.OpCode := $2D08044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
end;

procedure TMemoryTest.Test109;
begin
  // stp d10, d1, [x2].
  FInsn.OpCode := $6D00044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TMemoryTest.Test110;
begin
  // stp q2, q3, [x0, #32].
  FInsn.OpCode := $AD010C02;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(32));
end;

procedure TMemoryTest.Test111;
begin
  // ldp w3, w2, [x15, #16]!.
  FInsn.OpCode := $29C209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test112;
begin
  // ldp x4, x9, [sp, #-16]!.
  FInsn.OpCode := $A9FF27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test113;
begin
  // ldpsw x2, x3, [x14, #16]!.
  FInsn.OpCode := $69C20DC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test114;
begin
  // ldpsw x2, x3, [sp, #-16]!.
  FInsn.OpCode := $69FE0FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test115;
begin
  // ldp s10, s1, [x2, #64]!.
  FInsn.OpCode := $2DC8044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test116;
begin
  // ldp d10, d1, [x2, #16]!.
  FInsn.OpCode := $6DC1044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test117;
begin
  // stp w3, w2, [x15, #16]!.
  FInsn.OpCode := $298209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test118;
begin
  // stp x4, x9, [sp, #-16]!.
  FInsn.OpCode := $A9BF27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test119;
begin
  // stp s10, s1, [x2, #64]!.
  FInsn.OpCode := $2D88044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test120;
begin
  // stp d10, d1, [x2, #16]!.
  FInsn.OpCode := $6D81044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TMemoryTest.Test121;
begin
  // ldp w3, w2, [x15], #16.
  FInsn.OpCode := $28C209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test122;
begin
  // ldp x4, x9, [sp], #-16.
  FInsn.OpCode := $A8FF27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test123;
begin
  // ldpsw x2, x3, [x14], #16.
  FInsn.OpCode := $68C20DC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test124;
begin
  // ldpsw x2, x3, [sp], #-16.
  FInsn.OpCode := $68FE0FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test125;
begin
  // ldp s10, s1, [x2], #64.
  FInsn.OpCode := $2CC8044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test126;
begin
  // ldp d10, d1, [x2], #16.
  FInsn.OpCode := $6CC1044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test127;
begin
  // stp w3, w2, [x15], #16.
  FInsn.OpCode := $288209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test128;
begin
  // stp x4, x9, [sp], #-16.
  FInsn.OpCode := $A8BF27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test129;
begin
  // stp s10, s1, [x2], #64.
  FInsn.OpCode := $2C88044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test130;
begin
  // stp d10, d1, [x2], #16.
  FInsn.OpCode := $6C81044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TMemoryTest.Test131;
begin
  // ldnp w3, w2, [x15, #16].
  FInsn.OpCode := $284209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test132;
begin
  // ldnp x4, x9, [sp, #-16].
  FInsn.OpCode := $A87F27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test133;
begin
  // ldnp s10, s1, [x2, #64].
  FInsn.OpCode := $2C48044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
end;

procedure TMemoryTest.Test134;
begin
  // ldnp d10, d1, [x2].
  FInsn.OpCode := $6C40044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TMemoryTest.Test135;
begin
  // stnp w3, w2, [x15, #16].
  FInsn.OpCode := $280209E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(16));
end;

procedure TMemoryTest.Test136;
begin
  // stnp x4, x9, [sp, #-16].
  FInsn.OpCode := $A83F27E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test137;
begin
  // stnp s10, s1, [x2, #64].
  FInsn.OpCode := $2C08044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(64));
end;

procedure TMemoryTest.Test138;
begin
  // stnp d10, d1, [x2].
  FInsn.OpCode := $6C00044A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TMemoryTest.Test139;
begin
  // ldr w0, [x0, x0].
  FInsn.OpCode := $B8606800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
end;

procedure TMemoryTest.Test140;
begin
  // ldr w0, [x0, x0, lsl #2].
  FInsn.OpCode := $B8607800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TMemoryTest.Test141;
begin
  // ldr x0, [x0, x0].
  FInsn.OpCode := $F8606800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
end;

procedure TMemoryTest.Test142;
begin
  // ldr x0, [x0, x0, lsl #3].
  FInsn.OpCode := $F8607800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TMemoryTest.Test143;
begin
  // ldr x0, [x0, x0, sxtx].
  FInsn.OpCode := $F860E800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TMemoryTest.Test144;
begin
  // ldr b1, [x1, x2].
  FInsn.OpCode := $3C626821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
end;

procedure TMemoryTest.Test145;
begin
  // ldr b1, [x1, x2, lsl #0].
  FInsn.OpCode := $3C627821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TMemoryTest.Test146;
begin
  // ldr h1, [x1, x2].
  FInsn.OpCode := $7C626821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
end;

procedure TMemoryTest.Test147;
begin
  // ldr h1, [x1, x2, lsl #1].
  FInsn.OpCode := $7C627821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TMemoryTest.Test148;
begin
  // ldr s1, [x1, x2].
  FInsn.OpCode := $BC626821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
end;

procedure TMemoryTest.Test149;
begin
  // ldr s1, [x1, x2, lsl #2].
  FInsn.OpCode := $BC627821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TMemoryTest.Test150;
begin
  // ldr d1, [x1, x2].
  FInsn.OpCode := $FC626821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
end;

procedure TMemoryTest.Test151;
begin
  // ldr d1, [x1, x2, lsl #3].
  FInsn.OpCode := $FC627821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TMemoryTest.Test152;
begin
  // ldr q1, [x1, x2].
  FInsn.OpCode := $3CE26821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
end;

procedure TMemoryTest.Test153;
begin
  // ldr q1, [x1, x2, lsl #4].
  FInsn.OpCode := $3CE27821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TMemoryTest.Test154;
begin
  // str d1, [sp, x3].
  FInsn.OpCode := $FC236BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
end;

procedure TMemoryTest.Test155;
begin
  // str d1, [sp, w3, uxtw #3].
  FInsn.OpCode := $FC235BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TMemoryTest.Test156;
begin
  // str q1, [sp, x3].
  FInsn.OpCode := $3CA36BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
end;

procedure TMemoryTest.Test157;
begin
  // str q1, [sp, w3, uxtw #4].
  FInsn.OpCode := $3CA35BE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TMemoryTest.Test158;
begin
  // ldxrb w6, [x1].
  FInsn.OpCode := $085F7C26;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test159;
begin
  // ldxrh w6, [x1].
  FInsn.OpCode := $485F7C26;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test160;
begin
  // ldxp w7, w3, [x9].
  FInsn.OpCode := $887F0D27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X9);
end;

procedure TMemoryTest.Test161;
begin
  // ldxp x7, x3, [x9].
  FInsn.OpCode := $C87F0D27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X9);
end;

procedure TMemoryTest.Test162;
begin
  // stxr w1, x4, [x3].
  FInsn.OpCode := $C8017C64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test163;
begin
  // stxr w1, w4, [x3].
  FInsn.OpCode := $88017C64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test164;
begin
  // stxrb w1, w4, [x3].
  FInsn.OpCode := $08017C64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test165;
begin
  // stxrh w1, w4, [x3].
  FInsn.OpCode := $48017C64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
end;

procedure TMemoryTest.Test166;
begin
  // stxp w1, x2, x6, [x1].
  FInsn.OpCode := $C8211822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test167;
begin
  // stxp w1, w2, w6, [x1].
  FInsn.OpCode := $88211822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test168;
begin
  // ldar w4, [sp].
  FInsn.OpCode := $88DFFFE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TMemoryTest.Test169;
begin
  // ldar x4, [sp].
  FInsn.OpCode := $C8DFFFE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TMemoryTest.Test170;
begin
  // ldarb w4, [sp].
  FInsn.OpCode := $08DFFFE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDARB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TMemoryTest.Test171;
begin
  // ldarh w4, [sp].
  FInsn.OpCode := $48DFFFE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDARH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TMemoryTest.Test172;
begin
  // stlr w3, [x6].
  FInsn.OpCode := $889FFCC3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
end;

procedure TMemoryTest.Test173;
begin
  // stlr x3, [x6].
  FInsn.OpCode := $C89FFCC3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
end;

procedure TMemoryTest.Test174;
begin
  // stlrb w3, [x6].
  FInsn.OpCode := $089FFCC3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
end;

procedure TMemoryTest.Test175;
begin
  // stlrh w3, [x6].
  FInsn.OpCode := $489FFCC3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
end;

procedure TMemoryTest.Test176;
begin
  // ldaxr w2, [x4].
  FInsn.OpCode := $885FFC82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
end;

procedure TMemoryTest.Test177;
begin
  // ldaxr x2, [x4].
  FInsn.OpCode := $C85FFC82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
end;

procedure TMemoryTest.Test178;
begin
  // ldaxrb w2, [x4].
  FInsn.OpCode := $085FFC82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
end;

procedure TMemoryTest.Test179;
begin
  // ldaxrh w2, [x4].
  FInsn.OpCode := $485FFC82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
end;

procedure TMemoryTest.Test180;
begin
  // ldaxp w2, w6, [x1].
  FInsn.OpCode := $887F9822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test181;
begin
  // ldaxp x2, x6, [x1].
  FInsn.OpCode := $C87F9822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test182;
begin
  // stlxr w8, x7, [x1].
  FInsn.OpCode := $C808FC27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test183;
begin
  // stlxr w8, w7, [x1].
  FInsn.OpCode := $8808FC27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test184;
begin
  // stlxrb w8, w7, [x1].
  FInsn.OpCode := $0808FC27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test185;
begin
  // stlxrh w8, w7, [x1].
  FInsn.OpCode := $4808FC27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test186;
begin
  // stlxp w1, x2, x6, [x1].
  FInsn.OpCode := $C8219822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test187;
begin
  // stlxp w1, w2, w6, [x1].
  FInsn.OpCode := $88219822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X1);
end;

procedure TMemoryTest.Test188;
begin
  // ldur x11, [x29, #-8].
  FInsn.OpCode := $F85F83AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
end;

procedure TMemoryTest.Test189;
begin
  // ldur x11, [x29, #7].
  FInsn.OpCode := $F84073AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(7));
end;

procedure TMemoryTest.Test190;
begin
  // ldur w0, [x0, #2].
  FInsn.OpCode := $B8402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TMemoryTest.Test191;
begin
  // ldur w0, [x0, #-256].
  FInsn.OpCode := $B8500000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TMemoryTest.Test192;
begin
  // ldur b2, [x1, #-2].
  FInsn.OpCode := $3C5FE022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-2));
end;

procedure TMemoryTest.Test193;
begin
  // ldur h3, [x2, #3].
  FInsn.OpCode := $7C403043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
end;

procedure TMemoryTest.Test194;
begin
  // ldur h3, [x3, #-4].
  FInsn.OpCode := $7C5FC063;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-4));
end;

procedure TMemoryTest.Test195;
begin
  // ldur s3, [x4, #3].
  FInsn.OpCode := $BC403083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
end;

procedure TMemoryTest.Test196;
begin
  // ldur s3, [x5, #-4].
  FInsn.OpCode := $BC5FC0A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-4));
end;

procedure TMemoryTest.Test197;
begin
  // ldur d4, [x6, #4].
  FInsn.OpCode := $FC4040C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TMemoryTest.Test198;
begin
  // ldur d4, [x7, #-8].
  FInsn.OpCode := $FC5F80E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
end;

procedure TMemoryTest.Test199;
begin
  // ldur q5, [x8, #8].
  FInsn.OpCode := $3CC08105;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TMemoryTest.Test200;
begin
  // ldur q5, [x9, #-16].
  FInsn.OpCode := $3CDF0125;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test201;
begin
  // stur x11, [x29, #-8].
  FInsn.OpCode := $F81F83AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
end;

procedure TMemoryTest.Test202;
begin
  // stur x11, [x29, #7].
  FInsn.OpCode := $F80073AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(7));
end;

procedure TMemoryTest.Test203;
begin
  // stur w0, [x0, #2].
  FInsn.OpCode := $B8002000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TMemoryTest.Test204;
begin
  // stur w0, [x0, #-256].
  FInsn.OpCode := $B8100000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TMemoryTest.Test205;
begin
  // stur b2, [x1, #-2].
  FInsn.OpCode := $3C1FE022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-2));
end;

procedure TMemoryTest.Test206;
begin
  // stur h3, [x2, #3].
  FInsn.OpCode := $7C003043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
end;

procedure TMemoryTest.Test207;
begin
  // stur h3, [x3, #-4].
  FInsn.OpCode := $7C1FC063;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-4));
end;

procedure TMemoryTest.Test208;
begin
  // stur s3, [x4, #3].
  FInsn.OpCode := $BC003083;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
end;

procedure TMemoryTest.Test209;
begin
  // stur s3, [x5, #-4].
  FInsn.OpCode := $BC1FC0A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-4));
end;

procedure TMemoryTest.Test210;
begin
  // stur d4, [x6, #4].
  FInsn.OpCode := $FC0040C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TMemoryTest.Test211;
begin
  // stur d4, [x7, #-8].
  FInsn.OpCode := $FC1F80E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-8));
end;

procedure TMemoryTest.Test212;
begin
  // stur q5, [x8, #8].
  FInsn.OpCode := $3C808105;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TMemoryTest.Test213;
begin
  // stur q5, [x9, #-16].
  FInsn.OpCode := $3C9F0125;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-16));
end;

procedure TMemoryTest.Test214;
begin
  // ldurb w3, [x1, #-1].
  FInsn.OpCode := $385FF023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test215;
begin
  // ldurh w4, [x2, #1].
  FInsn.OpCode := $78401044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test216;
begin
  // ldurh w5, [x3, #-1].
  FInsn.OpCode := $785FF065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test217;
begin
  // ldursb w6, [x4, #-1].
  FInsn.OpCode := $38DFF086;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test218;
begin
  // ldursb x7, [x5, #-1].
  FInsn.OpCode := $389FF0A7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test219;
begin
  // ldursh w8, [x6, #1].
  FInsn.OpCode := $78C010C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test220;
begin
  // ldursh w9, [x7, #-1].
  FInsn.OpCode := $78DFF0E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test221;
begin
  // ldursh x1, [x8, #1].
  FInsn.OpCode := $78801101;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test222;
begin
  // ldursh x2, [x9, #-1].
  FInsn.OpCode := $789FF122;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test223;
begin
  // ldursw x3, [x10, #10].
  FInsn.OpCode := $B880A143;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(10));
end;

procedure TMemoryTest.Test224;
begin
  // ldursw x4, [x11, #-1].
  FInsn.OpCode := $B89FF164;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test225;
begin
  // sturb w3, [x1, #-1].
  FInsn.OpCode := $381FF023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TMemoryTest.Test226;
begin
  // sturh w4, [x2, #1].
  FInsn.OpCode := $78001044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TMemoryTest.Test227;
begin
  // sturh w5, [x3, #-1].
  FInsn.OpCode := $781FF065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

initialization
  TDUnitX.RegisterTestFixture(TMemoryTest);

end.
