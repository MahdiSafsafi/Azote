// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-scalar-cvt.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDScalarCvt;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDScalarCvtTest = class(TObject)
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
  end;

implementation

procedure TSIMDScalarCvtTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDScalarCvtTest.TearDown;
begin

end;	

procedure TSIMDScalarCvtTest.Test1;
begin
  // scvtf h23, h14.
  FInsn.OpCode := $5E79D9D7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H14);
end;

procedure TSIMDScalarCvtTest.Test2;
begin
  // scvtf s22, s13.
  FInsn.OpCode := $5E21D9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test3;
begin
  // scvtf d21, d12.
  FInsn.OpCode := $5E61D995;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
end;

procedure TSIMDScalarCvtTest.Test4;
begin
  // ucvtf h20, h12.
  FInsn.OpCode := $7E79D994;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H12);
end;

procedure TSIMDScalarCvtTest.Test5;
begin
  // ucvtf s22, s13.
  FInsn.OpCode := $7E21D9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test6;
begin
  // ucvtf d21, d14.
  FInsn.OpCode := $7E61D9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test7;
begin
  // scvtf h22, h13, #16.
  FInsn.OpCode := $5F10E5B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TSIMDScalarCvtTest.Test8;
begin
  // scvtf s22, s13, #32.
  FInsn.OpCode := $5F20E5B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TSIMDScalarCvtTest.Test9;
begin
  // scvtf d21, d12, #64.
  FInsn.OpCode := $5F40E595;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TSIMDScalarCvtTest.Test10;
begin
  // ucvtf h22, h13, #16.
  FInsn.OpCode := $7F10E5B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TSIMDScalarCvtTest.Test11;
begin
  // ucvtf s22, s13, #32.
  FInsn.OpCode := $7F20E5B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TSIMDScalarCvtTest.Test12;
begin
  // ucvtf d21, d14, #64.
  FInsn.OpCode := $7F40E5D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TSIMDScalarCvtTest.Test13;
begin
  // fcvtzs h21, h12, #1.
  FInsn.OpCode := $5F1FFD95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TSIMDScalarCvtTest.Test14;
begin
  // fcvtzs s21, s12, #1.
  FInsn.OpCode := $5F3FFD95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TSIMDScalarCvtTest.Test15;
begin
  // fcvtzs d21, d12, #1.
  FInsn.OpCode := $5F7FFD95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TSIMDScalarCvtTest.Test16;
begin
  // fcvtzu h21, h12, #1.
  FInsn.OpCode := $7F1FFD95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TSIMDScalarCvtTest.Test17;
begin
  // fcvtzu s21, s12, #1.
  FInsn.OpCode := $7F3FFD95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TSIMDScalarCvtTest.Test18;
begin
  // fcvtzu d21, d12, #1.
  FInsn.OpCode := $7F7FFD95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TSIMDScalarCvtTest.Test19;
begin
  // fcvtxn s22, d13.
  FInsn.OpCode := $7E6169B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTXN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
end;

procedure TSIMDScalarCvtTest.Test20;
begin
  // fcvtas h12, h13.
  FInsn.OpCode := $5E79C9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test21;
begin
  // fcvtas s12, s13.
  FInsn.OpCode := $5E21C9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test22;
begin
  // fcvtas d21, d14.
  FInsn.OpCode := $5E61C9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test23;
begin
  // fcvtau h12, h13.
  FInsn.OpCode := $7E79C9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test24;
begin
  // fcvtau s12, s13.
  FInsn.OpCode := $7E21C9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test25;
begin
  // fcvtau d21, d14.
  FInsn.OpCode := $7E61C9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test26;
begin
  // fcvtms h22, h13.
  FInsn.OpCode := $5E79B9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test27;
begin
  // fcvtms s22, s13.
  FInsn.OpCode := $5E21B9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test28;
begin
  // fcvtms d21, d14.
  FInsn.OpCode := $5E61B9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test29;
begin
  // fcvtmu h12, h13.
  FInsn.OpCode := $7E79B9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test30;
begin
  // fcvtmu s12, s13.
  FInsn.OpCode := $7E21B9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test31;
begin
  // fcvtmu d21, d14.
  FInsn.OpCode := $7E61B9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test32;
begin
  // fcvtns h22, h13.
  FInsn.OpCode := $5E79A9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test33;
begin
  // fcvtns s22, s13.
  FInsn.OpCode := $5E21A9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test34;
begin
  // fcvtns d21, d14.
  FInsn.OpCode := $5E61A9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test35;
begin
  // fcvtnu h12, h13.
  FInsn.OpCode := $7E79A9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test36;
begin
  // fcvtnu s12, s13.
  FInsn.OpCode := $7E21A9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test37;
begin
  // fcvtnu d21, d14.
  FInsn.OpCode := $7E61A9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test38;
begin
  // fcvtps h22, h13.
  FInsn.OpCode := $5EF9A9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test39;
begin
  // fcvtps s22, s13.
  FInsn.OpCode := $5EA1A9B6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test40;
begin
  // fcvtps d21, d14.
  FInsn.OpCode := $5EE1A9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test41;
begin
  // fcvtpu h12, h13.
  FInsn.OpCode := $7EF9A9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test42;
begin
  // fcvtpu s12, s13.
  FInsn.OpCode := $7EA1A9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test43;
begin
  // fcvtpu d21, d14.
  FInsn.OpCode := $7EE1A9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test44;
begin
  // fcvtzs h12, h13.
  FInsn.OpCode := $5EF9B9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test45;
begin
  // fcvtzs s12, s13.
  FInsn.OpCode := $5EA1B9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test46;
begin
  // fcvtzs d21, d14.
  FInsn.OpCode := $5EE1B9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

procedure TSIMDScalarCvtTest.Test47;
begin
  // fcvtzu h12, h13.
  FInsn.OpCode := $7EF9B9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H13);
end;

procedure TSIMDScalarCvtTest.Test48;
begin
  // fcvtzu s12, s13.
  FInsn.OpCode := $7EA1B9AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TSIMDScalarCvtTest.Test49;
begin
  // fcvtzu d21, d14.
  FInsn.OpCode := $7EE1B9D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDScalarCvtTest);

end.
