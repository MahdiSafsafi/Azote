program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}


uses
  System.SysUtils,
  Azote.Disassembler.AArch64 in '..\..\source\disasm\arch\AArch64\Azote.Disassembler.AArch64.pas',
  Azote.Printer.AArch64 in '..\..\source\print\arch\AArch64\Azote.Printer.AArch64.pas';

{ This example demonstrates how to find all instructions
  that may change the stack pointer register value. }

const
  OpCodes: array [0 .. 7] of UInt32 = (
    $8B348331, // add x17, x25, w20, sxtb.
    $B203295F, // orr sp, x10, #0xe00000ffe00000ff.
    $0B33A23A, // add w26, w17, w19, sxth.
    $CB250882, // sub x2, x4, w5, uxtb #2.
    $CB3333F4, // sub x20, sp, w19, uxth #4.
    $8B23C05F, // add sp, x2, w3, sxtw.
    $4B23C05F, // sub wsp, w2, w3, sxtw.
    $AB3333FF // cmn sp, w19, uxth #4.
    );

var
  Insn: TA64Instruction;
  I: Integer;
  J: Integer;
  Operand: TA64Operand;

begin
  try
    Writeln('Instructions that modify stack pointer register are:');
    for I := 0 to Length(OpCodes) - 1 do
    begin
      FillChar(Insn, SizeOf(TA64Instruction), #00);
      Insn.OpCode := OpCodes[I];
      if (DecodeInstruction(Insn)) then
      begin
        { Iterate through instruction operands. }
        for J := 0 to Insn.OperandCount - 1 do
        begin
          Operand := Insn.Operands[J];
          if ((Operand.OperandType = otRegister) and (ofDestination in Operand.Flags { register is not source. } ) and
            ((Operand.Register = REG_SP) or (Operand.Register = REG_WSP))) then
          begin
            Writeln(Insn.Syntax);
            Break;
          end;
        end;
      end;
    end;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
