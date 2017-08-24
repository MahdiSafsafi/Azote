// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-scalar-dup.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDScalarDup;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDScalarDupTest = class(TObject)
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
  end;

implementation

procedure TSIMDScalarDupTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDScalarDupTest.TearDown;
begin

end;	

procedure TSIMDScalarDupTest.Test1;
begin
  // mov b0, v0.b[15].
  FInsn.OpCode := $5E1F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(15));
end;

procedure TSIMDScalarDupTest.Test2;
begin
  // mov b1, v0.b[7].
  FInsn.OpCode := $5E0F0401;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(7));
end;

procedure TSIMDScalarDupTest.Test3;
begin
  // mov b17, v0.b[0].
  FInsn.OpCode := $5E010411;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test4;
begin
  // mov h5, v31.h[7].
  FInsn.OpCode := $5E1E07E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(7));
end;

procedure TSIMDScalarDupTest.Test5;
begin
  // mov h9, v1.h[4].
  FInsn.OpCode := $5E120429;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(4));
end;

procedure TSIMDScalarDupTest.Test6;
begin
  // mov h11, v17.h[0].
  FInsn.OpCode := $5E02062B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test7;
begin
  // mov s2, v2.s[3].
  FInsn.OpCode := $5E1C0442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(3));
end;

procedure TSIMDScalarDupTest.Test8;
begin
  // mov s4, v21.s[0].
  FInsn.OpCode := $5E0406A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test9;
begin
  // mov s31, v21.s[2].
  FInsn.OpCode := $5E1406BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDScalarDupTest.Test10;
begin
  // mov d3, v5.d[0].
  FInsn.OpCode := $5E0804A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test11;
begin
  // mov d6, v5.d[1].
  FInsn.OpCode := $5E1804A6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TSIMDScalarDupTest.Test12;
begin
  // mov b0, v0.b[15].
  FInsn.OpCode := $5E1F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(15));
end;

procedure TSIMDScalarDupTest.Test13;
begin
  // mov b1, v0.b[7].
  FInsn.OpCode := $5E0F0401;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(7));
end;

procedure TSIMDScalarDupTest.Test14;
begin
  // mov b17, v0.b[0].
  FInsn.OpCode := $5E010411;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test15;
begin
  // mov h5, v31.h[7].
  FInsn.OpCode := $5E1E07E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(7));
end;

procedure TSIMDScalarDupTest.Test16;
begin
  // mov h9, v1.h[4].
  FInsn.OpCode := $5E120429;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(4));
end;

procedure TSIMDScalarDupTest.Test17;
begin
  // mov h11, v17.h[0].
  FInsn.OpCode := $5E02062B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test18;
begin
  // mov s2, v2.s[3].
  FInsn.OpCode := $5E1C0442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(3));
end;

procedure TSIMDScalarDupTest.Test19;
begin
  // mov s4, v21.s[0].
  FInsn.OpCode := $5E0406A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test20;
begin
  // mov s31, v21.s[2].
  FInsn.OpCode := $5E1406BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDScalarDupTest.Test21;
begin
  // mov d3, v5.d[0].
  FInsn.OpCode := $5E0804A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDScalarDupTest.Test22;
begin
  // mov d6, v5.d[1].
  FInsn.OpCode := $5E1804A6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDScalarDupTest);

end.
