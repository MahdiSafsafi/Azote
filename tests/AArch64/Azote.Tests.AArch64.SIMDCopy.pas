// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-simd-copy.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDCopy;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDCopyTest = class(TObject)
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
  end;

implementation

procedure TSIMDCopyTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDCopyTest.TearDown;
begin

end;	

procedure TSIMDCopyTest.Test1;
begin
  // ins v2.b[2], w1.
  FInsn.OpCode := $4E051C22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
end;

procedure TSIMDCopyTest.Test2;
begin
  // ins v7.h[7], w14.
  FInsn.OpCode := $4E1E1DC7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
end;

procedure TSIMDCopyTest.Test3;
begin
  // ins v20.s[0], w30.
  FInsn.OpCode := $4E041FD4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(0));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
end;

procedure TSIMDCopyTest.Test4;
begin
  // ins v1.d[1], x7.
  FInsn.OpCode := $4E181CE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
end;

procedure TSIMDCopyTest.Test5;
begin
  // ins v2.b[2], w1.
  FInsn.OpCode := $4E051C22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
end;

procedure TSIMDCopyTest.Test6;
begin
  // ins v7.h[7], w14.
  FInsn.OpCode := $4E1E1DC7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
end;

procedure TSIMDCopyTest.Test7;
begin
  // ins v20.s[0], w30.
  FInsn.OpCode := $4E041FD4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(0));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
end;

procedure TSIMDCopyTest.Test8;
begin
  // ins v1.d[1], x7.
  FInsn.OpCode := $4E181CE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
end;

procedure TSIMDCopyTest.Test9;
begin
  // smov w1, v0.b[15].
  FInsn.OpCode := $0E1F2C01;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(15));
end;

procedure TSIMDCopyTest.Test10;
begin
  // smov w14, v6.h[4].
  FInsn.OpCode := $0E122CCE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(4));
end;

procedure TSIMDCopyTest.Test11;
begin
  // smov x1, v0.b[15].
  FInsn.OpCode := $4E1F2C01;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(15));
end;

procedure TSIMDCopyTest.Test12;
begin
  // smov x14, v6.h[4].
  FInsn.OpCode := $4E122CCE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(4));
end;

procedure TSIMDCopyTest.Test13;
begin
  // smov x20, v9.s[2].
  FInsn.OpCode := $4E142D34;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test14;
begin
  // mov w20, v9.s[2].
  FInsn.OpCode := $0E143D34;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test15;
begin
  // mov x7, v18.d[1].
  FInsn.OpCode := $4E183E47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V18);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TSIMDCopyTest.Test16;
begin
  // mov w20, v9.s[2].
  FInsn.OpCode := $0E143D34;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test17;
begin
  // mov x7, v18.d[1].
  FInsn.OpCode := $4E183E47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V18);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TSIMDCopyTest.Test18;
begin
  // ins v1.b[14], v3.b[6].
  FInsn.OpCode := $6E1D3461;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(14));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(6));
end;

procedure TSIMDCopyTest.Test19;
begin
  // ins v6.h[7], v7.h[5].
  FInsn.OpCode := $6E1E54E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(5));
end;

procedure TSIMDCopyTest.Test20;
begin
  // ins v15.s[3], v22.s[2].
  FInsn.OpCode := $6E1C46CF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test21;
begin
  // ins v0.d[0], v4.d[1].
  FInsn.OpCode := $6E084480;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(0));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TSIMDCopyTest.Test22;
begin
  // ins v1.b[14], v3.b[6].
  FInsn.OpCode := $6E1D3461;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(14));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(6));
end;

procedure TSIMDCopyTest.Test23;
begin
  // ins v6.h[7], v7.h[5].
  FInsn.OpCode := $6E1E54E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(5));
end;

procedure TSIMDCopyTest.Test24;
begin
  // ins v15.s[3], v22.s[2].
  FInsn.OpCode := $6E1C46CF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V22);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test25;
begin
  // ins v0.d[0], v4.d[1].
  FInsn.OpCode := $6E084480;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(0));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TSIMDCopyTest.Test26;
begin
  // dup v1.8b, v2.b[2].
  FInsn.OpCode := $0E050441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test27;
begin
  // dup v11.4h, v7.h[7].
  FInsn.OpCode := $0E1E04EB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(7));
end;

procedure TSIMDCopyTest.Test28;
begin
  // dup v17.2s, v20.s[0].
  FInsn.OpCode := $0E040691;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDCopyTest.Test29;
begin
  // dup v1.16b, v2.b[2].
  FInsn.OpCode := $4E050441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_B);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TSIMDCopyTest.Test30;
begin
  // dup v11.8h, v7.h[7].
  FInsn.OpCode := $4E1E04EB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_H);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(7));
end;

procedure TSIMDCopyTest.Test31;
begin
  // dup v17.4s, v20.s[0].
  FInsn.OpCode := $4E040691;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_S);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TSIMDCopyTest.Test32;
begin
  // dup v5.2d, v1.d[1].
  FInsn.OpCode := $4E180425;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TSIMDCopyTest.Test33;
begin
  // dup v1.8b, w1.
  FInsn.OpCode := $0E010C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
end;

procedure TSIMDCopyTest.Test34;
begin
  // dup v11.4h, w14.
  FInsn.OpCode := $0E020DCB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
end;

procedure TSIMDCopyTest.Test35;
begin
  // dup v17.2s, w30.
  FInsn.OpCode := $0E040FD1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
end;

procedure TSIMDCopyTest.Test36;
begin
  // dup v1.16b, w2.
  FInsn.OpCode := $4E010C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_16B);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TSIMDCopyTest.Test37;
begin
  // dup v11.8h, w16.
  FInsn.OpCode := $4E020E0B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W16);
end;

procedure TSIMDCopyTest.Test38;
begin
  // dup v17.4s, w28.
  FInsn.OpCode := $4E040F91;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W28);
end;

procedure TSIMDCopyTest.Test39;
begin
  // dup v5.2d, x0.
  FInsn.OpCode := $4E080C05;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDCopyTest);

end.
