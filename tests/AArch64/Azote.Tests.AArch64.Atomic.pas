// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/armv8.1a-atomic.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Atomic;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TAtomicTest = class(TObject)
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

procedure TAtomicTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TAtomicTest.TearDown;
begin

end;	

procedure TAtomicTest.Test1;
begin
  // casb w0, w1, [x2].
  FInsn.OpCode := $08A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test2;
begin
  // casab w0, w1, [x2].
  FInsn.OpCode := $08E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test3;
begin
  // caslb w0, w1, [x2].
  FInsn.OpCode := $08A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test4;
begin
  // casalb w0, w1, [x2].
  FInsn.OpCode := $08E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test5;
begin
  // cash w0, w1, [x2].
  FInsn.OpCode := $48A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test6;
begin
  // casah w0, w1, [x2].
  FInsn.OpCode := $48E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test7;
begin
  // caslh w0, w1, [x2].
  FInsn.OpCode := $48A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test8;
begin
  // casalh w0, w1, [x2].
  FInsn.OpCode := $48E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test9;
begin
  // cas w0, w1, [x2].
  FInsn.OpCode := $88A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test10;
begin
  // casa w0, w1, [x2].
  FInsn.OpCode := $88E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test11;
begin
  // casl w0, w1, [x2].
  FInsn.OpCode := $88A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test12;
begin
  // casal w0, w1, [x2].
  FInsn.OpCode := $88E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test13;
begin
  // cas x0, x1, [x2].
  FInsn.OpCode := $C8A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test14;
begin
  // casa x0, x1, [x2].
  FInsn.OpCode := $C8E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test15;
begin
  // casl x0, x1, [x2].
  FInsn.OpCode := $C8A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test16;
begin
  // casal x0, x1, [x2].
  FInsn.OpCode := $C8E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test17;
begin
  // ldadda x0, x1, [x2].
  FInsn.OpCode := $F8A00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test18;
begin
  // ldclrl x0, x1, [x2].
  FInsn.OpCode := $F8601041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test19;
begin
  // ldeoral x0, x1, [x2].
  FInsn.OpCode := $F8E02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test20;
begin
  // ldset x0, x1, [x2].
  FInsn.OpCode := $F8203041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test21;
begin
  // ldsmaxa w0, w1, [x2].
  FInsn.OpCode := $B8A04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test22;
begin
  // ldsminlb w0, w1, [x2].
  FInsn.OpCode := $38605041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test23;
begin
  // ldumaxalh w0, w1, [x2].
  FInsn.OpCode := $78E06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test24;
begin
  // ldumin w0, w1, [x2].
  FInsn.OpCode := $B8207041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test25;
begin
  // ldsminb w2, w3, [x5].
  FInsn.OpCode := $382250A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X5);
end;

procedure TAtomicTest.Test26;
begin
  // staddlb w0, [x2].
  FInsn.OpCode := $3860005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test27;
begin
  // stclrlh w0, [x2].
  FInsn.OpCode := $7860105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test28;
begin
  // steorl w0, [x2].
  FInsn.OpCode := $B860205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test29;
begin
  // stsetl x0, [x2].
  FInsn.OpCode := $F860305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test30;
begin
  // stsmaxb w0, [x2].
  FInsn.OpCode := $3820405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test31;
begin
  // stsminh w0, [x2].
  FInsn.OpCode := $7820505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test32;
begin
  // stumax w0, [x2].
  FInsn.OpCode := $B820605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test33;
begin
  // stumin x0, [x2].
  FInsn.OpCode := $F820705F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test34;
begin
  // stsminl x29, [sp].
  FInsn.OpCode := $F87D53FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TAtomicTest.Test35;
begin
  // swp x0, x1, [x2].
  FInsn.OpCode := $F8208041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test36;
begin
  // swpb w0, w1, [x2].
  FInsn.OpCode := $38208041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test37;
begin
  // swplh w0, w1, [x2].
  FInsn.OpCode := $78608041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TAtomicTest.Test38;
begin
  // swpal x0, x1, [sp].
  FInsn.OpCode := $F8E083E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TAtomicTest.Test39;
begin
  // casp x0, x1, x2, x3, [x4].
  FInsn.OpCode := $48207C82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X4);
end;

procedure TAtomicTest.Test40;
begin
  // casp w0, w1, w2, w3, [x4].
  FInsn.OpCode := $08207C82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X4);
end;

initialization
  TDUnitX.RegisterTestFixture(TAtomicTest);

end.
