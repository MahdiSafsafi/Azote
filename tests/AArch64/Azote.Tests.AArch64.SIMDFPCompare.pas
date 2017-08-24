// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-scalar-fp-compare.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDFPCompare;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDFPCompareTest = class(TObject)
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
  end;

implementation

procedure TSIMDFPCompareTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDFPCompareTest.TearDown;
begin

end;	

procedure TSIMDFPCompareTest.Test1;
begin
  // fcmeq h10, h11, h12.
  FInsn.OpCode := $5E4C256A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_H12);
end;

procedure TSIMDFPCompareTest.Test2;
begin
  // fcmeq s10, s11, s12.
  FInsn.OpCode := $5E2CE56A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S12);
end;

procedure TSIMDFPCompareTest.Test3;
begin
  // fcmeq d20, d21, d22.
  FInsn.OpCode := $5E76E6B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D22);
end;

procedure TSIMDFPCompareTest.Test4;
begin
  // fcmeq h10, h11, #0.0.
  FInsn.OpCode := $5EF8D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test5;
begin
  // fcmeq s10, s11, #0.0.
  FInsn.OpCode := $5EA0D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test6;
begin
  // fcmeq d20, d21, #0.0.
  FInsn.OpCode := $5EE0DAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test7;
begin
  // fcmeq h10, h11, #0.0.
  FInsn.OpCode := $5EF8D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test8;
begin
  // fcmeq s10, s11, #0.0.
  FInsn.OpCode := $5EA0D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test9;
begin
  // fcmeq d20, d21, #0.0.
  FInsn.OpCode := $5EE0DAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test10;
begin
  // fcmge h10, h11, h12.
  FInsn.OpCode := $7E4C256A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_H12);
end;

procedure TSIMDFPCompareTest.Test11;
begin
  // fcmge s10, s11, s12.
  FInsn.OpCode := $7E2CE56A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S12);
end;

procedure TSIMDFPCompareTest.Test12;
begin
  // fcmge d20, d21, d22.
  FInsn.OpCode := $7E76E6B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D22);
end;

procedure TSIMDFPCompareTest.Test13;
begin
  // fcmge h10, h11, #0.0.
  FInsn.OpCode := $7EF8C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test14;
begin
  // fcmge s10, s11, #0.0.
  FInsn.OpCode := $7EA0C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test15;
begin
  // fcmge d20, d21, #0.0.
  FInsn.OpCode := $7EE0CAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test16;
begin
  // fcmge h10, h11, #0.0.
  FInsn.OpCode := $7EF8C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test17;
begin
  // fcmge s10, s11, #0.0.
  FInsn.OpCode := $7EA0C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test18;
begin
  // fcmge d20, d21, #0.0.
  FInsn.OpCode := $7EE0CAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test19;
begin
  // fcmgt h10, h11, h12.
  FInsn.OpCode := $7ECC256A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_H12);
end;

procedure TSIMDFPCompareTest.Test20;
begin
  // fcmgt s10, s11, s12.
  FInsn.OpCode := $7EACE56A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S12);
end;

procedure TSIMDFPCompareTest.Test21;
begin
  // fcmgt d20, d21, d22.
  FInsn.OpCode := $7EF6E6B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D22);
end;

procedure TSIMDFPCompareTest.Test22;
begin
  // fcmgt h10, h11, #0.0.
  FInsn.OpCode := $5EF8C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test23;
begin
  // fcmgt s10, s11, #0.0.
  FInsn.OpCode := $5EA0C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test24;
begin
  // fcmgt d20, d21, #0.0.
  FInsn.OpCode := $5EE0CAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test25;
begin
  // fcmgt h10, h11, #0.0.
  FInsn.OpCode := $5EF8C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test26;
begin
  // fcmgt s10, s11, #0.0.
  FInsn.OpCode := $5EA0C96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test27;
begin
  // fcmgt d20, d21, #0.0.
  FInsn.OpCode := $5EE0CAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test28;
begin
  // fcmle h10, h11, #0.0.
  FInsn.OpCode := $7EF8D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test29;
begin
  // fcmle s10, s11, #0.0.
  FInsn.OpCode := $7EA0D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test30;
begin
  // fcmle d20, d21, #0.0.
  FInsn.OpCode := $7EE0DAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test31;
begin
  // fcmle h10, h11, #0.0.
  FInsn.OpCode := $7EF8D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test32;
begin
  // fcmle s10, s11, #0.0.
  FInsn.OpCode := $7EA0D96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test33;
begin
  // fcmle d20, d21, #0.0.
  FInsn.OpCode := $7EE0DAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test34;
begin
  // fcmlt h10, h11, #0.0.
  FInsn.OpCode := $5EF8E96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test35;
begin
  // fcmlt s10, s11, #0.0.
  FInsn.OpCode := $5EA0E96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test36;
begin
  // fcmlt d20, d21, #0.0.
  FInsn.OpCode := $5EE0EAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test37;
begin
  // fcmlt h10, h11, #0.0.
  FInsn.OpCode := $5EF8E96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test38;
begin
  // fcmlt s10, s11, #0.0.
  FInsn.OpCode := $5EA0E96A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test39;
begin
  // fcmlt d20, d21, #0.0.
  FInsn.OpCode := $5EE0EAB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TSIMDFPCompareTest.Test40;
begin
  // facge h10, h11, h12.
  FInsn.OpCode := $7E4C2D6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_H12);
end;

procedure TSIMDFPCompareTest.Test41;
begin
  // facge s10, s11, s12.
  FInsn.OpCode := $7E2CED6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S12);
end;

procedure TSIMDFPCompareTest.Test42;
begin
  // facge d20, d21, d22.
  FInsn.OpCode := $7E76EEB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D22);
end;

procedure TSIMDFPCompareTest.Test43;
begin
  // facgt h10, h11, h12.
  FInsn.OpCode := $7ECC2D6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_H12);
end;

procedure TSIMDFPCompareTest.Test44;
begin
  // facgt s10, s11, s12.
  FInsn.OpCode := $7EACED6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S12);
end;

procedure TSIMDFPCompareTest.Test45;
begin
  // facgt d20, d21, d22.
  FInsn.OpCode := $7EF6EEB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D22);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDFPCompareTest);

end.
