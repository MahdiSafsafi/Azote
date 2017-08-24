// *********************************************************
// *                                                       *
// *     Automatically generated file => do not edit!      *
// *                                                       *
// *********************************************************
// *                                                       *
// *       https://github.com/MahdiSafsafi/Azote           *
// *                                                       *
// *********************************************************

{ ===> Alias conditions for instructions. <===

- For each conditionally instruction, this function performs tests to check 
  if the alias meets decoding conditions or not. 
    - If it meets, we should switch to that alias. 
	- If no we reject that alias and we continue looking for a valid alias.

- Instruction fields here, were transformed into masks on the fly to increase performance. }

function CheckAliasConditions(OpCode: UInt32; Index: Integer): Boolean;
begin
  case Index of
    17: { mov }
      begin
        // (Rd == '11111' || Rn == '11111')
        exit((((OpCode and $0000001F) = 31) or (((OpCode and $000003E0) shr 5) = 31)));
      end;
    656, 657, 658, 763: { cinc, cinv, cneg, ror }
      begin
        // Rn == Rm
        exit((((OpCode and $000003E0) shr 5) = ((OpCode and $001F0000) shr 16)));
      end;
    617: { lsl }
      begin
        // imms + 1 == immr
        exit((((OpCode and $0000FC00) shr 10) + 1 = ((OpCode and $003F0000) shr 16)));
      end;
    303: { mov }
      begin
        // Rm == Rn
        exit((((OpCode and $001F0000) shr 16) = ((OpCode and $000003E0) shr 5)));
      end;
    397, 398, 411, 412: { sxtl, sxtl2, uxtl, uxtl2 }
      begin
        // BitCount(immh) == 1
        exit((BitCount(((OpCode and $00780000) shr 19)) = 1));
      end;
    1187: { at }
      begin
        // SysOp(op1,'0111',CRm,op2) == Sys_AT
        exit((SysOp(((OpCode and $00070000) shr 16),7,((OpCode and $00000F00) shr 8),((OpCode and $000000E0) shr 5)) = Sys_AT));
      end;
    1195: { dc }
      begin
        // SysOp(op1,'0111',CRm,op2) == Sys_DC
        exit((SysOp(((OpCode and $00070000) shr 16),7,((OpCode and $00000F00) shr 8),((OpCode and $000000E0) shr 5)) = Sys_DC));
      end;
    1200: { ic }
      begin
        // SysOp(op1,'0111',CRm,op2) == Sys_IC
        exit((SysOp(((OpCode and $00070000) shr 16),7,((OpCode and $00000F00) shr 8),((OpCode and $000000E0) shr 5)) = Sys_IC));
      end;
    1217: { tlbi }
      begin
        // SysOp(op1,'1000',CRm,op2) == Sys_TLBI
        exit((SysOp(((OpCode and $00070000) shr 16),8,((OpCode and $00000F00) shr 8),((OpCode and $000000E0) shr 5)) = Sys_TLBI));
      end;
    621, 627: { sbfx, ubfx }
      begin
        // BFXPreferred(sf, opc<1>, imms, immr)
        exit(BFXPreferred(((OpCode and $80000000) shr 31), ((OpCode and $40000000) shr 30), ((OpCode and $0000FC00) shr 10), ((OpCode and $003F0000) shr 16)));
      end;
    718: { rev64 }
      begin
        // Never
        exit(False);
      end;
    613, 614, 619, 625: { bfc, bfi, sbfiz, ubfiz }
      begin
        // UInt(imms) < UInt(immr)
        exit(UInt(((OpCode and $0000FC00) shr 10)) < UInt(((OpCode and $003F0000) shr 16)));
      end;
    616: { bfxil }
      begin
        // UInt(imms) >= UInt(immr)
        exit(UInt(((OpCode and $0000FC00) shr 10)) >= UInt(((OpCode and $003F0000) shr 16)));
      end;
    1181: { mov }
      begin
        // ! (IsZero(imm16) && hw != '00')
        exit(not ((((OpCode and $001FFFE0) shr 5) = 00000000) and (((OpCode and $00600000) shr 21) <> 0)));
      end;
    1180: { mov }
      begin
        // ! (IsZero(imm16) && hw != '00') && ! IsOnes(imm16)
        exit(not ((((OpCode and $001FFFE0) shr 5) = 00000000) and (((OpCode and $00600000) shr 21) <> 0)) and not (((OpCode and $001FFFE0) shr 5) = $0000FFFF));
      end;
    1007: { mov }
      begin
        // ! MoveWidePreferred(sf, N, imms, immr)
        exit(not MoveWidePreferred(((OpCode and $80000000) shr 31), ((OpCode and $00400000) shr 22), ((OpCode and $0000FC00) shr 10), ((OpCode and $003F0000) shr 16)));
      end;
  end;
  Result := True; // Unconditionally.
end;
