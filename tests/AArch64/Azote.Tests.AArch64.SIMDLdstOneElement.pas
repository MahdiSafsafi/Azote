// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/neon-simd-ldst-one-elem.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDLdstOneElement;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDLdstOneElementTest = class(TObject)
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
    procedure Test96;
    procedure Test97;
    procedure Test98;
    procedure Test99;
    procedure Test100;
    procedure Test101;
    procedure Test102;
    procedure Test103;
    procedure Test104;
    procedure Test105;
    procedure Test106;
    procedure Test107;
    procedure Test108;
    procedure Test109;
    procedure Test110;
    procedure Test111;
    procedure Test112;
    procedure Test113;
    procedure Test114;
    procedure Test115;
    procedure Test116;
    procedure Test117;
    procedure Test118;
    procedure Test119;
    procedure Test120;
    procedure Test121;
    procedure Test122;
    procedure Test123;
    procedure Test124;
    procedure Test125;
    procedure Test126;
    procedure Test127;
    procedure Test128;
  end;

implementation

procedure TSIMDLdstOneElementTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDLdstOneElementTest.TearDown;
begin

end;	

procedure TSIMDLdstOneElementTest.Test1;
begin
  // ld1r { v0.16b }, [x0].
  FInsn.OpCode := $4D40C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test2;
begin
  // ld1r { v15.8h }, [x15].
  FInsn.OpCode := $4D40C5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test3;
begin
  // ld1r { v31.4s }, [sp].
  FInsn.OpCode := $4D40CBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test4;
begin
  // ld1r { v0.2d }, [x0].
  FInsn.OpCode := $4D40CC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test5;
begin
  // ld1r { v0.8b }, [x0].
  FInsn.OpCode := $0D40C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test6;
begin
  // ld1r { v15.4h }, [x15].
  FInsn.OpCode := $0D40C5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test7;
begin
  // ld1r { v31.2s }, [sp].
  FInsn.OpCode := $0D40CBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test8;
begin
  // ld1r { v0.1d }, [x0].
  FInsn.OpCode := $0D40CC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test9;
begin
  // ld2r { v0.16b, v1.16b }, [x0].
  FInsn.OpCode := $4D60C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test10;
begin
  // ld2r { v15.8h, v16.8h }, [x15].
  FInsn.OpCode := $4D60C5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test11;
begin
  // ld2r { v31.4s, v0.4s }, [sp].
  FInsn.OpCode := $4D60CBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test12;
begin
  // ld2r { v0.2d, v1.2d }, [x0].
  FInsn.OpCode := $4D60CC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test13;
begin
  // ld2r { v0.8b, v1.8b }, [x0].
  FInsn.OpCode := $0D60C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test14;
begin
  // ld2r { v15.4h, v16.4h }, [x15].
  FInsn.OpCode := $0D60C5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test15;
begin
  // ld2r { v31.2s, v0.2s }, [sp].
  FInsn.OpCode := $0D60CBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test16;
begin
  // ld2r { v31.1d, v0.1d }, [sp].
  FInsn.OpCode := $0D60CFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test17;
begin
  // ld3r { v0.16b, v1.16b, v2.16b }, [x0].
  FInsn.OpCode := $4D40E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test18;
begin
  // ld3r { v15.8h, v16.8h, v17.8h }, [x15].
  FInsn.OpCode := $4D40E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test19;
begin
  // ld3r { v31.4s, v0.4s, v1.4s }, [sp].
  FInsn.OpCode := $4D40EBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test20;
begin
  // ld3r { v0.2d, v1.2d, v2.2d }, [x0].
  FInsn.OpCode := $4D40EC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test21;
begin
  // ld3r { v0.8b, v1.8b, v2.8b }, [x0].
  FInsn.OpCode := $0D40E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test22;
begin
  // ld3r { v15.4h, v16.4h, v17.4h }, [x15].
  FInsn.OpCode := $0D40E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test23;
begin
  // ld3r { v31.2s, v0.2s, v1.2s }, [sp].
  FInsn.OpCode := $0D40EBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test24;
begin
  // ld3r { v31.1d, v0.1d, v1.1d }, [sp].
  FInsn.OpCode := $0D40EFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test25;
begin
  // ld4r { v0.16b, v1.16b, v2.16b, v3.16b }, [x0].
  FInsn.OpCode := $4D60E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test26;
begin
  // ld4r { v15.8h, v16.8h, v17.8h, v18.8h }, [x15].
  FInsn.OpCode := $4D60E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test27;
begin
  // ld4r { v31.4s, v0.4s, v1.4s, v2.4s }, [sp].
  FInsn.OpCode := $4D60EBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test28;
begin
  // ld4r { v0.2d, v1.2d, v2.2d, v3.2d }, [x0].
  FInsn.OpCode := $4D60EC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test29;
begin
  // ld4r { v0.8b, v1.8b, v2.8b, v3.8b }, [x0].
  FInsn.OpCode := $0D60E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test30;
begin
  // ld4r { v15.4h, v16.4h, v17.4h, v18.4h }, [x15].
  FInsn.OpCode := $0D60E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test31;
begin
  // ld4r { v31.2s, v0.2s, v1.2s, v2.2s }, [sp].
  FInsn.OpCode := $0D60EBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test32;
begin
  // ld4r { v31.1d, v0.1d, v1.1d, v2.1d }, [sp].
  FInsn.OpCode := $0D60EFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test33;
begin
  // ld1 { v0.b }[9], [x0].
  FInsn.OpCode := $4D400400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test34;
begin
  // ld1 { v15.h }[7], [x15].
  FInsn.OpCode := $4D4059EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test35;
begin
  // ld1 { v31.s }[3], [sp].
  FInsn.OpCode := $4D4093FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test36;
begin
  // ld1 { v0.d }[1], [x0].
  FInsn.OpCode := $4D408400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test37;
begin
  // ld2 { v0.b, v1.b }[9], [x0].
  FInsn.OpCode := $4D600400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test38;
begin
  // ld2 { v15.h, v16.h }[7], [x15].
  FInsn.OpCode := $4D6059EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test39;
begin
  // ld2 { v31.s, v0.s }[3], [sp].
  FInsn.OpCode := $4D6093FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test40;
begin
  // ld2 { v0.d, v1.d }[1], [x0].
  FInsn.OpCode := $4D608400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test41;
begin
  // ld3 { v0.b, v1.b, v2.b }[9], [x0].
  FInsn.OpCode := $4D402400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test42;
begin
  // ld3 { v15.h, v16.h, v17.h }[7], [x15].
  FInsn.OpCode := $4D4079EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test43;
begin
  // ld3 { v31.s, v0.s, v1.s }[3], [sp].
  FInsn.OpCode := $4D40B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test44;
begin
  // ld3 { v0.d, v1.d, v2.d }[1], [x0].
  FInsn.OpCode := $4D40A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test45;
begin
  // ld4 { v0.b, v1.b, v2.b, v3.b }[9], [x0].
  FInsn.OpCode := $4D602400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test46;
begin
  // ld4 { v15.h, v16.h, v17.h, v18.h }[7], [x15].
  FInsn.OpCode := $4D6079EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test47;
begin
  // ld4 { v31.s, v0.s, v1.s, v2.s }[3], [sp].
  FInsn.OpCode := $4D60B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test48;
begin
  // ld4 { v0.d, v1.d, v2.d, v3.d }[1], [x0].
  FInsn.OpCode := $4D60A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test49;
begin
  // st1 { v0.b }[9], [x0].
  FInsn.OpCode := $4D000400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test50;
begin
  // st1 { v15.h }[7], [x15].
  FInsn.OpCode := $4D0059EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test51;
begin
  // st1 { v31.s }[3], [sp].
  FInsn.OpCode := $4D0093FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test52;
begin
  // st1 { v0.d }[1], [x0].
  FInsn.OpCode := $4D008400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test53;
begin
  // st2 { v0.b, v1.b }[9], [x0].
  FInsn.OpCode := $4D200400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test54;
begin
  // st2 { v15.h, v16.h }[7], [x15].
  FInsn.OpCode := $4D2059EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test55;
begin
  // st2 { v31.s, v0.s }[3], [sp].
  FInsn.OpCode := $4D2093FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test56;
begin
  // st2 { v0.d, v1.d }[1], [x0].
  FInsn.OpCode := $4D208400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test57;
begin
  // st3 { v0.b, v1.b, v2.b }[9], [x0].
  FInsn.OpCode := $4D002400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test58;
begin
  // st3 { v15.h, v16.h, v17.h }[7], [x15].
  FInsn.OpCode := $4D0079EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test59;
begin
  // st3 { v31.s, v0.s, v1.s }[3], [sp].
  FInsn.OpCode := $4D00B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test60;
begin
  // st3 { v0.d, v1.d, v2.d }[1], [x0].
  FInsn.OpCode := $4D00A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test61;
begin
  // st4 { v0.b, v1.b, v2.b, v3.b }[9], [x0].
  FInsn.OpCode := $4D202400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test62;
begin
  // st4 { v15.h, v16.h, v17.h, v18.h }[7], [x15].
  FInsn.OpCode := $4D2079EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TSIMDLdstOneElementTest.Test63;
begin
  // st4 { v31.s, v0.s, v1.s, v2.s }[3], [sp].
  FInsn.OpCode := $4D20B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TSIMDLdstOneElementTest.Test64;
begin
  // st4 { v0.d, v1.d, v2.d, v3.d }[1], [x0].
  FInsn.OpCode := $4D20A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TSIMDLdstOneElementTest.Test65;
begin
  // ld1r { v0.16b }, [x0], #1.
  FInsn.OpCode := $4DDFC000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test66;
begin
  // ld1r { v15.8h }, [x15], #2.
  FInsn.OpCode := $4DDFC5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test67;
begin
  // ld1r { v31.4s }, [sp], #4.
  FInsn.OpCode := $4DDFCBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test68;
begin
  // ld1r { v0.2d }, [x0], #8.
  FInsn.OpCode := $4DDFCC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test69;
begin
  // ld1r { v0.8b }, [x0], x0.
  FInsn.OpCode := $0DC0C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test70;
begin
  // ld1r { v15.4h }, [x15], x1.
  FInsn.OpCode := $0DC1C5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X1);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test71;
begin
  // ld1r { v31.2s }, [sp], x2.
  FInsn.OpCode := $0DC2CBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X2);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test72;
begin
  // ld1r { v0.1d }, [x0], x3.
  FInsn.OpCode := $0DC3CC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test73;
begin
  // ld2r { v0.16b, v1.16b }, [x0], #2.
  FInsn.OpCode := $4DFFC000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test74;
begin
  // ld2r { v15.8h, v16.8h }, [x15], #4.
  FInsn.OpCode := $4DFFC5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test75;
begin
  // ld2r { v31.4s, v0.4s }, [sp], #8.
  FInsn.OpCode := $4DFFCBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test76;
begin
  // ld2r { v0.2d, v1.2d }, [x0], #16.
  FInsn.OpCode := $4DFFCC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test77;
begin
  // ld2r { v0.8b, v1.8b }, [x0], x6.
  FInsn.OpCode := $0DE6C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test78;
begin
  // ld2r { v15.4h, v16.4h }, [x15], x7.
  FInsn.OpCode := $0DE7C5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test79;
begin
  // ld2r { v31.2s, v0.2s }, [sp], x9.
  FInsn.OpCode := $0DE9CBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X9);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test80;
begin
  // ld2r { v31.1d, v0.1d }, [x0], x5.
  FInsn.OpCode := $0DE5CC1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test81;
begin
  // ld3r { v0.16b, v1.16b, v2.16b }, [x0], x9.
  FInsn.OpCode := $4DC9E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X9);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test82;
begin
  // ld3r { v15.8h, v16.8h, v17.8h }, [x15], x6.
  FInsn.OpCode := $4DC6E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test83;
begin
  // ld3r { v31.4s, v0.4s, v1.4s }, [sp], x7.
  FInsn.OpCode := $4DC7EBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test84;
begin
  // ld3r { v0.2d, v1.2d, v2.2d }, [x0], x5.
  FInsn.OpCode := $4DC5EC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test85;
begin
  // ld3r { v0.8b, v1.8b, v2.8b }, [x0], #3.
  FInsn.OpCode := $0DDFE000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test86;
begin
  // ld3r { v15.4h, v16.4h, v17.4h }, [x15], #6.
  FInsn.OpCode := $0DDFE5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test87;
begin
  // ld3r { v31.2s, v0.2s, v1.2s }, [sp], #12.
  FInsn.OpCode := $0DDFEBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test88;
begin
  // ld3r { v31.1d, v0.1d, v1.1d }, [sp], #24.
  FInsn.OpCode := $0DDFEFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test89;
begin
  // ld4r { v0.16b, v1.16b, v2.16b, v3.16b }, [x0], #4.
  FInsn.OpCode := $4DFFE000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test90;
begin
  // ld4r { v15.8h, v16.8h, v17.8h, v18.8h }, [x15], #8.
  FInsn.OpCode := $4DFFE5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test91;
begin
  // ld4r { v31.4s, v0.4s, v1.4s, v2.4s }, [sp], #16.
  FInsn.OpCode := $4DFFEBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test92;
begin
  // ld4r { v0.2d, v1.2d, v2.2d, v3.2d }, [x0], #32.
  FInsn.OpCode := $4DFFEC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test93;
begin
  // ld4r { v0.8b, v1.8b, v2.8b, v3.8b }, [x0], x5.
  FInsn.OpCode := $0DE5E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test94;
begin
  // ld4r { v15.4h, v16.4h, v17.4h, v18.4h }, [x15], x9.
  FInsn.OpCode := $0DE9E5EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X9);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test95;
begin
  // ld4r { v31.2s, v0.2s, v1.2s, v2.2s }, [sp], x30.
  FInsn.OpCode := $0DFEEBFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X30);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test96;
begin
  // ld4r { v31.1d, v0.1d, v1.1d, v2.1d }, [sp], x7.
  FInsn.OpCode := $0DE7EFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test97;
begin
  // ld1 { v0.b }[9], [x0], #1.
  FInsn.OpCode := $4DDF0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test98;
begin
  // ld1 { v15.h }[7], [x15], x9.
  FInsn.OpCode := $4DC959EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X9);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test99;
begin
  // ld1 { v31.s }[3], [sp], x6.
  FInsn.OpCode := $4DC693FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test100;
begin
  // ld1 { v0.d }[1], [x0], #8.
  FInsn.OpCode := $4DDF8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test101;
begin
  // ld2 { v0.b, v1.b }[9], [x0], x3.
  FInsn.OpCode := $4DE30400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test102;
begin
  // ld2 { v15.h, v16.h }[7], [x15], #4.
  FInsn.OpCode := $4DFF59EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test103;
begin
  // ld2 { v31.s, v0.s }[3], [sp], #8.
  FInsn.OpCode := $4DFF93FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test104;
begin
  // ld2 { v0.d, v1.d }[1], [x0], x0.
  FInsn.OpCode := $4DE08400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test105;
begin
  // ld3 { v0.b, v1.b, v2.b }[9], [x0], #3.
  FInsn.OpCode := $4DDF2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test106;
begin
  // ld3 { v15.h, v16.h, v17.h }[7], [x15], #6.
  FInsn.OpCode := $4DDF79EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test107;
begin
  // ld3 { v31.s, v0.s, v1.s }[3], [sp], x3.
  FInsn.OpCode := $4DC3B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test108;
begin
  // ld3 { v0.d, v1.d, v2.d }[1], [x0], x6.
  FInsn.OpCode := $4DC6A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test109;
begin
  // ld4 { v0.b, v1.b, v2.b, v3.b }[9], [x0], x5.
  FInsn.OpCode := $4DE52400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test110;
begin
  // ld4 { v15.h, v16.h, v17.h, v18.h }[7], [x15], x7.
  FInsn.OpCode := $4DE779EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test111;
begin
  // ld4 { v31.s, v0.s, v1.s, v2.s }[3], [sp], #16.
  FInsn.OpCode := $4DFFB3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test112;
begin
  // ld4 { v0.d, v1.d, v2.d, v3.d }[1], [x0], #32.
  FInsn.OpCode := $4DFFA400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test113;
begin
  // st1 { v0.b }[9], [x0], #1.
  FInsn.OpCode := $4D9F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test114;
begin
  // st1 { v15.h }[7], [x15], x9.
  FInsn.OpCode := $4D8959EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X9);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test115;
begin
  // st1 { v31.s }[3], [sp], x6.
  FInsn.OpCode := $4D8693FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test116;
begin
  // st1 { v0.d }[1], [x0], #8.
  FInsn.OpCode := $4D9F8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test117;
begin
  // st2 { v0.b, v1.b }[9], [x0], x3.
  FInsn.OpCode := $4DA30400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test118;
begin
  // st2 { v15.h, v16.h }[7], [x15], #4.
  FInsn.OpCode := $4DBF59EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test119;
begin
  // st2 { v31.s, v0.s }[3], [sp], #8.
  FInsn.OpCode := $4DBF93FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test120;
begin
  // st2 { v0.d, v1.d }[1], [x0], x0.
  FInsn.OpCode := $4DA08400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X0);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test121;
begin
  // st3 { v0.b, v1.b, v2.b }[9], [x0], #3.
  FInsn.OpCode := $4D9F2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test122;
begin
  // st3 { v15.h, v16.h, v17.h }[7], [x15], #6.
  FInsn.OpCode := $4D9F79EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test123;
begin
  // st3 { v31.s, v0.s, v1.s }[3], [sp], x3.
  FInsn.OpCode := $4D83B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test124;
begin
  // st3 { v0.d, v1.d, v2.d }[1], [x0], x6.
  FInsn.OpCode := $4D86A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test125;
begin
  // st4 { v0.b, v1.b, v2.b, v3.b }[9], [x0], x5.
  FInsn.OpCode := $4DA52400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(9));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test126;
begin
  // st4 { v15.h, v16.h, v17.h, v18.h }[7], [x15], x7.
  FInsn.OpCode := $4DA779EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V15);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test127;
begin
  // st4 { v31.s, v0.s, v1.s, v2.s }[3], [sp], #16.
  FInsn.OpCode := $4DBFB3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V31);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstOneElementTest.Test128;
begin
  // st4 { v0.d, v1.d, v2.d, v3.d }[1], [x0], #32.
  FInsn.OpCode := $4DBFA400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDLdstOneElementTest);

end.
