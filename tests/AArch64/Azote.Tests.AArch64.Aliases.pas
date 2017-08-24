// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-aliases.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Aliases;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TAliasesTest = class(TObject)
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
  end;

implementation

procedure TAliasesTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TAliasesTest.TearDown;
begin

end;	

procedure TAliasesTest.Test1;
begin
  // tst w1, #0x3.
  FInsn.OpCode := $7200043F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($3));
end;

procedure TAliasesTest.Test2;
begin
  // tst x1, #0x3.
  FInsn.OpCode := $F240043F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($3));
end;

procedure TAliasesTest.Test3;
begin
  // tst w1, w2.
  FInsn.OpCode := $6A02003F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TAliasesTest.Test4;
begin
  // tst x1, x2.
  FInsn.OpCode := $EA02003F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TAliasesTest.Test5;
begin
  // tst w1, w2, lsl #2.
  FInsn.OpCode := $6A02083F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TAliasesTest.Test6;
begin
  // tst x1, x2, lsl #3.
  FInsn.OpCode := $EA020C3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TAliasesTest.Test7;
begin
  // tst w3, w7, lsl #31.
  FInsn.OpCode := $6A077C7F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TAliasesTest.Test8;
begin
  // tst x2, x20, asr #0.
  FInsn.OpCode := $EA94005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TAliasesTest.Test9;
begin
  // cmn w1, #0x3.
  FInsn.OpCode := $31000C3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($3));
end;

procedure TAliasesTest.Test10;
begin
  // cmn x2, #0x400, lsl #12.
  FInsn.OpCode := $B150005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($400));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TAliasesTest.Test11;
begin
  // cmn w4, w5.
  FInsn.OpCode := $2B05009F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAliasesTest.Test12;
begin
  // cmn x6, x7.
  FInsn.OpCode := $AB0700DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
end;

procedure TAliasesTest.Test13;
begin
  // cmn w8, w9, asr #3.
  FInsn.OpCode := $2B890D1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TAliasesTest.Test14;
begin
  // cmn x2, x3, lsr #4.
  FInsn.OpCode := $AB43105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TAliasesTest.Test15;
begin
  // cmn x2, w3, uxtb #1.
  FInsn.OpCode := $AB23045F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TAliasesTest.Test16;
begin
  // cmn x4, x5, uxtx #1.
  FInsn.OpCode := $AB25649F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TAliasesTest.Test17;
begin
  // cmp w1, #0x400, lsl #12.
  FInsn.OpCode := $7150003F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($400));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TAliasesTest.Test18;
begin
  // cmp x2, #0x400.
  FInsn.OpCode := $F110005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($400));
end;

procedure TAliasesTest.Test19;
begin
  // cmp w4, w5.
  FInsn.OpCode := $6B05009F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAliasesTest.Test20;
begin
  // cmp x6, x7.
  FInsn.OpCode := $EB0700DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
end;

procedure TAliasesTest.Test21;
begin
  // cmp w8, w9, asr #3.
  FInsn.OpCode := $6B890D1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TAliasesTest.Test22;
begin
  // cmp x2, x3, lsr #4.
  FInsn.OpCode := $EB43105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TAliasesTest.Test23;
begin
  // cmp x2, w3, uxth #2.
  FInsn.OpCode := $EB23285F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TAliasesTest.Test24;
begin
  // cmp x4, x5, uxtx.
  FInsn.OpCode := $EB25609F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtx);
end;

procedure TAliasesTest.Test25;
begin
  // cmp wzr, w1.
  FInsn.OpCode := $6B0103FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
end;

procedure TAliasesTest.Test26;
begin
  // cmp x8, w8, uxtw.
  FInsn.OpCode := $EB28411F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TAliasesTest.Test27;
begin
  // cmp w9, w8, uxtw.
  FInsn.OpCode := $6B28413F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TAliasesTest.Test28;
begin
  // cmp wsp, w9.
  FInsn.OpCode := $6B2943FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TAliasesTest.Test29;
begin
  // mvn w4, w9.
  FInsn.OpCode := $2A2903E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TAliasesTest.Test30;
begin
  // mvn x2, x3.
  FInsn.OpCode := $AA2303E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
end;

procedure TAliasesTest.Test31;
begin
  // mvn w4, w9.
  FInsn.OpCode := $2A2903E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TAliasesTest.Test32;
begin
  // mvn w4, w9, lsl #1.
  FInsn.OpCode := $2A2907E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TAliasesTest.Test33;
begin
  // mvn x2, x3, lsl #1.
  FInsn.OpCode := $AA2307E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TAliasesTest.Test34;
begin
  // mvn w4, w9, lsl #1.
  FInsn.OpCode := $2A2907E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TAliasesTest.Test35;
begin
  // movi.16b v4, #0x0.
  FInsn.OpCode := $4F00E404;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($0));
end;

procedure TAliasesTest.Test36;
begin
  // movi.16b v4, #0x1.
  FInsn.OpCode := $4F00E424;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TAliasesTest.Test37;
begin
  // movi.8b v4, #0x2.
  FInsn.OpCode := $0F00E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($2));
end;

procedure TAliasesTest.Test38;
begin
  // movi.8b v4, #0x3.
  FInsn.OpCode := $0F00E464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($3));
end;

procedure TAliasesTest.Test39;
begin
  // movi.2d v1, #0x000000000000ff.
  FInsn.OpCode := $6F00E421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($000000000000ff));
end;

procedure TAliasesTest.Test40;
begin
  // movi.2d v2, #0x000000000000ff.
  FInsn.OpCode := $6F00E422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($000000000000ff));
end;

initialization
  TDUnitX.RegisterTestFixture(TAliasesTest);

end.
