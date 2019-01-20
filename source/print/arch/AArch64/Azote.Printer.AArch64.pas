
// ******************************************************************
// 
// Copyright (C) 2017-2019 Mahdi Safsafi.
//
// https://github.com/MahdiSafsafi/Azote
//
// ******************************************************************

// ******************************************************************
// This Source Code Form is subject to the terms of the Mozilla 
// Public License, v. 2.0. If a copy of the MPL was not distributed
// with this file, You can obtain one at 
// https://mozilla.org/MPL/2.0/.                                     
// ******************************************************************


unit Azote.Printer.AArch64;

interface

uses
  SysUtils,
  Azote.Disassembler.AArch64;

type
  TAzoteChar   = AnsiChar;
  TAzoteString = AnsiString;
  PAzoteChar   = ^TAzoteChar;

{$I aarch64-mnems.inc}
{$I aarch64-regs.inc}

A64ShifterString: array [TA64Shifter] of TAzoteString = (
  '???',
  { extend. }
  'uxtb',
  'uxth',
  'uxtw',
  'uxtx',
  'sxtb',
  'sxth',
  'sxtw',
  'sxtx',
  { shift. }
  'lsl',
  'lsr',
  'asr',
  'ror',
  'msl');

A64ArrangementString: array [TA64Arrangement] of TAzoteString = (
  '??',
  { Ts }
  'b',
  'h',
  's',
  'd',
  { T }
  '4b',
  '8b',
  '16b',
  '2h',
  '4h',
  '8h',
  '2s',
  '4s',
  '1d',
  '2d',
  '1q');

A64ConditionString: array [TA64Condition] of TAzoteString = (
  'eq',
  'ne',
  'cs',
  'cc',
  'mi',
  'pl',
  'vs',
  'vc',
  'hi',
  'ls',
  'ge',
  'lt',
  'gt',
  'le',
  'al' // none
  );

A64HintOptionString: array [TA64HintOption] of TAzoteString = (
  '??',   // htNone
  'csync' // htCsync
  );

function PrintSyntax(var Syntax: TAzoteString; const Insn: TA64Instruction): Boolean;

implementation

{$WARN IMPLICIT_STRING_CAST OFF}
{$WARN IMPLICIT_STRING_CAST_LOSS OFF}


procedure PrintHintOption(var Syntax: TAzoteString; Option: TA64HintOption);
begin
  Syntax := Syntax + ' ' + A64HintOptionString[Option];
end;

procedure PrintCondition(var Syntax: TAzoteString; Condition: TA64Condition);
begin
  Syntax := Syntax + ' ' + A64ConditionString[Condition];
end;

procedure PrintShifter(var Syntax: TAzoteString; Shift: TA64Shifter; Amount: Integer);
begin
  if (Shift = sfLsl) and (Amount = 0) then
    exit;
  Syntax := Syntax + ', ' + A64ShifterString[Shift];
  if ((Shift in [sfUxtb .. sfSxtx]) and (Amount = 0)) then
    exit;
  Syntax := Syntax + ' #' + IntToStr(Amount);
end;

procedure PrintArrangement(var Syntax: TAzoteString; Arrangement: TA64Arrangement);
begin
  Syntax := Syntax + '.' + A64ArrangementString[Arrangement];
end;

procedure PrintIndex(var Syntax: TAzoteString; Index: Integer);
begin
  Syntax := Syntax + '[' + IntToStr(Index) + ']';
end;

procedure PrintRegister(var Syntax: TAzoteString; const Operand: TA64Operand);
begin
  Syntax := Syntax + ' ' + A64RegisterString[Operand.Register];
  if (ofShifter in Operand.Flags) then
    PrintShifter(Syntax, Operand.Shifter, Operand.Amount)
  else if (ofArrangement in Operand.Flags) then
  begin
    PrintArrangement(Syntax, Operand.Arrangement);
    if Operand.Index >= 0 then
      PrintIndex(Syntax, Operand.Index);
  end;
end;

procedure PrintLabel(var Syntax: TAzoteString; const Operand: TA64Operand);
begin
  Syntax := Syntax + ' #' + IntToStr(Operand.RelOffset);
end;

procedure PrintImmediate(var Syntax: TAzoteString; const Operand: TA64Operand);
var
  S: TAzoteString;
begin
  Syntax := Syntax + ' #';
  if (Operand.Immediate.FP) then
  begin
    S := '';
    if (Frac(Operand.Immediate.AsFP) = 0) then
      S := '0.0';
    Syntax := Syntax + FormatFloat(S, Operand.Immediate.AsFP);
  end
  else
  begin
    S := IntToStr(Operand.Immediate.AsInt);
    Syntax := Syntax + S;
  end;
  if (ofShifter in Operand.Flags) then
    PrintShifter(Syntax, Operand.Shifter, Operand.Amount);
end;

procedure PrintList(var Syntax: TAzoteString; const Operand: TA64Operand);
var
  Reg: TA64Register;
begin
  Reg := Operand.List.Base;
  Syntax := Syntax + ' { ' + A64RegisterString[Reg] + '.' + A64ArrangementString[Operand.Arrangement];
  if (Operand.List.Count <> 1) then
  begin
    Inc(Reg, Operand.List.Count - 1);
    Syntax := Syntax + ' - ' + A64RegisterString[Reg] + '.' + A64ArrangementString[Operand.Arrangement];;
  end;
  Syntax := Syntax + ' }';
  if (Operand.Index >= 0) then
    PrintIndex(Syntax, Operand.Index);
end;

procedure PrintMemory(var Syntax: TAzoteString; const Operand: TA64Operand);
var
  Reg: TA64Register;
begin
  Reg := Operand.Memory.Base;
  Syntax := Syntax + ' [' + A64RegisterString[Reg];
  if (mfOffsetImm in Operand.Memory.Flags) then
  begin
    Syntax := Syntax + ', #' + IntToStr(Operand.Memory.Offset.AsImm);
  end
  else if (mfOffsetReg in Operand.Memory.Flags) then
  begin
    Reg := Operand.Memory.Offset.AsReg;
    Syntax := Syntax + ', ' + A64RegisterString[Reg];
    if (ofShifter in Operand.Flags) then
      PrintShifter(Syntax, Operand.Shifter, Operand.Amount);
  end;
  Syntax := Syntax + ']';
  if (mfPreIndex in Operand.Memory.Flags) then
    Syntax := Syntax + '!';
end;

procedure PrintMemoryPost(var Syntax: TAzoteString; const Operand: TA64Operand);
var
  Reg: TA64Register;
begin
  Reg := Operand.Memory.Base;
  Syntax := Syntax + ' [' + A64RegisterString[Reg] + '], ';
  Reg := Operand.Memory.Offset.AsReg;
  if (mfOffsetImm in Operand.Memory.Flags) then
    Syntax := Syntax + '#' + IntToStr(Operand.Memory.Offset.AsImm)
  else if (mfOffsetReg in Operand.Memory.Flags) then
    Syntax := Syntax + A64RegisterString[Reg];
end;

function PrintSyntax(var Syntax: TAzoteString; const Insn: TA64Instruction): Boolean;
var
  I: Integer;
  Operand: PA64Operand;
begin
  Syntax := A64Mnemonics[Insn.IID];
  if (Insn.Condition <> cdNone) then
    Syntax := Syntax + '.' + A64ConditionString[Insn.Condition];
  for I := 0 to A64_MAX_OPERANDS - 1 do
  begin
    Operand := @Insn.Operands[I];
    case Operand^.OperandType of
      otNone: Break;
      otRegister: PrintRegister(Syntax, Operand^);
      otList: PrintList(Syntax, Operand^);
      otCondition: PrintCondition(Syntax, Operand^.Condition);
      otLabel: PrintLabel(Syntax, Operand^);
      otHint: PrintHintOption(Syntax, Operand^.Hint);
      otMemory:
        begin
          if (mfPostIndex in Operand^.Memory.Flags) then
            PrintMemoryPost(Syntax, Operand^)
          else
            PrintMemory(Syntax, Operand^);
        end;
      otImmediate: PrintImmediate(Syntax, Operand^);
    end;
    if I + 1 = Insn.OperandCount then
      Break;
    Syntax := Syntax + ',';
  end;
  Result := True;
end;

end.
