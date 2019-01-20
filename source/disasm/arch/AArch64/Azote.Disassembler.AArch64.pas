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

unit Azote.Disassembler.AArch64;

interface

{$I ../../../Config.inc}

{$DEFINE DEVMODE}
{$DEFINE PUREPASCAL}
{$IF DEFINED (CPUX86) OR DEFINED(CPUX64)}
{$UNDEF PUREPASCAL }
{$ENDIF}

{$IFDEF FPC}
{$MODE DELPHI}
{$ASMMODE INTEL}
{$WARN 3177 OFF} // Some fields coming after X.
{$WARN 3175 OFF} // Some fields coming before X.
{ Some params are not used by a function. But were inserted
  just to have a common prototype (eg: TOperandDecoder).
  So we need to turns hints off. }
{$HINTS OFF}
{$ENDIF FPC}


uses
  SysUtils,
  Math;

const
  A64_MAX_OPERANDS = 5; // Keep synchronization.

type
  TAzoteOption  = (optLittleEndian);
  TAzoteOptions = set of TAzoteOption;

  TOperandType = (
    otNone,
    otRegister,
    otList,
    otImmediate,
    otMemory,
    otLabel,
    otCondition,
    otHint
    );

  TA64Shifter = (
    sfNone,
    { Extend. }
    sfUxtb,
    sfUxth,
    sfUxtw,
    sfUxtx,
    sfSxtb,
    sfSxth,
    sfSxtw,
    sfSxtx,
    { Shift. }
    sfLsl,
    sfLsr,
    sfAsr,
    sfRor,
    sfMsl
    );

  TA64Arrangement = (
    T_NONE,
    { Ts }
    T_B,
    T_H,
    T_S,
    T_D,
    { T }
    T_4B,
    T_8B,
    T_16B,
    T_2H,
    T_4H,
    T_8H,
    T_2S,
    T_4S,
    T_1D,
    T_2D,
    T_1Q);

  // Order is important !
  TA64Condition = (
    cdEQ,  // b0000 =>  Equal Equal Z == 1
    cdNE,  // b0001 =>  Not equal Not equal, or unordered Z == 0
    cdCS,  // b0010 =>  b Carry set Greater than, equal, or unordered C == 1
    cdCC,  // b0011 =>  c Carry clear Less than C == 0
    cdMI,  // b0100 =>  Minus, negative Less than N == 1
    cdPL,  // b0101 =>  Plus, positive or zero Greater than, equal, or unordered N == 0
    cdVS,  // b0110 =>  Overflow Unordered V == 1
    cdVC,  // b0111 =>  No overflow Not unordered V == 0
    cdHI,  // b1000 =>  Unsigned higher Greater than, or unordered C == 1 and Z == 0
    cdLS,  // b1001 =>  Unsigned lower or same Less than or equal C == 0 or Z == 1
    cdGE,  // b1010 =>  Signed greater than or equal Greater than or equal N == V
    cdLT,  // b1011 =>  Signed less than Less than, or unordered N != V
    cdGT,  // b1100 =>  Signed greater than Greater than Z == 0 and N == V
    cdLE,  // b1101 =>  Signed less than or equal Less than, equal, or unordered Z == 1 or N != V
    cdNone // b1110 =>  (AL) d Always (unconditional) Always (unconditional) Any
    );

  TA64HintOption = (
    htNone,
    htCsync { PSB CSYNC }
    );

  TOperandFlag   = (ofShifter, ofArrangement, ofDestination);
  TImmediateFlag = (ifFP);
  TMemoryFlag    = (mfPostIndex, mfPreIndex, mfOffsetImm, mfOffsetReg);

  TOperandFlags   = set of TOperandFlag;
  TMemoryFlags    = set of TMemoryFlag;
  TImmediateFlags = set of TImmediateFlag;

{$I aarch64-insns.inc}
{$I aarch64-classes.inc}
{$I aarch64-regs.inc}

  TA64ListInfo = record
    /// <summary>First register in the list.</summary>
    Base: TA64Register;

    /// <summary>Number of register in the list.</summary>
    Count: Integer;
  end;

  TA64MemoryInfo = record
    /// <summary>Memory base register.</summary>
    Base: TA64Register;

    /// <summary>Memory flags.</summary>
    Flags: TMemoryFlags;

    /// <summary>Memory offset.</summary>
    /// <para>If (mfOffsetReg || mfOffsetImm) in Flags, Memory has an offset.
    /// Otherwise, offset not used.
    /// </para>
    Offset: record
      case TMemoryFlag of
        mfOffsetReg: (AsReg: TA64Register);
        mfOffsetImm: (AsImm: Int32);
    end;
  end;

  TA64ImmediateInfo = record
    /// <summary>Floating-Point.</summary>
    /// <para>If True, immediate type is FP and only AsFP is valid.
    /// If False, immediate type is Integer and only AsInt is valid.
    /// </para>
    FP: Boolean;
    case Boolean { FP } of
      False: (AsInt: Int64);
      True: (AsFP: Double);
  end;

  TA64Operand = record
    /// <summary>Argument Index.</summary>
    ID: Integer;

    /// <summary>Argument flags.</summary>
    Flags: TOperandFlags;

    /// <summary>Argument type.</summary>
    /// <para>Accessing operand info depends on OperandType and Flags.</para>
    OperandType: TOperandType;

    case TOperandType { OperandType } of
      otList: (List: TA64ListInfo);
      otCondition: (Condition: TA64Condition);
      otRegister: (Register: TA64Register);
      otLabel: (RelOffset: Int64);
      otMemory: (Memory: TA64MemoryInfo);
      otHint: (Hint: TA64HintOption);
      otImmediate: (Immediate: TA64ImmediateInfo;
          case TOperandFlag { Flags } of
            ofArrangement: (Arrangement: TA64Arrangement; Index: Integer);
            ofShifter: (Shifter: TA64Shifter; Amount: Integer);
          );
  end;

  PA64Operand = ^TA64Operand;

  TA64Instruction = record

    /// <summary>Instruction identifier (ID).</summary>
    IID: TA64InstructionIID;

    /// <summary>Instruction opcode value.</summary>
    OpCode: UInt32;

    /// <summary>Instruction conditional execution.</summary>
    Condition: TA64Condition;

    /// <summary>Instruction class.</summary>
    IClass: TA64Class;

    /// <summary>Instruction syntax.</summary>
    Syntax: AnsiString;

    /// <summary>Number of operand.</summary>
    OperandCount: Integer;

    /// <summary>A list of operand used by the instruction.</summary>
    Operands: array [0 .. { OperandCount } A64_MAX_OPERANDS - 1] of TA64Operand;

    Options: TAzoteOptions;
    /// <summary>Storable field.</summary>
    /// <para>This field is only used during the process.
    /// You can store here what you want.
    /// </para>
    case Boolean of
      True: (UserTag: NativeInt);
      False: (Internal: Pointer);
  end;

  PA64Instruction = ^TA64Instruction;

function DecodeInstruction(var Insn: TA64Instruction): Boolean;

implementation

{$IFDEF NEED_PRINTER}


uses
  Azote.Printer.AArch64;
{$ENDIF NEED_PRINTER}


const
  { Table flags. }
  F_NONE          = $00;
  F_SF            = $01;
  F_SFN           = $02;
  F_Q             = $04;
  F_SIZE          = $08;
  F_IMM           = $10;
  F_TYPE          = $20;
  F_OPEXT         = $40;
  F_OPC           = $80;
  F_HAS_ALIAS     = $100;
  F_ALIAS         = F_NONE;
  F_CONDITIONALLY = $200;
  F_COND          = F_CONDITIONALLY;

  { Memory flags. }
  MEM_SCALED = $01;
  MEM_REGOFF = $02;

  // Standard arrangement values.
  QSize2T: array [0 .. 8] of TA64Arrangement = (
    T_8B,  // 0
    T_16B, // 1
    T_4H,  // 2
    T_8H,  // 3
    T_2S,  // 4
    T_4S,  // 5
    T_1D,  // 6
    T_2D,  // 7
    T_1Q   // 8
    );

  QSize2Ts: array [0 .. 7] of TA64Arrangement = (
    T_B, // 0
    T_B, // 1
    T_H, // 2
    T_H, // 3
    T_S, // 4
    T_S, // 5
    T_D, // 6
    T_D  // 7
    );

  { Keep synchronization. }
  F_PRELIMINARY_MASK = F_SF or F_SFN or F_Q or F_IMM or F_SIZE or F_OPC or F_TYPE;
  DATA_IMM0          = 0;
  DATA_IMM_FP0       = 0;
  DATA_CSYNC         = 0;

  { Internal types. }
type
  TArrangementInfo = record
    Lanes: Integer; // Number of lanes.
    ElementSize: Integer;
    Ts: TA64Arrangement;
  end;

  TRegisterClassInfo = record
    Size: Integer;
    Ts: TA64Arrangement;
  end;

  TOperandClass = (
    CLASS_NONE,
    CLASS_SYSREG,
    CLASS_REGISTER,
    CLASS_COND,
    CLASS_FBITS,
    CLASS_SHIFT,
    CLASS_NZCV,
    CLASS_PSTATEFIELD,
    CLASS_LABEL,
    CLASS_ROTATE,
    CLASS_MEMORY,
    CLASS_LIST,
    CLASS_BARRIER,
    CLASS_PSEUDOIMM,
    CLASS_IMMEDIATE,
    CLASS_CONST);

  TRegisterClass = (
    REG_CLASS_NONE,
    { Virtual registers }
    REG_CLASS_PAIR, // Register type = Previous register.
    REG_CLASS_R,    // (32|64) General-purpose register.
    REG_CLASS_F,    // SIMD&FP register.
    REG_CLASS_O,    // SIMD&FP register.
    REG_CLASS_N,    // SIMD&FP register.
    REG_CLASS_E,    // Element register.

    { Real registers. }
    REG_CLASS_W, // 32 General-purpose register.
    REG_CLASS_X, // 64 General-purpose register.
    REG_CLASS_B, // SIMD&FP register.
    REG_CLASS_H, // SIMD&FP register (Half precision).
    REG_CLASS_S, // SIMD&FP register (Single precision).
    REG_CLASS_D, // SIMD&FP register (Double precision).
    REG_CLASS_Q, // SIMD&FP register (128).
    REG_CLASS_V  // Vector register.
    );

  TFieldInfo = record
    Pos: Integer;
    case Boolean of
      False: (Valid: Boolean); { FLD_None }
      True: (Size: Integer);
  end;

{$I aarch64-fields.inc}


type
  TRegisterInfo = record
    RegClass: TRegisterClass;
    RegNo: TField;
    case Boolean { GPR } of
      False:
        (Patch: ShortInt;
          T: TA64Arrangement);
      True:
        (SP: Boolean; // If True, SP register can be used.
          case Boolean of
            False: (Shift: TField);
            True: (Extend: TField));
  end;

  TImmediatInfo = record
    Shift: TField;
    Fields: array [0 .. 2] of TField;
  end;

  TListInfo = record
    Base: TField;
    Element: Boolean;
  end;

  TMemoryInfo = record
    Imm: array [0 .. 1] of TField;
    Sign: Integer; // Sign pos.
    Flags: UInt32;
  end;

  TRelPC = record
    Imm: array [0 .. 1] of TField;
    Sign: Integer; // Sign pos.
  end;

  TOperandInfo = record
    OperandClass: TOperandClass;
    case TOperandClass { OperandClass } of
      CLASS_REGISTER: (Register: TRegisterInfo);
      CLASS_IMMEDIATE: (Immediate: TImmediatInfo);
      CLASS_LIST: (List: TListInfo);
      CLASS_CONST: (Data: NativeInt);
      CLASS_LABEL: (RelPC: TRelPC);
      CLASS_MEMORY: (Memory: TMemoryInfo);
      CLASS_PSEUDOIMM: (Fields: array [0 .. 2] of TField);
  end;

  POperandInfo = ^TOperandInfo;

{$I aarch64-oprnds.inc}


type

  TOpcode = record
    IID: TA64InstructionIID;
    OpCode: UInt32;
    Mask: UInt32;
    IClass: TA64Class;
    Operands: array [0 .. A64_MAX_OPERANDS - 1] of TOperandKind;
    Flags: UInt32;
  end;

  POpcode = ^TOpcode;

{$I aarch64-tbl.inc}
{$I aarch64-lookup.inc}

{$IFDEF PUREPASCAL}
{$I aarch64-adt-pp.inc}
{$ELSE !PUREPASCAL}
{$I aarch64-adt-asm.inc}
{$ENDIF PUREPASCAL}


type
{$A4}
  TInternalStruct = record
    From: PA64Instruction;
    RegR: TRegisterClass;
    FSize: Integer;
    FType: Integer;
    FOpc: Integer;
    QSize: Integer;
    IndexOrder: Integer;
    Ts: TA64Arrangement;
    SP: Boolean;
  end;

  PInternalStruct = ^TInternalStruct;

  TOperandDecoder = function(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;

const
  ArrangementInfo: array [TA64Arrangement] of TArrangementInfo = (
    { T_NONE } (Lanes: 0; ElementSize: 0),
    { T_B } (Lanes: 0; ElementSize: 1; Ts: T_B),
    { T_H } (Lanes: 0; ElementSize: 2; Ts: T_H),
    { T_S } (Lanes: 0; ElementSize: 4; Ts: T_S),
    { T_D } (Lanes: 0; ElementSize: 8; Ts: T_D),
    { T_4B } (Lanes: 4; ElementSize: 1; Ts: T_B),
    { T_8B } (Lanes: 8; ElementSize: 1; Ts: T_B),
    { T_16B } (Lanes: 16; ElementSize: 1; Ts: T_B),
    { T_2H } (Lanes: 2; ElementSize: 2; Ts: T_H),
    { T_4H } (Lanes: 4; ElementSize: 2; Ts: T_H),
    { T_8H } (Lanes: 8; ElementSize: 2; Ts: T_H),
    { T_2S } (Lanes: 2; ElementSize: 4; Ts: T_S),
    { T_4S } (Lanes: 4; ElementSize: 4; Ts: T_S),
    { T_1D } (Lanes: 1; ElementSize: 8; Ts: T_D),
    { T_2D } (Lanes: 2; ElementSize: 8; Ts: T_D),
    { T_1Q } (Lanes: 1; ElementSize: 16; Ts: T_NONE)
    );

  RegisterClassInfo: array [TRegisterClass] of TRegisterClassInfo = (
    { Virtual registers. }
    { REG_CLASS_NONE } (Size: 0),
    { REG_CLASS_PAIR } (),
    { REG_CLASS_R } (),
    { REG_CLASS_F } (),
    { REG_CLASS_O } (),
    { REG_CLASS_N } (),
    { REG_CLASS_E } (Size: 16; Ts: T_NONE),

    { Real registers. }
    { REG_CLASS_W } (Size: 4; Ts: T_NONE),
    { REG_CLASS_X } (Size: 8; Ts: T_NONE),
    { REG_CLASS_B } (Size: 1; Ts: T_B),
    { REG_CLASS_H } (Size: 2; Ts: T_H),
    { REG_CLASS_S } (Size: 4; Ts: T_S),
    { REG_CLASS_D } (Size: 8; Ts: T_D),
    { REG_CLASS_Q } (Size: 16; Ts: T_NONE),
    { REG_CLASS_V } (Size: 16; Ts: T_NONE)
    );

{$REGION 'Utils'}


type
  TBit = 0 .. 1;

procedure Die(const Text: string = '');
begin
  raise Exception.Create(Text);
end;

function ConvertLittleToBigEndian(Value: UInt32): UInt32;
var
  Long: LongRec absolute Value;
  LResult: LongRec absolute Result;
begin
  LResult.Bytes[0] := Long.Bytes[3];
  LResult.Bytes[1] := Long.Bytes[2];
  LResult.Bytes[2] := Long.Bytes[1];
  LResult.Bytes[3] := Long.Bytes[0];
end;

/// <summary>Replicate bit 'n' time.</summary>
function Replicate(Bit: TBit; Count: Integer): Int64; inline;
begin
  Result := Int64(-Bit) shr (64 - Count);
end;

/// <summary>Rotate right.</summary>
function Ror(Value: Int64; DataSize, Rotation: Integer): Int64;
begin
  if (Rotation = 0) then
    exit(Value);
  Result := (Value shr Rotation) or (Value shl (DataSize - Rotation));
  Result := Result and Replicate(1, DataSize);
end;

function SignExtend(Value: Integer; SingPos: Integer): Int64;
begin
  Result := Value;
  Dec(SingPos);
  if ((Result and (Int64(1) shl SingPos)) <> 0) then
    Result := (Int64(-1) shl SingPos) or Result;
end;

function Dec2FP(Base, Frac: Integer): Double;
var
  I: Integer;
begin
  I := 10;
  while (Frac > I) do
    I := I * 10;
  Result := (Frac / I) + Base;
end;

function ConvertHP2DP(Data: UInt16): Double;
var
  S: UInt32;
  E: UInt32;
  T: UInt32;
begin
  { Delphi does not support half-precision floating-point.
    Thus, we need to transform ARM HPFP to Single or Double types.
    I choose to use Double type just to have a standard type for
    all FP data. }

  // Half-precision floating-point format:
  // ----------------------
  // 15|14    10|9      0
  // S |exponent|fraction
  // ----------------------

  S := (Data and $8000) shr 15;
  E := (Data and $7C00) shr 10; // exponent.
  T := (Data and $03FF);        // fraction.

  if ((E > 0) and (E < $1F)) then
  begin
    // Value = (-1)^S × 2^(exponent-15) × (1.fraction).
    Result := Power(-1, S) * Power(2, E - 15) * (Dec2FP(1, T));
  end
  else if (E = 0) then
  begin
    if (T = 0) then
    begin
      { 0 }
      if (S = 0) then
        Result := 0
      else
        Result := -0;
    end
    else { fraction != 0 }
    begin
      // Value = (-1)^S × 2^(-14) × (0.fraction).
      Result := Power(-1, S) * Power(2, -14) * (Dec2FP(0, T));
    end;
  end
  else { E = $1F }
  begin
    if (T = 0) then
    begin
      if (S = 0) then
        Result := Infinity
      else
        Result := NegInfinity;
    end
    else { fraction != 0 }
    begin
      Result := NaN;
    end;
  end;
end;

/// <summary> Given a value, return the index of the first set bit.</summary>.
function ScanBit(Value: UInt32; Right: Boolean): Integer;
{$IFDEF PUREPASCAL}
var
  I: Integer;
begin
  if (Right) then
  begin
    for I := 0 to 31 do
      if ((1 shl I) and Value <> 0) then
        exit(I);
  end
  else
  begin
    for I := 31 downto 0 do
      if ((1 shl I) and Value <> 0) then
        exit(I);
  end;
  Result := -1;
end;
{$ELSE !PUREPASCAL}
asm
  {$IFDEF CPUX64}
  mov eax,ecx
  {$ENDIF CPUX64}
  test dl,dl    // Right ?
  jz @left
  bsf eax,eax   // Right.
  jmp @finished
@left:
  bsr eax,eax   // Left.
@finished:
  jnz @end
  not eax       // No set bit found (Value = 0).
@end:
end;
{$ENDIF PUREPASCAL}


function BitCount(Value: UInt32): Integer;
{$IFDEF PUREPASCAL}
begin
  Result := 0;
  while (Value <> 0) do
  begin
    if (Value and 1 <> 0) then
      Inc(Result);
    Value := Value shr 1; // Next bit.
  end;
end;
{$ELSE !PUREPASCAL}
asm
  {$IFDEF CPUX64}
  popcnt eax,ecx
  {$ELSE !CPUX64}
  popcnt eax,eax
  {$ENDIF CPUX64}
end;
{$ENDIF PUREPASCAL}


function ExtractField(Code: UInt32; const Info: TFieldInfo): UInt32; overload; inline;
begin
  Result := (Code shr Info.Pos) and ((1 shl Info.Size) - 1);
end;

function ExtractField(Code: UInt32; Field: TField; IClass: TA64Class): UInt32; overload;
var
  Info: TFieldInfo;
begin
  { Extract single field. }
  GetFieldInfo(Field, IClass, Info);
  Result := ExtractField(Code, Info);
end;

function ExtractFields(Code: UInt32; const Fields: array of TField; IClass: TA64Class): UInt32;
var
  I: Integer;
  Field: TField;
  Info: TFieldInfo;
  Value: UInt32;
begin
  { Extract all fields. }
  Result := 0;
  for I := 0 to Length(Fields) - 1 do
  begin
    Field := Fields[I];
    if (Field = FLD_None) then
      break;
    GetFieldInfo(Field, IClass, Info);
    Value := ExtractField(Code, Info);
    Result := (Result shl Info.Size) or Value;
  end;
end;

{$ENDREGION 'Utils'}

{$REGION 'Misc'}


function GetElementCountFromIID(IID: TA64InstructionIID): UInt32;
begin
  Result := 0; // Make the compiler happy.
  case IID of
    INSN_LD1, INSN_LD1R, INSN_ST1: exit(1);
    INSN_LD2, INSN_LD2R, INSN_ST2: exit(2);
    INSN_LD3, INSN_LD3R, INSN_ST3: exit(3);
    INSN_LD4, INSN_LD4R, INSN_ST4: exit(4);
  else
    Die('Cant extract element from IID.');
  end;
end;

function MakeRegister(RegClass: TRegisterClass; RegNo: Integer): TA64Register;
begin
  case RegClass of
    REG_CLASS_W: exit(TA64Register(Integer(REG_W0) + RegNo));
    REG_CLASS_X: exit(TA64Register(Integer(REG_X0) + RegNo));
    REG_CLASS_B: exit(TA64Register(Integer(REG_B0) + RegNo));
    REG_CLASS_H: exit(TA64Register(Integer(REG_H0) + RegNo));
    REG_CLASS_S: exit(TA64Register(Integer(REG_S0) + RegNo));
    REG_CLASS_D: exit(TA64Register(Integer(REG_D0) + RegNo));
    REG_CLASS_Q: exit(TA64Register(Integer(REG_Q0) + RegNo));
    REG_CLASS_V: exit(TA64Register(Integer(REG_V0) + RegNo));
  else
    Result := REG_INVALID;
  end;
end;

function GetSizeOfRegister(Register: TA64Register): UInt32;
begin
  if (Register >= REG_Q0) then
    exit(16)
  else if (Register >= REG_D0) then
    exit(8)
  else if (Register >= REG_S0) then
    exit(4)
  else if (Register >= REG_H0) then
    exit(2)
  else if (Register >= REG_B0) then
    exit(1)
  else if (Register >= REG_X0) then
    exit(8)
  else if (Register >= REG_W0) then
    exit(4)
  else
    Result := 0;
end;

function GetDataSize(var Insn: TA64Instruction; Source: Boolean): UInt32;
var
  IID: TA64InstructionIID;
  Operand: PA64Operand;
  I: Integer;
begin
  IID := Insn.IID;
  { Instructions that do not rely on operands. }
  case IID of
    INSN_LDRB, INSN_LDRSB, INSN_STRB: exit(1);
    INSN_LDRH, INSN_LDRSH, INSN_STRH: exit(2);
    INSN_LDPSW, INSN_LDRSW: exit(4);
    INSN_PRFM: exit(8);
  end;

  { Here, we get DataSize from register or arrangement. }
  for I := 0 to A64_MAX_OPERANDS - 1 do
  begin
    Operand := @Insn.Operands[I];
    if (Operand^.OperandType = otNone) then
      break;
    if (Operand^.OperandType = otRegister) then
    begin
      if (Source and (ofDestination in Operand.Flags)) then
        Continue;
      if (ofArrangement in Operand^.Flags) then // Vector register.
        Result := ArrangementInfo[Operand^.Arrangement].ElementSize
      else
        Result := GetSizeOfRegister(Operand^.Register);
      exit;
    end;
  end;
  Result := 0;
end;

{$ENDREGION 'Misc'}

{$REGION 'Immediate'}


function DecodeImmLog(nrs, DataSize: Integer; out Imm: Int64): Boolean;
type
  TLanes = packed record
    case Integer { esize } of
      08: (B: array [0 .. 7] of ShortInt);
      16: (H: array [0 .. 3] of SmallInt);
      32: (W: array [0 .. 1] of Integer);
      64: (D: array [0 .. 0] of Int64);
  end;

  TVector = packed record
    case Boolean of
      False: (Data: Int64);
      True: (Lanes: TLanes);
  end;

var
  N, S, R: Integer;
  esize: Integer; // Element size.
  emask: Integer; // Element mask.
  eimm: Int64;    // Element immediate.
  I: Integer;
  NumberOfLane: Integer;
  Vector: TVector absolute Imm;
begin
  { The Logical (immediate) instructions accept a bitmask immediate value that is a 32-bit pattern or a 64-bit pattern
    viewed as a vector of identical elements of size e = 2, 4, 8, 16, 32 or, 64 bits. Each element contains the same
    sub-pattern, that is a single run of 1 to (e - 1) nonzero bits from bit 0 followed by zero bits, then rotated by 0 to
    (e -1) bits. This mechanism can generate 5334 unique 64-bit patterns as 2667 pairs of pattern and their bitwise inverse. }

  // nsr = N:immr:imms.
  N := (nrs shr 12) and $01;
  R := (nrs shr 06) and $3F;
  S := nrs and $3F;

  DataSize := DataSize shl 3; // To bit.

  { Initailize vector lanes. }
  Imm := 0;

  { Determine element size. }
  esize := ScanBit(((N shl 6) or ((not(S)) and $3F)), False);
  emask := Replicate(1, esize);
  esize := 1 shl esize;

  { Check if element size is not reserved.
    Also check if element size is valid for our data size. }
  if ((esize > DataSize) or (not(esize in [2, 4, 8, 16, 32, 64]))) then
    exit(False);

  { Fix imms,immr for our element. }
  S := S and emask;
  R := R and emask;

  { Generate element immediate. }
  eimm := Replicate(1, S + 1);
  { Rotate the immediate. }
  eimm := Ror(eimm, esize, R);

  { Calculate number of lane. }
  NumberOfLane := DataSize div esize;

  { Replicate the element immediate to form the final immediate. }
  case esize of
    2, 4:
      begin
        { Too small to be represented as lanes. }
        for I := 0 to NumberOfLane - 1 do
          Vector.Data := Vector.Data or (eimm shl (I * esize));
      end;
    8:
      begin
        for I := 0 to NumberOfLane - 1 do
          Vector.Lanes.B[I] := eimm;
      end;
    16:
      begin
        for I := 0 to NumberOfLane - 1 do
          Vector.Lanes.H[I] := eimm;
      end;
    32:
      begin
        for I := 0 to NumberOfLane - 1 do
          Vector.Lanes.W[I] := eimm;
      end;
    64:
      begin
        { Full vector. }
        Imm := eimm;
      end;
  end;

  Result := True;
end;

function DecodeImmLong(abcdefgh: UInt8): Int64; inline;
const
  Values: array [0 .. 1] of ShortInt = (0, -1);
type
  TPattern = packed record
    case ShortInt of
      0: (Data: Int64);
      1: (List: array [0 .. 8 - 1] of ShortInt);
      2: (
          hhhhhhhh: ShortInt;
          gggggggg: ShortInt;
          ffffffff: ShortInt;
          eeeeeeee: ShortInt;
          dddddddd: ShortInt;
          cccccccc: ShortInt;
          bbbbbbbb: ShortInt;
          aaaaaaaa: ShortInt);
  end;

var
  Long: TPattern absolute Result;
  I: Integer;
begin
  // Pattern:abcdefgh = 'aaaaaaaabbbbbbbbccccccccddddddddeeeeeeeeffffffffgggggggghhhhhhhh'
  for I := 0 to 7 do
    Long.List[I] := Values[(abcdefgh shr I) and 1];
end;

function DecodeHalfPrecision(abcdefgh: UInt32): Double;
type
  TPattern = packed record
    case Boolean of
      False: (Data: UInt16);
      True: (
          gh000000: ShortInt;
          aBbbcdef: ShortInt;
        )
  end;
var
  a: UInt32;
  B: UInt32;
  N: UInt32;
  F16: TPattern;
begin
  // Pattern:abcdefhg = aBbbcdef gh000000

  a := (abcdefgh and $80) shr 7;
  B := (abcdefgh and $40) shr 6;
  N := (not B) and 1;

  { Fill aBbbcdef field. }
  F16.aBbbcdef := (a shl 7) or (N shl 6) or
    (B shl 5) or (B shl 4)
    or (abcdefgh and 15);

  { Fill gh000000 field. }
  F16.gh000000 := (abcdefgh and 3) shl 6;

  Result := ConvertHP2DP(F16.Data);
end;

function DecodeSinglePrecision(abcdefgh: UInt32): Double;
type
  TPattern = packed record
    case Boolean of
      False: (Data: Single);
      True: (
          zero: SmallInt;
          defgh000: ShortInt;
          aBbbbbbc: ShortInt;
        );
  end;
var
  a: UInt32;
  B: UInt32;
  c: UInt32;
  N: UInt32;
  F32: TPattern;
begin
  // Pattern:abcdefgh = aBbbbbbc defgh000 00000000 00000000

  a := (abcdefgh and $80) shr 7;
  B := (abcdefgh and $40) shr 6;
  c := (abcdefgh and $20) shr 5;
  N := (not B) and 1;

  { Fill aBbbbbbc field. }
  F32.aBbbbbbc := (a shl 7) or (N shl 6) or
    (B shl 5) or (B shl 4) or (B shl 3)
    or (B shl 2) or (B shl 1) or (c);

  { Fill defgh000 field. }
  F32.defgh000 := (abcdefgh and 31) shl 3;

  { The rest is just a shift. }
  F32.zero := 0;

  Result := F32.Data; // Implies hardware cast.
end;

function DecodeDoublePrecision(abcdefgh: UInt32): Double;
type
  TPattern = packed record
    case Boolean of
      False: (Data: Double);
      True: (
          Zero1: Integer;
          Zero2: SmallInt;
          bbcdefgh: ShortInt;
          aBbbbbbb: ShortInt;
        );
  end;
var
  a: UInt32;
  B: UInt32;
  N: UInt32;
  F64: TPattern absolute Result;
begin
  // Pattern:abcdefgh
  // aBbbbbbb bbcdefgh 00000000 00000000 00000000 00000000 00000000 00000000

  a := (abcdefgh and $80) shr 7;
  B := (abcdefgh and $40) shr 6;
  N := (not B) and 1;

  { Fill aBbbbbbb field. }
  F64.aBbbbbbb := (a shl 7) or (N shl 6) or
    (B shl 5) or (B shl 4) or (B shl 3) or
    (B shl 2) or (B shl 1) or (B);

  { Fill bbcdefgh field. }
  F64.bbcdefgh := (B shl 7) or (abcdefgh and 127);

  { The rest is just a shift. }
  F64.Zero1 := 0;
  F64.Zero2 := 0;
end;

{$ENDREGION 'Immediate'}

{$REGION 'Aliases helper'}


type
  UInt = UInt32;

const
  Sys_Unknown = 00;
  Sys_AT      = 01;
  Sys_DC      = 02;
  Sys_IC      = 03;
  Sys_TLBI    = 04;

function SysOp(op1, CRn, CRm, op2: UInt32): UInt32;
var
  Value: UInt32;
begin
  Value := ((op1 shl 11) or (CRn shl 7) or (CRm shl 3) or (op2));
  case Value of
    $000003C0: exit(Sys_AT);   // S1E1R
    $000023C0: exit(Sys_AT);   // S1E2R
    $000033C0: exit(Sys_AT);   // S1E3R
    $000003C1: exit(Sys_AT);   // S1E1W
    $000023C1: exit(Sys_AT);   // S1E2W
    $000033C1: exit(Sys_AT);   // S1E3W
    $000003C2: exit(Sys_AT);   // S1E0R
    $000003C3: exit(Sys_AT);   // S1E0W
    $000023C4: exit(Sys_AT);   // S12E1R
    $000023C5: exit(Sys_AT);   // S12E1W
    $000023C6: exit(Sys_AT);   // S12E0R
    $000023C7: exit(Sys_AT);   // S12E0W
    $00001BA1: exit(Sys_DC);   // ZVA
    $000003B1: exit(Sys_DC);   // IVAC
    $000003B2: exit(Sys_DC);   // ISW
    $00001BD1: exit(Sys_DC);   // CVAC
    $000003D2: exit(Sys_DC);   // CSW
    $00001BD9: exit(Sys_DC);   // CVAU
    $00001BF1: exit(Sys_DC);   // CIVAC
    $000003F2: exit(Sys_DC);   // CISW
    $00000388: exit(Sys_IC);   // IALLUIS
    $000003A8: exit(Sys_IC);   // IALLU
    $00001BA9: exit(Sys_IC);   // IVAU
    $00002401: exit(Sys_TLBI); // IPAS2E1IS
    $00002405: exit(Sys_TLBI); // IPAS2LE1IS
    $00000418: exit(Sys_TLBI); // VMALLE1IS
    $00002418: exit(Sys_TLBI); // ALLE2IS
    $00003418: exit(Sys_TLBI); // ALLE3IS
    $00000419: exit(Sys_TLBI); // VAE1IS
    $00002419: exit(Sys_TLBI); // VAE2IS
    $00003419: exit(Sys_TLBI); // VAE3IS
    $0000041A: exit(Sys_TLBI); // ASIDE1IS
    $0000041B: exit(Sys_TLBI); // VAAE1IS
    $0000241C: exit(Sys_TLBI); // ALLE1IS
    $0000041D: exit(Sys_TLBI); // VALE1IS
    $0000241D: exit(Sys_TLBI); // VALE2IS
    $0000341D: exit(Sys_TLBI); // VALE3IS
    $0000241E: exit(Sys_TLBI); // VMALLS12E1IS
    $0000041F: exit(Sys_TLBI); // VAALE1IS
    $00002421: exit(Sys_TLBI); // IPAS2E1
    $00002425: exit(Sys_TLBI); // IPAS2LE1
    $00000438: exit(Sys_TLBI); // VMALLE1
    $00002438: exit(Sys_TLBI); // ALLE2
    $00003438: exit(Sys_TLBI); // ALLE3
    $00000439: exit(Sys_TLBI); // VAE1
    $00002439: exit(Sys_TLBI); // VAE2
    $00003439: exit(Sys_TLBI); // VAE3
    $0000043A: exit(Sys_TLBI); // ASIDE1
    $0000043B: exit(Sys_TLBI); // VAAE1
    $0000243C: exit(Sys_TLBI); // ALLE1
    $0000043D: exit(Sys_TLBI); // VALE1
    $0000243D: exit(Sys_TLBI); // VALE2
    $0000343D: exit(Sys_TLBI); // VALE3
    $0000243E: exit(Sys_TLBI); // VMALLS12E1
    $0000043F: exit(Sys_TLBI); // VAALE1
  end;
  Result := Sys_Unknown;
end;

function MoveWidePreferred(sf, immN, imms, immr: UInt32): Boolean;
var
  S: UInt32;
  R: UInt32;
  Width: UInt32;
begin
  { Return TRUE if a bitmask immediate encoding would generate an immediate
    value that could also be represented by a single MOVZ or MOVN instruction.
    Used as a condition for the preferred MOV<-ORR alias. }

  S := UInt(imms);
  R := UInt(immr);

  if (sf = 0) then
  begin
    Width := 32;
    // element size must equal total immediate size.
    if (((immN shl 7) or imms) and $180 <> 00) then
      exit(False);
  end
  else
  begin
    Width := 64;
    // element size must equal total immediate size.
    if (immN = 0) then
      exit(False);
  end;

  // for MOVZ must contain no more than 16 ones.
  if S < 16 then
    // ones must not span halfword boundary when rotated.
    exit((-R mod 16) <= (15 - S));

  // for MOVN must contain no more than 16 zeros.
  if (S >= Width - 15) then
    // zeros must not span halfword boundary when rotated
    exit((R MOD 16) <= (S - (Width - 15)));

  Result := False;
end;

function BFXPreferred(sf, uns, imms, immr: UInt32): Boolean;
begin
  { Return TRUE if UBFX or SBFX is the preferred disassembly of a
    UBFM or SBFM bitfield instruction. Must exclude more specific
    aliases UBFIZ, SBFIZ, UXT[BH], SXT[BHW], LSL, LSR and ASR. }

  // must not match UBFIZ/SBFIX alias
  if UInt(imms) < UInt(immr) then
    exit(False);

  // must not match LSR/ASR/LSL alias (imms == 31 or 63)
  if (imms = ((sf shl 5) or $1F)) then
    exit(False);

  // must not match UXTx/SXTx alias
  if (immr = 000000) then
  begin
    // must not match 32-bit UXT[BH] or SXT[BH]
    if ((sf = 0) and (imms in [7, $F])) then
      exit(False);

    // must not match 64-bit SXT[BHW]
    if (((sf = 1) and (uns = 0)) and (imms in [7, $F, $1F])) then
      exit(False);
  end;

  // must be UBFX/SBFX alias
  Result := True;
end;

{$ENDREGION}

{$I aarch64-aliascond.inc}


function DecodeShift(Shift: UInt32): TA64Shifter;
const
  Shift2Shift: array [0 .. 3] of TA64Shifter = (
    sfLsl, // b00.
    sfLsr, // b01.
    sfAsr, // b10.
    sfRor  // b11.
    );
begin
  Result := Shift2Shift[Shift];
end;

function DecodeRegExtend(Option: UInt32): TA64Shifter;
const
  Option2Extend: array [0 .. 7] of TA64Shifter = (
    sfUxtb,         // b000
    sfUxth,         // b001
    sfUxtw, { LSL } // b010
    sfUxtx, { LSL } // b011
    sfSxtb,         // b100
    sfSxth,         // b101
    sfSxtw,         // b110
    sfSxtx          // b111
    );
begin
  Result := Option2Extend[Option];
end;

function DecodeIndex(Code: UInt32; IClass: TA64Class; Ts: TA64Arrangement; Order: Integer; out Index: Integer; out FixRegNo: Boolean): Boolean;
var
  Shift: Integer;
  L: Integer;
  H: Integer;
  M: Integer;
begin
  FixRegNo := False;
  if ((IClass = c_asimdins) or (IClass = c_asisdone)) then
  begin
    // Index encoded in 'imm5 && imm4'.
    case Ts of
      T_B: Shift := 1;
      T_H: Shift := 2;
      T_S: Shift := 3;
      T_D: Shift := 4;
    else exit(False);
    end;
    if (Order = 1) then
    begin
      // First Index is encoded in imm5.

      Index := ExtractField(Code, FLD_imm5, IClass);
      if (Index = 0) then
        exit(False);

      Index := Index shr Shift;
      exit(True);
    end
    else if (Order = 2) then
    begin
      // Secodn Index is encoded in imm4.
      // eg: MOV  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>].
      Dec(Shift);
      Index := ExtractField(Code, FLD_imm4, IClass);
      Index := Index shr Shift;
      exit(True);
    end;
  end
  else if ((IClass = c_asimdelem) or (IClass = c_asisdelem)) then
  begin
    // Single index && encoded in 'size:L:H:M'.
    // eg: MLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>].
    L := ExtractField(Code, FLD_L, IClass);
    H := ExtractField(Code, FLD_H, IClass);
    M := ExtractField(Code, FLD_M, IClass);
    case Ts of
      T_B:
        begin
          // Special case !
          // UDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>].
          Index := (H shl 1) or L;
        end;
      T_H:
        begin
          Index := (H shl 2) or (L shl 1) or M;

          { The last bit of Rm encodes index and not RegNo.
            Thus, only [v0 .. v15] can be used ! }
          FixRegNo := True;
        end;
      T_S: Index := (H shl 1) or L;
      T_D: Index := H;
    else exit(False);
    end;
    exit(True);
  end
  else if (IClass = c_crypto3_imm2) then
  begin
    // Index encoded in 'imm2'.
    // eg: SM3TT1A  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>].
    Index := ExtractField(Code, FLD_imm2, IClass);
    exit(True);
  end;
  Result := False;
end;

function DecodeNothing(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
begin
{$IFDEF DEVMODE}
  Die('DecodeNothing should not be called.');
{$ENDIF DEVMODE}
  Result := True;
end;

function DecodeSysRegister(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  OpCode: UInt32;
  o0: UInt32;
  op1: UInt32;
  CRn: UInt32;
  CRm: UInt32;
  op2: UInt32;
  Imm: Integer;
begin
  { TODO: Instead of decoding them as imm,
    decode them as system register. }
  // o0:op1:CRn:CRm:op2
  OpCode := Insn.OpCode;
  o0 := (OpCode and $80000) shr 19;
  op1 := (OpCode and $70000) shr 16;
  CRn := ExtractField(OpCode, FLD_CRn, Insn.IClass);
  CRm := ExtractField(OpCode, FLD_CRm, Insn.IClass);
  op2 := (OpCode and $E0) shr 5;
  Imm := (op2) or (CRm shl 3) or (CRn shl 7) or (op1 shl 11) or (o0 shl 14);
  Operand.OperandType := otImmediate;
  Operand.Immediate.AsInt := Imm;
  Result := True;
end;

function DecodeRegister(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
const
  FSize2Class: array [0 .. 4] of TRegisterClass = (
    REG_CLASS_B, // 00.
    REG_CLASS_H, // 01.
    REG_CLASS_S, // 02.
    REG_CLASS_D, // 03.
    REG_CLASS_Q  // 04.
    );

  FType2Class: array [0 .. 3] of TRegisterClass = (
    REG_CLASS_S, // 00.
    REG_CLASS_D, // 01.
    REG_CLASS_Q, // 02.
    REG_CLASS_H  // 03.
    );

var
  Code: UInt32;
  IClass: TA64Class;
  Internal: PInternalStruct;
  RegClass: TRegisterClass;
  LShifter: TA64Shifter;
  T: TA64Arrangement;
  Reg: TA64Register;
  RegNo: UInt32;
  LAmount: Integer;
  LIndex: Integer;
  Value: UInt32;
  FixRm: Boolean;
begin
  Operand.OperandType := otRegister;
  RegClass := Info.Register.RegClass;
  if (RegClass = REG_CLASS_PAIR) then
  begin
    // Special case where current register depends on the previous register.
    Reg := Insn.Operands[Operand.ID - 1].Register;
    // Doesn't make sence if the previous register is '31' !
    if ((Reg = REG_WZR) or (Reg = REG_WSP) or (Reg = REG_XZR) or (Reg = REG_SP)) then
      exit(False);
    Inc(Reg);
    Operand.Register := Reg;
    exit(True);
  end;

  { Initialization }
  Internal := PInternalStruct(Insn.Internal);
  Code := Insn.OpCode;
  IClass := Insn.IClass;
  T := T_NONE;
  LIndex := -1;
  LAmount := 0;
  LShifter := sfNone;
  FixRm := False;

  // Extract register NO.
  RegNo := ExtractField(Code, Info.Register.RegNo, IClass);

  // Unpack register class.
  case RegClass of
    REG_CLASS_R: RegClass := Internal^.RegR;               // GP:[W|X].
    REG_CLASS_F: RegClass := FType2Class[Internal^.FType]; // FPU:[H|S|D|Q].
    REG_CLASS_O: RegClass := FType2Class[Internal^.FOpc];  // FPU:[H|S|D|Q].
    REG_CLASS_N: RegClass := FSize2Class[Internal^.FSize + Info.Register.Patch]; // Scalar.
  end;

  if ((RegClass = REG_CLASS_W) or (RegClass = REG_CLASS_X)) then
  begin
    { Info that only apply to general purpose register. }

    { If instruction supports SP register and (RegNo = 31)
      then we must switch from (WZR|XZR) register to (WSP|SP) register. }
    if ((RegNo = 31) and Info.Register.SP) then
      Inc(RegNo); // Skip (WZR|XZR).

    // Decode extend/shift.
    if (Kind = Rm_EXT) then
    begin
      Value := ExtractField(Code, FLD_option, IClass);
      LShifter := DecodeRegExtend(Value);
      LAmount := ExtractField(Code, FLD_imm3, IClass);
      if (LAmount > 4) then
        exit(False); // Reserved value.
      { Registers that support extend, do not use selector.
        As we applied a selector 'R' to that argument, a fix is necessary ! }
      if ((Value and $03) = $03) then
      begin
        if ((LAmount > 0) and (Internal^.SP)) then
          LShifter := sfLsl; // User friendly fixup.
      end
      else
      begin
        if RegClass = REG_CLASS_X then
          RegClass := REG_CLASS_W;
        if ((LAmount > 0) and (Internal^.SP) and (Value = 2)) then
          LShifter := sfLsl; // User friendly fixup.
      end;
    end
    else if (Kind = Rm_SFT) then
    begin
      Value := ExtractField(Code, FLD_shift, IClass);
      LShifter := DecodeShift(Value);
      LAmount := ExtractField(Code, FLD_imm6, IClass);
    end;
  end
  else if (RegClass = REG_CLASS_V) then
  begin
    // Decode arrangement specifier.
    { If the arrangement was already specified, we use that arrangement.
      Otherwise, we decode it against the standard decoder and we apply patch. }
    T := Info.Register.T;
    if (T = T_NONE) then
      T := QSize2T[Internal^.QSize + Info.Register.Patch];
  end
  else if (RegClass = REG_CLASS_E) then
  begin
    Inc(Internal^.IndexOrder); // Distinguish between <Index1> and <Index2>.

    { First, check if Ts is constant.
      If so we use that value. }
    T := Info.Register.T;
    // Not a constant ? check if it exists in the cache.
    if (T = T_NONE) then
      T := Internal^.Ts;

    if (T = T_NONE) then
    begin
      { Arriving here, means that Ts was not resolved during the process.
        And operand that uses Ts is likely the first one or the second one.
        Mostly its a call from c_asimdins instructions. }
      if (IClass = c_asimdins) then
      begin
        // eg: UMOV  <Wd>, <Vn>.<Ts>[<index>].
        if (Internal^.QSize >= Length(QSize2Ts)) then
          exit(False); // Wrong value.
        T := QSize2Ts[Internal^.QSize];
      end
      else
      begin
        // Special cases.
        if Insn.IID = INSN_FMOV then
        begin
          // c_float2int: FMOV  <Vd>.D[1], <Xn>
          // c_float2int: FMOV  <Xd>, <Vn>.D[1]
          T := T_D;
          LIndex := 1;
        end
        else if (Insn.IID = INSN_SM3TT2B) then
        begin
          // c_crypto3_imm2: SM3TT2B  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]
          T := T_S
        end
        else
          exit(False); // Unkown Ts !
      end;
    end;
    // If Index was not resolved => Decode it.
    if (LIndex < 0) and not DecodeIndex(Code, IClass, T, Internal^.IndexOrder, LIndex, FixRm) then
      exit(False);
    RegClass := REG_CLASS_V;
  end;

  // Cache useful information.

  { As we are processing, we try to resolve Ts at early stage.
    Lucky of us, Ts depends on the last arrangement/scalar register.
    So as long as there is a valid Ts we cache it. }
  if (ArrangementInfo[T].Ts <> T_NONE) then
    Internal^.Ts := ArrangementInfo[T].Ts
  else if (RegisterClassInfo[RegClass].Ts <> T_NONE) then
    Internal^.Ts := RegisterClassInfo[RegClass].Ts;

  if FixRm { M:Rm } then
    RegNo := RegNo and $0F; // Drop M field.

  with Operand do
  begin
    Register := MakeRegister(RegClass, RegNo);
    if ((Register = REG_WSP) or (Register = REG_SP)) then
      Internal^.SP := True;
    if (T <> T_NONE) then
    begin
      Include(Flags, ofArrangement);
      Arrangement := T;
      Index := LIndex;
    end
    else if (LShifter <> sfNone) then
    begin
      Include(Flags, ofShifter);
      Shifter := LShifter;
      Amount := LAmount;
    end;
    if (Info.Register.RegNo = FLD_Rd) then
      Include(Flags, ofDestination);
  end;
  Result := True;
end;

function DecodeList(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
const
  opcode2Len: array [0 .. 10] of UInt8 = (4, 4, 4, 4, 3, 3, 3, 1, 2, 2, 2);
var
  Internal: PInternalStruct;
  IClass: TA64Class;
  Len: UInt32;
  RegNo: UInt32;
  OpCode: UInt32;
  T: TA64Arrangement;
  S: UInt32;
  Q: UInt32;
  Size: UInt32;
  LIndex: Integer;
begin

  Operand.OperandType := otList;

  IClass := Insn.IClass;
  Internal := PInternalStruct(Insn.Internal);
  LIndex := -1;

  // Extract reg NO (Vx).
  RegNo := ExtractField(Insn.OpCode, Info.List.Base, IClass);

  if (Info.List.Element) then
  begin
    { List[Index] }
    // eg: LD3  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]

    // List count = number of element.
    Len := GetElementCountFromIID(Insn.IID);

    // Decode [opcode|S|Q|size] fields.
    // opcode = [xx][x].
    OpCode := ExtractField(Insn.OpCode, FLD_opcode, IClass) shr 1;
    S := ExtractField(Insn.OpCode, FLD_S, IClass);

    // Use the cache for [Q|size].
    Q := Internal^.QSize and 1;
    Size := Internal^.FSize;

    case OpCode of
      00:
        begin
          T := T_B;
          // Index encoded in 'Q:S:size'.
          LIndex := (Q shl 3) or (S shl 2) or Size;
        end;
      01:
        begin
          T := T_H;
          // Index encoded in 'Q:S:size<1>'.
          LIndex := (Q shl 2) or (S shl 1) or (Size shr 1);
        end;
      02:
        begin
          if (Size <> 0) then
          begin
            T := T_D;
            // Index encoded in 'Q'.
            LIndex := Q;
          end
          else
          begin
            T := T_S;
            // Index encoded in 'Q:S'.
            LIndex := (Q shl 1) or S;
          end;
        end;
    else exit(False);
    end;
  end
  else
  begin
    { VList }
    // eg: LD1  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <Xm>

    // Special case when list count is encoded in len.
    if (IClass = c_asimdtbl) then
    begin
      // Only valid for TBL/TBX instructions.
      // eg:
      // TBL  <Vd>.<Ta>, { <Vn>.16B }, <Vm>.<Ta>
      // TBX  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>
      // Arrangement = 16B.
      Len := ExtractField(Insn.OpCode, FLD_len, c_asimdtbl) + 1;
      if (Len > 4) then
        exit(False);
      T := T_16B;
    end
    else
    begin
      case Insn.IID of
        { Count = number of element. }
        INSN_LD1R, INSN_LD2R, INSN_LD3R, INSN_LD4R:
          Len := GetElementCountFromIID(Insn.IID);
      else
        begin
          // Get len from opcode.
          OpCode := ExtractField(Insn.OpCode, FLD_opcode, IClass);
          if (OpCode > UInt32(Length(opcode2Len))) then
            exit(False);
          Len := opcode2Len[OpCode];
        end;
      end;
      T := QSize2T[Internal^.QSize];
    end;
  end;

  with Operand do
  begin
    List.Base := MakeRegister(REG_CLASS_V, RegNo);
    List.Count := Len;
    Arrangement := T;
    Index := LIndex;
  end;
  Result := True;
end;

function DecodeMemory(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  Code: UInt32;
  IClass: TA64Class;
  Flags: UInt32;
  BaseNo: UInt32;
  RegOffsetNo: UInt32;
  Scale: Integer;
  Imm32: Integer;
  Sign: Integer;
  T: TA64Arrangement;
  LShifter: TA64Shifter;
  Amount: Integer;
  RegClass: TRegisterClass;
  Value: UInt32;
  MemFlags: TMemoryFlags;
begin
  Code := Insn.OpCode;
  IClass := Insn.IClass;
  Flags := Info.Memory.Flags;
  Sign := Info.Memory.Sign;

  Scale := 1;
  Imm32 := 0;
  Amount := 0;
  RegOffsetNo := 0;
  LShifter := sfNone;
  RegClass := REG_CLASS_NONE;

  MemFlags := [];

  BaseNo := ExtractField(Code, FLD_Rn, IClass);
  if BaseNo = 31 then
    Inc(BaseNo); // SP.

  if (Kind = addr_struct) then
  begin
    // Special case!
    Value := ExtractField(Code, FLD_Rm, IClass);
    Include(MemFlags, mfPostIndex);
    if (Value = 31) then
    begin
      { Offset is immediate. }
      // eg: ST4  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], #32.
      T := Insn.Operands[0].Arrangement;
      case Insn.IID of
        INSN_LD1R, INSN_LD2R, INSN_LD3R, INSN_LD4R:
          begin
            // Not scaled => Scale = 1.
          end;
      else
        begin
          Scale := ArrangementInfo[T].Lanes;
          if (Scale = 0) then
            Scale := 1; // Ts.
        end;
      end;
      Imm32 := Insn.Operands[0].List.Count * ArrangementInfo[T].ElementSize * Scale;
    end
    else
    begin
      { Offset is register. }
      // eg: ST4  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], <Xm>.
      RegClass := REG_CLASS_X;
      RegOffsetNo := Value;
    end;
  end
  else if (Flags and MEM_REGOFF <> 0) then
  begin
    { Memory with register offset. }
    RegOffsetNo := ExtractField(Code, FLD_Rm, IClass);
    Value := ExtractField(Code, FLD_option, IClass);
    LShifter := DecodeRegExtend(Value);

    { R is encoded in option<0> }
    if ((Value and $1) <> $0) then
      RegClass := REG_CLASS_X
    else
      RegClass := REG_CLASS_W;

    if (Value = 3) then
      LShifter := sfLsl; // User friendly fixup.

    Value := ExtractField(Code, FLD_S, IClass);
    if (Value <> 0) then
    begin
      Scale := GetDataSize(Insn, False);
      case Scale of
        1: Scale := 0;  { B }
        2: Scale := 1;  { H }
        4: Scale := 2;  { W|S }
        8: Scale := 3;  { X|D }
        16: Scale := 4; { Q }
      else exit(False);
      end;
      Amount := Scale;
    end;
  end
  else if (Info.Memory.Imm[0] <> FLD_None) then
  begin
    { Memory with immediate offset. }
    Imm32 := ExtractFields(Code, Info.Memory.Imm, IClass);
    if (Flags and MEM_SCALED <> 0) then
    begin
      { Scaled offset. }
      Scale := GetDataSize(Insn, False);
      Assert(Scale > 0);
    end;
    if (Sign >= 0) then
      Imm32 := SignExtend(Imm32, Sign);
    Imm32 := Imm32 * Scale;
  end;

  { Write back ? }
  case IClass of
    c_ldst_immpost, c_ldstpair_post: Include(MemFlags, mfPostIndex);
    c_ldst_immpre, c_ldstpair_pre: Include(MemFlags, mfPreIndex);
  end;

  with Operand.Memory do
  begin
    Operand.OperandType := otMemory;
    Flags := MemFlags;
    Base := MakeRegister(REG_CLASS_X, BaseNo);
    if (Imm32 <> 0) then
    begin
      Include(Flags, mfOffsetImm);
      Offset.AsImm := Imm32;
    end
    else if (RegClass <> REG_CLASS_NONE) then
    begin
      Include(Flags, mfOffsetReg);
      Offset.AsReg := MakeRegister(RegClass, RegOffsetNo);
      if (LShifter <> sfNone) then
      begin
        Include(Operand.Flags, ofShifter);
        Operand.Shifter := LShifter;
        Operand.Amount := Amount;
      end
    end;
  end;
  Result := True;
end;

function DecodeImmediate(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  Code: UInt32;
  Internal: PInternalStruct;
  IClass: TA64Class;
  LShifter: TA64Shifter;
  LAmount: UInt32;
  DataSize: UInt32;
  cmode: UInt32;
  IsFP: Boolean;
  Imm: Int64;
  FPImm: Double absolute Imm;
begin
  Operand.OperandType := otImmediate;
  Code := Insn.OpCode;
  IClass := Insn.IClass;
  Internal := PInternalStruct(Insn.Internal);

  IsFP := False;
  LShifter := sfNone;
  LAmount := 0;

  Imm := ExtractFields(Code, Info.Immediate.Fields, IClass);
  DataSize := GetDataSize(Insn, False);

  { Decode shift if exists. }
  case Info.Immediate.Shift of
    FLD_hw:
      begin
        // Imm for c_movewide instructions.
        LAmount := ExtractField(Code, FLD_hw, IClass) * 16;
        LShifter := sfLsl;
      end;
    FLD_shift:
      begin
        // Imm for c_addsub_imm instructions.
        LAmount := ExtractField(Code, FLD_shift, IClass) * 12;
        if (LAmount > 12) then
          exit(False);
        LShifter := sfLsl;
      end;
    FLD_cmode:
      begin
        cmode := ExtractField(Code, FLD_cmode, IClass);
        LShifter := sfLsl;
        case DataSize of
          1: { 8-bit variant }
            begin
              // MOVI <Vd>.<T>, #<imm8>{, LSL #0}
              LAmount := 0;
            end;
          2: { 16-bit variant }
            begin
              // Amount encoded in cmode<1>.
              LAmount := ((cmode shr 1) and 1) * 8;
            end;
          4: { 32-bit variant }
            begin
              { If LSL, amount is encoded in cmode<2:1>.
                If MSL, amount is encoded in cmode<0>. }
              if ((cmode and $0E) = $0C) then
              begin
                // 32-bit shifting ones (op == 0 && cmode == 110x).
                LShifter := sfMsl;
                // Amount either 8 or 16.
                LAmount := ((cmode and 1) + 1) shl 3;
              end
              else
              begin
                { cmode<2:1>      <amount>
                  b00        =>    0
                  b01        =>    8
                  b10        =>    16
                  b11        =>    24 }
                LAmount := ((cmode shr 1) and 3) shl 3;
              end;
            end;
        else
          Die('Unkown data size for imm.');
        end;
      end;
  end;

  case Kind of
    ImmFP, ImmFP8:
      begin
        { AdvSIMD modified immediate. }
        // eg: FMOV <Vd>.<T>, #<imm>
        IsFP := True;
        case DataSize of
          2: FPImm := DecodeHalfPrecision(Imm);
          4: FPImm := DecodeSinglePrecision(Imm);
          8: FPImm := DecodeDoublePrecision(Imm);
        else exit(False);
        end;
      end;
    ImmLong:
      begin
        // eg: MOVI <Vd>.2D, #<imm>
        Imm := DecodeImmLong(Imm);
      end;
    ImmLog:
      begin
        // eg: EOR <Xd|SP>, <Xn>, #<imm>
        Result := DecodeImmLog(Imm, DataSize, Imm);
        if (not Result) then
          exit;
      end;
    ImmWide:
      begin
        { Maybe it's an alias to (MOVN || MOVZ)?
          So we need to remove the shift. }
        if (Assigned(Internal^.From)) then
        begin
          // MOVZ <Wd>, #<imm16>, LSL #<shift> ==>  MOV <Wd>, #<imm>.
          Imm := Imm shl LAmount;
          LShifter := sfNone;
          LAmount := 0;
          if (Internal^.From^.IID = INSN_MOVN) then
          begin
            // Inverted immediate.
            // MOVN <Wd>, #<imm16>, LSL #<shift> ==> MOV <Wd>, #<imm>.
            Imm := not Imm;
          end;
        end;
      end;
  end;

  with Operand do
  begin
    if (LShifter <> sfNone) then
      Include(Flags, ofShifter);
    Immediate.FP := IsFP;
    Immediate.AsInt := Imm;
    Shifter := LShifter;
    Amount := LAmount;
  end;
  Result := True;
end;

function DecodeCondition(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  Value: UInt32;
begin
  Value := ExtractField(Insn.OpCode, Info.Fields[0], Insn.IClass);
  Operand.OperandType := otCondition;
  Operand.Condition := TA64Condition(Value);
  Result := True;
end;

function DecodeFBits(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  Value: UInt32;
  DataSize: UInt32;
begin
  Value := ExtractFields(Insn.OpCode, Info.Fields, Insn.IClass);
  if Kind = FBits then
    Value := 64 - Value
  else { FBitsR }
  begin
    DataSize := GetDataSize(Insn, False);
    Value := (DataSize * 8 * 2) - Value;
  end;
  Operand.OperandType := otImmediate;
  Operand.Immediate.AsInt := Value;
  Result := True;
end;

function DecodeImmShift(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
const
  immh2Shift: array [0 .. 3] of UInt32 = (
    08,
    16,
    32,
    64
    );
var
  Internal: PInternalStruct;
  Value: UInt32;
  Immh: UInt32;
  DataSize: UInt32;
begin
  Internal := Insn.Internal;
  Value := ExtractFields(Insn.OpCode, Info.Fields, Insn.IClass);
  DataSize := GetDataSize(Insn, True) shl 3;
  if ((Kind = ShiftLeft) or (Kind = ShiftRight)) then
  begin
    // Immh not always decoded from DecodePreliminary.
    // eg: SHL <V><d>, <V><n>, #<shift>.
    Immh := ExtractField(Insn.OpCode, FLD_immh, Insn.IClass);
    if (Immh = 0) then
      exit(False); // A constraint.
    Immh := ScanBit(Immh, False);
    if (Kind = ShiftLeft) then
      Value := Value - immh2Shift[Immh]
    else if (Kind = ShiftRight) then
      Value := immh2Shift[Immh] * 2 - Value;
  end
  else if (Kind = ShiftLL) then
  begin
    // shift encoded in size.
    // eg: SHLL{2} <Vd>.<Ta>, <Vn>.<Tb>, #<shift>.
    Value := immh2Shift[Value];
  end
  else
  begin
    // Simple shift.
    if (Assigned(Internal^.From)) then
    begin
      if (Insn.IID = INSN_LSL) then
      begin
        // Shift encoded in 'imms'.
        Assert(Info.Fields[0] = FLD_imms);

        { Check constraint 'imms!=x11111'
          since imms='x11111' decodes 'lsr'. }
        if ((Value and $1F) = $1F) then
          exit(False);

        // LSL <Wd>, <Wn>, #<shift> ==> UBFM <Wd>, <Wn>, #(-<shift> MOD 32), #(31-<shift>)
        Value := (DataSize - (Value + 1)); // imms + 1 = immr.
      end;
    end;
  end;

  { A shift value is considered as invalid
    if it's out of register/lane bounds. }
  if (Value > DataSize) then
    exit(False);

  Operand.OperandType := otImmediate;
  Operand.Immediate.AsInt := Value;
  Result := True;
end;

function DecodeRotate(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
const
  Rot2Rot: array [0 .. 3] of UInt32 = (
    000, { b00 }
    090, { b01 }
    180, { b10 }
    270  { b11 }
    );
var
  Value: UInt32;
begin
  Value := ExtractFields(Insn.OpCode, Info.Fields, Insn.IClass);
  case Kind of
    Rot1:
      begin
        // eg: FCADD <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>
        if (Value = 0) then
          Value := 90
        else
          Value := 270;
      end;
    Rot2, Rot3:
      begin
        // eg: FCMLA <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>
        Value := Rot2Rot[Value];
      end;
  end;
  Operand.OperandType := otImmediate;
  Operand.Immediate.AsInt := Value;
  Result := True;
end;

function DecodeConstant(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
begin
  { Those are constants directly embedded in the instruction.
    So no decoding is required for them. }
  case Kind of
    Cnst0: { 0 }
      begin
        Operand.OperandType := otImmediate;
        Operand.Immediate.AsInt := 0;
      end;
    CnstFP0: { 0.0 }
      begin
        Operand.OperandType := otImmediate;
        Operand.Immediate.AsFP := 0.0;
        Operand.Immediate.FP := True;
      end;
    Cnst_CSYNC:
      begin
        Operand.OperandType := otHint;
        Operand.Hint := htCsync;
      end;
  else Die('Constant not handled.');
  end;
  Result := True;
end;

function DecodePseudoImm(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  Internal: PInternalStruct;
  Alias: TA64InstructionIID;
  Value: UInt32;
  DataSize: UInt32;
begin
  Internal := PInternalStruct(Insn.Internal);
  Value := ExtractFields(Insn.OpCode, Info.Fields, Insn.IClass);
  Operand.OperandType := otImmediate;
  Alias := Insn.IID;
  if (Assigned(Internal^.From)) then
  begin
    DataSize := GetDataSize(Insn, False) * 8;
    case Kind of
      Lsb, LsbR:
        begin
          if ((Alias = INSN_UBFIZ) or (Alias = INSN_SBFIZ) or (Alias = INSN_BFI) or (Alias = INSN_BFC)) then
          begin
            // BFI <Wd>, <Wn>, #<lsb>, #<width>   ==> BFM <Wd>, <Wn>, #(-<lsb> MOD 32), #(<width>-1)
            // BFC <Wd>, #<lsb>, #<width>         ==> BFM <Wd>, WZR, #(-<lsb> MOD 32), #(<width>-1)
            // UBFIZ <Wd>, <Wn>, #<lsb>, #<width> ==> UBFM <Wd>, <Wn>, #(-<lsb> MOD 32), #(<width>-1)
            // SBFIZ <Wd>, <Wn>, #<lsb>, #<width> ==> SBFM <Wd>, <Wn>, #(-<lsb> MOD 32), #(<width>-1)
            Value := (DataSize - Value) and (DataSize - 1);
          end;
        end;
      Width:
        begin
          if ((Alias = INSN_BFXIL) or (Alias = INSN_UBFX) or (Alias = INSN_SBFX)) then
          begin
            // BFXIL <Wd>, <Wn>, #<lsb>, #<width> ==> BFM <Wd>, <Wn>, #<lsb>, #(<lsb>+<width>-1)
            // UBFX <Wd>, <Wn>, #<lsb>, #<width>  ==> UBFM <Wd>, <Wn>, #<lsb>, #(<lsb>+<width>-1)
            // SBFX <Wd>, <Wn>, #<lsb>, #<width>  ==> SBFM <Wd>, <Wn>, #<lsb>, #(<lsb>+<width>-1)
            Value := Value - Insn.Operands[Operand.ID - 1].Immediate.AsInt + 1
          end
          else if ((Alias = INSN_BFI) or (Alias = INSN_BFC) or (Alias = INSN_UBFIZ) or (Alias = INSN_SBFIZ)) then
          begin
            // BFI <Wd>, <Wn>, #<lsb>, #<width>   ==> BFM <Wd>, <Wn>, #(-<lsb> MOD 32), #(<width>-1)
            // BFC <Wd>, #<lsb>, #<width>         ==> BFM <Wd>, WZR, #(-<lsb> MOD 32), #(<width>-1)
            // UBFIZ <Wd>, <Wn>, #<lsb>, #<width> ==> UBFM <Wd>, <Wn>, #(-<lsb> MOD 32), #(<width>-1)
            // SBFIZ <Wd>, <Wn>, #<lsb>, #<width> ==> SBFM <Wd>, <Wn>, #(-<lsb> MOD 32), #(<width>-1)
            Value := Value + 1;
          end;
        end;
    end;
  end;
  Operand.Immediate.AsInt := Value;
  Result := True;
end;

function DecodeLabel(var Insn: TA64Instruction; var Operand: TA64Operand; const Info: TOperandInfo; Kind: TOperandKind): Boolean;
var
  Value: UInt32;
  Scale: UInt32;
  SignPos: Integer;
begin
  Value := ExtractFields(Insn.OpCode, Info.RelPC.Imm, Insn.IClass);
  Scale := 4;
  SignPos := Info.RelPC.Sign;
  if (Kind = RelLong) then
  begin
    if (Insn.IID = INSN_ADRP) then
      Scale := 4096 // Page.
    else
      Scale := 1;
  end;
  Operand.OperandType := otLabel;
  Operand.RelOffset := SignExtend(Value, SignPos) * Scale;
  Result := True;
end;

const
  OperandDecoders: array [TOperandClass] of TOperandDecoder = (
    DecodeNothing,     // CLASS_NONE
    DecodeSysRegister, // CLASS_SYSREG
    DecodeRegister,    // CLASS_REGISTER
    DecodeCondition,   // CLASS_COND
    DecodeFBits,       // CLASS_FBITS
    DecodeImmShift,    // CLASS_SHIFT
    DecodePseudoImm,   // CLASS_NZCV
    DecodePseudoImm,   // CLASS_PSTATEFIELD
    DecodeLabel,       // CLASS_LABEL
    DecodeRotate,      // CLASS_ROTATE
    DecodeMemory,      // CLASS_MEMORY
    DecodeList,        // CLASS_LIST
    DecodePseudoImm,   // CLASS_BARRIER
    DecodePseudoImm,   // CLASS_PSEUDOIMM
    DecodeImmediate,   // CLASS_IMMEDIATE
    DecodeConstant     // CLASS_CONST
    );

function DecodePreliminary(var Insn: TA64Instruction; Flags: UInt32): Boolean;
const
  R2Class: array [Boolean] of TRegisterClass = (REG_CLASS_W, REG_CLASS_X);
var
  Intenral: PInternalStruct;
  IClass: TA64Class;
  Value: UInt32;
  Q: Integer;
  Code: UInt32;
begin
  Code := Insn.OpCode;
  IClass := Insn.IClass;
  Intenral := PInternalStruct(Insn.Internal);
  Q := -1;

  // General purpose register selector.
  if (Flags and F_SF <> 0) then
  begin
    Value := ExtractField(Code, FLD_sf, IClass);
    Intenral^.RegR := R2Class[Value <> 0];
  end
  else if (Flags and F_SFN <> 0) then
  begin
    // Inverted form.
    Value := ExtractField(Code, FLD_sfn, IClass);
    Intenral^.RegR := R2Class[Value = 0];
  end;

  if (Flags and F_TYPE <> 0) then
  begin
    // SIMD&FP selector (F).
    Value := ExtractField(Code, FLD_type, IClass);
    Intenral^.FType := Value;
  end;
  if (Flags and F_OPC <> 0) then
  begin
    // SIMD&FP selector (O).
    Value := ExtractField(Code, FLD_opc, IClass);
    Intenral^.FOpc := Value;
  end;

  if (Flags and F_Q <> 0) then
    Q := ExtractField(Code, FLD_Q, IClass);

  Value := 0;
  if (Flags and F_SIZE <> 0) then
    Value := ExtractField(Code, FLD_size, IClass)
  else if (Flags and F_IMM <> 0) then
  begin
    if ((IClass = c_asimdshf) or (IClass = c_asisdshf)) then
    begin
      Value := ExtractField(Code, FLD_immh, IClass);
      if (Value = 0) then
        exit(False); // A constraint !
      Value := ScanBit(Value, False);
    end
    else
    begin
      Value := ExtractField(Code, FLD_imm5, IClass);
      Value := Value and $0F; // Imm5 has one extra bit.
      Value := ScanBit(Value, True);
    end;
    if (Flags and (F_SF or F_SFN) = 0) then
    begin
      // SF was not selected !
      if (Value = 3) then
        Intenral^.RegR := REG_CLASS_X
      else
        Intenral^.RegR := REG_CLASS_W;
    end;
  end;

  // Check if there is an extension to the size.
  if (Flags and F_OPEXT <> 0) then
    Value := Value or (ExtractField(Code, FLD_opext, IClass) shl 2);

  // Only valid for SIMD&FP register.
  Intenral^.FSize := Value;

  // Make a QSize field.
  if (Q >= 0) then
    Value := (Value shl 1) or UInt32(Q);
  Intenral^.QSize := Value; // cache.

  Result := True;
end;

function DecodeOpcode(var Insn: TA64Instruction; const Entry: TOpcode; Index: Integer; const From: PA64Instruction = nil): Boolean;
var
  I: Integer;
  Info: POperandInfo;
  LInfo: TFieldInfo;
  Kind: TOperandKind;
  InternalStruct: TInternalStruct;
  Flags: UInt32;
  Cond: UInt32;
begin
  { opcode must match entry. }
  if ((Insn.OpCode and Entry.Mask) <> Entry.OpCode) then
    exit(False);

  Flags := Entry.Flags;

  { If instruction is an alias to another instruction and is selected conditionaly,
    We need then to check alias conditions. If conditions are met, we accept
    instruction and we continue processing, otherwise, we reject the instruction. }
  if ((Flags and F_CONDITIONALLY <> 0) and not CheckAliasConditions(Insn.OpCode, Index)) then
    exit(False);

  { Init some params. }
  Insn.Internal := @InternalStruct;
  Insn.IClass := Entry.IClass;
  Insn.IID := Entry.IID;

  FillChar(InternalStruct, SizeOf(TInternalStruct), #00);
  InternalStruct.From := From;

  { Now, we try to resolve info that need to be resolved early. }
  if (Flags and F_PRELIMINARY_MASK <> 0) and (not DecodePreliminary(Insn, Flags)) then
    exit(False);

  { Deocde operands. }
  for I := 0 to A64_MAX_OPERANDS - 1 do
  begin
    Kind := Entry.Operands[I];
    if Kind = None then
      break;
    Insn.Operands[I].ID := I;
    Info := @OperandsInfo[Kind];
    Inc(Insn.OperandCount);
    if not OperandDecoders[Info^.OperandClass](Insn, Insn.Operands[I], Info^, Kind) then
      exit(False);
  end;

  { 'B' instruction can run conditionaly. }
  if ((Insn.IID = INSN_B) and (Flags and F_COND <> 0)) then
  begin
    { cond field }
    LInfo.Pos := 0;
    LInfo.Size := 4;
    Cond := ExtractField(Insn.OpCode, LInfo);
    Insn.Condition := TA64Condition(Cond);
  end
  else
    Insn.Condition := cdNone;
  Result := True;
end;

{$IFDEF NEED_ALIAS}


function SwitchToAlias(var Insn: TA64Instruction; Index: Integer): Boolean;
var
  Entry: POpcode;
  Alias: TA64Instruction;
  OpCode: UInt32;
begin
  // Replace insn with the alias found and return true
  // if the alias we found was valid.

  OpCode := Insn.OpCode;
  Index := FindAlias(Index); // Find first alias.
  while (Index <> 0) do
  begin
    Entry := @A64Table[index];
    FillChar(Alias, SizeOf(TA64Instruction), #00);
    Alias.OpCode := OpCode;
    if (DecodeOpcode(Alias, Entry^, Index, @Insn)) then
    begin
      Insn := Alias;
      exit(True);
    end;
    Index := FindAlias(Index); // Find next alias.
  end;
  Result := False; // No alias was marked as valid.
end;
{$ENDIF NEED_ALIAS}


function DecodeInstruction(var Insn: TA64Instruction): Boolean;
var
  Index: Integer;
  Entry: POpcode;
  RealCode: UInt32;
  UserTag: NativeInt;
begin

  { Azote only works with Big-endian.
    So we need to transform Little-endian to Big-endian.
    And we restore the real code at the end. }
  RealCode := Insn.OpCode;
  if (optLittleEndian in Insn.Options) then
    Insn.OpCode := ConvertLittleToBigEndian(RealCode);

  UserTag := Insn.UserTag; // Save user tag.
  Index := FindFirstEntry(Insn.OpCode);
  while (True) do
  begin
    Entry := @A64Table[Index];
    Result := DecodeOpcode(Insn, Entry^, index);
    if (Result) then
    begin
      { Good, instruction is valid. Now we need to check if the instruction
        has aliases. If so, we try to find the best match and possibly switch
        to the selected alias as long as it meets certain conditions. }
{$IFDEF NEED_ALIAS}
      if (Entry^.Flags and F_HAS_ALIAS <> 0) then
        SwitchToAlias(Insn, Index);
{$ENDIF NEED_ALIAS}
      break;
    end;
    Index := FindNextEntry(Index);
  end;
{$IFDEF NEED_PRINTER}
  PrintSyntax(Insn.Syntax, Insn);
{$ENDIF NEED_PRINTER}
  Insn.OpCode := RealCode;
  Insn.UserTag := UserTag; // Restore user tag.
end;

end.
