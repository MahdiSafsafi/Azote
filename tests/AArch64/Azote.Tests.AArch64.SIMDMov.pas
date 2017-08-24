// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-mov.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDMov;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDMovTest = class(TObject)
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
  end;

implementation

procedure TSIMDMovTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDMovTest.TearDown;
begin

end;	

procedure TSIMDMovTest.Test1;
begin
  // movi v0.2s, #0x1.
  FInsn.OpCode := $0F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test2;
begin
  // movi v1.2s, #0x0.
  FInsn.OpCode := $0F000401;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($0));
end;

procedure TSIMDMovTest.Test3;
begin
  // movi v15.2s, #0x1, lsl #8.
  FInsn.OpCode := $0F00242F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test4;
begin
  // movi v16.2s, #0x1, lsl #16.
  FInsn.OpCode := $0F004430;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test5;
begin
  // movi v31.2s, #0x1, lsl #24.
  FInsn.OpCode := $0F00643F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test6;
begin
  // movi v0.4s, #0x1.
  FInsn.OpCode := $4F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test7;
begin
  // movi v0.4s, #0x1, lsl #8.
  FInsn.OpCode := $4F002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test8;
begin
  // movi v0.4s, #0x1, lsl #16.
  FInsn.OpCode := $4F004420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test9;
begin
  // movi v0.4s, #0x1, lsl #24.
  FInsn.OpCode := $4F006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test10;
begin
  // movi v0.4h, #0x1.
  FInsn.OpCode := $0F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test11;
begin
  // movi v0.4h, #0x1, lsl #8.
  FInsn.OpCode := $0F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test12;
begin
  // movi v0.8h, #0x1.
  FInsn.OpCode := $4F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test13;
begin
  // movi v0.8h, #0x1, lsl #8.
  FInsn.OpCode := $4F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test14;
begin
  // mvni v0.2s, #0x1.
  FInsn.OpCode := $2F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test15;
begin
  // mvni v1.2s, #0x0.
  FInsn.OpCode := $2F000401;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($0));
end;

procedure TSIMDMovTest.Test16;
begin
  // mvni v0.2s, #0x1, lsl #8.
  FInsn.OpCode := $2F002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test17;
begin
  // mvni v0.2s, #0x1, lsl #16.
  FInsn.OpCode := $2F004420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test18;
begin
  // mvni v0.2s, #0x1, lsl #24.
  FInsn.OpCode := $2F006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test19;
begin
  // mvni v0.4s, #0x1.
  FInsn.OpCode := $6F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test20;
begin
  // mvni v15.4s, #0x1, lsl #8.
  FInsn.OpCode := $6F00242F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test21;
begin
  // mvni v16.4s, #0x1, lsl #16.
  FInsn.OpCode := $6F004430;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test22;
begin
  // mvni v31.4s, #0x1, lsl #24.
  FInsn.OpCode := $6F00643F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test23;
begin
  // mvni v0.4h, #0x1.
  FInsn.OpCode := $2F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test24;
begin
  // mvni v0.4h, #0x1, lsl #8.
  FInsn.OpCode := $2F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test25;
begin
  // mvni v0.8h, #0x1.
  FInsn.OpCode := $6F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test26;
begin
  // mvni v0.8h, #0x1, lsl #8.
  FInsn.OpCode := $6F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test27;
begin
  // bic v0.2s, #0x1.
  FInsn.OpCode := $2F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test28;
begin
  // bic v1.2s, #0x0.
  FInsn.OpCode := $2F001401;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($0));
end;

procedure TSIMDMovTest.Test29;
begin
  // bic v0.2s, #0x1, lsl #8.
  FInsn.OpCode := $2F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test30;
begin
  // bic v0.2s, #0x1, lsl #16.
  FInsn.OpCode := $2F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test31;
begin
  // bic v0.2s, #0x1, lsl #24.
  FInsn.OpCode := $2F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test32;
begin
  // bic v0.4s, #0x1.
  FInsn.OpCode := $6F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test33;
begin
  // bic v0.4s, #0x1, lsl #8.
  FInsn.OpCode := $6F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test34;
begin
  // bic v0.4s, #0x1, lsl #16.
  FInsn.OpCode := $6F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test35;
begin
  // bic v0.4s, #0x1, lsl #24.
  FInsn.OpCode := $6F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test36;
begin
  // bic v15.4h, #0x1.
  FInsn.OpCode := $2F00942F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test37;
begin
  // bic v16.4h, #0x1, lsl #8.
  FInsn.OpCode := $2F00B430;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test38;
begin
  // bic v0.8h, #0x1.
  FInsn.OpCode := $6F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test39;
begin
  // bic v31.8h, #0x1, lsl #8.
  FInsn.OpCode := $6F00B43F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test40;
begin
  // orr v0.2s, #0x1.
  FInsn.OpCode := $0F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test41;
begin
  // orr v1.2s, #0x0.
  FInsn.OpCode := $0F001401;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($0));
end;

procedure TSIMDMovTest.Test42;
begin
  // orr v0.2s, #0x1, lsl #8.
  FInsn.OpCode := $0F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test43;
begin
  // orr v0.2s, #0x1, lsl #16.
  FInsn.OpCode := $0F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test44;
begin
  // orr v0.2s, #0x1, lsl #24.
  FInsn.OpCode := $0F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test45;
begin
  // orr v0.4s, #0x1.
  FInsn.OpCode := $4F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test46;
begin
  // orr v0.4s, #0x1, lsl #8.
  FInsn.OpCode := $4F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test47;
begin
  // orr v0.4s, #0x1, lsl #16.
  FInsn.OpCode := $4F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test48;
begin
  // orr v0.4s, #0x1, lsl #24.
  FInsn.OpCode := $4F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TSIMDMovTest.Test49;
begin
  // orr v31.4h, #0x1.
  FInsn.OpCode := $0F00943F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test50;
begin
  // orr v15.4h, #0x1, lsl #8.
  FInsn.OpCode := $0F00B42F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test51;
begin
  // orr v0.8h, #0x1.
  FInsn.OpCode := $4F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
end;

procedure TSIMDMovTest.Test52;
begin
  // orr v16.8h, #0x1, lsl #8.
  FInsn.OpCode := $4F00B430;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test53;
begin
  // movi v0.2s, #0x1, msl #8.
  FInsn.OpCode := $0F00C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test54;
begin
  // movi v1.2s, #0x1, msl #16.
  FInsn.OpCode := $0F00D421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test55;
begin
  // movi v0.4s, #0x1, msl #8.
  FInsn.OpCode := $4F00C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test56;
begin
  // movi v31.4s, #0x1, msl #16.
  FInsn.OpCode := $4F00D43F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test57;
begin
  // mvni v1.2s, #0x1, msl #8.
  FInsn.OpCode := $2F00C421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test58;
begin
  // mvni v0.2s, #0x1, msl #16.
  FInsn.OpCode := $2F00D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test59;
begin
  // mvni v31.4s, #0x1, msl #8.
  FInsn.OpCode := $6F00C43F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TSIMDMovTest.Test60;
begin
  // mvni v0.4s, #0x1, msl #16.
  FInsn.OpCode := $6F00D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TSIMDMovTest.Test61;
begin
  // movi v0.8b, #0x0.
  FInsn.OpCode := $0F00E400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($0));
end;

procedure TSIMDMovTest.Test62;
begin
  // movi v31.8b, #0xff.
  FInsn.OpCode := $0F07E7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($ff));
end;

procedure TSIMDMovTest.Test63;
begin
  // movi v15.16b, #0xf.
  FInsn.OpCode := $4F00E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($f));
end;

procedure TSIMDMovTest.Test64;
begin
  // movi v31.16b, #0x1f.
  FInsn.OpCode := $4F00E7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($1f));
end;

procedure TSIMDMovTest.Test65;
begin
  // movi v0.2d, #0xff00ff00ff00ff00.
  FInsn.OpCode := $6F05E540;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($ff00ff00ff00ff00));
end;

procedure TSIMDMovTest.Test66;
begin
  // movi d0, #0xff00ff00ff00ff00.
  FInsn.OpCode := $2F05E540;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($ff00ff00ff00ff00));
end;

procedure TSIMDMovTest.Test67;
begin
  // fmov v1.2s, #1.00000000.
  FInsn.OpCode := $0F03F601;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(1.00000000));
end;

procedure TSIMDMovTest.Test68;
begin
  // fmov v15.4s, #1.00000000.
  FInsn.OpCode := $4F03F60F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(1.00000000));
end;

procedure TSIMDMovTest.Test69;
begin
  // fmov v31.2d, #1.00000000.
  FInsn.OpCode := $6F03F61F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(1.00000000));
end;

procedure TSIMDMovTest.Test70;
begin
  // mov v0.8b, v31.8b.
  FInsn.OpCode := $0EBF1FE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMovTest.Test71;
begin
  // mov v15.16b, v16.16b.
  FInsn.OpCode := $4EB01E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

procedure TSIMDMovTest.Test72;
begin
  // mov v0.8b, v31.8b.
  FInsn.OpCode := $0EBF1FE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8B);
end;

procedure TSIMDMovTest.Test73;
begin
  // mov v15.16b, v16.16b.
  FInsn.OpCode := $4EB01E0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_16B);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDMovTest);

end.
