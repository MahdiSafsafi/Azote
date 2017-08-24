// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-crypto.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Crypto;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TCryptoTest = class(TObject)
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
  end;

implementation

procedure TCryptoTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TCryptoTest.TearDown;
begin

end;	

procedure TCryptoTest.Test1;
begin
  // aese.16b v0, v1.
  FInsn.OpCode := $4E284820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
end;

procedure TCryptoTest.Test2;
begin
  // aesd.16b v0, v1.
  FInsn.OpCode := $4E285820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
end;

procedure TCryptoTest.Test3;
begin
  // aesmc.16b v0, v1.
  FInsn.OpCode := $4E286820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESMC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
end;

procedure TCryptoTest.Test4;
begin
  // aesimc.16b v0, v1.
  FInsn.OpCode := $4E287820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESIMC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
end;

procedure TCryptoTest.Test5;
begin
  // sha1c.4s q0, s1, v2.
  FInsn.OpCode := $5E020020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1C);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test6;
begin
  // sha1p.4s q0, s1, v2.
  FInsn.OpCode := $5E021020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1P);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test7;
begin
  // sha1m.4s q0, s1, v2.
  FInsn.OpCode := $5E022020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1M);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test8;
begin
  // sha1su0.4s v0, v1, v2.
  FInsn.OpCode := $5E023020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1SU0);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test9;
begin
  // sha256h.4s q0, q1, v2.
  FInsn.OpCode := $5E024020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256H);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test10;
begin
  // sha256h2.4s q0, q1, v2.
  FInsn.OpCode := $5E025020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256H2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test11;
begin
  // sha256su1.4s v0, v1, v2.
  FInsn.OpCode := $5E026020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256SU1);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V2);
end;

procedure TCryptoTest.Test12;
begin
  // sha1h s0, s1.
  FInsn.OpCode := $5E280820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1H);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
end;

procedure TCryptoTest.Test13;
begin
  // sha1su1.4s v0, v1.
  FInsn.OpCode := $5E281820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1SU1);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
end;

procedure TCryptoTest.Test14;
begin
  // sha256su0.4s v0, v1.
  FInsn.OpCode := $5E282820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256SU0);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V1);
end;

procedure TCryptoTest.Test15;
begin
  // aese.16b v2, v3.
  FInsn.OpCode := $4E284862;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
end;

procedure TCryptoTest.Test16;
begin
  // aesd.16b v5, v7.
  FInsn.OpCode := $4E2858E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
end;

procedure TCryptoTest.Test17;
begin
  // aesmc.16b v11, v13.
  FInsn.OpCode := $4E2869AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESMC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
end;

procedure TCryptoTest.Test18;
begin
  // aesimc.16b v17, v19.
  FInsn.OpCode := $4E287A71;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AESIMC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V19);
end;

procedure TCryptoTest.Test19;
begin
  // sha1c.4s q23, s29, v3.
  FInsn.OpCode := $5E0303B7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1C);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TCryptoTest.Test20;
begin
  // sha1p.4s q14, s15, v9.
  FInsn.OpCode := $5E0911EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1P);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V9);
end;

procedure TCryptoTest.Test21;
begin
  // sha1m.4s q2, s6, v5.
  FInsn.OpCode := $5E0520C2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1M);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V5);
end;

procedure TCryptoTest.Test22;
begin
  // sha1su0.4s v3, v5, v9.
  FInsn.OpCode := $5E0930A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1SU0);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V9);
end;

procedure TCryptoTest.Test23;
begin
  // sha256h.4s q2, q7, v18.
  FInsn.OpCode := $5E1240E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256H);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q7);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V18);
end;

procedure TCryptoTest.Test24;
begin
  // sha256h2.4s q28, q18, v28.
  FInsn.OpCode := $5E1C525C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256H2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q18);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V28);
end;

procedure TCryptoTest.Test25;
begin
  // sha256su1.4s v4, v5, v9.
  FInsn.OpCode := $5E0960A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256SU1);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V9);
end;

procedure TCryptoTest.Test26;
begin
  // sha1h s30, s0.
  FInsn.OpCode := $5E28081E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1H);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TCryptoTest.Test27;
begin
  // sha1su1.4s v10, v21.
  FInsn.OpCode := $5E281AAA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA1SU1);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
end;

procedure TCryptoTest.Test28;
begin
  // sha256su0.4s v2, v31.
  FInsn.OpCode := $5E282BE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHA256SU0);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V31);
end;

initialization
  TDUnitX.RegisterTestFixture(TCryptoTest);

end.
