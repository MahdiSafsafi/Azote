// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-2velem.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Elements;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TElementsTest = class(TObject)
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
  end;

implementation

procedure TElementsTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TElementsTest.TearDown;
begin

end;	

procedure TElementsTest.Test1;
begin
  // mla v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $2F820820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test2;
begin
  // mla v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $2F960820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test3;
begin
  // mla v3.4s, v8.4s, v2.s[1].
  FInsn.OpCode := $6FA20103;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test4;
begin
  // mla v3.4s, v8.4s, v22.s[3].
  FInsn.OpCode := $6FB60903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TElementsTest.Test5;
begin
  // mla v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $2F620020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test6;
begin
  // mla v0.4h, v1.4h, v15.h[2].
  FInsn.OpCode := $2F6F0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test7;
begin
  // mla v0.8h, v1.8h, v2.h[7].
  FInsn.OpCode := $6F720820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TElementsTest.Test8;
begin
  // mla v0.8h, v1.8h, v14.h[6].
  FInsn.OpCode := $6F6E0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(6));
end;

procedure TElementsTest.Test9;
begin
  // mls v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $2F824820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test10;
begin
  // mls v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $2F964820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test11;
begin
  // mls v3.4s, v8.4s, v2.s[1].
  FInsn.OpCode := $6FA24103;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test12;
begin
  // mls v3.4s, v8.4s, v22.s[3].
  FInsn.OpCode := $6FB64903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TElementsTest.Test13;
begin
  // mls v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $2F624020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test14;
begin
  // mls v0.4h, v1.4h, v15.h[2].
  FInsn.OpCode := $2F6F4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test15;
begin
  // mls v0.8h, v1.8h, v2.h[7].
  FInsn.OpCode := $6F724820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TElementsTest.Test16;
begin
  // mls v0.8h, v1.8h, v14.h[6].
  FInsn.OpCode := $6F6E4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(6));
end;

procedure TElementsTest.Test17;
begin
  // fmla v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $0F221020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test18;
begin
  // fmla v3.8h, v8.8h, v2.h[1].
  FInsn.OpCode := $4F121103;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test19;
begin
  // fmla v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $0F821820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test20;
begin
  // fmla v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $0F961820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test21;
begin
  // fmla v3.4s, v8.4s, v2.s[1].
  FInsn.OpCode := $4FA21103;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test22;
begin
  // fmla v3.4s, v8.4s, v22.s[3].
  FInsn.OpCode := $4FB61903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TElementsTest.Test23;
begin
  // fmla v0.2d, v1.2d, v2.d[1].
  FInsn.OpCode := $4FC21820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test24;
begin
  // fmla v0.2d, v1.2d, v22.d[1].
  FInsn.OpCode := $4FD61820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test25;
begin
  // fmls v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $0F225020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test26;
begin
  // fmls v3.8h, v8.8h, v2.h[1].
  FInsn.OpCode := $4F125103;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test27;
begin
  // fmls v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $0F825820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test28;
begin
  // fmls v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $0F965820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test29;
begin
  // fmls v3.4s, v8.4s, v2.s[1].
  FInsn.OpCode := $4FA25103;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test30;
begin
  // fmls v3.4s, v8.4s, v22.s[3].
  FInsn.OpCode := $4FB65903;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TElementsTest.Test31;
begin
  // fmls v0.2d, v1.2d, v2.d[1].
  FInsn.OpCode := $4FC25820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test32;
begin
  // fmls v0.2d, v1.2d, v22.d[1].
  FInsn.OpCode := $4FD65820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test33;
begin
  // smlal v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $0F622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test34;
begin
  // smlal v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $0F822820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test35;
begin
  // smlal v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $0F962820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test36;
begin
  // smlal2 v0.4s, v1.8h, v1.h[2].
  FInsn.OpCode := $4F612020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test37;
begin
  // smlal2 v0.2d, v1.4s, v1.s[2].
  FInsn.OpCode := $4F812820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test38;
begin
  // smlal2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $4F962820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test39;
begin
  // smlsl v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $0F626020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test40;
begin
  // smlsl v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $0F826820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test41;
begin
  // smlsl v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $0F966820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test42;
begin
  // smlsl2 v0.4s, v1.8h, v1.h[2].
  FInsn.OpCode := $4F616020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test43;
begin
  // smlsl2 v0.2d, v1.4s, v1.s[2].
  FInsn.OpCode := $4F816820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test44;
begin
  // smlsl2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $4F966820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test45;
begin
  // sqdmlal v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $0F623020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test46;
begin
  // sqdmlal v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $0F823820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test47;
begin
  // sqdmlal v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $0F963820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test48;
begin
  // sqdmlal2 v0.4s, v1.8h, v1.h[2].
  FInsn.OpCode := $4F613020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test49;
begin
  // sqdmlal2 v0.2d, v1.4s, v1.s[2].
  FInsn.OpCode := $4F813820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test50;
begin
  // sqdmlal2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $4F963820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test51;
begin
  // umlal v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $2F622020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test52;
begin
  // umlal v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $2F822820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test53;
begin
  // umlal v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $2F962820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test54;
begin
  // umlal2 v0.4s, v1.8h, v1.h[2].
  FInsn.OpCode := $6F612020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test55;
begin
  // umlal2 v0.2d, v1.4s, v1.s[2].
  FInsn.OpCode := $6F812820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test56;
begin
  // umlal2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $6F962820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test57;
begin
  // umlsl v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $2F626020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test58;
begin
  // umlsl v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $2F826820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test59;
begin
  // umlsl v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $2F966820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test60;
begin
  // umlsl2 v0.4s, v1.8h, v1.h[2].
  FInsn.OpCode := $6F616020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test61;
begin
  // umlsl2 v0.2d, v1.4s, v1.s[2].
  FInsn.OpCode := $6F816820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test62;
begin
  // umlsl2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $6F966820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test63;
begin
  // sqdmlsl v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $0F627020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test64;
begin
  // sqdmlsl v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $0F827820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test65;
begin
  // sqdmlsl v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $0F967820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test66;
begin
  // sqdmlsl2 v0.4s, v1.8h, v1.h[2].
  FInsn.OpCode := $4F617020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test67;
begin
  // sqdmlsl2 v0.2d, v1.4s, v1.s[2].
  FInsn.OpCode := $4F817820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test68;
begin
  // sqdmlsl2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $4F967820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test69;
begin
  // mul v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $0F628020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test70;
begin
  // mul v0.8h, v1.8h, v2.h[2].
  FInsn.OpCode := $4F628020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test71;
begin
  // mul v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $0F828820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test72;
begin
  // mul v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $0F968820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test73;
begin
  // mul v0.4s, v1.4s, v2.s[2].
  FInsn.OpCode := $4F828820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test74;
begin
  // mul v0.4s, v1.4s, v22.s[2].
  FInsn.OpCode := $4F968820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test75;
begin
  // fmul v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $0F229020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test76;
begin
  // fmul v0.8h, v1.8h, v2.h[2].
  FInsn.OpCode := $4F229020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test77;
begin
  // fmul v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $0F829820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test78;
begin
  // fmul v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $0F969820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test79;
begin
  // fmul v0.4s, v1.4s, v2.s[2].
  FInsn.OpCode := $4F829820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test80;
begin
  // fmul v0.4s, v1.4s, v22.s[2].
  FInsn.OpCode := $4F969820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test81;
begin
  // fmul v0.2d, v1.2d, v2.d[1].
  FInsn.OpCode := $4FC29820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test82;
begin
  // fmul v0.2d, v1.2d, v22.d[1].
  FInsn.OpCode := $4FD69820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test83;
begin
  // fmulx v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $2F229020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test84;
begin
  // fmulx v0.8h, v1.8h, v2.h[2].
  FInsn.OpCode := $6F229020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test85;
begin
  // fmulx v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $2F829820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test86;
begin
  // fmulx v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $2F969820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test87;
begin
  // fmulx v0.4s, v1.4s, v2.s[2].
  FInsn.OpCode := $6F829820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test88;
begin
  // fmulx v0.4s, v1.4s, v22.s[2].
  FInsn.OpCode := $6F969820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test89;
begin
  // fmulx v0.2d, v1.2d, v2.d[1].
  FInsn.OpCode := $6FC29820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test90;
begin
  // fmulx v0.2d, v1.2d, v22.d[1].
  FInsn.OpCode := $6FD69820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TElementsTest.Test91;
begin
  // smull v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $0F62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test92;
begin
  // smull v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $0F82A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test93;
begin
  // smull v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $0F96A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test94;
begin
  // smull2 v0.4s, v1.8h, v2.h[2].
  FInsn.OpCode := $4F62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test95;
begin
  // smull2 v0.2d, v1.4s, v2.s[2].
  FInsn.OpCode := $4F82A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test96;
begin
  // smull2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $4F96A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test97;
begin
  // umull v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $2F62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test98;
begin
  // umull v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $2F82A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test99;
begin
  // umull v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $2F96A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test100;
begin
  // umull2 v0.4s, v1.8h, v2.h[2].
  FInsn.OpCode := $6F62A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test101;
begin
  // umull2 v0.2d, v1.4s, v2.s[2].
  FInsn.OpCode := $6F82A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test102;
begin
  // umull2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $6F96A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test103;
begin
  // sqdmull v0.4s, v1.4h, v2.h[2].
  FInsn.OpCode := $0F62B020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test104;
begin
  // sqdmull v0.2d, v1.2s, v2.s[2].
  FInsn.OpCode := $0F82B820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test105;
begin
  // sqdmull v0.2d, v1.2s, v22.s[2].
  FInsn.OpCode := $0F96B820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test106;
begin
  // sqdmull2 v0.4s, v1.8h, v2.h[2].
  FInsn.OpCode := $4F62B020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test107;
begin
  // sqdmull2 v0.2d, v1.4s, v2.s[2].
  FInsn.OpCode := $4F82B820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test108;
begin
  // sqdmull2 v0.2d, v1.4s, v22.s[2].
  FInsn.OpCode := $4F96B820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test109;
begin
  // sqdmulh v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $0F62C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test110;
begin
  // sqdmulh v0.8h, v1.8h, v2.h[2].
  FInsn.OpCode := $4F62C020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test111;
begin
  // sqdmulh v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $0F82C820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test112;
begin
  // sqdmulh v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $0F96C820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test113;
begin
  // sqdmulh v0.4s, v1.4s, v2.s[2].
  FInsn.OpCode := $4F82C820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test114;
begin
  // sqdmulh v0.4s, v1.4s, v22.s[2].
  FInsn.OpCode := $4F96C820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test115;
begin
  // sqrdmulh v0.4h, v1.4h, v2.h[2].
  FInsn.OpCode := $0F62D020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test116;
begin
  // sqrdmulh v0.8h, v1.8h, v2.h[2].
  FInsn.OpCode := $4F62D020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test117;
begin
  // sqrdmulh v0.2s, v1.2s, v2.s[2].
  FInsn.OpCode := $0F82D820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test118;
begin
  // sqrdmulh v0.2s, v1.2s, v22.s[2].
  FInsn.OpCode := $0F96D820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test119;
begin
  // sqrdmulh v0.4s, v1.4s, v2.s[2].
  FInsn.OpCode := $4F82D820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TElementsTest.Test120;
begin
  // sqrdmulh v0.4s, v1.4s, v22.s[2].
  FInsn.OpCode := $4F96D820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[2].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

initialization
  TDUnitX.RegisterTestFixture(TElementsTest);

end.
