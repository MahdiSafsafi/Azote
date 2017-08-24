// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-scalar-shift-imm.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDScalarShiftImm;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDScalarShiftImmTest = class(TObject)
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
  end;

implementation

procedure TSIMDScalarShiftImmTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDScalarShiftImmTest.TearDown;
begin

end;	

procedure TSIMDScalarShiftImmTest.Test1;
begin
  // sshr d15, d16, #12.
  FInsn.OpCode := $5F74060F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D16);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(12));
end;

procedure TSIMDScalarShiftImmTest.Test2;
begin
  // ushr d10, d17, #18.
  FInsn.OpCode := $7F6E062A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D17);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(18));
end;

procedure TSIMDScalarShiftImmTest.Test3;
begin
  // srshr d19, d18, #7.
  FInsn.OpCode := $5F792653;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D18);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TSIMDScalarShiftImmTest.Test4;
begin
  // urshr d20, d23, #31.
  FInsn.OpCode := $7F6126F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TSIMDScalarShiftImmTest.Test5;
begin
  // ssra d18, d12, #21.
  FInsn.OpCode := $5F6B1592;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(21));
end;

procedure TSIMDScalarShiftImmTest.Test6;
begin
  // usra d20, d13, #61.
  FInsn.OpCode := $7F4315B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(61));
end;

procedure TSIMDScalarShiftImmTest.Test7;
begin
  // srsra d15, d11, #19.
  FInsn.OpCode := $5F6D356F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(19));
end;

procedure TSIMDScalarShiftImmTest.Test8;
begin
  // ursra d18, d10, #13.
  FInsn.OpCode := $7F733552;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(13));
end;

procedure TSIMDScalarShiftImmTest.Test9;
begin
  // shl d7, d10, #12.
  FInsn.OpCode := $5F4C5547;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(12));
end;

procedure TSIMDScalarShiftImmTest.Test10;
begin
  // sqshl b11, b19, #7.
  FInsn.OpCode := $5F0F766B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_B19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TSIMDScalarShiftImmTest.Test11;
begin
  // sqshl h13, h18, #11.
  FInsn.OpCode := $5F1B764D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H18);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(11));
end;

procedure TSIMDScalarShiftImmTest.Test12;
begin
  // sqshl s14, s17, #22.
  FInsn.OpCode := $5F36762E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S17);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(22));
end;

procedure TSIMDScalarShiftImmTest.Test13;
begin
  // sqshl d15, d16, #51.
  FInsn.OpCode := $5F73760F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D16);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(51));
end;

procedure TSIMDScalarShiftImmTest.Test14;
begin
  // uqshl b18, b15, #6.
  FInsn.OpCode := $7F0E75F2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_B15);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TSIMDScalarShiftImmTest.Test15;
begin
  // uqshl h11, h18, #7.
  FInsn.OpCode := $7F17764B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H18);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TSIMDScalarShiftImmTest.Test16;
begin
  // uqshl s14, s19, #18.
  FInsn.OpCode := $7F32766E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(18));
end;

procedure TSIMDScalarShiftImmTest.Test17;
begin
  // uqshl d15, d12, #19.
  FInsn.OpCode := $7F53758F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(19));
end;

procedure TSIMDScalarShiftImmTest.Test18;
begin
  // sqshlu b15, b18, #6.
  FInsn.OpCode := $7F0E664F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_B18);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TSIMDScalarShiftImmTest.Test19;
begin
  // sqshlu h19, h17, #6.
  FInsn.OpCode := $7F166633;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H17);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TSIMDScalarShiftImmTest.Test20;
begin
  // sqshlu s16, s14, #25.
  FInsn.OpCode := $7F3965D0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(25));
end;

procedure TSIMDScalarShiftImmTest.Test21;
begin
  // sqshlu d11, d13, #32.
  FInsn.OpCode := $7F6065AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TSIMDScalarShiftImmTest.Test22;
begin
  // sri d10, d12, #14.
  FInsn.OpCode := $7F72458A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(14));
end;

procedure TSIMDScalarShiftImmTest.Test23;
begin
  // sli d10, d14, #12.
  FInsn.OpCode := $7F4C55CA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(12));
end;

procedure TSIMDScalarShiftImmTest.Test24;
begin
  // sqshrn b10, h15, #5.
  FInsn.OpCode := $5F0B95EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H15);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TSIMDScalarShiftImmTest.Test25;
begin
  // sqshrn h17, s10, #4.
  FInsn.OpCode := $5F1C9551;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TSIMDScalarShiftImmTest.Test26;
begin
  // sqshrn s18, d10, #31.
  FInsn.OpCode := $5F219552;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TSIMDScalarShiftImmTest.Test27;
begin
  // uqshrn b12, h10, #7.
  FInsn.OpCode := $7F09954C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TSIMDScalarShiftImmTest.Test28;
begin
  // uqshrn h10, s14, #5.
  FInsn.OpCode := $7F1B95CA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TSIMDScalarShiftImmTest.Test29;
begin
  // uqshrn s10, d12, #13.
  FInsn.OpCode := $7F33958A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(13));
end;

procedure TSIMDScalarShiftImmTest.Test30;
begin
  // sqrshrn b10, h13, #2.
  FInsn.OpCode := $5F0E9DAA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TSIMDScalarShiftImmTest.Test31;
begin
  // sqrshrn h15, s10, #6.
  FInsn.OpCode := $5F1A9D4F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TSIMDScalarShiftImmTest.Test32;
begin
  // sqrshrn s15, d12, #9.
  FInsn.OpCode := $5F379D8F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(9));
end;

procedure TSIMDScalarShiftImmTest.Test33;
begin
  // uqrshrn b10, h12, #5.
  FInsn.OpCode := $7F0B9D8A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TSIMDScalarShiftImmTest.Test34;
begin
  // uqrshrn h12, s10, #14.
  FInsn.OpCode := $7F129D4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(14));
end;

procedure TSIMDScalarShiftImmTest.Test35;
begin
  // uqrshrn s10, d10, #25.
  FInsn.OpCode := $7F279D4A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(25));
end;

procedure TSIMDScalarShiftImmTest.Test36;
begin
  // sqshrun b15, h10, #7.
  FInsn.OpCode := $7F09854F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TSIMDScalarShiftImmTest.Test37;
begin
  // sqshrun h20, s14, #3.
  FInsn.OpCode := $7F1D85D4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TSIMDScalarShiftImmTest.Test38;
begin
  // sqshrun s10, d15, #15.
  FInsn.OpCode := $7F3185EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D15);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(15));
end;

procedure TSIMDScalarShiftImmTest.Test39;
begin
  // sqrshrun b17, h10, #6.
  FInsn.OpCode := $7F0A8D51;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TSIMDScalarShiftImmTest.Test40;
begin
  // sqrshrun h10, s13, #15.
  FInsn.OpCode := $7F118DAA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(15));
end;

procedure TSIMDScalarShiftImmTest.Test41;
begin
  // sqrshrun s22, d16, #31.
  FInsn.OpCode := $7F218E16;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D16);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDScalarShiftImmTest);

end.
