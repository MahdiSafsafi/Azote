// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-logical-encoding.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Logical;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TLogicalTest = class(TObject)
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
  end;

implementation

procedure TLogicalTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TLogicalTest.TearDown;
begin

end;	

procedure TLogicalTest.Test1;
begin
  // and w0, w0, #0x1.
  FInsn.OpCode := $12000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($1));
end;

procedure TLogicalTest.Test2;
begin
  // and x0, x0, #0x1.
  FInsn.OpCode := $92400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($1));
end;

procedure TLogicalTest.Test3;
begin
  // and w1, w2, #0xf.
  FInsn.OpCode := $12000C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($f));
end;

procedure TLogicalTest.Test4;
begin
  // and x1, x2, #0xf.
  FInsn.OpCode := $92400C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($f));
end;

procedure TLogicalTest.Test5;
begin
  // and sp, x5, #0xfffffffffffffff0.
  FInsn.OpCode := $927CECBF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($fffffffffffffff0));
end;

procedure TLogicalTest.Test6;
begin
  // ands w0, w0, #0x1.
  FInsn.OpCode := $72000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($1));
end;

procedure TLogicalTest.Test7;
begin
  // ands x0, x0, #0x1.
  FInsn.OpCode := $F2400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($1));
end;

procedure TLogicalTest.Test8;
begin
  // ands w1, w2, #0xf.
  FInsn.OpCode := $72000C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($f));
end;

procedure TLogicalTest.Test9;
begin
  // ands x1, x2, #0xf.
  FInsn.OpCode := $F2400C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($f));
end;

procedure TLogicalTest.Test10;
begin
  // eor w1, w2, #0x4000.
  FInsn.OpCode := $52120041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($4000));
end;

procedure TLogicalTest.Test11;
begin
  // eor x1, x2, #0x8000.
  FInsn.OpCode := $D2710041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($8000));
end;

procedure TLogicalTest.Test12;
begin
  // orr w1, w2, #0x4000.
  FInsn.OpCode := $32120041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($4000));
end;

procedure TLogicalTest.Test13;
begin
  // orr x1, x2, #0x8000.
  FInsn.OpCode := $B2710041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($8000));
end;

procedure TLogicalTest.Test14;
begin
  // orr w8, wzr, #0x1.
  FInsn.OpCode := $320003E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($1));
end;

procedure TLogicalTest.Test15;
begin
  // orr x8, xzr, #0x1.
  FInsn.OpCode := $B24003E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($1));
end;

procedure TLogicalTest.Test16;
begin
  // and w1, w2, w3.
  FInsn.OpCode := $0A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test17;
begin
  // and x1, x2, x3.
  FInsn.OpCode := $8A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test18;
begin
  // and w1, w2, w3, lsl #2.
  FInsn.OpCode := $0A030841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test19;
begin
  // and x1, x2, x3, lsl #2.
  FInsn.OpCode := $8A030841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test20;
begin
  // and w1, w2, w3, lsr #2.
  FInsn.OpCode := $0A430841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test21;
begin
  // and x1, x2, x3, lsr #2.
  FInsn.OpCode := $8A430841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test22;
begin
  // and w1, w2, w3, asr #2.
  FInsn.OpCode := $0A830841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test23;
begin
  // and x1, x2, x3, asr #2.
  FInsn.OpCode := $8A830841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test24;
begin
  // and w1, w2, w3, ror #2.
  FInsn.OpCode := $0AC30841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test25;
begin
  // and x1, x2, x3, ror #2.
  FInsn.OpCode := $8AC30841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test26;
begin
  // ands w1, w2, w3.
  FInsn.OpCode := $6A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test27;
begin
  // ands x1, x2, x3.
  FInsn.OpCode := $EA030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test28;
begin
  // ands w1, w2, w3, lsl #2.
  FInsn.OpCode := $6A030841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test29;
begin
  // ands x1, x2, x3, lsl #2.
  FInsn.OpCode := $EA030841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test30;
begin
  // ands w1, w2, w3, lsr #2.
  FInsn.OpCode := $6A430841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test31;
begin
  // ands x1, x2, x3, lsr #2.
  FInsn.OpCode := $EA430841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test32;
begin
  // ands w1, w2, w3, asr #2.
  FInsn.OpCode := $6A830841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test33;
begin
  // ands x1, x2, x3, asr #2.
  FInsn.OpCode := $EA830841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test34;
begin
  // ands w1, w2, w3, ror #2.
  FInsn.OpCode := $6AC30841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test35;
begin
  // ands x1, x2, x3, ror #2.
  FInsn.OpCode := $EAC30841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TLogicalTest.Test36;
begin
  // bic w1, w2, w3.
  FInsn.OpCode := $0A230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test37;
begin
  // bic x1, x2, x3.
  FInsn.OpCode := $8A230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test38;
begin
  // bic w1, w2, w3, lsl #3.
  FInsn.OpCode := $0A230C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test39;
begin
  // bic x1, x2, x3, lsl #3.
  FInsn.OpCode := $8A230C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test40;
begin
  // bic w1, w2, w3, lsr #3.
  FInsn.OpCode := $0A630C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test41;
begin
  // bic x1, x2, x3, lsr #3.
  FInsn.OpCode := $8A630C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test42;
begin
  // bic w1, w2, w3, asr #3.
  FInsn.OpCode := $0AA30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test43;
begin
  // bic x1, x2, x3, asr #3.
  FInsn.OpCode := $8AA30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test44;
begin
  // bic w1, w2, w3, ror #3.
  FInsn.OpCode := $0AE30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test45;
begin
  // bic x1, x2, x3, ror #3.
  FInsn.OpCode := $8AE30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test46;
begin
  // bics w1, w2, w3.
  FInsn.OpCode := $6A230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test47;
begin
  // bics x1, x2, x3.
  FInsn.OpCode := $EA230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test48;
begin
  // bics w1, w2, w3, lsl #3.
  FInsn.OpCode := $6A230C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test49;
begin
  // bics x1, x2, x3, lsl #3.
  FInsn.OpCode := $EA230C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test50;
begin
  // bics w1, w2, w3, lsr #3.
  FInsn.OpCode := $6A630C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test51;
begin
  // bics x1, x2, x3, lsr #3.
  FInsn.OpCode := $EA630C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test52;
begin
  // bics w1, w2, w3, asr #3.
  FInsn.OpCode := $6AA30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test53;
begin
  // bics x1, x2, x3, asr #3.
  FInsn.OpCode := $EAA30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test54;
begin
  // bics w1, w2, w3, ror #3.
  FInsn.OpCode := $6AE30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test55;
begin
  // bics x1, x2, x3, ror #3.
  FInsn.OpCode := $EAE30C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(3));
end;

procedure TLogicalTest.Test56;
begin
  // eon w1, w2, w3.
  FInsn.OpCode := $4A230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test57;
begin
  // eon x1, x2, x3.
  FInsn.OpCode := $CA230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test58;
begin
  // eon w1, w2, w3, lsl #4.
  FInsn.OpCode := $4A231041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test59;
begin
  // eon x1, x2, x3, lsl #4.
  FInsn.OpCode := $CA231041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test60;
begin
  // eon w1, w2, w3, lsr #4.
  FInsn.OpCode := $4A631041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test61;
begin
  // eon x1, x2, x3, lsr #4.
  FInsn.OpCode := $CA631041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test62;
begin
  // eon w1, w2, w3, asr #4.
  FInsn.OpCode := $4AA31041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test63;
begin
  // eon x1, x2, x3, asr #4.
  FInsn.OpCode := $CAA31041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test64;
begin
  // eon w1, w2, w3, ror #4.
  FInsn.OpCode := $4AE31041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test65;
begin
  // eon x1, x2, x3, ror #4.
  FInsn.OpCode := $CAE31041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EON);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TLogicalTest.Test66;
begin
  // eor w1, w2, w3.
  FInsn.OpCode := $4A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test67;
begin
  // eor x1, x2, x3.
  FInsn.OpCode := $CA030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test68;
begin
  // eor w1, w2, w3, lsl #5.
  FInsn.OpCode := $4A031441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test69;
begin
  // eor x1, x2, x3, lsl #5.
  FInsn.OpCode := $CA031441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test70;
begin
  // eor w1, w2, w3, lsr #5.
  FInsn.OpCode := $4A431441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test71;
begin
  // eor x1, x2, x3, lsr #5.
  FInsn.OpCode := $CA431441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test72;
begin
  // eor w1, w2, w3, asr #5.
  FInsn.OpCode := $4A831441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test73;
begin
  // eor x1, x2, x3, asr #5.
  FInsn.OpCode := $CA831441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test74;
begin
  // eor w1, w2, w3, ror #5.
  FInsn.OpCode := $4AC31441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test75;
begin
  // eor x1, x2, x3, ror #5.
  FInsn.OpCode := $CAC31441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(5));
end;

procedure TLogicalTest.Test76;
begin
  // orr w1, w2, w3.
  FInsn.OpCode := $2A030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test77;
begin
  // orr x1, x2, x3.
  FInsn.OpCode := $AA030041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test78;
begin
  // orr w1, w2, w3, lsl #6.
  FInsn.OpCode := $2A031841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test79;
begin
  // orr x1, x2, x3, lsl #6.
  FInsn.OpCode := $AA031841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test80;
begin
  // orr w1, w2, w3, lsr #6.
  FInsn.OpCode := $2A431841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test81;
begin
  // orr x1, x2, x3, lsr #6.
  FInsn.OpCode := $AA431841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test82;
begin
  // orr w1, w2, w3, asr #6.
  FInsn.OpCode := $2A831841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test83;
begin
  // orr x1, x2, x3, asr #6.
  FInsn.OpCode := $AA831841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test84;
begin
  // orr w1, w2, w3, ror #6.
  FInsn.OpCode := $2AC31841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test85;
begin
  // orr x1, x2, x3, ror #6.
  FInsn.OpCode := $AAC31841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(6));
end;

procedure TLogicalTest.Test86;
begin
  // orn w1, w2, w3.
  FInsn.OpCode := $2A230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
end;

procedure TLogicalTest.Test87;
begin
  // orn x1, x2, x3.
  FInsn.OpCode := $AA230041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
end;

procedure TLogicalTest.Test88;
begin
  // orn w1, w2, w3, lsl #7.
  FInsn.OpCode := $2A231C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test89;
begin
  // orn x1, x2, x3, lsl #7.
  FInsn.OpCode := $AA231C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test90;
begin
  // orn w1, w2, w3, lsr #7.
  FInsn.OpCode := $2A631C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test91;
begin
  // orn x1, x2, x3, lsr #7.
  FInsn.OpCode := $AA631C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test92;
begin
  // orn w1, w2, w3, asr #7.
  FInsn.OpCode := $2AA31C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test93;
begin
  // orn x1, x2, x3, asr #7.
  FInsn.OpCode := $AAA31C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test94;
begin
  // orn w1, w2, w3, ror #7.
  FInsn.OpCode := $2AE31C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

procedure TLogicalTest.Test95;
begin
  // orn x1, x2, x3, ror #7.
  FInsn.OpCode := $AAE31C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(7));
end;

initialization
  TDUnitX.RegisterTestFixture(TLogicalTest);

end.
