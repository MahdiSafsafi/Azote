// *********************************************************
// *                                                       *
// *     Automatically generated file => do not edit!      *
// *                                                       *
// *********************************************************
// *                                                       *
// *       https://github.com/MahdiSafsafi/Azote           *
// *                                                       *
// *********************************************************

{ This file provides highly optimized arbitrary decision tree (ADT). 
  Totally implemented in pure assembly to achieve the following purposes:
    - Uses 8-bit registers for all decisions.
    - Aligns code address. }

function FindFirstEntry(OpCode: UInt32): Integer; {$IFDEF FPC}assembler; nostackframe; {$ENDIF FPC}
asm
{$IFDEF CPUX64}
  mov eax, ecx
{$ELSE !CPUX64}
  mov ecx, eax
{$ENDIF CPUX64}
  bswap eax
  // cl = opcode[0].
  // ch = opcode[1].
  // ah = opcode[2].
  // al = opcode[3].

  test al,   $04  // Bit 26.
  jnz  @addr0000
  test al,   $01  // Bit 24.
  jnz  @addr0001
  test al,   $02  // Bit 25.
  jnz  @addr0002
  test al,   $08  // Bit 27.
  jnz  @addr0003
  test al,   $80  // Bit 31.
  jnz  @addr0004
  // 31  |29   |28   |5    |0 
  // op=0|immlo|10000|immhi|Rd
  // e.g: ADR  <Xd>, <label>
  mov  eax, 1185
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0004:
  // 31  |29   |28   |5    |0 
  // op=1|immlo|10000|immhi|Rd
  // e.g: ADRP  <Xd>, <label>
  mov  eax, 1186
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0003:
  test al,   $10  // Bit 28.
  jnz  @addr0005
  test ah,   $40  // Bit 22.
  jnz  @addr0006
  test ah,   $80  // Bit 23.
  jnz  @addr0007
  test al,   $20  // Bit 29.
  jnz  @addr0008
  test ch,   $80  // Bit 15.
  jnz  @addr0009
  test ah,   $20  // Bit 21.
  jnz  @addr0010
  test al,   $80  // Bit 31.
  jnz  @addr0011
  test al,   $40  // Bit 30.
  jnz  @addr0012
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=00|001000|o2=0|L=0|o1=0|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: STXRB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0979
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0012:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=01|001000|o2=0|L=0|o1=0|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: STXRH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0980
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0011:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=1x|001000|o2=0|L=0|o1=0|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: STXR  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0978
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0010:
  test al,   $80  // Bit 31.
  jnz  @addr0013
  // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
  // 0 |sz|001000|o2=0|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASP  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
  mov  eax, 0949
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0013:
  // 31|30|29    |23  |22 |21  |16|15  |10 |9 |0 
  // 1 |sz|001000|o2=0|L=0|o1=1|Rs|o0=0|Rt2|Rn|Rt
  // e.g: STXP  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
  mov  eax, 0977
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0009:
  test ah,   $20  // Bit 21.
  jnz  @addr0014
  test al,   $80  // Bit 31.
  jnz  @addr0015
  test al,   $40  // Bit 30.
  jnz  @addr0016
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=00|001000|o2=0|L=0|o1=0|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: STLXRB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0975
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0016:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=01|001000|o2=0|L=0|o1=0|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: STLXRH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0976
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0015:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=1x|001000|o2=0|L=0|o1=0|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: STLXR  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0974
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0014:
  test al,   $80  // Bit 31.
  jnz  @addr0017
  // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
  // 0 |sz|001000|o2=0|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASPL  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
  mov  eax, 0952
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0017:
  // 31|30|29    |23  |22 |21  |16|15  |10 |9 |0 
  // 1 |sz|001000|o2=0|L=0|o1=1|Rs|o0=1|Rt2|Rn|Rt
  // e.g: STLXP  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
  mov  eax, 0973
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0008:
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|000|L=0|imm7|Rt2|Rn|Rt
  // e.g: STNP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0983
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0007:
  test al,   $20  // Bit 29.
  jnz  @addr0018
  test ch,   $80  // Bit 15.
  jnz  @addr0019
  test ah,   $20  // Bit 21.
  jnz  @addr0020
  test al,   $80  // Bit 31.
  jnz  @addr0021
  test al,   $40  // Bit 30.
  jnz  @addr0022
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=00|001000|o2=1|L=0|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: STLLRB  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0968
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0022:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=01|001000|o2=1|L=0|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: STLLRH  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0969
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0021:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=1x|001000|o2=1|L=0|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: STLLR  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0967
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0020:
  test al,   $80  // Bit 31.
  jnz  @addr0023
  test al,   $40  // Bit 30.
  jnz  @addr0024
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=00|001000|o2=1|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0944
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0024:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=01|001000|o2=1|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0945
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0023:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=1x|001000|o2=1|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CAS  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0937
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0019:
  test ah,   $20  // Bit 21.
  jnz  @addr0025
  test al,   $80  // Bit 31.
  jnz  @addr0026
  test al,   $40  // Bit 30.
  jnz  @addr0027
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=00|001000|o2=1|L=0|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: STLRB  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0971
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0027:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=01|001000|o2=1|L=0|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: STLRH  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0972
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0026:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=1x|001000|o2=1|L=0|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: STLR  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0970
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0025:
  test al,   $80  // Bit 31.
  jnz  @addr0028
  test al,   $40  // Bit 30.
  jnz  @addr0029
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=00|001000|o2=1|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASLB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0947
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0029:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=01|001000|o2=1|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASLH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0948
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0028:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=1x|001000|o2=1|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASL  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0946
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0018:
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|001|L=0|imm7|Rt2|Rn|Rt
  // e.g: STP  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>
  mov  eax, 0993
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0006:
  test ah,   $80  // Bit 23.
  jnz  @addr0030
  test al,   $20  // Bit 29.
  jnz  @addr0031
  test ch,   $80  // Bit 15.
  jnz  @addr0032
  test ah,   $20  // Bit 21.
  jnz  @addr0033
  test al,   $80  // Bit 31.
  jnz  @addr0034
  test al,   $40  // Bit 30.
  jnz  @addr0035
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=00|001000|o2=0|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: LDXRB  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0965
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0035:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=01|001000|o2=0|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: LDXRH  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0966
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0034:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=1x|001000|o2=0|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: LDXR  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0964
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0033:
  test al,   $80  // Bit 31.
  jnz  @addr0036
  // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
  // 0 |sz|001000|o2=0|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASPA  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
  mov  eax, 0950
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0036:
  // 31|30|29    |23  |22 |21  |20      |15  |10 |9 |0 
  // 1 |sz|001000|o2=0|L=1|o1=1|Rs=11111|o0=0|Rt2|Rn|Rt
  // e.g: LDXP  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
  mov  eax, 0963
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0032:
  test ah,   $20  // Bit 21.
  jnz  @addr0037
  test al,   $80  // Bit 31.
  jnz  @addr0038
  test al,   $40  // Bit 30.
  jnz  @addr0039
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=00|001000|o2=0|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: LDAXRB  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0958
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0039:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=01|001000|o2=0|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: LDAXRH  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0959
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0038:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=1x|001000|o2=0|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: LDAXR  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0957
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0037:
  test al,   $80  // Bit 31.
  jnz  @addr0040
  // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
  // 0 |sz|001000|o2=0|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASPAL  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
  mov  eax, 0951
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0040:
  // 31|30|29    |23  |22 |21  |20      |15  |10 |9 |0 
  // 1 |sz|001000|o2=0|L=1|o1=1|Rs=11111|o0=1|Rt2|Rn|Rt
  // e.g: LDAXP  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
  mov  eax, 0956
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0031:
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|000|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDNP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0981
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0030:
  test al,   $20  // Bit 29.
  jnz  @addr0041
  test ch,   $80  // Bit 15.
  jnz  @addr0042
  test ah,   $20  // Bit 21.
  jnz  @addr0043
  test al,   $80  // Bit 31.
  jnz  @addr0044
  test al,   $40  // Bit 30.
  jnz  @addr0045
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=00|001000|o2=1|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: LDLARB  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0961
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0045:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=01|001000|o2=1|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: LDLARH  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0962
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0044:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=1x|001000|o2=1|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
  // e.g: LDLAR  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0960
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0043:
  test al,   $80  // Bit 31.
  jnz  @addr0046
  test al,   $40  // Bit 30.
  jnz  @addr0047
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=00|001000|o2=1|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASAB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0939
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0047:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=01|001000|o2=1|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASAH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0940
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0046:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=1x|001000|o2=1|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
  // e.g: CASA  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0938
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0042:
  test ah,   $20  // Bit 21.
  jnz  @addr0048
  test al,   $80  // Bit 31.
  jnz  @addr0049
  test al,   $40  // Bit 30.
  jnz  @addr0050
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=00|001000|o2=1|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: LDARB  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0954
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0050:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=01|001000|o2=1|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: LDARH  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0955
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0049:
  // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
  // size=1x|001000|o2=1|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
  // e.g: LDAR  <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0953
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0048:
  test al,   $80  // Bit 31.
  jnz  @addr0051
  test al,   $40  // Bit 30.
  jnz  @addr0052
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=00|001000|o2=1|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASALB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0942
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0052:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=01|001000|o2=1|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASALH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0943
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0051:
  // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
  // size=1x|001000|o2=1|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
  // e.g: CASAL  <Ws>, <Wt>, [<Xn|SP>{,#0}]
  mov  eax, 0941
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0041:
  test al,   $40  // Bit 30.
  jnz  @addr0053
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|001|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDP  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>
  mov  eax, 0990
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0053:
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=01|101|V=0|001|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDPSW  <Xt1>, <Xt2>, [<Xn|SP>], #<imm>
  mov  eax, 0992
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0005:
  test al,   $20  // Bit 29.
  jnz  @addr0054
  test al,   $80  // Bit 31.
  jnz  @addr0055
  // 31    |29 |26 |25|5    |0 
  // opc=0x|011|V=0|00|imm19|Rt
  // e.g: LDR  <Wt>, <label>
  mov  eax, 1000
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0055:
  test al,   $40  // Bit 30.
  jnz  @addr0056
  // 31    |29 |26 |25|5    |0 
  // opc=10|011|V=0|00|imm19|Rt
  // e.g: LDRSW  <Xt>, <label>
  mov  eax, 1002
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0056:
  // 31    |29 |26 |25|5    |0 
  // opc=11|011|V=0|00|imm19|Rt
  // e.g: PRFM  <prfop>, <label>
  mov  eax, 1003
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0054:
  test ch,   $04  // Bit 10.
  jnz  @addr0057
  test ch,   $08  // Bit 11.
  jnz  @addr0058
  test ah,   $20  // Bit 21.
  jnz  @addr0059
  test ah,   $80  // Bit 23.
  jnz  @addr0060
  test ah,   $40  // Bit 22.
  jnz  @addr0061
  test al,   $80  // Bit 31.
  jnz  @addr0062
  test al,   $40  // Bit 30.
  jnz  @addr0063
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=00|0 |imm9|00|Rn|Rt
  // e.g: STURB  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0935
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0063:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=00|0 |imm9|00|Rn|Rt
  // e.g: STURH  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0936
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0062:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=00|0 |imm9|00|Rn|Rt
  // e.g: STUR  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0933
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0061:
  test al,   $80  // Bit 31.
  jnz  @addr0064
  test al,   $40  // Bit 30.
  jnz  @addr0065
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=01|0 |imm9|00|Rn|Rt
  // e.g: LDURB  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0927
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0065:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=01|0 |imm9|00|Rn|Rt
  // e.g: LDURH  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0928
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0064:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=01|0 |imm9|00|Rn|Rt
  // e.g: LDUR  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0925
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0060:
  test al,   $40  // Bit 30.
  jnz  @addr0066
  test al,   $80  // Bit 31.
  jnz  @addr0067
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=1x|0 |imm9|00|Rn|Rt
  // e.g: LDURSB  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0929
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0067:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=10|111|V=0|00|opc=10|0 |imm9|00|Rn|Rt
  // e.g: LDURSW  <Xt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0931
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0066:
  test al,   $80  // Bit 31.
  jnz  @addr0068
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=1x|0 |imm9|00|Rn|Rt
  // e.g: LDURSH  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0930
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0068:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=11|111|V=0|00|opc=10|0 |imm9|00|Rn|Rt
  // e.g: PRFUM <prfop>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0932
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0059:
  test ch,   $10  // Bit 12.
  jnz  @addr0069
  test ch,   $20  // Bit 13.
  jnz  @addr0070
  test ch,   $40  // Bit 14.
  jnz  @addr0071
  test ch,   $80  // Bit 15.
  jnz  @addr0072
  test ah,   $40  // Bit 22.
  jnz  @addr0073
  test ah,   $80  // Bit 23.
  jnz  @addr0074
  test al,   $80  // Bit 31.
  jnz  @addr0075
  test al,   $40  // Bit 30.
  jnz  @addr0076
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
  // e.g: STADDB  <Ws>, [<Xn|SP>]
  mov  eax, 1121
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0076:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
  // e.g: STADDH  <Ws>, [<Xn|SP>]
  mov  eax, 1122
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0075:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
  // e.g: STADD  <Ws>, [<Xn|SP>]
  mov  eax, 1120
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0074:
  test al,   $80  // Bit 31.
  jnz  @addr0077
  test al,   $40  // Bit 30.
  jnz  @addr0078
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt
  // e.g: LDADDAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1023
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0078:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt
  // e.g: LDADDAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1024
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0077:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt
  // e.g: LDADDA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1022
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0073:
  test ah,   $80  // Bit 23.
  jnz  @addr0079
  test al,   $80  // Bit 31.
  jnz  @addr0080
  test al,   $40  // Bit 30.
  jnz  @addr0081
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
  // e.g: STADDLB  <Ws>, [<Xn|SP>]
  mov  eax, 1124
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0081:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
  // e.g: STADDLH  <Ws>, [<Xn|SP>]
  mov  eax, 1125
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0080:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
  // e.g: STADDL  <Ws>, [<Xn|SP>]
  mov  eax, 1123
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0079:
  test al,   $80  // Bit 31.
  jnz  @addr0082
  test al,   $40  // Bit 30.
  jnz  @addr0083
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt
  // e.g: LDADDALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1026
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0083:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt
  // e.g: LDADDALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1027
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0082:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt
  // e.g: LDADDAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1025
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0072:
  test ah,   $40  // Bit 22.
  jnz  @addr0084
  test ah,   $80  // Bit 23.
  jnz  @addr0085
  test al,   $80  // Bit 31.
  jnz  @addr0086
  test al,   $40  // Bit 30.
  jnz  @addr0087
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1175
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0087:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1176
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0086:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWP  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1168
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0085:
  test al,   $80  // Bit 31.
  jnz  @addr0088
  test al,   $40  // Bit 30.
  jnz  @addr0089
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1170
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0089:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1171
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0088:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1169
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0084:
  test ah,   $80  // Bit 23.
  jnz  @addr0090
  test al,   $80  // Bit 31.
  jnz  @addr0091
  test al,   $40  // Bit 30.
  jnz  @addr0092
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPLB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1178
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0092:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPLH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1179
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0091:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1177
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0090:
  test al,   $80  // Bit 31.
  jnz  @addr0093
  test al,   $40  // Bit 30.
  jnz  @addr0094
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1173
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0094:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1174
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0093:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
  // e.g: SWPAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1172
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0071:
  test ch,   $80  // Bit 15.
  jnz  @addr0095
  test ah,   $40  // Bit 22.
  jnz  @addr0096
  test ah,   $80  // Bit 23.
  jnz  @addr0097
  test al,   $80  // Bit 31.
  jnz  @addr0098
  test al,   $40  // Bit 30.
  jnz  @addr0099
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
  // e.g: STSMAXB  <Ws>, [<Xn|SP>]
  mov  eax, 1145
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0099:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
  // e.g: STSMAXH  <Ws>, [<Xn|SP>]
  mov  eax, 1146
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0098:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
  // e.g: STSMAX  <Ws>, [<Xn|SP>]
  mov  eax, 1144
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0097:
  test al,   $80  // Bit 31.
  jnz  @addr0100
  test al,   $40  // Bit 30.
  jnz  @addr0101
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt
  // e.g: LDSMAXAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1074
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0101:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt
  // e.g: LDSMAXAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1075
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0100:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt
  // e.g: LDSMAXA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1073
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0096:
  test ah,   $80  // Bit 23.
  jnz  @addr0102
  test al,   $80  // Bit 31.
  jnz  @addr0103
  test al,   $40  // Bit 30.
  jnz  @addr0104
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
  // e.g: STSMAXLB  <Ws>, [<Xn|SP>]
  mov  eax, 1148
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0104:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
  // e.g: STSMAXLH  <Ws>, [<Xn|SP>]
  mov  eax, 1149
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0103:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
  // e.g: STSMAXL  <Ws>, [<Xn|SP>]
  mov  eax, 1147
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0102:
  test al,   $80  // Bit 31.
  jnz  @addr0105
  test al,   $40  // Bit 30.
  jnz  @addr0106
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt
  // e.g: LDSMAXALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1077
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0106:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt
  // e.g: LDSMAXALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1078
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0105:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt
  // e.g: LDSMAXAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1076
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0095:
  test al,   $80  // Bit 31.
  jnz  @addr0107
  test al,   $40  // Bit 30.
  jnz  @addr0108
  // 31     |29 |26 |25|23 |22 |21|20      |15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs=11111|o3=1|opc=100|00|Rn|Rt
  // e.g: LDAPRB  <Wt>, [<Xn|SP> {,#0}]
  mov  eax, 1034
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0108:
  // 31     |29 |26 |25|23 |22 |21|20      |15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs=11111|o3=1|opc=100|00|Rn|Rt
  // e.g: LDAPRH  <Wt>, [<Xn|SP> {,#0}]
  mov  eax, 1035
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0107:
  // 31     |29 |26 |25|23 |22 |21|20      |15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs=11111|o3=1|opc=100|00|Rn|Rt
  // e.g: LDAPR  <Wt>, [<Xn|SP> {,#0}]
  mov  eax, 1033
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0070:
  test ch,   $40  // Bit 14.
  jnz  @addr0109
  test ah,   $40  // Bit 22.
  jnz  @addr0110
  test ah,   $80  // Bit 23.
  jnz  @addr0111
  test al,   $80  // Bit 31.
  jnz  @addr0112
  test al,   $40  // Bit 30.
  jnz  @addr0113
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
  // e.g: STEORB  <Ws>, [<Xn|SP>]
  mov  eax, 1133
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0113:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
  // e.g: STEORH  <Ws>, [<Xn|SP>]
  mov  eax, 1134
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0112:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
  // e.g: STEOR  <Ws>, [<Xn|SP>]
  mov  eax, 1132
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0111:
  test al,   $80  // Bit 31.
  jnz  @addr0114
  test al,   $40  // Bit 30.
  jnz  @addr0115
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt
  // e.g: LDEORAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1050
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0115:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt
  // e.g: LDEORAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1051
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0114:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt
  // e.g: LDEORA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1049
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0110:
  test ah,   $80  // Bit 23.
  jnz  @addr0116
  test al,   $80  // Bit 31.
  jnz  @addr0117
  test al,   $40  // Bit 30.
  jnz  @addr0118
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
  // e.g: STEORLB  <Ws>, [<Xn|SP>]
  mov  eax, 1136
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0118:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
  // e.g: STEORLH  <Ws>, [<Xn|SP>]
  mov  eax, 1137
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0117:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
  // e.g: STEORL  <Ws>, [<Xn|SP>]
  mov  eax, 1135
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0116:
  test al,   $80  // Bit 31.
  jnz  @addr0119
  test al,   $40  // Bit 30.
  jnz  @addr0120
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt
  // e.g: LDEORALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1053
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0120:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt
  // e.g: LDEORALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1054
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0119:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt
  // e.g: LDEORAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1052
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0109:
  test ah,   $40  // Bit 22.
  jnz  @addr0121
  test ah,   $80  // Bit 23.
  jnz  @addr0122
  test al,   $80  // Bit 31.
  jnz  @addr0123
  test al,   $40  // Bit 30.
  jnz  @addr0124
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
  // e.g: STUMAXB  <Ws>, [<Xn|SP>]
  mov  eax, 1157
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0124:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
  // e.g: STUMAXH  <Ws>, [<Xn|SP>]
  mov  eax, 1158
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0123:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
  // e.g: STUMAX  <Ws>, [<Xn|SP>]
  mov  eax, 1156
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0122:
  test al,   $80  // Bit 31.
  jnz  @addr0125
  test al,   $40  // Bit 30.
  jnz  @addr0126
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt
  // e.g: LDUMAXAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1098
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0126:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt
  // e.g: LDUMAXAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1099
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0125:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt
  // e.g: LDUMAXA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1097
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0121:
  test ah,   $80  // Bit 23.
  jnz  @addr0127
  test al,   $80  // Bit 31.
  jnz  @addr0128
  test al,   $40  // Bit 30.
  jnz  @addr0129
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
  // e.g: STUMAXLB  <Ws>, [<Xn|SP>]
  mov  eax, 1160
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0129:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
  // e.g: STUMAXLH  <Ws>, [<Xn|SP>]
  mov  eax, 1161
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0128:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
  // e.g: STUMAXL  <Ws>, [<Xn|SP>]
  mov  eax, 1159
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0127:
  test al,   $80  // Bit 31.
  jnz  @addr0130
  test al,   $40  // Bit 30.
  jnz  @addr0131
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt
  // e.g: LDUMAXALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1101
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0131:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt
  // e.g: LDUMAXALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1102
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0130:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt
  // e.g: LDUMAXAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1100
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0069:
  test ch,   $20  // Bit 13.
  jnz  @addr0132
  test ch,   $40  // Bit 14.
  jnz  @addr0133
  test ah,   $40  // Bit 22.
  jnz  @addr0134
  test ah,   $80  // Bit 23.
  jnz  @addr0135
  test al,   $80  // Bit 31.
  jnz  @addr0136
  test al,   $40  // Bit 30.
  jnz  @addr0137
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
  // e.g: STCLRB  <Ws>, [<Xn|SP>]
  mov  eax, 1127
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0137:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
  // e.g: STCLRH  <Ws>, [<Xn|SP>]
  mov  eax, 1128
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0136:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
  // e.g: STCLR  <Ws>, [<Xn|SP>]
  mov  eax, 1126
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0135:
  test al,   $80  // Bit 31.
  jnz  @addr0138
  test al,   $40  // Bit 30.
  jnz  @addr0139
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt
  // e.g: LDCLRAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1038
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0139:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt
  // e.g: LDCLRAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1039
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0138:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt
  // e.g: LDCLRA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1037
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0134:
  test ah,   $80  // Bit 23.
  jnz  @addr0140
  test al,   $80  // Bit 31.
  jnz  @addr0141
  test al,   $40  // Bit 30.
  jnz  @addr0142
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
  // e.g: STCLRLB  <Ws>, [<Xn|SP>]
  mov  eax, 1130
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0142:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
  // e.g: STCLRLH  <Ws>, [<Xn|SP>]
  mov  eax, 1131
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0141:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
  // e.g: STCLRL  <Ws>, [<Xn|SP>]
  mov  eax, 1129
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0140:
  test al,   $80  // Bit 31.
  jnz  @addr0143
  test al,   $40  // Bit 30.
  jnz  @addr0144
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt
  // e.g: LDCLRALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1041
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0144:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt
  // e.g: LDCLRALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1042
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0143:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt
  // e.g: LDCLRAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1040
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0133:
  test ah,   $40  // Bit 22.
  jnz  @addr0145
  test ah,   $80  // Bit 23.
  jnz  @addr0146
  test al,   $80  // Bit 31.
  jnz  @addr0147
  test al,   $40  // Bit 30.
  jnz  @addr0148
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
  // e.g: STSMINB  <Ws>, [<Xn|SP>]
  mov  eax, 1151
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0148:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
  // e.g: STSMINH  <Ws>, [<Xn|SP>]
  mov  eax, 1152
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0147:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
  // e.g: STSMIN  <Ws>, [<Xn|SP>]
  mov  eax, 1150
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0146:
  test al,   $80  // Bit 31.
  jnz  @addr0149
  test al,   $40  // Bit 30.
  jnz  @addr0150
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt
  // e.g: LDSMINAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1086
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0150:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt
  // e.g: LDSMINAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1087
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0149:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt
  // e.g: LDSMINA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1085
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0145:
  test ah,   $80  // Bit 23.
  jnz  @addr0151
  test al,   $80  // Bit 31.
  jnz  @addr0152
  test al,   $40  // Bit 30.
  jnz  @addr0153
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
  // e.g: STSMINLB  <Ws>, [<Xn|SP>]
  mov  eax, 1154
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0153:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
  // e.g: STSMINLH  <Ws>, [<Xn|SP>]
  mov  eax, 1155
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0152:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
  // e.g: STSMINL  <Ws>, [<Xn|SP>]
  mov  eax, 1153
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0151:
  test al,   $80  // Bit 31.
  jnz  @addr0154
  test al,   $40  // Bit 30.
  jnz  @addr0155
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt
  // e.g: LDSMINALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1089
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0155:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt
  // e.g: LDSMINALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1090
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0154:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt
  // e.g: LDSMINAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1088
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0132:
  test ch,   $40  // Bit 14.
  jnz  @addr0156
  test ah,   $40  // Bit 22.
  jnz  @addr0157
  test ah,   $80  // Bit 23.
  jnz  @addr0158
  test al,   $80  // Bit 31.
  jnz  @addr0159
  test al,   $40  // Bit 30.
  jnz  @addr0160
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
  // e.g: STSETB  <Ws>, [<Xn|SP>]
  mov  eax, 1139
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0160:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
  // e.g: STSETH  <Ws>, [<Xn|SP>]
  mov  eax, 1140
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0159:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
  // e.g: STSET  <Ws>, [<Xn|SP>]
  mov  eax, 1138
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0158:
  test al,   $80  // Bit 31.
  jnz  @addr0161
  test al,   $40  // Bit 30.
  jnz  @addr0162
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt
  // e.g: LDSETAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1062
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0162:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt
  // e.g: LDSETAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1063
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0161:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt
  // e.g: LDSETA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1061
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0157:
  test ah,   $80  // Bit 23.
  jnz  @addr0163
  test al,   $80  // Bit 31.
  jnz  @addr0164
  test al,   $40  // Bit 30.
  jnz  @addr0165
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
  // e.g: STSETLB  <Ws>, [<Xn|SP>]
  mov  eax, 1142
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0165:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
  // e.g: STSETLH  <Ws>, [<Xn|SP>]
  mov  eax, 1143
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0164:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
  // e.g: STSETL  <Ws>, [<Xn|SP>]
  mov  eax, 1141
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0163:
  test al,   $80  // Bit 31.
  jnz  @addr0166
  test al,   $40  // Bit 30.
  jnz  @addr0167
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt
  // e.g: LDSETALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1065
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0167:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt
  // e.g: LDSETALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1066
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0166:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt
  // e.g: LDSETAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1064
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0156:
  test ah,   $40  // Bit 22.
  jnz  @addr0168
  test ah,   $80  // Bit 23.
  jnz  @addr0169
  test al,   $80  // Bit 31.
  jnz  @addr0170
  test al,   $40  // Bit 30.
  jnz  @addr0171
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
  // e.g: STUMINB  <Ws>, [<Xn|SP>]
  mov  eax, 1163
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0171:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
  // e.g: STUMINH  <Ws>, [<Xn|SP>]
  mov  eax, 1164
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0170:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
  // e.g: STUMIN  <Ws>, [<Xn|SP>]
  mov  eax, 1162
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0169:
  test al,   $80  // Bit 31.
  jnz  @addr0172
  test al,   $40  // Bit 30.
  jnz  @addr0173
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt
  // e.g: LDUMINAB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1110
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0173:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt
  // e.g: LDUMINAH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1111
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0172:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt
  // e.g: LDUMINA  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1109
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0168:
  test ah,   $80  // Bit 23.
  jnz  @addr0174
  test al,   $80  // Bit 31.
  jnz  @addr0175
  test al,   $40  // Bit 30.
  jnz  @addr0176
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
  // e.g: STUMINLB  <Ws>, [<Xn|SP>]
  mov  eax, 1166
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0176:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
  // e.g: STUMINLH  <Ws>, [<Xn|SP>]
  mov  eax, 1167
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0175:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
  // e.g: STUMINL  <Ws>, [<Xn|SP>]
  mov  eax, 1165
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0174:
  test al,   $80  // Bit 31.
  jnz  @addr0177
  test al,   $40  // Bit 30.
  jnz  @addr0178
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt
  // e.g: LDUMINALB  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1113
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0178:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt
  // e.g: LDUMINALH  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1114
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0177:
  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt
  // e.g: LDUMINAL  <Ws>, <Wt>, [<Xn|SP>]
  mov  eax, 1112
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0058:
  test ah,   $20  // Bit 21.
  jnz  @addr0179
  test ah,   $80  // Bit 23.
  jnz  @addr0180
  test ah,   $40  // Bit 22.
  jnz  @addr0181
  test al,   $80  // Bit 31.
  jnz  @addr0182
  test al,   $40  // Bit 30.
  jnz  @addr0183
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=00|0 |imm9|10|Rn|Rt
  // e.g: STTRB  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0923
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0183:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=00|0 |imm9|10|Rn|Rt
  // e.g: STTRH  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0924
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0182:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=00|0 |imm9|10|Rn|Rt
  // e.g: STTR  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0922
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0181:
  test al,   $80  // Bit 31.
  jnz  @addr0184
  test al,   $40  // Bit 30.
  jnz  @addr0185
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=01|0 |imm9|10|Rn|Rt
  // e.g: LDTRB  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0917
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0185:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=01|0 |imm9|10|Rn|Rt
  // e.g: LDTRH  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0918
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0184:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=01|0 |imm9|10|Rn|Rt
  // e.g: LDTR  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0916
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0180:
  test al,   $40  // Bit 30.
  jnz  @addr0186
  test al,   $80  // Bit 31.
  jnz  @addr0187
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=1x|0 |imm9|10|Rn|Rt
  // e.g: LDTRSB  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0919
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0187:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=10|111|V=0|00|opc=10|0 |imm9|10|Rn|Rt
  // e.g: LDTRSW  <Xt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0921
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0186:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=1x|0 |imm9|10|Rn|Rt
  // e.g: LDTRSH  <Wt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0920
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0179:
  test ah,   $80  // Bit 23.
  jnz  @addr0188
  test ah,   $40  // Bit 22.
  jnz  @addr0189
  test al,   $80  // Bit 31.
  jnz  @addr0190
  test al,   $40  // Bit 30.
  jnz  @addr0191
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=00|111|V=0|00|opc=00|1 |Rm|option|S |10|Rn|Rt
  // e.g: STRB  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
  mov  eax, 0914
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0191:
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=01|111|V=0|00|opc=00|1 |Rm|option|S |10|Rn|Rt
  // e.g: STRH  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0915
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0190:
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=1x|111|V=0|00|opc=00|1 |Rm|option|S |10|Rn|Rt
  // e.g: STR  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0912
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0189:
  test al,   $80  // Bit 31.
  jnz  @addr0192
  test al,   $40  // Bit 30.
  jnz  @addr0193
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=00|111|V=0|00|opc=01|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDRB  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
  mov  eax, 0906
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0193:
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=01|111|V=0|00|opc=01|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDRH  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0907
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0192:
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=1x|111|V=0|00|opc=01|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDR  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0904
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0188:
  test al,   $40  // Bit 30.
  jnz  @addr0194
  test al,   $80  // Bit 31.
  jnz  @addr0195
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=00|111|V=0|00|opc=1x|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDRSB  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
  mov  eax, 0908
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0195:
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=10|111|V=0|00|opc=10|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDRSW  <Xt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0910
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0194:
  test al,   $80  // Bit 31.
  jnz  @addr0196
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=01|111|V=0|00|opc=1x|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDRSH  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0909
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0196:
  // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size=11|111|V=0|00|opc=10|1 |Rm|option|S |10|Rn|Rt
  // e.g: PRFM  <prfop>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
  mov  eax, 0911
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0057:
  test ah,   $20  // Bit 21.
  jnz  @addr0197
  test ch,   $08  // Bit 11.
  jnz  @addr0198
  test ah,   $80  // Bit 23.
  jnz  @addr0199
  test ah,   $40  // Bit 22.
  jnz  @addr0200
  test al,   $80  // Bit 31.
  jnz  @addr0201
  test al,   $40  // Bit 30.
  jnz  @addr0202
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=00|0 |imm9|01|Rn|Rt
  // e.g: STRB  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0877
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0202:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=00|0 |imm9|01|Rn|Rt
  // e.g: STRH  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0878
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0201:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=00|0 |imm9|01|Rn|Rt
  // e.g: STR  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0875
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0200:
  test al,   $80  // Bit 31.
  jnz  @addr0203
  test al,   $40  // Bit 30.
  jnz  @addr0204
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=01|0 |imm9|01|Rn|Rt
  // e.g: LDRB  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0870
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0204:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=01|0 |imm9|01|Rn|Rt
  // e.g: LDRH  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0871
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0203:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=01|0 |imm9|01|Rn|Rt
  // e.g: LDR  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0868
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0199:
  test al,   $40  // Bit 30.
  jnz  @addr0205
  test al,   $80  // Bit 31.
  jnz  @addr0206
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=1x|0 |imm9|01|Rn|Rt
  // e.g: LDRSB  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0872
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0206:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=10|111|V=0|00|opc=10|0 |imm9|01|Rn|Rt
  // e.g: LDRSW  <Xt>, [<Xn|SP>], #<simm>
  mov  eax, 0874
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0205:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=1x|0 |imm9|01|Rn|Rt
  // e.g: LDRSH  <Wt>, [<Xn|SP>], #<simm>
  mov  eax, 0873
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0198:
  test ah,   $80  // Bit 23.
  jnz  @addr0207
  test ah,   $40  // Bit 22.
  jnz  @addr0208
  test al,   $80  // Bit 31.
  jnz  @addr0209
  test al,   $40  // Bit 30.
  jnz  @addr0210
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=00|0 |imm9|11|Rn|Rt
  // e.g: STRB  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0888
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0210:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=00|0 |imm9|11|Rn|Rt
  // e.g: STRH  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0889
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0209:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=00|0 |imm9|11|Rn|Rt
  // e.g: STR  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0886
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0208:
  test al,   $80  // Bit 31.
  jnz  @addr0211
  test al,   $40  // Bit 30.
  jnz  @addr0212
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=01|0 |imm9|11|Rn|Rt
  // e.g: LDRB  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0881
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0212:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=01|0 |imm9|11|Rn|Rt
  // e.g: LDRH  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0882
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0211:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=1x|111|V=0|00|opc=01|0 |imm9|11|Rn|Rt
  // e.g: LDR  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0879
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0207:
  test al,   $40  // Bit 30.
  jnz  @addr0213
  test al,   $80  // Bit 31.
  jnz  @addr0214
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=00|111|V=0|00|opc=1x|0 |imm9|11|Rn|Rt
  // e.g: LDRSB  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0883
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0214:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=10|111|V=0|00|opc=10|0 |imm9|11|Rn|Rt
  // e.g: LDRSW  <Xt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0885
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0213:
  // 31     |29 |26 |25|23    |21|12  |11|9 |0 
  // size=01|111|V=0|00|opc=1x|0 |imm9|11|Rn|Rt
  // e.g: LDRSH  <Wt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0884
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0197:
  test ah,   $80  // Bit 23.
  jnz  @addr0215
  // 31     |29 |26 |25|23 |22|21|12  |11|10|9 |0 
  // size=11|111|V=0|00|M=0|S |1 |imm9|W |1 |Rn|Rt
  // e.g: LDRAA  <Xt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0890
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0215:
  // 31     |29 |26 |25|23 |22|21|12  |11|10|9 |0 
  // size=11|111|V=0|00|M=1|S |1 |imm9|W |1 |Rn|Rt
  // e.g: LDRAB  <Xt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0891
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0002:
  test al,   $08  // Bit 27.
  jnz  @addr0216
  test ah,   $80  // Bit 23.
  jnz  @addr0217
  test al,   $20  // Bit 29.
  jnz  @addr0218
  test al,   $40  // Bit 30.
  jnz  @addr0219
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=00|100100|N |immr|imms|Rn|Rd
  // e.g: AND  <Wd|WSP>, <Wn>, #<imm>
  mov  eax, 1004
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0219:
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=10|100100|N |immr|imms|Rn|Rd
  // e.g: EOR  <Wd|WSP>, <Wn>, #<imm>
  mov  eax, 1006
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0218:
  test al,   $40  // Bit 30.
  jnz  @addr0220
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=01|100100|N |immr|imms|Rn|Rd
  // e.g: ORR  <Wd|WSP>, <Wn>, #<imm>
  mov  eax, 1008
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0220:
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=11|100100|N |immr|imms|Rn|Rd
  // e.g: ANDS  <Wd>, <Wn>, #<imm>
  mov  eax, 1005
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0217:
  test al,   $20  // Bit 29.
  jnz  @addr0221
  test al,   $40  // Bit 30.
  jnz  @addr0222
  // 31|30    |28    |21|5    |0 
  // sf|opc=00|100101|hw|imm16|Rd
  // e.g: MOVN  <Wd>, #<imm>{, LSL #<shift>}
  mov  eax, 1183
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0222:
  // 31|30    |28    |21|5    |0 
  // sf|opc=10|100101|hw|imm16|Rd
  // e.g: MOVZ  <Wd>, #<imm>{, LSL #<shift>}
  mov  eax, 1184
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0221:
  // 31|30    |28    |21|5    |0 
  // sf|opc=11|100101|hw|imm16|Rd
  // e.g: MOVK  <Wd>, #<imm>{, LSL #<shift>}
  mov  eax, 1182
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0216:
  test ah,   $20  // Bit 21.
  jnz  @addr0223
  test al,   $10  // Bit 28.
  jnz  @addr0224
  test al,   $20  // Bit 29.
  jnz  @addr0225
  test al,   $40  // Bit 30.
  jnz  @addr0226
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=00|01010|shift|N=0|Rm|imm6|Rn|Rd
  // e.g: AND  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1010
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0226:
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=10|01010|shift|N=0|Rm|imm6|Rn|Rd
  // e.g: EOR  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1015
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0225:
  test al,   $40  // Bit 30.
  jnz  @addr0227
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=01|01010|shift|N=0|Rm|imm6|Rn|Rd
  // e.g: ORR  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1019
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0227:
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=11|01010|shift|N=0|Rm|imm6|Rn|Rd
  // e.g: ANDS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1011
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0224:
  test ch,   $08  // Bit 11.
  jnz  @addr0228
  test ch,   $04  // Bit 10.
  jnz  @addr0229
  test ah,   $40  // Bit 22.
  jnz  @addr0230
  test ah,   $80  // Bit 23.
  jnz  @addr0231
  test al,   $20  // Bit 29.
  jnz  @addr0232
  test al,   $40  // Bit 30.
  jnz  @addr0233
  // 31|30  |29 |28      |16|15            |5 |0 
  // sf|op=0|S=0|11010000|Rm|opcode2=000000|Rn|Rd
  // e.g: ADC  <Wd>, <Wn>, <Wm>
  mov  eax, 0001
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0233:
  // 31|30  |29 |28      |16|15            |5 |0 
  // sf|op=1|S=0|11010000|Rm|opcode2=000000|Rn|Rd
  // e.g: SBC  <Wd>, <Wn>, <Wm>
  mov  eax, 0005
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0232:
  test al,   $40  // Bit 30.
  jnz  @addr0234
  // 31|30  |29 |28      |16|15            |5 |0 
  // sf|op=0|S=1|11010000|Rm|opcode2=000000|Rn|Rd
  // e.g: ADCS  <Wd>, <Wn>, <Wm>
  mov  eax, 0002
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0234:
  // 31|30  |29 |28      |16|15            |5 |0 
  // sf|op=1|S=1|11010000|Rm|opcode2=000000|Rn|Rd
  // e.g: SBCS  <Wd>, <Wn>, <Wm>
  mov  eax, 0006
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0231:
  test al,   $40  // Bit 30.
  jnz  @addr0235
  // 31|30  |29 |28      |16|12  |11|10  |5 |0 
  // sf|op=0|S=0|11010100|Rm|cond|0 |o2=0|Rn|Rd
  // e.g: CSEL  <Wd>, <Wn>, <Wm>, <cond>
  mov  eax, 0659
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0235:
  // 31|30  |29 |28      |16|12  |11|10  |5 |0 
  // sf|op=1|S=0|11010100|Rm|cond|0 |o2=0|Rn|Rd
  // e.g: CSINV  <Wd>, <Wn>, <Wm>, <cond>
  mov  eax, 0663
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0230:
  test ah,   $80  // Bit 23.
  jnz  @addr0236
  test al,   $40  // Bit 30.
  jnz  @addr0237
  // 31|30  |29 |28      |16|12  |11|10  |5 |4   |0   
  // sf|op=0|S=1|11010010|Rm|cond|0 |o2=0|Rn|o3=0|nzcv
  // e.g: CCMN  <Wn>, <Wm>, #<nzcv>, <cond>
  mov  eax, 0654
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0237:
  // 31|30  |29 |28      |16|12  |11|10  |5 |4   |0   
  // sf|op=1|S=1|11010010|Rm|cond|0 |o2=0|Rn|o3=0|nzcv
  // e.g: CCMP  <Wn>, <Wm>, #<nzcv>, <cond>
  mov  eax, 0655
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0236:
  test ch,   $10  // Bit 12.
  jnz  @addr0238
  test ch,   $20  // Bit 13.
  jnz  @addr0239
  test ch,   $40  // Bit 14.
  jnz  @addr0240
  test ah,   $01  // Bit 16.
  jnz  @addr0241
  // 31|30|29 |28      |20           |15              |11            |5 |0 
  // sf|1 |S=0|11010110|opcode2=00000|opcode[5:2]=0000|opcode[1:0]=00|Rn|Rd
  // e.g: RBIT  <Wd>, <Wn>
  mov  eax, 0714
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0241:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=000|Rn|Rd
  // e.g: PACIA  <Xd>, <Xn|SP>
  mov  eax, 0710
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0240:
  test al,   $40  // Bit 30.
  jnz  @addr0242
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=00|Rn|Rd
  // e.g: CRC32B  <Wd>, <Wn>, <Wm>
  mov  eax, 0723
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0242:
  // 31  |30|29 |28      |20           |15         |14         |13             |10 |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=1|opcode[3:1]=000|D=0|Rn=11111|Rd
  // e.g: XPACI  <Xd>
  mov  eax, 0720
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0239:
  test al,   $40  // Bit 30.
  jnz  @addr0243
  // 31|30  |29 |28      |16|15               |11    |5 |0 
  // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=00|Rn|Rd
  // e.g: LSLV  <Wd>, <Wn>, <Wm>
  mov  eax, 0732
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0243:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=000|Rn=11111|Rd
  // e.g: PACIZA  <Xd>
  mov  eax, 0712
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0238:
  test ch,   $20  // Bit 13.
  jnz  @addr0244
  test ch,   $40  // Bit 14.
  jnz  @addr0245
  test ah,   $01  // Bit 16.
  jnz  @addr0246
  // 31|30|29 |28      |20           |15               |10  |5 |0 
  // sf|1 |S=0|11010110|opcode2=00000|opcode[5:1]=00010|op=0|Rn|Rd
  // e.g: CLZ  <Wd>, <Wn>
  mov  eax, 0705
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0246:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=100|Rn|Rd
  // e.g: AUTIA  <Xd>, <Xn|SP>
  mov  eax, 0700
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0245:
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=00|Rn|Rd
  // e.g: CRC32CB  <Wd>, <Wn>, <Wm>
  mov  eax, 0724
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0244:
  test al,   $40  // Bit 30.
  jnz  @addr0247
  // 31  |30  |29 |28      |16|15            |5 |0 
  // sf=1|op=0|S=0|11010110|Rm|opcode2=001100|Rn|Rd
  // e.g: PACGA  <Xd>, <Xn>, <Xm|SP>
  mov  eax, 0735
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0247:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=100|Rn=11111|Rd
  // e.g: AUTIZA  <Xd>
  mov  eax, 0702
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0229:
  test ah,   $40  // Bit 22.
  jnz  @addr0248
  test al,   $40  // Bit 30.
  jnz  @addr0249
  // 31|30  |29 |28      |16|12  |11|10  |5 |0 
  // sf|op=0|S=0|11010100|Rm|cond|0 |o2=1|Rn|Rd
  // e.g: CSINC  <Wd>, <Wn>, <Wm>, <cond>
  mov  eax, 0662
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0249:
  // 31|30  |29 |28      |16|12  |11|10  |5 |0 
  // sf|op=1|S=0|11010100|Rm|cond|0 |o2=1|Rn|Rd
  // e.g: CSNEG  <Wd>, <Wn>, <Wm>, <cond>
  mov  eax, 0664
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0248:
  test ch,   $10  // Bit 12.
  jnz  @addr0250
  test ch,   $20  // Bit 13.
  jnz  @addr0251
  test ch,   $40  // Bit 14.
  jnz  @addr0252
  test ah,   $01  // Bit 16.
  jnz  @addr0253
  // 31|30|29 |28      |20           |15              |11    |5 |0 
  // sf|1 |S=0|11010110|opcode2=00000|opcode[5:2]=0000|opc=01|Rn|Rd
  // e.g: REV16  <Wd>, <Wn>
  mov  eax, 0716
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0253:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=001|Rn|Rd
  // e.g: PACIB  <Xd>, <Xn|SP>
  mov  eax, 0711
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0252:
  test al,   $40  // Bit 30.
  jnz  @addr0254
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=01|Rn|Rd
  // e.g: CRC32H  <Wd>, <Wn>, <Wm>
  mov  eax, 0728
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0254:
  // 31  |30|29 |28      |20           |15         |14         |13             |10 |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=1|opcode[3:1]=000|D=1|Rn=11111|Rd
  // e.g: XPACD  <Xd>
  mov  eax, 0719
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0251:
  test al,   $40  // Bit 30.
  jnz  @addr0255
  // 31|30  |29 |28      |16|15               |11    |5 |0 
  // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=01|Rn|Rd
  // e.g: LSRV  <Wd>, <Wn>, <Wm>
  mov  eax, 0734
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0255:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=001|Rn=11111|Rd
  // e.g: PACIZB  <Xd>
  mov  eax, 0713
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0250:
  test ch,   $20  // Bit 13.
  jnz  @addr0256
  test ch,   $40  // Bit 14.
  jnz  @addr0257
  test ah,   $01  // Bit 16.
  jnz  @addr0258
  // 31|30|29 |28      |20           |15               |10  |5 |0 
  // sf|1 |S=0|11010110|opcode2=00000|opcode[5:1]=00010|op=1|Rn|Rd
  // e.g: CLS  <Wd>, <Wn>
  mov  eax, 0704
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0258:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=101|Rn|Rd
  // e.g: AUTIB  <Xd>, <Xn|SP>
  mov  eax, 0701
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0257:
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=01|Rn|Rd
  // e.g: CRC32CH  <Wd>, <Wn>, <Wm>
  mov  eax, 0725
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0256:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=101|Rn=11111|Rd
  // e.g: AUTIZB  <Xd>
  mov  eax, 0703
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0228:
  test ah,   $80  // Bit 23.
  jnz  @addr0259
  test al,   $40  // Bit 30.
  jnz  @addr0260
  // 31|30  |29 |28      |16  |12  |11|10  |5 |4   |0   
  // sf|op=0|S=1|11010010|imm5|cond|1 |o2=0|Rn|o3=0|nzcv
  // e.g: CCMN  <Wn>, #<imm>, #<nzcv>, <cond>
  mov  eax, 0652
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0260:
  // 31|30  |29 |28      |16  |12  |11|10  |5 |4   |0   
  // sf|op=1|S=1|11010010|imm5|cond|1 |o2=0|Rn|o3=0|nzcv
  // e.g: CCMP  <Wn>, #<imm>, #<nzcv>, <cond>
  mov  eax, 0653
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0259:
  test ch,   $10  // Bit 12.
  jnz  @addr0261
  test ch,   $20  // Bit 13.
  jnz  @addr0262
  test ch,   $40  // Bit 14.
  jnz  @addr0263
  test al,   $40  // Bit 30.
  jnz  @addr0264
  test ch,   $04  // Bit 10.
  jnz  @addr0265
  // 31|30  |29 |28      |16|15                |10  |5 |0 
  // sf|op=0|S=0|11010110|Rm|opcode2<5:1>=00001|o1=0|Rn|Rd
  // e.g: UDIV  <Wd>, <Wn>, <Wm>
  mov  eax, 0739
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0265:
  // 31|30  |29 |28      |16|15                |10  |5 |0 
  // sf|op=0|S=0|11010110|Rm|opcode2<5:1>=00001|o1=1|Rn|Rd
  // e.g: SDIV  <Wd>, <Wn>, <Wm>
  mov  eax, 0738
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0264:
  test ah,   $01  // Bit 16.
  jnz  @addr0266
  // 31  |30|29 |28      |20           |15              |11    |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00000|opcode[5:2]=0000|opc=10|Rn|Rd
  // e.g: REV32  <Xd>, <Xn>
  mov  eax, 0717
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0266:
  test ch,   $04  // Bit 10.
  jnz  @addr0267
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=010|Rn|Rd
  // e.g: PACDA  <Xd>, <Xn|SP>
  mov  eax, 0706
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0267:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=011|Rn|Rd
  // e.g: PACDB  <Xd>, <Xn|SP>
  mov  eax, 0707
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0263:
  test ch,   $04  // Bit 10.
  jnz  @addr0268
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=10|Rn|Rd
  // e.g: CRC32W  <Wd>, <Wn>, <Wm>
  mov  eax, 0729
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0268:
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=1|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=11|Rn|Rd
  // e.g: CRC32X  <Wd>, <Wn>, <Xm>
  mov  eax, 0730
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0262:
  test ch,   $04  // Bit 10.
  jnz  @addr0269
  test al,   $40  // Bit 30.
  jnz  @addr0270
  // 31|30  |29 |28      |16|15               |11    |5 |0 
  // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=10|Rn|Rd
  // e.g: ASRV  <Wd>, <Wn>, <Wm>
  mov  eax, 0722
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0270:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=010|Rn=11111|Rd
  // e.g: PACDZA  <Xd>
  mov  eax, 0708
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0269:
  test al,   $40  // Bit 30.
  jnz  @addr0271
  // 31|30  |29 |28      |16|15               |11    |5 |0 
  // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=11|Rn|Rd
  // e.g: RORV  <Wd>, <Wn>, <Wm>
  mov  eax, 0737
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0271:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=011|Rn=11111|Rd
  // e.g: PACDZB  <Xd>
  mov  eax, 0709
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0261:
  test ch,   $04  // Bit 10.
  jnz  @addr0272
  test ch,   $20  // Bit 13.
  jnz  @addr0273
  test ch,   $40  // Bit 14.
  jnz  @addr0274
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=110|Rn|Rd
  // e.g: AUTDA  <Xd>, <Xn|SP>
  mov  eax, 0696
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0274:
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=10|Rn|Rd
  // e.g: CRC32CW  <Wd>, <Wn>, <Wm>
  mov  eax, 0726
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0273:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=110|Rn=11111|Rd
  // e.g: AUTDZA  <Xd>
  mov  eax, 0698
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0272:
  test ch,   $20  // Bit 13.
  jnz  @addr0275
  test ch,   $40  // Bit 14.
  jnz  @addr0276
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=111|Rn|Rd
  // e.g: AUTDB  <Xd>, <Xn|SP>
  mov  eax, 0697
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0276:
  // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
  // sf=1|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=11|Rn|Rd
  // e.g: CRC32CX  <Wd>, <Wn>, <Xm>
  mov  eax, 0727
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0275:
  // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
  // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=111|Rn=11111|Rd
  // e.g: AUTDZB  <Xd>
  mov  eax, 0699
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0223:
  test al,   $20  // Bit 29.
  jnz  @addr0277
  test al,   $40  // Bit 30.
  jnz  @addr0278
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=00|01010|shift|N=1|Rm|imm6|Rn|Rd
  // e.g: BIC  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1012
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0278:
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=10|01010|shift|N=1|Rm|imm6|Rn|Rd
  // e.g: EON  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1014
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0277:
  test al,   $40  // Bit 30.
  jnz  @addr0279
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=01|01010|shift|N=1|Rm|imm6|Rn|Rd
  // e.g: ORN  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1018
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0279:
  // 31|30    |28   |22   |21 |16|15  |5 |0 
  // sf|opc=11|01010|shift|N=1|Rm|imm6|Rn|Rd
  // e.g: BICS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 1013
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0001:
  test al,   $02  // Bit 25.
  jnz  @addr0280
  test al,   $08  // Bit 27.
  jnz  @addr0281
  test al,   $20  // Bit 29.
  jnz  @addr0282
  test al,   $40  // Bit 30.
  jnz  @addr0283
  // 31|30  |29 |28   |22   |10   |5 |0 
  // sf|op=0|S=0|10001|shift|imm12|Rn|Rd
  // e.g: ADD  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}
  mov  eax, 0013
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0283:
  // 31|30  |29 |28   |22   |10   |5 |0 
  // sf|op=1|S=0|10001|shift|imm12|Rn|Rd
  // e.g: SUB  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}
  mov  eax, 0018
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0282:
  test al,   $40  // Bit 30.
  jnz  @addr0284
  // 31|30  |29 |28   |22   |10   |5 |0 
  // sf|op=0|S=1|10001|shift|imm12|Rn|Rd
  // e.g: ADDS  <Wd>, <Wn|WSP>, #<imm>{, <shift>}
  mov  eax, 0014
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0284:
  // 31|30  |29 |28   |22   |10   |5 |0 
  // sf|op=1|S=1|10001|shift|imm12|Rn|Rd
  // e.g: SUBS  <Wd>, <Wn|WSP>, #<imm>{, <shift>}
  mov  eax, 0019
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0281:
  test ah,   $80  // Bit 23.
  jnz  @addr0285
  test ah,   $40  // Bit 22.
  jnz  @addr0286
  test al,   $10  // Bit 28.
  jnz  @addr0287
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|010|L=0|imm7|Rt2|Rn|Rt
  // e.g: STP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0988
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0287:
  test al,   $80  // Bit 31.
  jnz  @addr0288
  test al,   $40  // Bit 30.
  jnz  @addr0289
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=00|111|V=0|01|opc=00|imm12|Rn|Rt
  // e.g: STRB  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0902
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0289:
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=01|111|V=0|01|opc=00|imm12|Rn|Rt
  // e.g: STRH  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0903
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0288:
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=1x|111|V=0|01|opc=00|imm12|Rn|Rt
  // e.g: STR  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0900
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0286:
  test al,   $10  // Bit 28.
  jnz  @addr0290
  test al,   $40  // Bit 30.
  jnz  @addr0291
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|010|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0985
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0291:
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=01|101|V=0|010|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDPSW  <Xt1>, <Xt2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0987
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0290:
  test al,   $80  // Bit 31.
  jnz  @addr0292
  test al,   $40  // Bit 30.
  jnz  @addr0293
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=00|111|V=0|01|opc=01|imm12|Rn|Rt
  // e.g: LDRB  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0894
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0293:
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=01|111|V=0|01|opc=01|imm12|Rn|Rt
  // e.g: LDRH  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0895
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0292:
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=1x|111|V=0|01|opc=01|imm12|Rn|Rt
  // e.g: LDR  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0892
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0285:
  test al,   $10  // Bit 28.
  jnz  @addr0294
  test ah,   $40  // Bit 22.
  jnz  @addr0295
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|011|L=0|imm7|Rt2|Rn|Rt
  // e.g: STP  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!
  mov  eax, 0998
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0295:
  test al,   $40  // Bit 30.
  jnz  @addr0296
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=x0|101|V=0|011|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDP  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!
  mov  eax, 0995
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0296:
  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
  // opc=01|101|V=0|011|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDPSW  <Xt1>, <Xt2>, [<Xn|SP>, #<imm>]!
  mov  eax, 0997
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0294:
  test al,   $40  // Bit 30.
  jnz  @addr0297
  test al,   $80  // Bit 31.
  jnz  @addr0298
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=00|111|V=0|01|opc=1x|imm12|Rn|Rt
  // e.g: LDRSB  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0896
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0298:
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=10|111|V=0|01|opc=10|imm12|Rn|Rt
  // e.g: LDRSW  <Xt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0898
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0297:
  test al,   $80  // Bit 31.
  jnz  @addr0299
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=01|111|V=0|01|opc=1x|imm12|Rn|Rt
  // e.g: LDRSH  <Wt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0897
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0299:
  // 31     |29 |26 |25|23    |10   |9 |0 
  // size=11|111|V=0|01|opc=10|imm12|Rn|Rt
  // e.g: PRFM  <prfop>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0899
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0280:
  test al,   $08  // Bit 27.
  jnz  @addr0300
  test ah,   $80  // Bit 23.
  jnz  @addr0301
  test al,   $20  // Bit 29.
  jnz  @addr0302
  test al,   $40  // Bit 30.
  jnz  @addr0303
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=00|100110|N |immr|imms|Rn|Rd
  // e.g: SBFM  <Wd>, <Wn>, #<immr>, #<imms>
  mov  eax, 0620
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0303:
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=10|100110|N |immr|imms|Rn|Rd
  // e.g: UBFM  <Wd>, <Wn>, #<immr>, #<imms>
  mov  eax, 0626
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0302:
  // 31|30    |28    |22|16  |10  |5 |0 
  // sf|opc=01|100110|N |immr|imms|Rn|Rd
  // e.g: BFM  <Wd>, <Wn>, #<immr>, #<imms>
  mov  eax, 0615
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0301:
  // 31|30     |28    |22|21  |16|10  |5 |0 
  // sf|op21=00|100111|N |o0=0|Rm|imms|Rn|Rd
  // e.g: EXTR  <Wd>, <Wn>, <Wm>, #<lsb>
  mov  eax, 0762
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0300:
  test ah,   $20  // Bit 21.
  jnz  @addr0304
  test al,   $10  // Bit 28.
  jnz  @addr0305
  test al,   $20  // Bit 29.
  jnz  @addr0306
  test al,   $40  // Bit 30.
  jnz  @addr0307
  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
  // sf|op=0|S=0|01011|shift|0 |Rm|imm6|Rn|Rd
  // e.g: ADD  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 0020
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0307:
  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
  // sf|op=1|S=0|01011|shift|0 |Rm|imm6|Rn|Rd
  // e.g: SUB  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 0026
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0306:
  test al,   $40  // Bit 30.
  jnz  @addr0308
  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
  // sf|op=0|S=1|01011|shift|0 |Rm|imm6|Rn|Rd
  // e.g: ADDS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 0021
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0308:
  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
  // sf|op=1|S=1|01011|shift|0 |Rm|imm6|Rn|Rd
  // e.g: SUBS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
  mov  eax, 0027
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0305:
  test ch,   $80  // Bit 15.
  jnz  @addr0309
  test ah,   $40  // Bit 22.
  jnz  @addr0310
  // 31|30     |28   |23      |16|15  |10|5 |0 
  // sf|op54=00|11011|op31=000|Rm|o0=0|Ra|Rn|Rd
  // e.g: MADD  <Wd>, <Wn>, <Wm>, <Wa>
  mov  eax, 0740
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0310:
  test ah,   $80  // Bit 23.
  jnz  @addr0311
  // 31  |30     |28   |23 |22|16|15  |14      |5 |0 
  // sf=1|op54=00|11011|U=0|10|Rm|o0=0|Ra=11111|Rn|Rd
  // e.g: SMULH  <Xd>, <Xn>, <Xm>
  mov  eax, 0747
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0311:
  // 31  |30     |28   |23 |22|16|15  |14      |5 |0 
  // sf=1|op54=00|11011|U=1|10|Rm|o0=0|Ra=11111|Rn|Rd
  // e.g: UMULH  <Xd>, <Xn>, <Xm>
  mov  eax, 0752
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0309:
  // 31|30     |28   |23      |16|15  |10|5 |0 
  // sf|op54=00|11011|op31=000|Rm|o0=1|Ra|Rn|Rd
  // e.g: MSUB  <Wd>, <Wn>, <Wm>, <Wa>
  mov  eax, 0742
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0304:
  test ah,   $80  // Bit 23.
  jnz  @addr0312
  test al,   $10  // Bit 28.
  jnz  @addr0313
  test al,   $20  // Bit 29.
  jnz  @addr0314
  test al,   $40  // Bit 30.
  jnz  @addr0315
  // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
  // sf|op=0|S=0|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
  // e.g: ADD  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
  mov  eax, 0007
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0315:
  // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
  // sf|op=1|S=0|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
  // e.g: SUB  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
  mov  eax, 0011
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0314:
  test al,   $40  // Bit 30.
  jnz  @addr0316
  // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
  // sf|op=0|S=1|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
  // e.g: ADDS  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
  mov  eax, 0008
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0316:
  // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
  // sf|op=1|S=1|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
  // e.g: SUBS  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
  mov  eax, 0012
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0313:
  test ch,   $80  // Bit 15.
  jnz  @addr0317
  // 31  |30     |28   |23 |22|16|15  |10|5 |0 
  // sf=1|op54=00|11011|U=0|01|Rm|o0=0|Ra|Rn|Rd
  // e.g: SMADDL  <Xd>, <Wn>, <Wm>, <Xa>
  mov  eax, 0744
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0317:
  // 31  |30     |28   |23 |22|16|15  |10|5 |0 
  // sf=1|op54=00|11011|U=0|01|Rm|o0=1|Ra|Rn|Rd
  // e.g: SMSUBL  <Xd>, <Wn>, <Wm>, <Xa>
  mov  eax, 0746
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0312:
  test ch,   $80  // Bit 15.
  jnz  @addr0318
  // 31  |30     |28   |23 |22|16|15  |10|5 |0 
  // sf=1|op54=00|11011|U=1|01|Rm|o0=0|Ra|Rn|Rd
  // e.g: UMADDL  <Xd>, <Wn>, <Wm>, <Xa>
  mov  eax, 0749
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0318:
  // 31  |30     |28   |23 |22|16|15  |10|5 |0 
  // sf=1|op54=00|11011|U=1|01|Rm|o0=1|Ra|Rn|Rd
  // e.g: UMSUBL  <Xd>, <Wn>, <Wm>, <Xa>
  mov  eax, 0751
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0000:
  test al,   $08  // Bit 27.
  jnz  @addr0319
  test al,   $20  // Bit 29.
  jnz  @addr0320
  test al,   $40  // Bit 30.
  jnz  @addr0321
  test al,   $80  // Bit 31.
  jnz  @addr0322
  // 31  |30   |0    
  // op=0|00101|imm26
  // e.g: B  <label>
  mov  eax, 0630
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0322:
  // 31  |30   |0    
  // op=1|00101|imm26
  // e.g: BL  <label>
  mov  eax, 0631
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0321:
  test al,   $01  // Bit 24.
  jnz  @addr0323
  test cl,   $10  // Bit 04.
  jnz  @addr0324
  test al,   $02  // Bit 25.
  jnz  @addr0325
  test al,   $80  // Bit 31.
  jnz  @addr0326
  // 31     |24  |5    |4   |3   
  // 0101010|o1=0|imm19|o0=0|cond
  // e.g: B.<cond>  <label>
  mov  eax, 0651
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0326:
  test cl,   $01  // Bit 00.
  jnz  @addr0327
  test cl,   $02  // Bit 01.
  jnz  @addr0328
  test ah,   $20  // Bit 21.
  jnz  @addr0329
  // 31      |23     |5    |4      |1    
  // 11010100|opc=010|imm16|op2=000|LL=00
  // e.g: HLT  #<imm>
  mov  eax, 0758
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0329:
  // 31      |23     |5    |4      |1    
  // 11010100|opc=001|imm16|op2=000|LL=00
  // e.g: BRK  #<imm>
  mov  eax, 0754
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0328:
  test ah,   $20  // Bit 21.
  jnz  @addr0330
  // 31      |23     |5    |4      |1    
  // 11010100|opc=000|imm16|op2=000|LL=10
  // e.g: HVC  #<imm>
  mov  eax, 0759
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0330:
  // 31      |23     |5    |4      |1    
  // 11010100|opc=101|imm16|op2=000|LL=10
  // e.g: DCPS2  {#<imm>}
  mov  eax, 0756
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0327:
  test cl,   $02  // Bit 01.
  jnz  @addr0331
  test ah,   $20  // Bit 21.
  jnz  @addr0332
  // 31      |23     |5    |4      |1    
  // 11010100|opc=000|imm16|op2=000|LL=01
  // e.g: SVC  #<imm>
  mov  eax, 0761
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0332:
  // 31      |23     |5    |4      |1    
  // 11010100|opc=101|imm16|op2=000|LL=01
  // e.g: DCPS1  {#<imm>}
  mov  eax, 0755
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0331:
  test ah,   $20  // Bit 21.
  jnz  @addr0333
  // 31      |23     |5    |4      |1    
  // 11010100|opc=000|imm16|op2=000|LL=11
  // e.g: SMC  #<imm>
  mov  eax, 0760
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0333:
  // 31      |23     |5    |4      |1    
  // 11010100|opc=101|imm16|op2=000|LL=11
  // e.g: DCPS3  {#<imm>}
  mov  eax, 0757
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0325:
  test ah,   $20  // Bit 21.
  jnz  @addr0334
  test ah,   $40  // Bit 22.
  jnz  @addr0335
  test ah,   $80  // Bit 23.
  jnz  @addr0336
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=0|M=0|Rn|Rm=00000
  // e.g: BR  <Xn>
  mov  eax, 0637
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0336:
  // 31     |24      |23          |20       |15           |11 |10 |9       |4        
  // 1101011|opc[3]=0|opc[2:0]=100|op2=11111|op3[5:2]=0000|A=0|M=0|Rn=11111|op4=00000
  // e.g: ERET
  mov  eax, 0643
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0335:
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=10|op2=11111|op3[5:2]=0000|A=0|M=0|Rn|Rm=00000
  // e.g: RET  {<Xn>}
  mov  eax, 0646
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0334:
  test ah,   $80  // Bit 23.
  jnz  @addr0337
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=0|M=0|Rn|Rm=00000
  // e.g: BLR  <Xn>
  mov  eax, 0632
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0337:
  // 31     |24      |20       |15        |9       |4        
  // 1101011|opc=0101|op2=11111|op3=000000|Rt=11111|op4=00000
  // e.g: DRPS
  mov  eax, 0642
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0324:
  test ch,   $04  // Bit 10.
  jnz  @addr0338
  test ah,   $20  // Bit 21.
  jnz  @addr0339
  test ah,   $40  // Bit 22.
  jnz  @addr0340
  test ah,   $80  // Bit 23.
  jnz  @addr0341
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm=11111
  // e.g: BRAAZ  <Xn>
  mov  eax, 0639
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0341:
  // 31     |24      |23          |20       |15           |11 |10 |9       |4        
  // 1101011|opc[3]=0|opc[2:0]=100|op2=11111|op3[5:2]=0000|A=1|M=0|Rn=11111|op4=11111
  // e.g: ERETAA
  mov  eax, 0644
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0340:
  // 31     |24 |23        |22   |20       |15           |11 |10 |9       |4       
  // 1101011|Z=0|opc[2:1]=0|op=10|op2=11111|op3[5:2]=0000|A=1|M=0|Rn=11111|Rm=11111
  // e.g: RETAA
  mov  eax, 0647
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0339:
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm=11111
  // e.g: BLRAAZ  <Xn>
  mov  eax, 0634
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0338:
  test ah,   $20  // Bit 21.
  jnz  @addr0342
  test ah,   $40  // Bit 22.
  jnz  @addr0343
  test ah,   $80  // Bit 23.
  jnz  @addr0344
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm=11111
  // e.g: BRABZ  <Xn>
  mov  eax, 0641
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0344:
  // 31     |24      |23          |20       |15           |11 |10 |9       |4        
  // 1101011|opc[3]=0|opc[2:0]=100|op2=11111|op3[5:2]=0000|A=1|M=1|Rn=11111|op4=11111
  // e.g: ERETAB
  mov  eax, 0645
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0343:
  // 31     |24 |23        |22   |20       |15           |11 |10 |9       |4       
  // 1101011|Z=0|opc[2:1]=0|op=10|op2=11111|op3[5:2]=0000|A=1|M=1|Rn=11111|Rm=11111
  // e.g: RETAB
  mov  eax, 0648
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0342:
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
  // 1101011|Z=0|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm=11111
  // e.g: BLRABZ  <Xn>
  mov  eax, 0636
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0323:
  test ah,   $10  // Bit 20.
  jnz  @addr0345
  test ah,   $08  // Bit 19.
  jnz  @addr0346
  test ch,   $10  // Bit 12.
  jnz  @addr0347
  test ch,   $20  // Bit 13.
  jnz  @addr0348
  // 31        |21 |20    |16 |15      |8  |5  |4        
  // 1101010100|L=0|op0=00|op1|CRn=0100|CRm|op2|Rt =11111
  // e.g: MSR  <pstatefield>, #<imm>
  mov  eax, 1203
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0348:
  // 31        |21 |20    |18     |15      |11      |7      |4       
  // 1101010100|L=0|op0=00|op1=011|CRn=0010|CRm=0001|op2=100|Rt=11111
  // e.g: AUTIA1716
  mov  eax, 1188
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0347:
  test cl,   $20  // Bit 05.
  jnz  @addr0349
  test cl,   $40  // Bit 06.
  jnz  @addr0350
  // 31        |21 |20    |18     |15      |8  |7|6     |4       
  // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|1|opc=00|Rt=11111
  // e.g: DSB  <barrier>
  mov  eax, 1197
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0350:
  test cl,   $80  // Bit 07.
  jnz  @addr0351
  // 31        |21 |20    |18     |15      |8  |7      |4       
  // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|op2=010|Rt=11111
  // e.g: CLREX  {#<imm>}
  mov  eax, 1194
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0351:
  // 31        |21 |20    |18     |15      |8  |7|6     |4       
  // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|1|opc=10|Rt=11111
  // e.g: ISB  {<barrier>}
  mov  eax, 1201
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0349:
  // 31        |21 |20    |18     |15      |8  |7|6     |4       
  // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|1|opc=01|Rt=11111
  // e.g: DMB  <barrier>
  mov  eax, 1196
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0346:
  test ah,   $20  // Bit 21.
  jnz  @addr0352
  // 31        |21 |20    |16 |12 |8  |5  |0 
  // 1101010100|L=0|op0=01|op1|CRn|CRm|op2|Rt
  // e.g: SYS  #<op1>, <Cn>, <Cm>, #<op2>{, <Xt>}
  mov  eax, 1215
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0352:
  // 31        |21 |20    |16 |12 |8  |5  |0 
  // 1101010100|L=1|op0=01|op1|CRn|CRm|op2|Rt
  // e.g: SYSL  <Xt>, #<op1>, <Cn>, <Cm>, #<op2>
  mov  eax, 1216
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0345:
  test ah,   $20  // Bit 21.
  jnz  @addr0353
  test al,   $02  // Bit 25.
  jnz  @addr0354
  // 31        |21 |20|19|16 |12 |8  |5  |0 
  // 1101010100|L=0|1 |o0|op1|CRn|CRm|op2|Rt
  // e.g: MSR  <systemreg>, <Xt>
  mov  eax, 1204
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0354:
  test ch,   $04  // Bit 10.
  jnz  @addr0355
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
  // 1101011|Z=1|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm
  // e.g: BRAA  <Xn>, <Xm|SP>
  mov  eax, 0638
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0355:
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
  // 1101011|Z=1|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm
  // e.g: BRAB  <Xn>, <Xm|SP>
  mov  eax, 0640
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0353:
  test al,   $02  // Bit 25.
  jnz  @addr0356
  // 31        |21 |20|19|16 |12 |8  |5  |0 
  // 1101010100|L=1|1 |o0|op1|CRn|CRm|op2|Rt
  // e.g: MRS  <Xt>, <systemreg>
  mov  eax, 1202
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0356:
  test ch,   $04  // Bit 10.
  jnz  @addr0357
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
  // 1101011|Z=1|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm
  // e.g: BLRAA  <Xn>, <Xm|SP>
  mov  eax, 0633
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0357:
  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
  // 1101011|Z=1|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm
  // e.g: BLRAB  <Xn>, <Xm|SP>
  mov  eax, 0635
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0320:
  test al,   $01  // Bit 24.
  jnz  @addr0358
  test al,   $02  // Bit 25.
  jnz  @addr0359
  // 31|30    |24  |5    |0 
  // sf|011010|op=0|imm19|Rt
  // e.g: CBZ  <Wt>, <label>
  mov  eax, 0650
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0359:
  // 31|30    |24  |19 |5    |0 
  // b5|011011|op=0|b40|imm14|Rt
  // e.g: TBZ  <R><t>, #<imm>, <label>
  mov  eax, 1223
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0358:
  test al,   $02  // Bit 25.
  jnz  @addr0360
  // 31|30    |24  |5    |0 
  // sf|011010|op=1|imm19|Rt
  // e.g: CBNZ  <Wt>, <label>
  mov  eax, 0649
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0360:
  // 31|30    |24  |19 |5    |0 
  // b5|011011|op=1|b40|imm14|Rt
  // e.g: TBNZ  <R><t>, #<imm>, <label>
  mov  eax, 1222
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0319:
  test al,   $01  // Bit 24.
  jnz  @addr0361
  test al,   $02  // Bit 25.
  jnz  @addr0362
  test al,   $10  // Bit 28.
  jnz  @addr0363
  test ah,   $40  // Bit 22.
  jnz  @addr0364
  test ah,   $80  // Bit 23.
  jnz  @addr0365
  test al,   $20  // Bit 29.
  jnz  @addr0366
  test ch,   $20  // Bit 13.
  jnz  @addr0367
  test ch,   $40  // Bit 14.
  jnz  @addr0368
  test ch,   $80  // Bit 15.
  jnz  @addr0369
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=0|000000|opcode=0000|size|Rn|Rt
  // e.g: ST4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]
  mov  eax, 0440
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0369:
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=0|000000|opcode=1000|size|Rn|Rt
  // e.g: ST2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]
  mov  eax, 0438
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0368:
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=0|000000|opcode=0100|size|Rn|Rt
  // e.g: ST3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]
  mov  eax, 0439
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0367:
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=0|000000|opcode=xx1x|size|Rn|Rt
  // e.g: ST1  { <Vt>.<T> }, [<Xn|SP>]
  mov  eax, 0437
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0366:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|000|L=0|imm7|Rt2|Rn|Rt
  // e.g: STNP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0984
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0365:
  test al,   $20  // Bit 29.
  jnz  @addr0370
  test ch,   $20  // Bit 13.
  jnz  @addr0371
  test ch,   $40  // Bit 14.
  jnz  @addr0372
  test ch,   $80  // Bit 15.
  jnz  @addr0373
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=0|0 |Rm|opcode=0000|size|Rn|Rt
  // e.g: ST4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0448
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0373:
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=0|0 |Rm|opcode=1000|size|Rn|Rt
  // e.g: ST2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0446
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0372:
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=0|0 |Rm|opcode=0100|size|Rn|Rt
  // e.g: ST3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0447
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0371:
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=0|0 |Rm|opcode=xx1x|size|Rn|Rt
  // e.g: ST1  { <Vt>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0445
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0370:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|001|L=0|imm7|Rt2|Rn|Rt
  // e.g: STP  <St1>, <St2>, [<Xn|SP>], #<imm>
  mov  eax, 0994
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0364:
  test ah,   $80  // Bit 23.
  jnz  @addr0374
  test al,   $20  // Bit 29.
  jnz  @addr0375
  test ch,   $20  // Bit 13.
  jnz  @addr0376
  test ch,   $40  // Bit 14.
  jnz  @addr0377
  test ch,   $80  // Bit 15.
  jnz  @addr0378
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=1|000000|opcode=0000|size|Rn|Rt
  // e.g: LD4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]
  mov  eax, 0436
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0378:
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=1|000000|opcode=1000|size|Rn|Rt
  // e.g: LD2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]
  mov  eax, 0434
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0377:
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=1|000000|opcode=0100|size|Rn|Rt
  // e.g: LD3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]
  mov  eax, 0435
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0376:
  // 31|30|29     |22 |21    |15         |11  |9 |0 
  // 0 |Q |0011000|L=1|000000|opcode=xx1x|size|Rn|Rt
  // e.g: LD1  { <Vt>.<T> }, [<Xn|SP>]
  mov  eax, 0433
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0375:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|000|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDNP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0982
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0374:
  test al,   $20  // Bit 29.
  jnz  @addr0379
  test ch,   $20  // Bit 13.
  jnz  @addr0380
  test ch,   $40  // Bit 14.
  jnz  @addr0381
  test ch,   $80  // Bit 15.
  jnz  @addr0382
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=1|0 |Rm|opcode=0000|size|Rn|Rt
  // e.g: LD4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0444
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0382:
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=1|0 |Rm|opcode=1000|size|Rn|Rt
  // e.g: LD2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0442
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0381:
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=1|0 |Rm|opcode=0100|size|Rn|Rt
  // e.g: LD3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0443
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0380:
  // 31|30|29     |22 |21|20|15         |11  |9 |0 
  // 0 |Q |0011001|L=1|0 |Rm|opcode=xx1x|size|Rn|Rt
  // e.g: LD1  { <Vt>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0441
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0379:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|001|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDP  <St1>, <St2>, [<Xn|SP>], #<imm>
  mov  eax, 0991
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0363:
  test al,   $20  // Bit 29.
  jnz  @addr0383
  // 31 |29 |26 |25|5    |0 
  // opc|011|V=1|00|imm19|Rt
  // e.g: LDR  <St>, <label>
  mov  eax, 1001
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0383:
  test ch,   $04  // Bit 10.
  jnz  @addr0384
  test ch,   $08  // Bit 11.
  jnz  @addr0385
  test ah,   $40  // Bit 22.
  jnz  @addr0386
  // 31  |29 |26 |25|23    |21|12  |11|9 |0 
  // size|111|V=1|00|opc=x0|0 |imm9|00|Rn|Rt
  // e.g: STUR  <Bt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0934
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0386:
  // 31  |29 |26 |25|23    |21|12  |11|9 |0 
  // size|111|V=1|00|opc=x1|0 |imm9|00|Rn|Rt
  // e.g: LDUR  <Bt>, [<Xn|SP>{, #<simm>}]
  mov  eax, 0926
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0385:
  test ah,   $40  // Bit 22.
  jnz  @addr0387
  // 31  |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size|111|V=1|00|opc=x0|1 |Rm|option|S |10|Rn|Rt
  // e.g: STR  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
  mov  eax, 0913
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0387:
  // 31  |29 |26 |25|23    |21|20|15    |12|11|9 |0 
  // size|111|V=1|00|opc=x1|1 |Rm|option|S |10|Rn|Rt
  // e.g: LDR  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
  mov  eax, 0905
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0384:
  test ch,   $08  // Bit 11.
  jnz  @addr0388
  test ah,   $40  // Bit 22.
  jnz  @addr0389
  // 31  |29 |26 |25|23    |21|12  |11|9 |0 
  // size|111|V=1|00|opc=x0|0 |imm9|01|Rn|Rt
  // e.g: STR  <Bt>, [<Xn|SP>], #<simm>
  mov  eax, 0876
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0389:
  // 31  |29 |26 |25|23    |21|12  |11|9 |0 
  // size|111|V=1|00|opc=x1|0 |imm9|01|Rn|Rt
  // e.g: LDR  <Bt>, [<Xn|SP>], #<simm>
  mov  eax, 0869
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0388:
  test ah,   $40  // Bit 22.
  jnz  @addr0390
  // 31  |29 |26 |25|23    |21|12  |11|9 |0 
  // size|111|V=1|00|opc=x0|0 |imm9|11|Rn|Rt
  // e.g: STR  <Bt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0887
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0390:
  // 31  |29 |26 |25|23    |21|12  |11|9 |0 
  // size|111|V=1|00|opc=x1|0 |imm9|11|Rn|Rt
  // e.g: LDR  <Bt>, [<Xn|SP>, #<simm>]!
  mov  eax, 0880
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0362:
  test ah,   $20  // Bit 21.
  jnz  @addr0391
  test al,   $10  // Bit 28.
  jnz  @addr0392
  test al,   $20  // Bit 29.
  jnz  @addr0393
  test al,   $80  // Bit 31.
  jnz  @addr0394
  test ch,   $04  // Bit 10.
  jnz  @addr0395
  test ch,   $08  // Bit 11.
  jnz  @addr0396
  test ch,   $10  // Bit 12.
  jnz  @addr0397
  // 31|30|29    |23    |21|16|15|14 |12  |11|5 |0 
  // 0 |Q |001110|op2=00|0 |Rm|0 |len|op=0|00|Rn|Rd
  // e.g: TBL  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>
  mov  eax, 0413
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0397:
  // 31|30|29    |23    |21|16|15|14 |12  |11|5 |0 
  // 0 |Q |001110|op2=00|0 |Rm|0 |len|op=1|00|Rn|Rd
  // e.g: TBX  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>
  mov  eax, 0414
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0396:
  test ch,   $10  // Bit 12.
  jnz  @addr0398
  test ch,   $40  // Bit 14.
  jnz  @addr0399
  // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
  // 0 |Q |001110|size|0 |Rm|0 |op=0|10|10|Rn|Rd
  // e.g: TRN1  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0257
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0399:
  // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
  // 0 |Q |001110|size|0 |Rm|0 |op=1|10|10|Rn|Rd
  // e.g: TRN2  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0258
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0398:
  test ch,   $20  // Bit 13.
  jnz  @addr0400
  test ch,   $40  // Bit 14.
  jnz  @addr0401
  // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
  // 0 |Q |001110|size|0 |Rm|0 |op=0|01|10|Rn|Rd
  // e.g: UZP1  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0259
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0401:
  // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
  // 0 |Q |001110|size|0 |Rm|0 |op=1|01|10|Rn|Rd
  // e.g: UZP2  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0260
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0400:
  test ch,   $40  // Bit 14.
  jnz  @addr0402
  // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
  // 0 |Q |001110|size|0 |Rm|0 |op=0|11|10|Rn|Rd
  // e.g: ZIP1  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0261
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0402:
  // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
  // 0 |Q |001110|size|0 |Rm|0 |op=1|11|10|Rn|Rd
  // e.g: ZIP2  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0262
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0395:
  test ch,   $08  // Bit 11.
  jnz  @addr0403
  test ch,   $10  // Bit 12.
  jnz  @addr0404
  test ch,   $20  // Bit 13.
  jnz  @addr0405
  test ah,   $40  // Bit 22.
  jnz  @addr0406
  // 31|30|29  |28      |20  |15|14       |10|5 |0 
  // 0 |Q |op=0|01110000|imm5|0 |imm4=0000|1 |Rn|Rd
  // e.g: DUP  <Vd>.<T>, <Vn>.<Ts>[<index>]
  mov  eax, 0148
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0406:
  test ah,   $80  // Bit 23.
  jnz  @addr0407
  // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
  // 0 |Q |U=0|01110|a=0|10|Rm|00|Op3=000|1 |Rn|Rd
  // e.g: FMAXNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0357
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0407:
  // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
  // 0 |Q |U=0|01110|a=1|10|Rm|00|Op3=000|1 |Rn|Rd
  // e.g: FMINNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0361
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0405:
  // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 0 |Q |U=0|01110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
  // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0352
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0404:
  test ch,   $20  // Bit 13.
  jnz  @addr0408
  test ch,   $80  // Bit 15.
  jnz  @addr0409
  test ah,   $80  // Bit 23.
  jnz  @addr0410
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=010|1 |Rn|Rd
  // e.g: FADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0350
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0410:
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=1|10|Rm|00|opcode=010|1 |Rn|Rd
  // e.g: FSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0370
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0409:
  // 31|30|29 |28   |23  |21|16|15|14         |10|5 |0 
  // 0 |Q |U=0|01110|size|0 |Rm|1 |opcode=0010|1 |Rn|Rd
  // e.g: SDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0343
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0408:
  test ah,   $80  // Bit 23.
  jnz  @addr0411
  // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|o1=0|10|Rm|00|opcode=110|1 |Rn|Rd
  // e.g: FMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0356
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0411:
  // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|o1=1|10|Rm|00|opcode=110|1 |Rn|Rd
  // e.g: FMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0360
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0403:
  test ch,   $10  // Bit 12.
  jnz  @addr0412
  test ch,   $20  // Bit 13.
  jnz  @addr0413
  test ah,   $40  // Bit 22.
  jnz  @addr0414
  // 31|30|29  |28      |20  |15|14       |10|5 |0 
  // 0 |Q |op=0|01110000|imm5|0 |imm4=0001|1 |Rn|Rd
  // e.g: DUP  <Vd>.<T>, <R><n>
  mov  eax, 0149
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0414:
  test ah,   $80  // Bit 23.
  jnz  @addr0415
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=001|1 |Rn|Rd
  // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0364
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0415:
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=1|10|Rm|00|opcode=001|1 |Rn|Rd
  // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0365
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0413:
  // 31|30|29  |28      |20  |15|14          |12       |11       |10|5 |0 
  // 0 |Q |op=0|01110000|imm5|0 |imm4<3:2>=01|imm4<1>=0|imm4<0>=1|1 |Rn|Rd
  // e.g: SMOV  <Wd>, <Vn>.<Ts>[<index>]
  mov  eax, 0155
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0412:
  test ch,   $20  // Bit 13.
  jnz  @addr0416
  test ah,   $40  // Bit 22.
  jnz  @addr0417
  // 31|30 |29  |28      |20  |15|14       |10|5 |0 
  // 0 |Q=1|op=0|01110000|imm5|0 |imm4=0011|1 |Rn|Rd
  // e.g: INS  <Vd>.<Ts>[<index>], <R><n>
  mov  eax, 0151
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0417:
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=011|1 |Rn|Rd
  // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0367
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0416:
  test ah,   $40  // Bit 22.
  jnz  @addr0418
  // 31|30|29  |28      |20  |15|14          |12       |11       |10|5 |0 
  // 0 |Q |op=0|01110000|imm5|0 |imm4<3:2>=01|imm4<1>=1|imm4<0>=1|1 |Rn|Rd
  // e.g: UMOV  <Wd>, <Vn>.<Ts>[<index>]
  mov  eax, 0156
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0418:
  test ah,   $80  // Bit 23.
  jnz  @addr0419
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=111|1 |Rn|Rd
  // e.g: FRECPS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0368
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0419:
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=0|01110|a=1|10|Rm|00|opcode=111|1 |Rn|Rd
  // e.g: FRSQRTS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0369
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0394:
  test ah,   $40  // Bit 22.
  jnz  @addr0420
  test ah,   $80  // Bit 23.
  jnz  @addr0421
  // 31       |22    |16|15|10|5 |0 
  // 110011100|Op0=00|Rm|0 |Ra|Rn|Rd
  // e.g: EOR3  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B
  mov  eax, 0671
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0421:
  // 31         |16|10  |5 |0 
  // 11001110100|Rm|imm6|Rn|Rd
  // e.g: XAR  <Vd>.2D, <Vn>.2D, <Vm>.2D, #<imm6>
  mov  eax, 0669
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0420:
  test ch,   $80  // Bit 15.
  jnz  @addr0422
  // 31       |22    |16|15|10|5 |0 
  // 110011100|Op0=10|Rm|0 |Ra|Rn|Rd
  // e.g: SM3SS1  <Vd>.4S, <Vn>.4S, <Vm>.4S, <Va>.4S
  mov  eax, 0672
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0422:
  test ch,   $04  // Bit 10.
  jnz  @addr0423
  test ch,   $08  // Bit 11.
  jnz  @addr0424
  test ah,   $80  // Bit 23.
  jnz  @addr0425
  // 31         |16|15|12  |11       |5 |0 
  // 11001110010|Rm|10|imm2|opcode=00|Rn|Rd
  // e.g: SM3TT1A  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]
  mov  eax, 0665
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0425:
  // 31                  |11       |5 |0 
  // 11001110110000001000|opcode=00|Rn|Rd
  // e.g: SHA512SU0  <Vd>.2D, <Vn>.2D
  mov  eax, 0687
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0424:
  // 31         |16|15|12  |11       |5 |0 
  // 11001110010|Rm|10|imm2|opcode=10|Rn|Rd
  // e.g: SM3TT2A  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]
  mov  eax, 0667
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0423:
  test ch,   $08  // Bit 11.
  jnz  @addr0426
  test ah,   $80  // Bit 23.
  jnz  @addr0427
  // 31         |16|15|12  |11       |5 |0 
  // 11001110010|Rm|10|imm2|opcode=01|Rn|Rd
  // e.g: SM3TT1B  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]
  mov  eax, 0666
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0427:
  // 31                  |11       |5 |0 
  // 11001110110000001000|opcode=01|Rn|Rd
  // e.g: SM4E  <Vd>.4S, <Vn>.4S
  mov  eax, 0688
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0426:
  // 31         |16|15|12  |11       |5 |0 
  // 11001110010|Rm|10|imm2|opcode=11|Rn|Rd
  // e.g: SM3TT2B  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]
  mov  eax, 0668
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0393:
  test ch,   $04  // Bit 10.
  jnz  @addr0428
  // 31|30|29    |23    |21|16|15|11  |10|5 |0 
  // 0 |Q |101110|op2=00|0 |Rm|0 |imm4|0 |Rn|Rd
  // e.g: EXT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<index>
  mov  eax, 0133
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0428:
  test ch,   $80  // Bit 15.
  jnz  @addr0429
  test ah,   $40  // Bit 22.
  jnz  @addr0430
  // 31|30 |29  |28      |20  |15|14  |10|5 |0 
  // 0 |Q=1|op=1|01110000|imm5|0 |imm4|1 |Rn|Rd
  // e.g: INS  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>]
  mov  eax, 0150
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0430:
  test ch,   $08  // Bit 11.
  jnz  @addr0431
  test ch,   $10  // Bit 12.
  jnz  @addr0432
  test ch,   $20  // Bit 13.
  jnz  @addr0433
  test ah,   $80  // Bit 23.
  jnz  @addr0434
  // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
  // 0 |Q |U=1|01110|a=0|10|Rm|00|Op3=000|1 |Rn|Rd
  // e.g: FMAXNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0358
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0434:
  // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
  // 0 |Q |U=1|01110|a=1|10|Rm|00|Op3=000|1 |Rn|Rd
  // e.g: FMINNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0362
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0433:
  test ah,   $80  // Bit 23.
  jnz  @addr0435
  // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 0 |Q |U=1|01110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
  // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0353
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0435:
  // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 0 |Q |U=1|01110|E=1|10|Rm|00|10|ac=0|1 |Rn|Rd
  // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0354
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0432:
  test ch,   $20  // Bit 13.
  jnz  @addr0436
  test ah,   $80  // Bit 23.
  jnz  @addr0437
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=1|01110|a=0|10|Rm|00|opcode=010|1 |Rn|Rd
  // e.g: FADDP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0351
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0437:
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=1|01110|a=1|10|Rm|00|opcode=010|1 |Rn|Rd
  // e.g: FABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0347
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0436:
  test ah,   $80  // Bit 23.
  jnz  @addr0438
  // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
  // 0 |Q |U=1|01110|o1=0|10|Rm|00|opcode=110|1 |Rn|Rd
  // e.g: FMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0359
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0438:
  // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
  // 0 |Q |U=1|01110|o1=1|10|Rm|00|opcode=110|1 |Rn|Rd
  // e.g: FMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0363
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0431:
  test ch,   $10  // Bit 12.
  jnz  @addr0439
  test ah,   $80  // Bit 23.
  jnz  @addr0440
  // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 0 |Q |U=1|01110|E=0|10|Rm|00|10|ac=1|1 |Rn|Rd
  // e.g: FACGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0348
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0440:
  // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 0 |Q |U=1|01110|E=1|10|Rm|00|10|ac=1|1 |Rn|Rd
  // e.g: FACGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0349
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0439:
  test ch,   $20  // Bit 13.
  jnz  @addr0441
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=1|01110|a=0|10|Rm|00|opcode=011|1 |Rn|Rd
  // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0366
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0441:
  // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 0 |Q |U=1|01110|a=0|10|Rm|00|opcode=111|1 |Rn|Rd
  // e.g: FDIV  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0355
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0429:
  test ch,   $20  // Bit 13.
  jnz  @addr0442
  test ch,   $40  // Bit 14.
  jnz  @addr0443
  test ch,   $08  // Bit 11.
  jnz  @addr0444
  test ch,   $10  // Bit 12.
  jnz  @addr0445
  // 31|30|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
  // 0 |Q |U=1|01110|size|0 |Rm|1 |000|S=0|1 |Rn|Rd
  // e.g: SQRDMLAH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0344
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0445:
  // 31|30|29 |28   |23  |21|16|15|14         |10|5 |0 
  // 0 |Q |U=1|01110|size|0 |Rm|1 |opcode=0010|1 |Rn|Rd
  // e.g: UDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0346
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0444:
  // 31|30|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
  // 0 |Q |U=1|01110|size|0 |Rm|1 |000|S=1|1 |Rn|Rd
  // e.g: SQRDMLSH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0345
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0443:
  // 31|30|29 |28   |23  |21|16|15|14|12 |10|5 |0 
  // 0 |Q |U=1|01110|size|0 |Rm|1 |10|rot|1 |Rn|Rd
  // e.g: FCMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>
  mov  eax, 0342
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0442:
  // 31|30|29 |28   |23  |21|16|15|14|12 |11|10|5 |0 
  // 0 |Q |U=1|01110|size|0 |Rm|1 |11|rot|0 |1 |Rn|Rd
  // e.g: FCADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>
  mov  eax, 0341
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0392:
  test al,   $20  // Bit 29.
  jnz  @addr0446
  test ah,   $80  // Bit 23.
  jnz  @addr0447
  test al,   $40  // Bit 30.
  jnz  @addr0448
  test ah,   $01  // Bit 16.
  jnz  @addr0449
  test ah,   $02  // Bit 17.
  jnz  @addr0450
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=0x|0 |rmode=11|opcode=000|scale|Rn|Rd
  // e.g: FCVTZS  <Wd>, <Sn>, #<fbits>
  mov  eax, 0765
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0450:
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=0x|0 |rmode=00|opcode=010|scale|Rn|Rd
  // e.g: SCVTF  <Sd>, <Wn>, #<fbits>
  mov  eax, 0769
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0449:
  test ah,   $02  // Bit 17.
  jnz  @addr0451
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=0x|0 |rmode=11|opcode=001|scale|Rn|Rd
  // e.g: FCVTZU  <Wd>, <Sn>, #<fbits>
  mov  eax, 0767
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0451:
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=0x|0 |rmode=00|opcode=011|scale|Rn|Rd
  // e.g: UCVTF  <Sd>, <Wn>, #<fbits>
  mov  eax, 0771
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0448:
  test ch,   $04  // Bit 10.
  jnz  @addr0452
  test ch,   $10  // Bit 12.
  jnz  @addr0453
  test ch,   $20  // Bit 13.
  jnz  @addr0454
  test ch,   $40  // Bit 14.
  jnz  @addr0455
  // 31      |23     |21|16|15|14        |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |opcode=000|00|Rn|Rd
  // e.g: SHA1C  <Qd>, <Sn>, <Vm>.4S
  mov  eax, 0680
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0455:
  // 31      |23     |21|16|15|14|12 |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |10|P=0|00|Rn|Rd
  // e.g: SHA256H  <Qd>, <Qn>, <Vm>.4S
  mov  eax, 0684
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0454:
  test ch,   $40  // Bit 14.
  jnz  @addr0456
  // 31      |23     |21|16|15|14        |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |opcode=010|00|Rn|Rd
  // e.g: SHA1M  <Qd>, <Sn>, <Vm>.4S
  mov  eax, 0681
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0456:
  // 31      |23     |21|16|15|14        |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |opcode=110|00|Rn|Rd
  // e.g: SHA256SU1  <Vd>.4S, <Vn>.4S, <Vm>.4S
  mov  eax, 0686
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0453:
  test ch,   $20  // Bit 13.
  jnz  @addr0457
  test ch,   $40  // Bit 14.
  jnz  @addr0458
  // 31      |23     |21|16|15|14        |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |opcode=001|00|Rn|Rd
  // e.g: SHA1P  <Qd>, <Sn>, <Vm>.4S
  mov  eax, 0682
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0458:
  // 31      |23     |21|16|15|14|12 |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |10|P=1|00|Rn|Rd
  // e.g: SHA256H2  <Qd>, <Qn>, <Vm>.4S
  mov  eax, 0685
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0457:
  // 31      |23     |21|16|15|14        |11|5 |0 
  // 01011110|size=00|0 |Rm|0 |opcode=011|00|Rn|Rd
  // e.g: SHA1SU0  <Vd>.4S, <Vn>.4S, <Vm>.4S
  mov  eax, 0683
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0452:
  test ch,   $08  // Bit 11.
  jnz  @addr0459
  test ch,   $20  // Bit 13.
  jnz  @addr0460
  // 31|29  |28      |20  |15|14       |10|5 |0 
  // 01|op=0|11110000|imm5|0 |imm4=0000|1 |Rn|Rd
  // e.g: DUP  <V><d>, <Vn>.<T>[<index>]
  mov  eax, 0528
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0460:
  // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 01|U=0|11110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
  // e.g: FCMEQ  <Hd>, <Hn>, <Hm>
  mov  eax, 0582
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0459:
  test ch,   $20  // Bit 13.
  jnz  @addr0461
  // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 01|U=0|11110|a=0|10|Rm|00|opcode=011|1 |Rn|Rd
  // e.g: FMULX  <Hd>, <Hn>, <Hm>
  mov  eax, 0585
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0461:
  // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 01|U=0|11110|a=0|10|Rm|00|opcode=111|1 |Rn|Rd
  // e.g: FRECPS  <Hd>, <Hn>, <Hm>
  mov  eax, 0586
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0447:
  test al,   $40  // Bit 30.
  jnz  @addr0462
  test ah,   $01  // Bit 16.
  jnz  @addr0463
  test ah,   $02  // Bit 17.
  jnz  @addr0464
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=11|0 |rmode=11|opcode=000|scale|Rn|Rd
  // e.g: FCVTZS  <Wd>, <Hn>, #<fbits>
  mov  eax, 0764
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0464:
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=11|0 |rmode=00|opcode=010|scale|Rn|Rd
  // e.g: SCVTF  <Hd>, <Wn>, #<fbits>
  mov  eax, 0768
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0463:
  test ah,   $02  // Bit 17.
  jnz  @addr0465
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=11|0 |rmode=11|opcode=001|scale|Rn|Rd
  // e.g: FCVTZU  <Wd>, <Hn>, #<fbits>
  mov  eax, 0766
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0465:
  // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
  // sf|0 |S=0|11110|type=11|0 |rmode=00|opcode=011|scale|Rn|Rd
  // e.g: UCVTF  <Hd>, <Wn>, #<fbits>
  mov  eax, 0770
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0462:
  // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 01|U=0|11110|a=1|10|Rm|00|opcode=111|1 |Rn|Rd
  // e.g: FRSQRTS  <Hd>, <Hn>, <Hm>
  mov  eax, 0587
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0446:
  test ch,   $08  // Bit 11.
  jnz  @addr0466
  test ch,   $10  // Bit 12.
  jnz  @addr0467
  test ch,   $20  // Bit 13.
  jnz  @addr0468
  // 31|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
  // 01|U=1|11110|size|0 |Rm|1 |000|S=0|1 |Rn|Rd
  // e.g: SQRDMLAH  <V><d>, <V><n>, <V><m>
  mov  eax, 0577
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0468:
  test ah,   $80  // Bit 23.
  jnz  @addr0469
  // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 01|U=1|11110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
  // e.g: FCMGE  <Hd>, <Hn>, <Hm>
  mov  eax, 0583
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0469:
  // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 01|U=1|11110|E=1|10|Rm|00|10|ac=0|1 |Rn|Rd
  // e.g: FCMGT  <Hd>, <Hn>, <Hm>
  mov  eax, 0584
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0467:
  // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
  // 01|U=1|11110|a=1|10|Rm|00|opcode=010|1 |Rn|Rd
  // e.g: FABD  <Hd>, <Hn>, <Hm>
  mov  eax, 0579
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0466:
  test ch,   $20  // Bit 13.
  jnz  @addr0470
  // 31|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
  // 01|U=1|11110|size|0 |Rm|1 |000|S=1|1 |Rn|Rd
  // e.g: SQRDMLSH  <V><d>, <V><n>, <V><m>
  mov  eax, 0578
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0470:
  test ah,   $80  // Bit 23.
  jnz  @addr0471
  // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 01|U=1|11110|E=0|10|Rm|00|10|ac=1|1 |Rn|Rd
  // e.g: FACGE  <Hd>, <Hn>, <Hm>
  mov  eax, 0580
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0471:
  // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
  // 01|U=1|11110|E=1|10|Rm|00|10|ac=1|1 |Rn|Rd
  // e.g: FACGT  <Hd>, <Hn>, <Hm>
  mov  eax, 0581
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0391:
  test al,   $10  // Bit 28.
  jnz  @addr0472
  test ch,   $80  // Bit 15.
  jnz  @addr0473
  test al,   $20  // Bit 29.
  jnz  @addr0474
  test al,   $80  // Bit 31.
  jnz  @addr0475
  test ch,   $04  // Bit 10.
  jnz  @addr0476
  test ch,   $08  // Bit 11.
  jnz  @addr0477
  test ch,   $10  // Bit 12.
  jnz  @addr0478
  test ch,   $20  // Bit 13.
  jnz  @addr0479
  test ch,   $40  // Bit 14.
  jnz  @addr0480
  test al,   $40  // Bit 30.
  jnz  @addr0481
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
  // e.g: SADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0057
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0481:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
  // e.g: SADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0058
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0480:
  test al,   $40  // Bit 30.
  jnz  @addr0482
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
  // e.g: ADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0043
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0482:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
  // e.g: ADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0044
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0479:
  test ch,   $40  // Bit 14.
  jnz  @addr0483
  test al,   $40  // Bit 30.
  jnz  @addr0484
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
  // e.g: SSUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0073
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0484:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
  // e.g: SSUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0074
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0483:
  test al,   $40  // Bit 30.
  jnz  @addr0485
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
  // e.g: SUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0077
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0485:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
  // e.g: SUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0078
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0478:
  test ch,   $20  // Bit 13.
  jnz  @addr0486
  test ch,   $40  // Bit 14.
  jnz  @addr0487
  test al,   $40  // Bit 30.
  jnz  @addr0488
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
  // e.g: SADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0059
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0488:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
  // e.g: SADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0060
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0487:
  test al,   $40  // Bit 30.
  jnz  @addr0489
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
  // e.g: SABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0053
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0489:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
  // e.g: SABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0054
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0486:
  test ch,   $40  // Bit 14.
  jnz  @addr0490
  test al,   $40  // Bit 30.
  jnz  @addr0491
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
  // e.g: SSUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0075
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0491:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
  // e.g: SSUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0076
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0490:
  test al,   $40  // Bit 30.
  jnz  @addr0492
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
  // e.g: SABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0055
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0492:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
  // e.g: SABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0056
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0477:
  test ch,   $10  // Bit 12.
  jnz  @addr0493
  test ch,   $20  // Bit 13.
  jnz  @addr0494
  test ch,   $40  // Bit 14.
  jnz  @addr0495
  // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|0000|o0=0|10|Rn|Rd
  // e.g: REV64  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0205
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0495:
  test ah,   $01  // Bit 16.
  jnz  @addr0496
  test ah,   $08  // Bit 19.
  jnz  @addr0497
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|opcode=00100|10|Rn|Rd
  // e.g: CLS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0158
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0497:
  // 31      |23     |21   |16  |12 |11|5 |0 
  // 01001110|size=00|10100|0010|D=0|10|Rn|Rd
  // e.g: AESE  <Vd>.16B, <Vn>.16B
  mov  eax, 0674
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0496:
  test al,   $40  // Bit 30.
  jnz  @addr0498
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=0|U=0|01110|size|10000|opcode=10100|10|Rn|Rd
  // e.g: SQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0213
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0498:
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=1|U=0|01110|size|10000|opcode=10100|10|Rn|Rd
  // e.g: SQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0214
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0494:
  test ch,   $40  // Bit 14.
  jnz  @addr0499
  test ah,   $01  // Bit 16.
  jnz  @addr0500
  // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
  // 0 |Q |U=0|01110|size|10000|00|op=0|10|10|Rn|Rd
  // e.g: SADDLP  <Vd>.<Ta>, <Vn>.<Tb>
  mov  eax, 0207
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0500:
  test al,   $40  // Bit 30.
  jnz  @addr0501
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=0|U=0|01110|size|10000|opcode=10010|10|Rn|Rd
  // e.g: XTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0226
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0501:
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=1|U=0|01110|size|10000|opcode=10010|10|Rn|Rd
  // e.g: XTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0227
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0499:
  test ah,   $01  // Bit 16.
  jnz  @addr0502
  test ah,   $08  // Bit 19.
  jnz  @addr0503
  // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
  // 0 |Q |U=0|01110|size|10000|00|op=1|10|10|Rn|Rd
  // e.g: SADALP  <Vd>.<Ta>, <Vn>.<Tb>
  mov  eax, 0206
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0503:
  // 31      |23     |21   |16  |12 |11|5 |0 
  // 01001110|size=00|10100|0011|D=0|10|Rn|Rd
  // e.g: AESMC  <Vd>.16B, <Vn>.16B
  mov  eax, 0676
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0502:
  test al,   $40  // Bit 30.
  jnz  @addr0504
  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q=0|U=0|01110|0 |sz|10000|opcode=10110|10|Rn|Rd
  // e.g: FCVTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0178
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0504:
  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q=1|U=0|01110|0 |sz|10000|opcode=10110|10|Rn|Rd
  // e.g: FCVTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0179
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0493:
  test ch,   $20  // Bit 13.
  jnz  @addr0505
  test ch,   $40  // Bit 14.
  jnz  @addr0506
  // 31|30|29 |28   |23     |21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|size=00|10000|0000|o0=1|10|Rn|Rd
  // e.g: REV16  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0203
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0506:
  test ah,   $08  // Bit 19.
  jnz  @addr0507
  // 31|30|29 |28   |23     |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size=00|10000|opcode=00101|10|Rn|Rd
  // e.g: CNT  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0165
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0507:
  // 31      |23     |21   |16  |12 |11|5 |0 
  // 01001110|size=00|10100|0010|D=1|10|Rn|Rd
  // e.g: AESD  <Vd>.16B, <Vn>.16B
  mov  eax, 0673
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0505:
  test ch,   $40  // Bit 14.
  jnz  @addr0508
  test ah,   $10  // Bit 20.
  jnz  @addr0509
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|opcode=00011|10|Rn|Rd
  // e.g: SUQADD  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0217
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0509:
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|11000|opcode=00011|10|Rn|Rd
  // e.g: SADDLV  <V><d>, <Vn>.<T>
  mov  eax, 0037
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0508:
  test ah,   $01  // Bit 16.
  jnz  @addr0510
  test ah,   $08  // Bit 19.
  jnz  @addr0511
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|opcode=00111|10|Rn|Rd
  // e.g: SQABS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0211
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0511:
  // 31      |23     |21   |16  |12 |11|5 |0 
  // 01001110|size=00|10100|0011|D=1|10|Rn|Rd
  // e.g: AESIMC  <Vd>.16B, <Vn>.16B
  mov  eax, 0675
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0510:
  test al,   $40  // Bit 30.
  jnz  @addr0512
  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q=0|U=0|01110|0 |sz|10000|opcode=10111|10|Rn|Rd
  // e.g: FCVTL<Q>  <Vd>.<Ta>, <Vn>.<Tb>
  mov  eax, 0174
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0512:
  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q=1|U=0|01110|0 |sz|10000|opcode=10111|10|Rn|Rd
  // e.g: FCVTL<Q>  <Vd>.<Ta>, <Vn>.<Tb>
  mov  eax, 0175
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0476:
  test ch,   $08  // Bit 11.
  jnz  @addr0513
  test ch,   $10  // Bit 12.
  jnz  @addr0514
  test ch,   $20  // Bit 13.
  jnz  @addr0515
  test ch,   $40  // Bit 14.
  jnz  @addr0516
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=00000|1 |Rn|Rd
  // e.g: SHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0310
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0516:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|010|R=0|S=0|1 |Rn|Rd
  // e.g: SSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0324
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0515:
  test ch,   $40  // Bit 14.
  jnz  @addr0517
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=00100|1 |Rn|Rd
  // e.g: SHSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0311
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0517:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|0110|o1=0|1 |Rn|Rd
  // e.g: SMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0312
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0514:
  test ch,   $20  // Bit 13.
  jnz  @addr0518
  test ch,   $40  // Bit 14.
  jnz  @addr0519
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=00010|1 |Rn|Rd
  // e.g: SRHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0322
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0519:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|010|R=1|S=0|1 |Rn|Rd
  // e.g: SRSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0323
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0518:
  test ch,   $40  // Bit 14.
  jnz  @addr0520
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|0011|eq=0|1 |Rn|Rd
  // e.g: CMGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0272
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0520:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|0111|ac=0|1 |Rn|Rd
  // e.g: SABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0309
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0513:
  test ch,   $10  // Bit 12.
  jnz  @addr0521
  test ch,   $20  // Bit 13.
  jnz  @addr0522
  test ch,   $40  // Bit 14.
  jnz  @addr0523
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=00001|1 |Rn|Rd
  // e.g: SQADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0316
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0523:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
  // e.g: SQSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0320
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0522:
  test ch,   $40  // Bit 14.
  jnz  @addr0524
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=00101|1 |Rn|Rd
  // e.g: SQSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0321
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0524:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|0110|o1=1|1 |Rn|Rd
  // e.g: SMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0314
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0521:
  test ch,   $20  // Bit 13.
  jnz  @addr0525
  test ch,   $40  // Bit 14.
  jnz  @addr0526
  test ah,   $40  // Bit 22.
  jnz  @addr0527
  test ah,   $80  // Bit 23.
  jnz  @addr0528
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size=00|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: AND  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0265
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0528:
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size=10|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: ORR  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0306
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0527:
  test ah,   $80  // Bit 23.
  jnz  @addr0529
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size=01|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: BIC  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0266
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0529:
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size=11|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: ORN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0305
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0526:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
  // e.g: SQRSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0319
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0525:
  test ch,   $40  // Bit 14.
  jnz  @addr0530
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|0011|eq=1|1 |Rn|Rd
  // e.g: CMGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0271
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0530:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|0111|ac=1|1 |Rn|Rd
  // e.g: SABA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0308
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0475:
  // 31       |22    |16|15|10|5 |0 
  // 110011100|Op0=01|Rm|0 |Ra|Rn|Rd
  // e.g: BCAX  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B
  mov  eax, 0670
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0474:
  test ch,   $04  // Bit 10.
  jnz  @addr0531
  test ch,   $08  // Bit 11.
  jnz  @addr0532
  test ch,   $10  // Bit 12.
  jnz  @addr0533
  test ch,   $20  // Bit 13.
  jnz  @addr0534
  test ch,   $40  // Bit 14.
  jnz  @addr0535
  test al,   $40  // Bit 30.
  jnz  @addr0536
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
  // e.g: UADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0083
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0536:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
  // e.g: UADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0084
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0535:
  test al,   $40  // Bit 30.
  jnz  @addr0537
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
  // e.g: RADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0049
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0537:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
  // e.g: RADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0050
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0534:
  test ch,   $40  // Bit 14.
  jnz  @addr0538
  test al,   $40  // Bit 30.
  jnz  @addr0539
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
  // e.g: USUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0093
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0539:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
  // e.g: USUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0094
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0538:
  test al,   $40  // Bit 30.
  jnz  @addr0540
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
  // e.g: RSUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0051
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0540:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
  // e.g: RSUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
  mov  eax, 0052
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0533:
  test ch,   $20  // Bit 13.
  jnz  @addr0541
  test ch,   $40  // Bit 14.
  jnz  @addr0542
  test al,   $40  // Bit 30.
  jnz  @addr0543
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
  // e.g: UADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0085
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0543:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
  // e.g: UADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0086
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0542:
  test al,   $40  // Bit 30.
  jnz  @addr0544
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
  // e.g: UABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0079
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0544:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
  // e.g: UABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0080
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0541:
  test ch,   $40  // Bit 14.
  jnz  @addr0545
  test al,   $40  // Bit 30.
  jnz  @addr0546
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
  // e.g: USUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0095
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0546:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
  // e.g: USUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
  mov  eax, 0096
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0545:
  test al,   $40  // Bit 30.
  jnz  @addr0547
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
  // e.g: UABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0081
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0547:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
  // e.g: UABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0082
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0532:
  test ch,   $10  // Bit 12.
  jnz  @addr0548
  test ch,   $20  // Bit 13.
  jnz  @addr0549
  test ch,   $40  // Bit 14.
  jnz  @addr0550
  // 31|30|29 |28   |23     |21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|size=0x|10000|0000|o0=0|10|Rn|Rd
  // e.g: REV32  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0204
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0550:
  test ah,   $01  // Bit 16.
  jnz  @addr0551
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size|10000|opcode=00100|10|Rn|Rd
  // e.g: CLZ  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0159
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0551:
  test al,   $40  // Bit 30.
  jnz  @addr0552
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=0|U=1|01110|size|10000|opcode=10100|10|Rn|Rd
  // e.g: UQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0221
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0552:
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|size|10000|opcode=10100|10|Rn|Rd
  // e.g: UQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0222
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0549:
  test ch,   $40  // Bit 14.
  jnz  @addr0553
  test ah,   $01  // Bit 16.
  jnz  @addr0554
  // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
  // 0 |Q |U=1|01110|size|10000|00|op=0|10|10|Rn|Rd
  // e.g: UADDLP  <Vd>.<Ta>, <Vn>.<Tb>
  mov  eax, 0219
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0554:
  test al,   $40  // Bit 30.
  jnz  @addr0555
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=0|U=1|01110|size|10000|opcode=10010|10|Rn|Rd
  // e.g: SQXTUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0215
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0555:
  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|size|10000|opcode=10010|10|Rn|Rd
  // e.g: SQXTUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0216
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0553:
  test ah,   $01  // Bit 16.
  jnz  @addr0556
  // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
  // 0 |Q |U=1|01110|size|10000|00|op=1|10|10|Rn|Rd
  // e.g: UADALP  <Vd>.<Ta>, <Vn>.<Tb>
  mov  eax, 0218
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0556:
  test al,   $40  // Bit 30.
  jnz  @addr0557
  // 31|30 |29 |28   |23|22  |21   |16          |11|5 |0 
  // 0 |Q=0|U=1|01110|0 |sz=1|10000|opcode=10110|10|Rn|Rd
  // e.g: FCVTXN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0184
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0557:
  // 31|30 |29 |28   |23|22  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|0 |sz=1|10000|opcode=10110|10|Rn|Rd
  // e.g: FCVTXN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
  mov  eax, 0185
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0548:
  test ch,   $20  // Bit 13.
  jnz  @addr0558
  test ah,   $40  // Bit 22.
  jnz  @addr0559
  // 31|30|29 |28   |23     |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size=00|10000|opcode=00101|10|Rn|Rd
  // e.g: NOT  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0201
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0559:
  // 31|30|29 |28   |23     |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size=01|10000|opcode=00101|10|Rn|Rd
  // e.g: RBIT  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0202
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0558:
  test ch,   $40  // Bit 14.
  jnz  @addr0560
  test ah,   $01  // Bit 16.
  jnz  @addr0561
  test ah,   $10  // Bit 20.
  jnz  @addr0562
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size|10000|opcode=00011|10|Rn|Rd
  // e.g: USQADD  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0225
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0562:
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size|11000|opcode=00011|10|Rn|Rd
  // e.g: UADDLV  <V><d>, <Vn>.<T>
  mov  eax, 0040
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0561:
  test al,   $40  // Bit 30.
  jnz  @addr0563
  // 31|30 |29 |28   |22  |21   |16          |11|5 |0 
  // 0 |Q=0|U=1|01110|size|10000|opcode=10011|10|Rn|Rd
  // e.g: SHLL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>
  mov  eax, 0209
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0563:
  // 31|30 |29 |28   |22  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|size|10000|opcode=10011|10|Rn|Rd
  // e.g: SHLL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>
  mov  eax, 0210
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0560:
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size|10000|opcode=00111|10|Rn|Rd
  // e.g: SQNEG  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0212
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0531:
  test ch,   $08  // Bit 11.
  jnz  @addr0564
  test ch,   $10  // Bit 12.
  jnz  @addr0565
  test ch,   $20  // Bit 13.
  jnz  @addr0566
  test ch,   $40  // Bit 14.
  jnz  @addr0567
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=00000|1 |Rn|Rd
  // e.g: UHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0328
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0567:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|010|R=0|S=0|1 |Rn|Rd
  // e.g: USHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0340
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0566:
  test ch,   $40  // Bit 14.
  jnz  @addr0568
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=00100|1 |Rn|Rd
  // e.g: UHSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0329
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0568:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|0110|o1=0|1 |Rn|Rd
  // e.g: UMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0330
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0565:
  test ch,   $20  // Bit 13.
  jnz  @addr0569
  test ch,   $40  // Bit 14.
  jnz  @addr0570
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=00010|1 |Rn|Rd
  // e.g: URHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0338
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0570:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|010|R=1|S=0|1 |Rn|Rd
  // e.g: URSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0339
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0569:
  test ch,   $40  // Bit 14.
  jnz  @addr0571
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|0011|eq=0|1 |Rn|Rd
  // e.g: CMHI  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0273
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0571:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|0111|ac=0|1 |Rn|Rd
  // e.g: UABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0327
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0564:
  test ch,   $10  // Bit 12.
  jnz  @addr0572
  test ch,   $20  // Bit 13.
  jnz  @addr0573
  test ch,   $40  // Bit 14.
  jnz  @addr0574
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=00001|1 |Rn|Rd
  // e.g: UQADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0334
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0574:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
  // e.g: UQSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0336
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0573:
  test ch,   $40  // Bit 14.
  jnz  @addr0575
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=00101|1 |Rn|Rd
  // e.g: UQSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0337
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0575:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|0110|o1=1|1 |Rn|Rd
  // e.g: UMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0332
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0572:
  test ch,   $20  // Bit 13.
  jnz  @addr0576
  test ch,   $40  // Bit 14.
  jnz  @addr0577
  test ah,   $40  // Bit 22.
  jnz  @addr0578
  test ah,   $80  // Bit 23.
  jnz  @addr0579
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|opc2=00|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: EOR  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0276
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0579:
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|opc2=10|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: BIT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0268
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0578:
  test ah,   $80  // Bit 23.
  jnz  @addr0580
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|opc2=01|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: BSL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0269
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0580:
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|opc2=11|1 |Rm|opcode=00011|1 |Rn|Rd
  // e.g: BIF  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0267
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0577:
  // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
  // e.g: UQRSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0335
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0576:
  test ch,   $40  // Bit 14.
  jnz  @addr0581
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|0011|eq=1|1 |Rn|Rd
  // e.g: CMHS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0274
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0581:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|0111|ac=1|1 |Rn|Rd
  // e.g: UABA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0326
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0473:
  test ch,   $04  // Bit 10.
  jnz  @addr0582
  test ch,   $08  // Bit 11.
  jnz  @addr0583
  test ch,   $10  // Bit 12.
  jnz  @addr0584
  test ch,   $20  // Bit 13.
  jnz  @addr0585
  test ch,   $40  // Bit 14.
  jnz  @addr0586
  test al,   $20  // Bit 29.
  jnz  @addr0587
  test al,   $40  // Bit 30.
  jnz  @addr0588
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
  // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0061
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0588:
  test al,   $80  // Bit 31.
  jnz  @addr0589
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
  // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0062
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0589:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=0|00|opcode=00|Rn|Rd
  // e.g: SHA512H  <Qd>, <Qn>, <Vm>.2D
  mov  eax, 0690
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0587:
  test al,   $40  // Bit 30.
  jnz  @addr0590
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
  // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0087
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0590:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
  // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0088
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0586:
  test al,   $20  // Bit 29.
  jnz  @addr0591
  test al,   $40  // Bit 30.
  jnz  @addr0592
  // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
  // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0065
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0592:
  test al,   $80  // Bit 31.
  jnz  @addr0593
  // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
  // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0066
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0593:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=1|00|opcode=00|Rn|Rd
  // e.g: SM3PARTW1  <Vd>.4S, <Vn>.4S, <Vm>.4S
  mov  eax, 0693
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0591:
  test al,   $40  // Bit 30.
  jnz  @addr0594
  // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
  // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0091
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0594:
  // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
  // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0092
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0585:
  test ch,   $40  // Bit 14.
  jnz  @addr0595
  test al,   $20  // Bit 29.
  jnz  @addr0596
  test al,   $40  // Bit 30.
  jnz  @addr0597
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
  // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0063
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0597:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
  // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0064
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0596:
  test al,   $40  // Bit 30.
  jnz  @addr0598
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=1|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
  // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0089
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0598:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=1|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
  // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0090
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0595:
  test ah,   $40  // Bit 22.
  jnz  @addr0599
  test al,   $40  // Bit 30.
  jnz  @addr0600
  // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
  // 0 |Q=0|U=0|01110|size=00|1 |Rm|opcode=1110|00|Rn|Rd
  // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0046
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0600:
  // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
  // 0 |Q=1|U=0|01110|size=00|1 |Rm|opcode=1110|00|Rn|Rd
  // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0048
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0599:
  test al,   $40  // Bit 30.
  jnz  @addr0601
  // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
  // 0 |Q=0|U=0|01110|size=11|1 |Rm|opcode=1110|00|Rn|Rd
  // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0045
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0601:
  // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
  // 0 |Q=1|U=0|01110|size=11|1 |Rm|opcode=1110|00|Rn|Rd
  // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0047
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0584:
  test ch,   $20  // Bit 13.
  jnz  @addr0602
  test ch,   $40  // Bit 14.
  jnz  @addr0603
  test al,   $40  // Bit 30.
  jnz  @addr0604
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=0|1 |00|Rn|Rd
  // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0067
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0604:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=0|1 |00|Rn|Rd
  // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0068
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0603:
  test al,   $40  // Bit 30.
  jnz  @addr0605
  // 31|30 |29 |28   |23  |21|16|15         |11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|opcode=1101|00|Rn|Rd
  // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0071
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0605:
  // 31|30 |29 |28   |23  |21|16|15         |11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|opcode=1101|00|Rn|Rd
  // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0072
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0602:
  test al,   $40  // Bit 30.
  jnz  @addr0606
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=1|1 |00|Rn|Rd
  // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0069
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0606:
  // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=1|1 |00|Rn|Rd
  // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
  mov  eax, 0070
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0583:
  test ch,   $10  // Bit 12.
  jnz  @addr0607
  test ch,   $20  // Bit 13.
  jnz  @addr0608
  test ch,   $40  // Bit 14.
  jnz  @addr0609
  test al,   $20  // Bit 29.
  jnz  @addr0610
  test al,   $80  // Bit 31.
  jnz  @addr0611
  test ah,   $01  // Bit 16.
  jnz  @addr0612
  // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|0100|op=0|10|Rn|Rd
  // e.g: CMGT  <Vd>.<T>, <Vn>.<T>, #0
  mov  eax, 0162
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0612:
  test ah,   $08  // Bit 19.
  jnz  @addr0613
  test ah,   $80  // Bit 23.
  jnz  @addr0614
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|sz|10000|1100|o1=0|10|Rn|Rd
  // e.g: FRINTN  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0193
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0614:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|sz|10000|1100|o1=0|10|Rn|Rd
  // e.g: FRINTP  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0194
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0613:
  test ah,   $80  // Bit 23.
  jnz  @addr0615
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|111100|1100|o1=0|10|Rn|Rd
  // e.g: FRINTN  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0249
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0615:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|111100|1100|o1=0|10|Rn|Rd
  // e.g: FRINTP  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0250
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0611:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=0|00|opcode=10|Rn|Rd
  // e.g: SHA512SU1  <Vd>.2D, <Vn>.2D, <Vm>.2D
  mov  eax, 0692
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0610:
  test ah,   $01  // Bit 16.
  jnz  @addr0616
  // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|size|10000|0100|op=0|10|Rn|Rd
  // e.g: CMGE  <Vd>.<T>, <Vn>.<T>, #0
  mov  eax, 0161
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0616:
  test ah,   $08  // Bit 19.
  jnz  @addr0617
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|sz|10000|1100|o1=0|10|Rn|Rd
  // e.g: FRINTA  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0190
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0617:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|111100|1100|o1=0|10|Rn|Rd
  // e.g: FRINTA  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0246
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0609:
  test ah,   $80  // Bit 23.
  jnz  @addr0618
  test al,   $20  // Bit 29.
  jnz  @addr0619
  test al,   $80  // Bit 31.
  jnz  @addr0620
  test ah,   $01  // Bit 16.
  jnz  @addr0621
  // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|o1=0|0 |11000|opcode=01100|10|Rn|Rd
  // e.g: FMAXNMV  Hd, <Vn>.<T>
  mov  eax, 0029
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0621:
  test ah,   $08  // Bit 19.
  jnz  @addr0622
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|0 |sz|10000|opcode=11100|10|Rn|Rd
  // e.g: FCVTAS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0172
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0622:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=0|01110|a=0|111100|opcode=11100|10|Rn|Rd
  // e.g: FCVTAS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0234
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0620:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=1|00|opcode=10|Rn|Rd
  // e.g: SM4EKEY  <Vd>.4S, <Vn>.4S, <Vm>.4S
  mov  eax, 0695
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0619:
  test ah,   $01  // Bit 16.
  jnz  @addr0623
  // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|o1=0|sz=0|11000|opcode=01100|10|Rn|Rd
  // e.g: FMAXNMV  <V><d>, <Vn>.<T>
  mov  eax, 0030
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0623:
  test ah,   $08  // Bit 19.
  jnz  @addr0624
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|0 |sz|10000|opcode=11100|10|Rn|Rd
  // e.g: FCVTAU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0173
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0624:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=1|01110|a=0|111100|opcode=11100|10|Rn|Rd
  // e.g: FCVTAU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0235
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0618:
  test ah,   $01  // Bit 16.
  jnz  @addr0625
  test ah,   $08  // Bit 19.
  jnz  @addr0626
  test ah,   $10  // Bit 20.
  jnz  @addr0627
  test al,   $20  // Bit 29.
  jnz  @addr0628
  // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|1 |sz|10000|0110|op=0|10|Rn|Rd
  // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0169
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0628:
  // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|1 |sz|10000|0110|op=0|10|Rn|Rd
  // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0168
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0627:
  test al,   $20  // Bit 29.
  jnz  @addr0629
  // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|o1=1|0 |11000|opcode=01100|10|Rn|Rd
  // e.g: FMINNMV  Hd, <Vn>.<T>
  mov  eax, 0033
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0629:
  // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|o1=1|sz=0|11000|opcode=01100|10|Rn|Rd
  // e.g: FMINNMV  <V><d>, <Vn>.<T>
  mov  eax, 0034
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0626:
  test al,   $20  // Bit 29.
  jnz  @addr0630
  // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|a=1|111100|0110|op=0|10|Rn|Rd
  // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0231
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0630:
  // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|a=1|111100|0110|op=0|10|Rn|Rd
  // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0230
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0625:
  test al,   $20  // Bit 29.
  jnz  @addr0631
  // 31|30|29 |28   |23|22  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|1 |sz=0|10000|opcode=11100|10|Rn|Rd
  // e.g: URECPE  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0223
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0631:
  // 31|30|29 |28   |23|22  |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|1 |sz=0|10000|opcode=11100|10|Rn|Rd
  // e.g: URSQRTE  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0224
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0608:
  test ch,   $40  // Bit 14.
  jnz  @addr0632
  test ah,   $01  // Bit 16.
  jnz  @addr0633
  test ah,   $10  // Bit 20.
  jnz  @addr0634
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|opcode=01010|10|Rn|Rd
  // e.g: CMLT  <Vd>.<T>, <Vn>.<T>, #0
  mov  eax, 0164
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0634:
  test al,   $20  // Bit 29.
  jnz  @addr0635
  // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
  // 0 |Q |U=0|01110|size|11000|op=0|1010|10|Rn|Rd
  // e.g: SMAXV  <V><d>, <Vn>.<T>
  mov  eax, 0038
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0635:
  // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
  // 0 |Q |U=1|01110|size|11000|op=0|1010|10|Rn|Rd
  // e.g: UMAXV  <V><d>, <Vn>.<T>
  mov  eax, 0041
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0633:
  test ah,   $08  // Bit 19.
  jnz  @addr0636
  test ah,   $10  // Bit 20.
  jnz  @addr0637
  test ah,   $80  // Bit 23.
  jnz  @addr0638
  test al,   $20  // Bit 29.
  jnz  @addr0639
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0180
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0639:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0181
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0638:
  test al,   $20  // Bit 29.
  jnz  @addr0640
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0182
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0640:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0183
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0637:
  test al,   $20  // Bit 29.
  jnz  @addr0641
  // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
  // 0 |Q |U=0|01110|size|11000|op=1|1010|10|Rn|Rd
  // e.g: SMINV  <V><d>, <Vn>.<T>
  mov  eax, 0039
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0641:
  // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
  // 0 |Q |U=1|01110|size|11000|op=1|1010|10|Rn|Rd
  // e.g: UMINV  <V><d>, <Vn>.<T>
  mov  eax, 0042
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0636:
  test ah,   $80  // Bit 23.
  jnz  @addr0642
  test al,   $20  // Bit 29.
  jnz  @addr0643
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0238
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0643:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0239
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0642:
  test al,   $20  // Bit 29.
  jnz  @addr0644
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0240
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0644:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=1|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0241
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0632:
  test ah,   $08  // Bit 19.
  jnz  @addr0645
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|1 |sz|10000|opcode=01110|10|Rn|Rd
  // e.g: FCMLT  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0171
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0645:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=0|01110|a=1|111100|opcode=01110|10|Rn|Rd
  // e.g: FCMLT  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0233
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0607:
  test ch,   $20  // Bit 13.
  jnz  @addr0646
  test ch,   $40  // Bit 14.
  jnz  @addr0647
  test ah,   $01  // Bit 16.
  jnz  @addr0648
  test al,   $20  // Bit 29.
  jnz  @addr0649
  // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|0100|op=1|10|Rn|Rd
  // e.g: CMEQ  <Vd>.<T>, <Vn>.<T>, #0
  mov  eax, 0160
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0649:
  // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|size|10000|0100|op=1|10|Rn|Rd
  // e.g: CMLE  <Vd>.<T>, <Vn>.<T>, #0
  mov  eax, 0163
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0648:
  test ah,   $08  // Bit 19.
  jnz  @addr0650
  test ah,   $80  // Bit 23.
  jnz  @addr0651
  test al,   $20  // Bit 29.
  jnz  @addr0652
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|sz|10000|1100|o1=1|10|Rn|Rd
  // e.g: FRINTM  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0192
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0652:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|sz|10000|1100|o1=1|10|Rn|Rd
  // e.g: FRINTX  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0195
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0651:
  test al,   $20  // Bit 29.
  jnz  @addr0653
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|sz|10000|1100|o1=1|10|Rn|Rd
  // e.g: FRINTZ  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0196
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0653:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=1|sz|10000|1100|o1=1|10|Rn|Rd
  // e.g: FRINTI  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0191
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0650:
  test ah,   $80  // Bit 23.
  jnz  @addr0654
  test al,   $20  // Bit 29.
  jnz  @addr0655
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|111100|1100|o1=1|10|Rn|Rd
  // e.g: FRINTM  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0248
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0655:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|111100|1100|o1=1|10|Rn|Rd
  // e.g: FRINTX  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0251
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0654:
  test al,   $20  // Bit 29.
  jnz  @addr0656
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|111100|1100|o1=1|10|Rn|Rd
  // e.g: FRINTZ  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0252
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0656:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=1|111100|1100|o1=1|10|Rn|Rd
  // e.g: FRINTI  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0247
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0647:
  test ah,   $01  // Bit 16.
  jnz  @addr0657
  test ah,   $08  // Bit 19.
  jnz  @addr0658
  test al,   $20  // Bit 29.
  jnz  @addr0659
  // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|1 |sz|10000|0110|op=1|10|Rn|Rd
  // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0167
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0659:
  // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|1 |sz|10000|0110|op=1|10|Rn|Rd
  // e.g: FCMLE  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0170
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0658:
  test al,   $20  // Bit 29.
  jnz  @addr0660
  // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|a=1|111100|0110|op=1|10|Rn|Rd
  // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0229
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0660:
  // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|a=1|111100|0110|op=1|10|Rn|Rd
  // e.g: FCMLE  <Vd>.<T>, <Vn>.<T>, #0.0
  mov  eax, 0232
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0657:
  test ah,   $08  // Bit 19.
  jnz  @addr0661
  test ah,   $80  // Bit 23.
  jnz  @addr0662
  test al,   $20  // Bit 29.
  jnz  @addr0663
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|0 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: SCVTF  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0208
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0663:
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|0 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: UCVTF  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0220
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0662:
  test al,   $20  // Bit 29.
  jnz  @addr0664
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|1 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: FRECPE  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0189
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0664:
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|1 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: FRSQRTE  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0197
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0661:
  test ah,   $80  // Bit 23.
  jnz  @addr0665
  test al,   $20  // Bit 29.
  jnz  @addr0666
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=0|01110|a=0|111100|opcode=11101|10|Rn|Rd
  // e.g: SCVTF  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0255
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0666:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=1|01110|a=0|111100|opcode=11101|10|Rn|Rd
  // e.g: UCVTF  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0256
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0665:
  test al,   $20  // Bit 29.
  jnz  @addr0667
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=0|01110|a=1|111100|opcode=11101|10|Rn|Rd
  // e.g: FRECPE  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0245
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0667:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=1|01110|a=1|111100|opcode=11101|10|Rn|Rd
  // e.g: FRSQRTE  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0253
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0646:
  test ch,   $40  // Bit 14.
  jnz  @addr0668
  test ah,   $01  // Bit 16.
  jnz  @addr0669
  test al,   $20  // Bit 29.
  jnz  @addr0670
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|10000|opcode=01011|10|Rn|Rd
  // e.g: ABS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0157
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0670:
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|size|10000|opcode=01011|10|Rn|Rd
  // e.g: NEG  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0200
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0669:
  test ah,   $08  // Bit 19.
  jnz  @addr0671
  test ah,   $10  // Bit 20.
  jnz  @addr0672
  test ah,   $80  // Bit 23.
  jnz  @addr0673
  test al,   $20  // Bit 29.
  jnz  @addr0674
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0176
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0674:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0177
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0673:
  test al,   $20  // Bit 29.
  jnz  @addr0675
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0186
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0675:
  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0187
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0672:
  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|size|11000|opcode=11011|10|Rn|Rd
  // e.g: ADDV  <V><d>, <Vn>.<T>
  mov  eax, 0028
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0671:
  test ah,   $80  // Bit 23.
  jnz  @addr0676
  test al,   $20  // Bit 29.
  jnz  @addr0677
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=0|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0236
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0677:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=0|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0237
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0676:
  test al,   $20  // Bit 29.
  jnz  @addr0678
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=0|01110|o2=1|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0242
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0678:
  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 0 |Q |U=1|01110|o2=1|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZU  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0243
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0668:
  test ah,   $01  // Bit 16.
  jnz  @addr0679
  test ah,   $08  // Bit 19.
  jnz  @addr0680
  test ah,   $10  // Bit 20.
  jnz  @addr0681
  test al,   $20  // Bit 29.
  jnz  @addr0682
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|1 |sz|10000|opcode=01111|10|Rn|Rd
  // e.g: FABS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0166
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0682:
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|1 |sz|10000|opcode=01111|10|Rn|Rd
  // e.g: FNEG  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0188
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0681:
  test ah,   $80  // Bit 23.
  jnz  @addr0683
  test al,   $20  // Bit 29.
  jnz  @addr0684
  // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|o1=0|0 |11000|opcode=01111|10|Rn|Rd
  // e.g: FMAXV  Hd, <Vn>.<T>
  mov  eax, 0031
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0684:
  // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|o1=0|sz=0|11000|opcode=01111|10|Rn|Rd
  // e.g: FMAXV  <V><d>, <Vn>.<T>
  mov  eax, 0032
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0683:
  test al,   $20  // Bit 29.
  jnz  @addr0685
  // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
  // 0 |Q |U=0|01110|o1=1|0 |11000|opcode=01111|10|Rn|Rd
  // e.g: FMINV  Hd, <Vn>.<T>
  mov  eax, 0035
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0685:
  // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
  // 0 |Q=1|U=1|01110|o1=1|sz=0|11000|opcode=01111|10|Rn|Rd
  // e.g: FMINV  <V><d>, <Vn>.<T>
  mov  eax, 0036
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0680:
  test al,   $20  // Bit 29.
  jnz  @addr0686
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=0|01110|a=1|111100|opcode=01111|10|Rn|Rd
  // e.g: FABS  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0228
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0686:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=1|01110|a=1|111100|opcode=01111|10|Rn|Rd
  // e.g: FNEG  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0244
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0679:
  test ah,   $08  // Bit 19.
  jnz  @addr0687
  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
  // 0 |Q |U=1|01110|1 |sz|10000|opcode=11111|10|Rn|Rd
  // e.g: FSQRT  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0198
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0687:
  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
  // 0 |Q |U=1|01110|a=1|111100|opcode=11111|10|Rn|Rd
  // e.g: FSQRT  <Vd>.<T>, <Vn>.<T>
  mov  eax, 0254
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0582:
  test ch,   $08  // Bit 11.
  jnz  @addr0688
  test ch,   $10  // Bit 12.
  jnz  @addr0689
  test ch,   $20  // Bit 13.
  jnz  @addr0690
  test ch,   $40  // Bit 14.
  jnz  @addr0691
  test al,   $20  // Bit 29.
  jnz  @addr0692
  test al,   $80  // Bit 31.
  jnz  @addr0693
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=10000|1 |Rn|Rd
  // e.g: ADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0263
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0693:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=0|00|opcode=01|Rn|Rd
  // e.g: SHA512H2  <Qd>, <Qn>, <Vm>.2D
  mov  eax, 0691
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0692:
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=10000|1 |Rn|Rd
  // e.g: SUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0325
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0691:
  test ah,   $80  // Bit 23.
  jnz  @addr0694
  test al,   $20  // Bit 29.
  jnz  @addr0695
  test al,   $80  // Bit 31.
  jnz  @addr0696
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|o1=0|sz|1 |Rm|opcode=11000|1 |Rn|Rd
  // e.g: FMAXNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0287
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0696:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=1|00|opcode=01|Rn|Rd
  // e.g: SM3PARTW2  <Vd>.4S, <Vn>.4S, <Vm>.4S
  mov  eax, 0694
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0695:
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|o1=0|sz|1 |Rm|opcode=11000|1 |Rn|Rd
  // e.g: FMAXNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0288
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0694:
  test al,   $20  // Bit 29.
  jnz  @addr0697
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|o1=1|sz|1 |Rm|opcode=11000|1 |Rn|Rd
  // e.g: FMINNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0291
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0697:
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|o1=1|sz|1 |Rm|opcode=11000|1 |Rn|Rd
  // e.g: FMINNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0292
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0690:
  test ch,   $40  // Bit 14.
  jnz  @addr0698
  test al,   $20  // Bit 29.
  jnz  @addr0699
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|1010|o1=0|1 |Rn|Rd
  // e.g: SMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0313
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0699:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|1010|o1=0|1 |Rn|Rd
  // e.g: UMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0331
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0698:
  test ah,   $80  // Bit 23.
  jnz  @addr0700
  test al,   $20  // Bit 29.
  jnz  @addr0701
  // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
  // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0282
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0701:
  // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
  // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0283
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0700:
  // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|E=1|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
  // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0284
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0689:
  test ch,   $20  // Bit 13.
  jnz  @addr0702
  test ch,   $40  // Bit 14.
  jnz  @addr0703
  test al,   $20  // Bit 29.
  jnz  @addr0704
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=10010|1 |Rn|Rd
  // e.g: MLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0301
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0704:
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=10010|1 |Rn|Rd
  // e.g: MLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0302
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0703:
  test ah,   $80  // Bit 23.
  jnz  @addr0705
  test al,   $20  // Bit 29.
  jnz  @addr0706
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|0 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
  // e.g: FADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0280
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0706:
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|0 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
  // e.g: FADDP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0281
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0705:
  test al,   $20  // Bit 29.
  jnz  @addr0707
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|1 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
  // e.g: FSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0300
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0707:
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|1 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
  // e.g: FABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0277
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0702:
  test ch,   $40  // Bit 14.
  jnz  @addr0708
  test al,   $20  // Bit 29.
  jnz  @addr0709
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=10110|1 |Rn|Rd
  // e.g: SQDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0317
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0709:
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=10110|1 |Rn|Rd
  // e.g: SQRDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0318
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0708:
  test ah,   $80  // Bit 23.
  jnz  @addr0710
  test al,   $20  // Bit 29.
  jnz  @addr0711
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|o1=0|sz|1 |Rm|opcode=11110|1 |Rn|Rd
  // e.g: FMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0286
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0711:
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|o1=0|sz|1 |Rm|opcode=11110|1 |Rn|Rd
  // e.g: FMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0289
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0710:
  test al,   $20  // Bit 29.
  jnz  @addr0712
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|o1=1|sz|1 |Rm|opcode=11110|1 |Rn|Rd
  // e.g: FMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0290
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0712:
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|o1=1|sz|1 |Rm|opcode=11110|1 |Rn|Rd
  // e.g: FMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0293
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0688:
  test ch,   $10  // Bit 12.
  jnz  @addr0713
  test ch,   $20  // Bit 13.
  jnz  @addr0714
  test ch,   $40  // Bit 14.
  jnz  @addr0715
  test al,   $20  // Bit 29.
  jnz  @addr0716
  test al,   $80  // Bit 31.
  jnz  @addr0717
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=10001|1 |Rn|Rd
  // e.g: CMTST  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0275
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0717:
  // 31         |16|15|14 |13|11       |5 |0 
  // 11001110011|Rm|1 |O=0|00|opcode=11|Rn|Rd
  // e.g: RAX1  <Vd>.2D, <Vn>.2D, <Vm>.2D
  mov  eax, 0689
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0716:
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|opcode=10001|1 |Rn|Rd
  // e.g: CMEQ  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0270
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0715:
  test ah,   $80  // Bit 23.
  jnz  @addr0718
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|op=0|sz|1 |Rm|opcode=11001|1 |Rn|Rd
  // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0294
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0718:
  // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|op=1|sz|1 |Rm|opcode=11001|1 |Rn|Rd
  // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0295
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0714:
  test ch,   $40  // Bit 14.
  jnz  @addr0719
  test al,   $20  // Bit 29.
  jnz  @addr0720
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|1010|o1=1|1 |Rn|Rd
  // e.g: SMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0315
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0720:
  // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|size|1 |Rm|1010|o1=1|1 |Rn|Rd
  // e.g: UMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0333
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0719:
  test ah,   $80  // Bit 23.
  jnz  @addr0721
  // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|E=0|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
  // e.g: FACGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0278
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0721:
  // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 0 |Q |U=1|01110|E=1|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
  // e.g: FACGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0279
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0713:
  test ch,   $20  // Bit 13.
  jnz  @addr0722
  test ch,   $40  // Bit 14.
  jnz  @addr0723
  test al,   $20  // Bit 29.
  jnz  @addr0724
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=10011|1 |Rn|Rd
  // e.g: MUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0304
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0724:
  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|size=00|1 |Rm|opcode=10011|1 |Rn|Rd
  // e.g: PMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0307
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0723:
  test al,   $20  // Bit 29.
  jnz  @addr0725
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|0 |sz|1 |Rm|opcode=11011|1 |Rn|Rd
  // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0297
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0725:
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|0 |sz|1 |Rm|opcode=11011|1 |Rn|Rd
  // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0296
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0722:
  test ch,   $40  // Bit 14.
  jnz  @addr0726
  // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|size|1 |Rm|opcode=10111|1 |Rn|Rd
  // e.g: ADDP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0264
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0726:
  test ah,   $80  // Bit 23.
  jnz  @addr0727
  test al,   $20  // Bit 29.
  jnz  @addr0728
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|0 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
  // e.g: FRECPS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0298
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0728:
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=1|01110|0 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
  // e.g: FDIV  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0285
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0727:
  // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
  // 0 |Q |U=0|01110|1 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
  // e.g: FRSQRTS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
  mov  eax, 0299
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0472:
  test ch,   $04  // Bit 10.
  jnz  @addr0729
  test ch,   $08  // Bit 11.
  jnz  @addr0730
  test ch,   $10  // Bit 12.
  jnz  @addr0731
  test ch,   $20  // Bit 13.
  jnz  @addr0732
  test ch,   $40  // Bit 14.
  jnz  @addr0733
  test ah,   $01  // Bit 16.
  jnz  @addr0734
  test ah,   $02  // Bit 17.
  jnz  @addr0735
  test ah,   $04  // Bit 18.
  jnz  @addr0736
  test ah,   $08  // Bit 19.
  jnz  @addr0737
  test ah,   $10  // Bit 20.
  jnz  @addr0738
  test ah,   $80  // Bit 23.
  jnz  @addr0739
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=000|000000|Rn|Rd
  // e.g: FCVTNS  <Wd>, <Sn>
  mov  eax, 0781
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0739:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=000|000000|Rn|Rd
  // e.g: FCVTNS  <Wd>, <Hn>
  mov  eax, 0780
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0738:
  test ah,   $80  // Bit 23.
  jnz  @addr0740
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=10|opcode=000|000000|Rn|Rd
  // e.g: FCVTMS  <Wd>, <Sn>
  mov  eax, 0777
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0740:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=10|opcode=000|000000|Rn|Rd
  // e.g: FCVTMS  <Wd>, <Hn>
  mov  eax, 0776
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0737:
  test ah,   $10  // Bit 20.
  jnz  @addr0741
  test ah,   $80  // Bit 23.
  jnz  @addr0742
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=01|opcode=000|000000|Rn|Rd
  // e.g: FCVTPS  <Wd>, <Sn>
  mov  eax, 0785
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0742:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=01|opcode=000|000000|Rn|Rd
  // e.g: FCVTPS  <Wd>, <Hn>
  mov  eax, 0784
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0741:
  test ah,   $80  // Bit 23.
  jnz  @addr0743
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=11|opcode=000|000000|Rn|Rd
  // e.g: FCVTZS  <Wd>, <Sn>
  mov  eax, 0789
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0743:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=11|opcode=000|000000|Rn|Rd
  // e.g: FCVTZS  <Wd>, <Hn>
  mov  eax, 0788
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0736:
  test ah,   $80  // Bit 23.
  jnz  @addr0744
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=100|000000|Rn|Rd
  // e.g: FCVTAS  <Wd>, <Sn>
  mov  eax, 0773
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0744:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=100|000000|Rn|Rd
  // e.g: FCVTAS  <Wd>, <Hn>
  mov  eax, 0772
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0735:
  test ah,   $04  // Bit 18.
  jnz  @addr0745
  test ah,   $80  // Bit 23.
  jnz  @addr0746
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=010|000000|Rn|Rd
  // e.g: SCVTF  <Sd>, <Wn>
  mov  eax, 0800
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0746:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=010|000000|Rn|Rd
  // e.g: SCVTF  <Hd>, <Wn>
  mov  eax, 0799
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0745:
  test ah,   $08  // Bit 19.
  jnz  @addr0747
  test ah,   $80  // Bit 23.
  jnz  @addr0748
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=110|000000|Rn|Rd
  // e.g: FMOV  <Wd>, <Sn>
  mov  eax, 0796
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0748:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=110|000000|Rn|Rd
  // e.g: FMOV  <Wd>, <Hn>
  mov  eax, 0793
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0747:
  test ah,   $10  // Bit 20.
  jnz  @addr0749
  // 31  |30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf=1|0 |S=0|11110|type=10|1 |rmode=01|opcode=110|000000|Rn|Rd
  // e.g: FMOV  <Xd>, <Vn>.D[1]
  mov  eax, 0798
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0749:
  // 31  |30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf=0|0 |S=0|11110|type=01|1 |rmode=11|opcode=110|000000|Rn|Rd
  // e.g: FJCVTZS  <Wd>, <Dn>
  mov  eax, 0792
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0734:
  test ah,   $02  // Bit 17.
  jnz  @addr0750
  test ah,   $04  // Bit 18.
  jnz  @addr0751
  test ah,   $08  // Bit 19.
  jnz  @addr0752
  test ah,   $10  // Bit 20.
  jnz  @addr0753
  test ah,   $80  // Bit 23.
  jnz  @addr0754
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=001|000000|Rn|Rd
  // e.g: FCVTNU  <Wd>, <Sn>
  mov  eax, 0783
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0754:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=001|000000|Rn|Rd
  // e.g: FCVTNU  <Wd>, <Hn>
  mov  eax, 0782
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0753:
  test ah,   $80  // Bit 23.
  jnz  @addr0755
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=10|opcode=001|000000|Rn|Rd
  // e.g: FCVTMU  <Wd>, <Sn>
  mov  eax, 0779
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0755:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=10|opcode=001|000000|Rn|Rd
  // e.g: FCVTMU  <Wd>, <Hn>
  mov  eax, 0778
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0752:
  test ah,   $10  // Bit 20.
  jnz  @addr0756
  test ah,   $80  // Bit 23.
  jnz  @addr0757
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=01|opcode=001|000000|Rn|Rd
  // e.g: FCVTPU  <Wd>, <Sn>
  mov  eax, 0787
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0757:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=01|opcode=001|000000|Rn|Rd
  // e.g: FCVTPU  <Wd>, <Hn>
  mov  eax, 0786
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0756:
  test ah,   $80  // Bit 23.
  jnz  @addr0758
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=11|opcode=001|000000|Rn|Rd
  // e.g: FCVTZU  <Wd>, <Sn>
  mov  eax, 0791
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0758:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=11|opcode=001|000000|Rn|Rd
  // e.g: FCVTZU  <Wd>, <Hn>
  mov  eax, 0790
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0751:
  test ah,   $80  // Bit 23.
  jnz  @addr0759
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=101|000000|Rn|Rd
  // e.g: FCVTAU  <Wd>, <Sn>
  mov  eax, 0775
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0759:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=101|000000|Rn|Rd
  // e.g: FCVTAU  <Wd>, <Hn>
  mov  eax, 0774
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0750:
  test ah,   $04  // Bit 18.
  jnz  @addr0760
  test ah,   $80  // Bit 23.
  jnz  @addr0761
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=011|000000|Rn|Rd
  // e.g: UCVTF  <Sd>, <Wn>
  mov  eax, 0802
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0761:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=011|000000|Rn|Rd
  // e.g: UCVTF  <Hd>, <Wn>
  mov  eax, 0801
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0760:
  test ah,   $08  // Bit 19.
  jnz  @addr0762
  test ah,   $80  // Bit 23.
  jnz  @addr0763
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=111|000000|Rn|Rd
  // e.g: FMOV  <Sd>, <Wn>
  mov  eax, 0795
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0763:
  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=111|000000|Rn|Rd
  // e.g: FMOV  <Hd>, <Wn>
  mov  eax, 0794
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0762:
  // 31  |30|29 |28   |23     |21|20      |18        |15    |5 |0 
  // sf=1|0 |S=0|11110|type=10|1 |rmode=01|opcode=111|000000|Rn|Rd
  // e.g: FMOV  <Vd>.D[1], <Xn>
  mov  eax, 0797
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0733:
  test ah,   $02  // Bit 17.
  jnz  @addr0764
  test ch,   $80  // Bit 15.
  jnz  @addr0765
  test ah,   $01  // Bit 16.
  jnz  @addr0766
  test ah,   $04  // Bit 18.
  jnz  @addr0767
  test ah,   $80  // Bit 23.
  jnz  @addr0768
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=00|10000|Rn|Rd
  // e.g: FMOV  <Sd>, <Sn>
  mov  eax, 0819
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0768:
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |0000|opc=00|10000|Rn|Rd
  // e.g: FMOV  <Hd>, <Hn>
  mov  eax, 0818
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0767:
  test ah,   $80  // Bit 23.
  jnz  @addr0769
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=000|10000|Rn|Rd
  // e.g: FRINTN  <Sd>, <Sn>
  mov  eax, 0829
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0769:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=000|10000|Rn|Rd
  // e.g: FRINTN  <Hd>, <Hn>
  mov  eax, 0828
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0766:
  test ah,   $04  // Bit 18.
  jnz  @addr0770
  test ah,   $80  // Bit 23.
  jnz  @addr0771
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=10|10000|Rn|Rd
  // e.g: FNEG  <Sd>, <Sn>
  mov  eax, 0821
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0771:
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |0000|opc=10|10000|Rn|Rd
  // e.g: FNEG  <Hd>, <Hn>
  mov  eax, 0820
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0770:
  test ah,   $80  // Bit 23.
  jnz  @addr0772
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=010|10000|Rn|Rd
  // e.g: FRINTM  <Sd>, <Sn>
  mov  eax, 0827
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0772:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=010|10000|Rn|Rd
  // e.g: FRINTM  <Hd>, <Hn>
  mov  eax, 0826
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0765:
  test ah,   $01  // Bit 16.
  jnz  @addr0773
  test ah,   $04  // Bit 18.
  jnz  @addr0774
  test ah,   $80  // Bit 23.
  jnz  @addr0775
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=01|10000|Rn|Rd
  // e.g: FABS  <Sd>, <Sn>
  mov  eax, 0816
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0775:
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |0000|opc=01|10000|Rn|Rd
  // e.g: FABS  <Hd>, <Hn>
  mov  eax, 0815
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0774:
  test ah,   $80  // Bit 23.
  jnz  @addr0776
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=001|10000|Rn|Rd
  // e.g: FRINTP  <Sd>, <Sn>
  mov  eax, 0831
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0776:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=001|10000|Rn|Rd
  // e.g: FRINTP  <Hd>, <Hn>
  mov  eax, 0830
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0773:
  test ah,   $04  // Bit 18.
  jnz  @addr0777
  test ah,   $80  // Bit 23.
  jnz  @addr0778
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=11|10000|Rn|Rd
  // e.g: FSQRT  <Sd>, <Sn>
  mov  eax, 0837
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0778:
  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |0000|opc=11|10000|Rn|Rd
  // e.g: FSQRT  <Hd>, <Hn>
  mov  eax, 0836
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0777:
  test ah,   $80  // Bit 23.
  jnz  @addr0779
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=011|10000|Rn|Rd
  // e.g: FRINTZ  <Sd>, <Sn>
  mov  eax, 0835
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0779:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=011|10000|Rn|Rd
  // e.g: FRINTZ  <Hd>, <Hn>
  mov  eax, 0834
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0764:
  test ah,   $04  // Bit 18.
  jnz  @addr0780
  // 31 |30|29 |28   |23  |21|20  |16 |14   |5 |0 
  // M=0|0 |S=0|11110|type|1 |0001|opc|10000|Rn|Rd
  // e.g: FCVT  <Sd>, <Hn>
  mov  eax, 0817
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0780:
  test ch,   $80  // Bit 15.
  jnz  @addr0781
  test ah,   $01  // Bit 16.
  jnz  @addr0782
  test ah,   $80  // Bit 23.
  jnz  @addr0783
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=100|10000|Rn|Rd
  // e.g: FRINTA  <Sd>, <Sn>
  mov  eax, 0823
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0783:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=100|10000|Rn|Rd
  // e.g: FRINTA  <Hd>, <Hn>
  mov  eax, 0822
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0782:
  test ah,   $80  // Bit 23.
  jnz  @addr0784
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=110|10000|Rn|Rd
  // e.g: FRINTX  <Sd>, <Sn>
  mov  eax, 0833
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0784:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=110|10000|Rn|Rd
  // e.g: FRINTX  <Hd>, <Hn>
  mov  eax, 0832
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0781:
  test ah,   $80  // Bit 23.
  jnz  @addr0785
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=111|10000|Rn|Rd
  // e.g: FRINTI  <Sd>, <Sn>
  mov  eax, 0825
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0785:
  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
  // M=0|0 |S=0|11110|type=11|1 |001|rmode=111|10000|Rn|Rd
  // e.g: FRINTI  <Hd>, <Hn>
  mov  eax, 0824
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0732:
  test cl,   $08  // Bit 03.
  jnz  @addr0786
  test cl,   $10  // Bit 04.
  jnz  @addr0787
  test ah,   $80  // Bit 23.
  jnz  @addr0788
  // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=0x|1 |Rm|op=00|1000|Rn|opc=00|000
  // e.g: FCMP  <Sn>, <Sm>
  mov  eax, 0809
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0788:
  // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=11|1 |Rm|op=00|1000|Rn|opc=00|000
  // e.g: FCMP  <Hn>, <Hm>
  mov  eax, 0807
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0787:
  test ah,   $80  // Bit 23.
  jnz  @addr0789
  // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=0x|1 |Rm|op=00|1000|Rn|opc=10|000
  // e.g: FCMPE  <Sn>, <Sm>
  mov  eax, 0813
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0789:
  // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=11|1 |Rm|op=00|1000|Rn|opc=10|000
  // e.g: FCMPE  <Hn>, <Hm>
  mov  eax, 0811
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0786:
  test cl,   $10  // Bit 04.
  jnz  @addr0790
  test ah,   $80  // Bit 23.
  jnz  @addr0791
  // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=0x|1 |Rm=00000|op=00|1000|Rn|opc=01|000
  // e.g: FCMP  <Sn>, #0.0
  mov  eax, 0810
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0791:
  // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=11|1 |Rm=00000|op=00|1000|Rn|opc=01|000
  // e.g: FCMP  <Hn>, #0.0
  mov  eax, 0808
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0790:
  test ah,   $80  // Bit 23.
  jnz  @addr0792
  // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=0x|1 |Rm=00000|op=00|1000|Rn|opc=11|000
  // e.g: FCMPE  <Sn>, #0.0
  mov  eax, 0814
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0792:
  // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
  // M=0|0 |S=0|11110|type=11|1 |Rm=00000|op=00|1000|Rn|opc=11|000
  // e.g: FCMPE  <Hn>, #0.0
  mov  eax, 0812
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0731:
  test al,   $40  // Bit 30.
  jnz  @addr0793
  test ah,   $80  // Bit 23.
  jnz  @addr0794
  // 31 |30|29 |28   |23     |21|13  |12 |9         |0 
  // M=0|0 |S=0|11110|type=0x|1 |imm8|100|imm5=00000|Rd
  // e.g: FMOV  <Sd>, #<imm>
  mov  eax, 0865
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0794:
  // 31 |30|29 |28   |23     |21|13  |12 |9         |0 
  // M=0|0 |S=0|11110|type=11|1 |imm8|100|imm5=00000|Rd
  // e.g: FMOV  <Hd>, #<imm>
  mov  eax, 0864
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0793:
  test ch,   $20  // Bit 13.
  jnz  @addr0795
  test ch,   $40  // Bit 14.
  jnz  @addr0796
  // 31|29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 01|U=0|11110|size|1 |Rm|10|o1=0|1 |00|Rn|Rd
  // e.g: SQDMLAL  <Va><d>, <Vb><n>, <Vb><m>
  mov  eax, 0415
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0796:
  // 31|29 |28   |23  |21|16|15         |11|5 |0 
  // 01|U=0|11110|size|1 |Rm|opcode=1101|00|Rn|Rd
  // e.g: SQDMULL  <Va><d>, <Vb><n>, <Vb><m>
  mov  eax, 0417
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0795:
  // 31|29 |28   |23  |21|16|15|13  |12|11|5 |0 
  // 01|U=0|11110|size|1 |Rm|10|o1=1|1 |00|Rn|Rd
  // e.g: SQDMLSL  <Va><d>, <Vb><n>, <Vb><m>
  mov  eax, 0416
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0730:
  test ch,   $10  // Bit 12.
  jnz  @addr0797
  test ch,   $20  // Bit 13.
  jnz  @addr0798
  test ch,   $40  // Bit 14.
  jnz  @addr0799
  test ch,   $80  // Bit 15.
  jnz  @addr0800
  test ah,   $80  // Bit 23.
  jnz  @addr0801
  test al,   $40  // Bit 30.
  jnz  @addr0802
  // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|op=0|000|10|Rn|Rd
  // e.g: FMUL  <Sd>, <Sn>, <Sm>
  mov  eax, 0851
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0802:
  // 31      |23     |21   |16          |11|5 |0 
  // 01011110|size=00|10100|opcode=00000|10|Rn|Rd
  // e.g: SHA1H  <Sd>, <Sn>
  mov  eax, 0677
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0801:
  // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|op=0|000|10|Rn|Rd
  // e.g: FMUL  <Hd>, <Hn>, <Hm>
  mov  eax, 0850
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0800:
  test ah,   $80  // Bit 23.
  jnz  @addr0803
  // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|op=1|000|10|Rn|Rd
  // e.g: FNMUL  <Sd>, <Sn>, <Sm>
  mov  eax, 0853
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0803:
  test al,   $20  // Bit 29.
  jnz  @addr0804
  test al,   $40  // Bit 30.
  jnz  @addr0805
  // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|op=1|000|10|Rn|Rd
  // e.g: FNMUL  <Hd>, <Hn>, <Hm>
  mov  eax, 0852
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0805:
  // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
  // 01|U=0|11110|size=11|10000|0100|op=0|10|Rn|Rd
  // e.g: CMGT  <V><d>, <V><n>, #0
  mov  eax, 0476
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0804:
  // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
  // 01|U=1|11110|size=11|10000|0100|op=0|10|Rn|Rd
  // e.g: CMGE  <V><d>, <V><n>, #0
  mov  eax, 0475
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0799:
  test ch,   $80  // Bit 15.
  jnz  @addr0806
  test al,   $20  // Bit 29.
  jnz  @addr0807
  test al,   $40  // Bit 30.
  jnz  @addr0808
  test ah,   $80  // Bit 23.
  jnz  @addr0809
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=00|10|Rn|Rd
  // e.g: FMAX  <Sd>, <Sn>, <Sm>
  mov  eax, 0843
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0809:
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=00|10|Rn|Rd
  // e.g: FMAX  <Hd>, <Hn>, <Hm>
  mov  eax, 0842
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0808:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=0|11110|size|10000|opcode=10100|10|Rn|Rd
  // e.g: SQXTN  <Vb><d>, <Va><n>
  mov  eax, 0502
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0807:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=1|11110|size|10000|opcode=10100|10|Rn|Rd
  // e.g: UQXTN  <Vb><d>, <Va><n>
  mov  eax, 0506
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0806:
  test ah,   $01  // Bit 16.
  jnz  @addr0810
  test ah,   $08  // Bit 19.
  jnz  @addr0811
  test ah,   $10  // Bit 20.
  jnz  @addr0812
  test al,   $20  // Bit 29.
  jnz  @addr0813
  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 01|U=0|11110|1 |sz|10000|0110|op=0|10|Rn|Rd
  // e.g: FCMGT  <V><d>, <V><n>, #0.0
  mov  eax, 0481
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0813:
  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 01|U=1|11110|1 |sz|10000|0110|op=0|10|Rn|Rd
  // e.g: FCMGE  <V><d>, <V><n>, #0.0
  mov  eax, 0480
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0812:
  test ah,   $40  // Bit 22.
  jnz  @addr0814
  test ah,   $80  // Bit 23.
  jnz  @addr0815
  test al,   $20  // Bit 29.
  jnz  @addr0816
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=0|11110|o1=0|sz=0|11000|opcode=01100|10|Rn|Rd
  // e.g: FMAXNMP  <V><d>, <Vn>.<T>
  mov  eax, 0534
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0816:
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=0|sz=0|11000|opcode=01100|10|Rn|Rd
  // e.g: FMAXNMP  <V><d>, <Vn>.<T>
  mov  eax, 0535
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0815:
  test al,   $20  // Bit 29.
  jnz  @addr0817
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=0|11110|o1=1|sz=0|11000|opcode=01100|10|Rn|Rd
  // e.g: FMINNMP  <V><d>, <Vn>.<T>
  mov  eax, 0540
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0817:
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=1|sz=0|11000|opcode=01100|10|Rn|Rd
  // e.g: FMINNMP  <V><d>, <Vn>.<T>
  mov  eax, 0542
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0814:
  test ah,   $80  // Bit 23.
  jnz  @addr0818
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=0|sz=1|11000|opcode=01100|10|Rn|Rd
  // e.g: FMAXNMP  <V><d>, <Vn>.<T>
  mov  eax, 0536
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0818:
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=1|sz=1|11000|opcode=01100|10|Rn|Rd
  // e.g: FMINNMP  <V><d>, <Vn>.<T>
  mov  eax, 0541
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0811:
  test al,   $20  // Bit 29.
  jnz  @addr0819
  // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 01|U=0|11110|a=1|111100|0110|op=0|10|Rn|Rd
  // e.g: FCMGT  <Hd>, <Hn>, #0.0
  mov  eax, 0510
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0819:
  // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 01|U=1|11110|a=1|111100|0110|op=0|10|Rn|Rd
  // e.g: FCMGE  <Hd>, <Hn>, #0.0
  mov  eax, 0509
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0810:
  test ah,   $08  // Bit 19.
  jnz  @addr0820
  test al,   $20  // Bit 29.
  jnz  @addr0821
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=0|11110|0 |sz|10000|opcode=11100|10|Rn|Rd
  // e.g: FCVTAS  <V><d>, <V><n>
  mov  eax, 0484
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0821:
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=1|11110|0 |sz|10000|opcode=11100|10|Rn|Rd
  // e.g: FCVTAU  <V><d>, <V><n>
  mov  eax, 0485
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0820:
  test al,   $20  // Bit 29.
  jnz  @addr0822
  // 31|29 |28   |23       |22    |16          |11|5 |0 
  // 01|U=0|11110|size<1>=0|111100|opcode=11100|10|Rn|Rd
  // e.g: FCVTAS  <Hd>, <Hn>
  mov  eax, 0513
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0822:
  // 31|29 |28   |23       |22    |16          |11|5 |0 
  // 01|U=1|11110|size<1>=0|111100|opcode=11100|10|Rn|Rd
  // e.g: FCVTAU  <Hd>, <Hn>
  mov  eax, 0514
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0798:
  test ch,   $40  // Bit 14.
  jnz  @addr0823
  test ch,   $80  // Bit 15.
  jnz  @addr0824
  test al,   $20  // Bit 29.
  jnz  @addr0825
  test ah,   $80  // Bit 23.
  jnz  @addr0826
  test al,   $40  // Bit 30.
  jnz  @addr0827
  // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|001|op=0|10|Rn|Rd
  // e.g: FADD  <Sd>, <Sn>, <Sm>
  mov  eax, 0839
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0827:
  // 31      |23     |21   |16          |11|5 |0 
  // 01011110|size=00|10100|opcode=00010|10|Rn|Rd
  // e.g: SHA256SU0  <Vd>.4S, <Vn>.4S
  mov  eax, 0679
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0826:
  // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|001|op=0|10|Rn|Rd
  // e.g: FADD  <Hd>, <Hn>, <Hm>
  mov  eax, 0838
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0825:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=1|11110|size|10000|opcode=10010|10|Rn|Rd
  // e.g: SQXTUN  <Vb><d>, <Va><n>
  mov  eax, 0503
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0824:
  test ah,   $01  // Bit 16.
  jnz  @addr0828
  // 31|29 |28   |23     |21   |16          |11|5 |0 
  // 01|U=0|11110|size=11|10000|opcode=01010|10|Rn|Rd
  // e.g: CMLT  <V><d>, <V><n>, #0
  mov  eax, 0478
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0828:
  test ah,   $08  // Bit 19.
  jnz  @addr0829
  test ah,   $80  // Bit 23.
  jnz  @addr0830
  test al,   $20  // Bit 29.
  jnz  @addr0831
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNS  <V><d>, <V><n>
  mov  eax, 0488
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0831:
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNU  <V><d>, <V><n>
  mov  eax, 0489
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0830:
  test al,   $20  // Bit 29.
  jnz  @addr0832
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPS  <V><d>, <V><n>
  mov  eax, 0490
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0832:
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPU  <V><d>, <V><n>
  mov  eax, 0491
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0829:
  test ah,   $80  // Bit 23.
  jnz  @addr0833
  test al,   $20  // Bit 29.
  jnz  @addr0834
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=0|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNS  <Hd>, <Hn>
  mov  eax, 0517
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0834:
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=0|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTNU  <Hd>, <Hn>
  mov  eax, 0518
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0833:
  test al,   $20  // Bit 29.
  jnz  @addr0835
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=1|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPS  <Hd>, <Hn>
  mov  eax, 0519
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0835:
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=1|111100|1101|o1=0|10|Rn|Rd
  // e.g: FCVTPU  <Hd>, <Hn>
  mov  eax, 0520
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0823:
  test ch,   $80  // Bit 15.
  jnz  @addr0836
  test ah,   $80  // Bit 23.
  jnz  @addr0837
  test al,   $20  // Bit 29.
  jnz  @addr0838
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=10|10|Rn|Rd
  // e.g: FMAXNM  <Sd>, <Sn>, <Sm>
  mov  eax, 0845
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0838:
  // 31|29 |28   |23|22  |21   |16          |11|5 |0 
  // 01|U=1|11110|0 |sz=1|10000|opcode=10110|10|Rn|Rd
  // e.g: FCVTXN  <Vb><d>, <Va><n>
  mov  eax, 0492
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0837:
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=10|10|Rn|Rd
  // e.g: FMAXNM  <Hd>, <Hn>, <Hm>
  mov  eax, 0844
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0836:
  test ah,   $08  // Bit 19.
  jnz  @addr0839
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=0|11110|1 |sz|10000|opcode=01110|10|Rn|Rd
  // e.g: FCMLT  <V><d>, <V><n>, #0.0
  mov  eax, 0483
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0839:
  // 31|29 |28   |23 |22    |16          |11|5 |0 
  // 01|U=0|11110|a=1|111100|opcode=01110|10|Rn|Rd
  // e.g: FCMLT  <Hd>, <Hn>, #0.0
  mov  eax, 0512
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0797:
  test ch,   $20  // Bit 13.
  jnz  @addr0840
  test ch,   $40  // Bit 14.
  jnz  @addr0841
  test ch,   $80  // Bit 15.
  jnz  @addr0842
  test ah,   $80  // Bit 23.
  jnz  @addr0843
  test al,   $40  // Bit 30.
  jnz  @addr0844
  // 31 |30|29 |28   |23     |21|16|15         |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|opcode=0001|10|Rn|Rd
  // e.g: FDIV  <Sd>, <Sn>, <Sm>
  mov  eax, 0841
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0844:
  // 31      |23     |21   |16          |11|5 |0 
  // 01011110|size=00|10100|opcode=00001|10|Rn|Rd
  // e.g: SHA1SU1  <Vd>.4S, <Vn>.4S
  mov  eax, 0678
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0843:
  // 31 |30|29 |28   |23     |21|16|15         |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|opcode=0001|10|Rn|Rd
  // e.g: FDIV  <Hd>, <Hn>, <Hm>
  mov  eax, 0840
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0842:
  test al,   $20  // Bit 29.
  jnz  @addr0845
  // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
  // 01|U=0|11110|size=11|10000|0100|op=1|10|Rn|Rd
  // e.g: CMEQ  <V><d>, <V><n>, #0
  mov  eax, 0474
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0845:
  // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
  // 01|U=1|11110|size=11|10000|0100|op=1|10|Rn|Rd
  // e.g: CMLE  <V><d>, <V><n>, #0
  mov  eax, 0477
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0841:
  test ch,   $80  // Bit 15.
  jnz  @addr0846
  test ah,   $80  // Bit 23.
  jnz  @addr0847
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=01|10|Rn|Rd
  // e.g: FMIN  <Sd>, <Sn>, <Sm>
  mov  eax, 0847
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0847:
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=01|10|Rn|Rd
  // e.g: FMIN  <Hd>, <Hn>, <Hm>
  mov  eax, 0846
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0846:
  test ah,   $01  // Bit 16.
  jnz  @addr0848
  test ah,   $08  // Bit 19.
  jnz  @addr0849
  test ah,   $10  // Bit 20.
  jnz  @addr0850
  test al,   $20  // Bit 29.
  jnz  @addr0851
  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 01|U=0|11110|1 |sz|10000|0110|op=1|10|Rn|Rd
  // e.g: FCMEQ  <V><d>, <V><n>, #0.0
  mov  eax, 0479
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0851:
  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
  // 01|U=1|11110|1 |sz|10000|0110|op=1|10|Rn|Rd
  // e.g: FCMLE  <V><d>, <V><n>, #0.0
  mov  eax, 0482
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0850:
  test ah,   $40  // Bit 22.
  jnz  @addr0852
  test al,   $20  // Bit 29.
  jnz  @addr0853
  // 31|29 |28   |23|22  |21   |16          |11|5 |0 
  // 01|U=0|11110|0 |sz=0|11000|opcode=01101|10|Rn|Rd
  // e.g: FADDP  <V><d>, <Vn>.<T>
  mov  eax, 0531
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0853:
  // 31|29 |28   |23|22  |21   |16          |11|5 |0 
  // 01|U=1|11110|0 |sz=0|11000|opcode=01101|10|Rn|Rd
  // e.g: FADDP  <V><d>, <Vn>.<T>
  mov  eax, 0532
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0852:
  // 31|29 |28   |23|22  |21   |16          |11|5 |0 
  // 01|U=1|11110|0 |sz=1|11000|opcode=01101|10|Rn|Rd
  // e.g: FADDP  <V><d>, <Vn>.<T>
  mov  eax, 0533
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0849:
  test al,   $20  // Bit 29.
  jnz  @addr0854
  // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 01|U=0|11110|a=1|111100|0110|op=1|10|Rn|Rd
  // e.g: FCMEQ  <Hd>, <Hn>, #0.0
  mov  eax, 0508
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0854:
  // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
  // 01|U=1|11110|a=1|111100|0110|op=1|10|Rn|Rd
  // e.g: FCMLE  <Hd>, <Hn>, #0.0
  mov  eax, 0511
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0848:
  test ah,   $08  // Bit 19.
  jnz  @addr0855
  test ah,   $80  // Bit 23.
  jnz  @addr0856
  test al,   $20  // Bit 29.
  jnz  @addr0857
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=0|11110|0 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: SCVTF  <V><d>, <V><n>
  mov  eax, 0499
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0857:
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=1|11110|0 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: UCVTF  <V><d>, <V><n>
  mov  eax, 0505
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0856:
  test al,   $20  // Bit 29.
  jnz  @addr0858
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=0|11110|1 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: FRECPE  <V><d>, <V><n>
  mov  eax, 0495
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0858:
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=1|11110|1 |sz|10000|opcode=11101|10|Rn|Rd
  // e.g: FRSQRTE  <V><d>, <V><n>
  mov  eax, 0497
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0855:
  test ah,   $80  // Bit 23.
  jnz  @addr0859
  test al,   $20  // Bit 29.
  jnz  @addr0860
  // 31|29 |28   |23 |22    |16          |11|5 |0 
  // 01|U=0|11110|a=0|111100|opcode=11101|10|Rn|Rd
  // e.g: SCVTF  <Hd>, <Hn>
  mov  eax, 0526
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0860:
  // 31|29 |28   |23 |22    |16          |11|5 |0 
  // 01|U=1|11110|a=0|111100|opcode=11101|10|Rn|Rd
  // e.g: UCVTF  <Hd>, <Hn>
  mov  eax, 0527
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0859:
  test al,   $20  // Bit 29.
  jnz  @addr0861
  // 31|29 |28   |23       |22    |16          |11|5 |0 
  // 01|U=0|11110|size<1>=1|111100|opcode=11101|10|Rn|Rd
  // e.g: FRECPE  <Hd>, <Hn>
  mov  eax, 0523
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0861:
  // 31|29 |28   |23 |22    |16          |11|5 |0 
  // 01|U=1|11110|a=1|111100|opcode=11101|10|Rn|Rd
  // e.g: FRSQRTE  <Hd>, <Hn>
  mov  eax, 0525
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0840:
  test ch,   $40  // Bit 14.
  jnz  @addr0862
  test ch,   $80  // Bit 15.
  jnz  @addr0863
  test al,   $20  // Bit 29.
  jnz  @addr0864
  test al,   $40  // Bit 30.
  jnz  @addr0865
  test ah,   $80  // Bit 23.
  jnz  @addr0866
  // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|001|op=1|10|Rn|Rd
  // e.g: FSUB  <Sd>, <Sn>, <Sm>
  mov  eax, 0855
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0866:
  // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|001|op=1|10|Rn|Rd
  // e.g: FSUB  <Hd>, <Hn>, <Hm>
  mov  eax, 0854
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0865:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=0|11110|size|10000|opcode=00011|10|Rn|Rd
  // e.g: SUQADD  <V><d>, <V><n>
  mov  eax, 0504
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0864:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=1|11110|size|10000|opcode=00011|10|Rn|Rd
  // e.g: USQADD  <V><d>, <V><n>
  mov  eax, 0507
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0863:
  test ah,   $01  // Bit 16.
  jnz  @addr0867
  test al,   $20  // Bit 29.
  jnz  @addr0868
  // 31|29 |28   |23     |21   |16          |11|5 |0 
  // 01|U=0|11110|size=11|10000|opcode=01011|10|Rn|Rd
  // e.g: ABS  <V><d>, <V><n>
  mov  eax, 0473
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0868:
  // 31|29 |28   |23     |21   |16          |11|5 |0 
  // 01|U=1|11110|size=11|10000|opcode=01011|10|Rn|Rd
  // e.g: NEG  <V><d>, <V><n>
  mov  eax, 0498
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0867:
  test ah,   $08  // Bit 19.
  jnz  @addr0869
  test ah,   $10  // Bit 20.
  jnz  @addr0870
  test ah,   $80  // Bit 23.
  jnz  @addr0871
  test al,   $20  // Bit 29.
  jnz  @addr0872
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMS  <V><d>, <V><n>
  mov  eax, 0486
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0872:
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMU  <V><d>, <V><n>
  mov  eax, 0487
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0871:
  test al,   $20  // Bit 29.
  jnz  @addr0873
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZS  <V><d>, <V><n>
  mov  eax, 0493
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0873:
  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZU  <V><d>, <V><n>
  mov  eax, 0494
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0870:
  // 31|29 |28   |23     |21   |16          |11|5 |0 
  // 01|U=0|11110|size=11|11000|opcode=11011|10|Rn|Rd
  // e.g: ADDP  <V><d>, <Vn>.<T>
  mov  eax, 0530
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0869:
  test ah,   $80  // Bit 23.
  jnz  @addr0874
  test al,   $20  // Bit 29.
  jnz  @addr0875
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=0|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMS  <Hd>, <Hn>
  mov  eax, 0515
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0875:
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=0|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTMU  <Hd>, <Hn>
  mov  eax, 0516
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0874:
  test al,   $20  // Bit 29.
  jnz  @addr0876
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=0|11110|o2=1|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZS  <Hd>, <Hn>
  mov  eax, 0521
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0876:
  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
  // 01|U=1|11110|o2=1|111100|1101|o1=1|10|Rn|Rd
  // e.g: FCVTZU  <Hd>, <Hn>
  mov  eax, 0522
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0862:
  test ch,   $80  // Bit 15.
  jnz  @addr0877
  test al,   $20  // Bit 29.
  jnz  @addr0878
  test al,   $40  // Bit 30.
  jnz  @addr0879
  test ah,   $80  // Bit 23.
  jnz  @addr0880
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=11|10|Rn|Rd
  // e.g: FMINNM  <Sd>, <Sn>, <Sm>
  mov  eax, 0849
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0880:
  // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=11|10|Rn|Rd
  // e.g: FMINNM  <Hd>, <Hn>, <Hm>
  mov  eax, 0848
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0879:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=0|11110|size|10000|opcode=00111|10|Rn|Rd
  // e.g: SQABS  <V><d>, <V><n>
  mov  eax, 0500
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0878:
  // 31|29 |28   |23  |21   |16          |11|5 |0 
  // 01|U=1|11110|size|10000|opcode=00111|10|Rn|Rd
  // e.g: SQNEG  <V><d>, <V><n>
  mov  eax, 0501
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0877:
  test ah,   $01  // Bit 16.
  jnz  @addr0881
  test ah,   $40  // Bit 22.
  jnz  @addr0882
  test ah,   $80  // Bit 23.
  jnz  @addr0883
  test al,   $20  // Bit 29.
  jnz  @addr0884
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=0|11110|o1=0|sz=0|11000|opcode=01111|10|Rn|Rd
  // e.g: FMAXP  <V><d>, <Vn>.<T>
  mov  eax, 0537
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0884:
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=0|sz=0|11000|opcode=01111|10|Rn|Rd
  // e.g: FMAXP  <V><d>, <Vn>.<T>
  mov  eax, 0538
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0883:
  test al,   $20  // Bit 29.
  jnz  @addr0885
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=0|11110|o1=1|sz=0|11000|opcode=01111|10|Rn|Rd
  // e.g: FMINP  <V><d>, <Vn>.<T>
  mov  eax, 0543
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0885:
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=1|sz=0|11000|opcode=01111|10|Rn|Rd
  // e.g: FMINP  <V><d>, <Vn>.<T>
  mov  eax, 0545
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0882:
  test ah,   $80  // Bit 23.
  jnz  @addr0886
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=0|sz=1|11000|opcode=01111|10|Rn|Rd
  // e.g: FMAXP  <V><d>, <Vn>.<T>
  mov  eax, 0539
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0886:
  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
  // 01|U=1|11110|o1=1|sz=1|11000|opcode=01111|10|Rn|Rd
  // e.g: FMINP  <V><d>, <Vn>.<T>
  mov  eax, 0544
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0881:
  test ah,   $08  // Bit 19.
  jnz  @addr0887
  // 31|29 |28   |23|22|21   |16          |11|5 |0 
  // 01|U=0|11110|1 |sz|10000|opcode=11111|10|Rn|Rd
  // e.g: FRECPX  <V><d>, <V><n>
  mov  eax, 0496
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0887:
  // 31|29 |28   |23 |22    |16          |11|5 |0 
  // 01|U=0|11110|a=1|111100|opcode=11111|10|Rn|Rd
  // e.g: FRECPX  <Hd>, <Hn>
  mov  eax, 0524
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0729:
  test ch,   $08  // Bit 11.
  jnz  @addr0888
  test al,   $20  // Bit 29.
  jnz  @addr0889
  test al,   $40  // Bit 30.
  jnz  @addr0890
  test cl,   $10  // Bit 04.
  jnz  @addr0891
  test ah,   $80  // Bit 23.
  jnz  @addr0892
  // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
  // M=0|0 |S=0|11110|type=0x|1 |Rm|cond|01|Rn|op=0|nzcv
  // e.g: FCCMP  <Sn>, <Sm>, #<nzcv>, <cond>
  mov  eax, 0804
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0892:
  // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
  // M=0|0 |S=0|11110|type=11|1 |Rm|cond|01|Rn|op=0|nzcv
  // e.g: FCCMP  <Hn>, <Hm>, #<nzcv>, <cond>
  mov  eax, 0803
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0891:
  test ah,   $80  // Bit 23.
  jnz  @addr0893
  // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
  // M=0|0 |S=0|11110|type=0x|1 |Rm|cond|01|Rn|op=1|nzcv
  // e.g: FCCMPE  <Sn>, <Sm>, #<nzcv>, <cond>
  mov  eax, 0806
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0893:
  // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
  // M=0|0 |S=0|11110|type=11|1 |Rm|cond|01|Rn|op=1|nzcv
  // e.g: FCCMPE  <Hn>, <Hm>, #<nzcv>, <cond>
  mov  eax, 0805
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0890:
  test ch,   $10  // Bit 12.
  jnz  @addr0894
  test ch,   $20  // Bit 13.
  jnz  @addr0895
  test ch,   $40  // Bit 14.
  jnz  @addr0896
  // 31|29 |28   |23     |21|16|15          |10|5 |0 
  // 01|U=0|11110|size=11|1 |Rm|opcode=10000|1 |Rn|Rd
  // e.g: ADD  <V><d>, <V><n>, <V><m>
  mov  eax, 0546
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0896:
  // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
  // 01|U=0|11110|size=11|1 |Rm|010|R=0|S=0|1 |Rn|Rd
  // e.g: SSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0569
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0895:
  // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 01|U=0|11110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
  // e.g: FCMEQ  <V><d>, <V><n>, <V><m>
  mov  eax, 0556
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0894:
  test ch,   $20  // Bit 13.
  jnz  @addr0897
  // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
  // 01|U=0|11110|size=11|1 |Rm|010|R=1|S=0|1 |Rn|Rd
  // e.g: SRSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0568
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0897:
  test ch,   $80  // Bit 15.
  jnz  @addr0898
  // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
  // 01|U=0|11110|size=11|1 |Rm|0011|eq=0|1 |Rn|Rd
  // e.g: CMGT  <V><d>, <V><n>, <V><m>
  mov  eax, 0549
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0898:
  // 31|29 |28   |23  |21|16|15          |10|5 |0 
  // 01|U=0|11110|size|1 |Rm|opcode=10110|1 |Rn|Rd
  // e.g: SQDMULH  <V><d>, <V><n>, <V><m>
  mov  eax, 0563
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0889:
  test ch,   $10  // Bit 12.
  jnz  @addr0899
  test ch,   $20  // Bit 13.
  jnz  @addr0900
  test ch,   $40  // Bit 14.
  jnz  @addr0901
  // 31|29 |28   |23     |21|16|15          |10|5 |0 
  // 01|U=1|11110|size=11|1 |Rm|opcode=10000|1 |Rn|Rd
  // e.g: SUB  <V><d>, <V><n>, <V><m>
  mov  eax, 0570
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0901:
  // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
  // 01|U=1|11110|size=11|1 |Rm|010|R=0|S=0|1 |Rn|Rd
  // e.g: USHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0576
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0900:
  test ah,   $80  // Bit 23.
  jnz  @addr0902
  // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 01|U=1|11110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
  // e.g: FCMGE  <V><d>, <V><n>, <V><m>
  mov  eax, 0557
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0902:
  // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 01|U=1|11110|E=1|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
  // e.g: FCMGT  <V><d>, <V><n>, <V><m>
  mov  eax, 0558
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0899:
  test ch,   $20  // Bit 13.
  jnz  @addr0903
  test ch,   $80  // Bit 15.
  jnz  @addr0904
  // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
  // 01|U=1|11110|size=11|1 |Rm|010|R=1|S=0|1 |Rn|Rd
  // e.g: URSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0575
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0904:
  // 31|29 |28   |23|22|21|16|15          |10|5 |0 
  // 01|U=1|11110|1 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
  // e.g: FABD  <V><d>, <V><n>, <V><m>
  mov  eax, 0553
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0903:
  test ch,   $80  // Bit 15.
  jnz  @addr0905
  // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
  // 01|U=1|11110|size=11|1 |Rm|0011|eq=0|1 |Rn|Rd
  // e.g: CMHI  <V><d>, <V><n>, <V><m>
  mov  eax, 0550
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0905:
  // 31|29 |28   |23  |21|16|15          |10|5 |0 
  // 01|U=1|11110|size|1 |Rm|opcode=10110|1 |Rn|Rd
  // e.g: SQRDMULH  <V><d>, <V><n>, <V><m>
  mov  eax, 0564
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0888:
  test al,   $20  // Bit 29.
  jnz  @addr0906
  test al,   $40  // Bit 30.
  jnz  @addr0907
  test ah,   $80  // Bit 23.
  jnz  @addr0908
  // 31 |30|29 |28   |23     |21|16|12  |11|5 |0 
  // M=0|0 |S=0|11110|type=0x|1 |Rm|cond|11|Rn|Rd
  // e.g: FCSEL  <Sd>, <Sn>, <Sm>, <cond>
  mov  eax, 0867
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0908:
  // 31 |30|29 |28   |23     |21|16|12  |11|5 |0 
  // M=0|0 |S=0|11110|type=11|1 |Rm|cond|11|Rn|Rd
  // e.g: FCSEL  <Hd>, <Hn>, <Hm>, <cond>
  mov  eax, 0866
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0907:
  test ch,   $10  // Bit 12.
  jnz  @addr0909
  test ch,   $20  // Bit 13.
  jnz  @addr0910
  test ch,   $40  // Bit 14.
  jnz  @addr0911
  test ch,   $80  // Bit 15.
  jnz  @addr0912
  // 31|29 |28   |23  |21|16|15          |10|5 |0 
  // 01|U=0|11110|size|1 |Rm|opcode=00001|1 |Rn|Rd
  // e.g: SQADD  <V><d>, <V><n>, <V><m>
  mov  eax, 0562
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0912:
  // 31|29 |28   |23     |21|16|15          |10|5 |0 
  // 01|U=0|11110|size=11|1 |Rm|opcode=10001|1 |Rn|Rd
  // e.g: CMTST  <V><d>, <V><n>, <V><m>
  mov  eax, 0552
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0911:
  // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 01|U=0|11110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
  // e.g: SQSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0566
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0910:
  // 31|29 |28   |23  |21|16|15          |10|5 |0 
  // 01|U=0|11110|size|1 |Rm|opcode=00101|1 |Rn|Rd
  // e.g: SQSUB  <V><d>, <V><n>, <V><m>
  mov  eax, 0567
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0909:
  test ch,   $20  // Bit 13.
  jnz  @addr0913
  test ch,   $80  // Bit 15.
  jnz  @addr0914
  // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 01|U=0|11110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
  // e.g: SQRSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0565
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0914:
  // 31|29 |28   |23|22|21|16|15          |10|5 |0 
  // 01|U=0|11110|0 |sz|1 |Rm|opcode=11011|1 |Rn|Rd
  // e.g: FMULX  <V><d>, <V><n>, <V><m>
  mov  eax, 0559
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0913:
  test ch,   $40  // Bit 14.
  jnz  @addr0915
  // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
  // 01|U=0|11110|size=11|1 |Rm|0011|eq=1|1 |Rn|Rd
  // e.g: CMGE  <V><d>, <V><n>, <V><m>
  mov  eax, 0548
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0915:
  test ah,   $80  // Bit 23.
  jnz  @addr0916
  // 31|29 |28   |23|22|21|16|15          |10|5 |0 
  // 01|U=0|11110|0 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
  // e.g: FRECPS  <V><d>, <V><n>, <V><m>
  mov  eax, 0560
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0916:
  // 31|29 |28   |23|22|21|16|15          |10|5 |0 
  // 01|U=0|11110|1 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
  // e.g: FRSQRTS  <V><d>, <V><n>, <V><m>
  mov  eax, 0561
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0906:
  test ch,   $10  // Bit 12.
  jnz  @addr0917
  test ch,   $20  // Bit 13.
  jnz  @addr0918
  test ch,   $40  // Bit 14.
  jnz  @addr0919
  test ch,   $80  // Bit 15.
  jnz  @addr0920
  // 31|29 |28   |23  |21|16|15          |10|5 |0 
  // 01|U=1|11110|size|1 |Rm|opcode=00001|1 |Rn|Rd
  // e.g: UQADD  <V><d>, <V><n>, <V><m>
  mov  eax, 0571
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0920:
  // 31|29 |28   |23     |21|16|15          |10|5 |0 
  // 01|U=1|11110|size=11|1 |Rm|opcode=10001|1 |Rn|Rd
  // e.g: CMEQ  <V><d>, <V><n>, <V><m>
  mov  eax, 0547
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0919:
  // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 01|U=1|11110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
  // e.g: UQSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0573
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0918:
  test ch,   $40  // Bit 14.
  jnz  @addr0921
  // 31|29 |28   |23  |21|16|15          |10|5 |0 
  // 01|U=1|11110|size|1 |Rm|opcode=00101|1 |Rn|Rd
  // e.g: UQSUB  <V><d>, <V><n>, <V><m>
  mov  eax, 0574
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0921:
  test ah,   $80  // Bit 23.
  jnz  @addr0922
  // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 01|U=1|11110|E=0|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
  // e.g: FACGE  <V><d>, <V><n>, <V><m>
  mov  eax, 0554
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0922:
  // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
  // 01|U=1|11110|E=1|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
  // e.g: FACGT  <V><d>, <V><n>, <V><m>
  mov  eax, 0555
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0917:
  test ch,   $20  // Bit 13.
  jnz  @addr0923
  // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
  // 01|U=1|11110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
  // e.g: UQRSHL  <V><d>, <V><n>, <V><m>
  mov  eax, 0572
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0923:
  // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
  // 01|U=1|11110|size=11|1 |Rm|0011|eq=1|1 |Rn|Rd
  // e.g: CMHS  <V><d>, <V><n>, <V><m>
  mov  eax, 0551
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0361:
  test al,   $02  // Bit 25.
  jnz  @addr0924
  test ah,   $40  // Bit 22.
  jnz  @addr0925
  test al,   $10  // Bit 28.
  jnz  @addr0926
  test ah,   $80  // Bit 23.
  jnz  @addr0927
  test al,   $20  // Bit 29.
  jnz  @addr0928
  test ch,   $20  // Bit 13.
  jnz  @addr0929
  test ah,   $20  // Bit 21.
  jnz  @addr0930
  // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
  // 0 |Q |0011010|L=0|R=0|00000|opcode=xx0|S |size|Rn|Rt
  // e.g: ST1  { <Vt>.B }[<index>], [<Xn|SP>]
  mov  eax, 0457
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0930:
  // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
  // 0 |Q |0011010|L=0|R=1|00000|opcode=xx0|S |size|Rn|Rt
  // e.g: ST2  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>]
  mov  eax, 0458
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0929:
  test ah,   $20  // Bit 21.
  jnz  @addr0931
  // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
  // 0 |Q |0011010|L=0|R=0|00000|opcode=xx1|S |size|Rn|Rt
  // e.g: ST3  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]
  mov  eax, 0459
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0931:
  // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
  // 0 |Q |0011010|L=0|R=1|00000|opcode=xx1|S |size|Rn|Rt
  // e.g: ST4  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>]
  mov  eax, 0460
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0928:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|010|L=0|imm7|Rt2|Rn|Rt
  // e.g: STP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0989
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0927:
  test al,   $20  // Bit 29.
  jnz  @addr0932
  test ch,   $20  // Bit 13.
  jnz  @addr0933
  test ah,   $20  // Bit 21.
  jnz  @addr0934
  // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
  // 0 |Q |0011011|L=0|R=0|Rm|opcode=xx0|S |size|Rn|Rt
  // e.g: ST1  { <Vt>.B }[<index>], [<Xn|SP>], #1
  mov  eax, 0469
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0934:
  // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
  // 0 |Q |0011011|L=0|R=1|Rm|opcode=xx0|S |size|Rn|Rt
  // e.g: ST2  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], #2
  mov  eax, 0470
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0933:
  test ah,   $20  // Bit 21.
  jnz  @addr0935
  // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
  // 0 |Q |0011011|L=0|R=0|Rm|opcode=xx1|S |size|Rn|Rt
  // e.g: ST3  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], #3
  mov  eax, 0471
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0935:
  // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
  // 0 |Q |0011011|L=0|R=1|Rm|opcode=xx1|S |size|Rn|Rt
  // e.g: ST4  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], #4
  mov  eax, 0472
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0932:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|011|L=0|imm7|Rt2|Rn|Rt
  // e.g: STP  <St1>, <St2>, [<Xn|SP>, #<imm>]!
  mov  eax, 0999
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0926:
  // 31  |29 |26 |25|23    |10   |9 |0 
  // size|111|V=1|01|opc=x0|imm12|Rn|Rt
  // e.g: STR  <Bt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0901
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0925:
  test al,   $10  // Bit 28.
  jnz  @addr0936
  test ah,   $80  // Bit 23.
  jnz  @addr0937
  test al,   $20  // Bit 29.
  jnz  @addr0938
  test ch,   $20  // Bit 13.
  jnz  @addr0939
  test ah,   $20  // Bit 21.
  jnz  @addr0940
  // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
  // 0 |Q |0011010|L=1|R=0|00000|opcode=110|S=0|size|Rn|Rt
  // e.g: LD1R  { <Vt>.<T> }, [<Xn|SP>]
  mov  eax, 0450
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0940:
  // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
  // 0 |Q |0011010|L=1|R=1|00000|opcode=110|S=0|size|Rn|Rt
  // e.g: LD2R  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]
  mov  eax, 0452
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0939:
  test ah,   $20  // Bit 21.
  jnz  @addr0941
  // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
  // 0 |Q |0011010|L=1|R=0|00000|opcode=111|S=0|size|Rn|Rt
  // e.g: LD3R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]
  mov  eax, 0454
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0941:
  // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
  // 0 |Q |0011010|L=1|R=1|00000|opcode=111|S=0|size|Rn|Rt
  // e.g: LD4R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]
  mov  eax, 0456
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0938:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|010|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
  mov  eax, 0986
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0937:
  test al,   $20  // Bit 29.
  jnz  @addr0942
  test ch,   $20  // Bit 13.
  jnz  @addr0943
  test ah,   $20  // Bit 21.
  jnz  @addr0944
  // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
  // 0 |Q |0011011|L=1|R=0|Rm|opcode=110|S=0|size|Rn|Rt
  // e.g: LD1R  { <Vt>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0462
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0944:
  // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
  // 0 |Q |0011011|L=1|R=1|Rm|opcode=110|S=0|size|Rn|Rt
  // e.g: LD2R  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0464
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0943:
  test ah,   $20  // Bit 21.
  jnz  @addr0945
  // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
  // 0 |Q |0011011|L=1|R=0|Rm|opcode=111|S=0|size|Rn|Rt
  // e.g: LD3R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0466
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0945:
  // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
  // 0 |Q |0011011|L=1|R=1|Rm|opcode=111|S=0|size|Rn|Rt
  // e.g: LD4R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>
  mov  eax, 0468
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0942:
  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
  // opc|101|V=1|011|L=1|imm7|Rt2|Rn|Rt
  // e.g: LDP  <St1>, <St2>, [<Xn|SP>, #<imm>]!
  mov  eax, 0996
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0936:
  // 31  |29 |26 |25|23    |10   |9 |0 
  // size|111|V=1|01|opc=x1|imm12|Rn|Rt
  // e.g: LDR  <Bt>, [<Xn|SP>{, #<pimm>}]
  mov  eax, 0893
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0924:
  test al,   $10  // Bit 28.
  jnz  @addr0946
  test ch,   $04  // Bit 10.
  jnz  @addr0947
  test ch,   $10  // Bit 12.
  jnz  @addr0948
  test ch,   $20  // Bit 13.
  jnz  @addr0949
  test ch,   $40  // Bit 14.
  jnz  @addr0950
  test ch,   $80  // Bit 15.
  jnz  @addr0951
  // 31|30|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q |U=1|01111|size|L |M |Rm|0 |o2=0|00|H |0 |Rn|Rd
  // e.g: MLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0106
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0951:
  // 31|30|29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=0|01111|size|L |M |Rm|opcode=1000|H |0 |Rn|Rd
  // e.g: MUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0108
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0950:
  test ch,   $80  // Bit 15.
  jnz  @addr0952
  // 31|30|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q |U=1|01111|size|L |M |Rm|0 |o2=1|00|H |0 |Rn|Rd
  // e.g: MLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0107
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0952:
  // 31|30|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
  // 0 |Q |U=0|01111|size|L |M |Rm|110|op=0|H |0 |Rn|Rd
  // e.g: SQDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0120
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0949:
  test ch,   $40  // Bit 14.
  jnz  @addr0953
  test ch,   $80  // Bit 15.
  jnz  @addr0954
  test al,   $20  // Bit 29.
  jnz  @addr0955
  test al,   $40  // Bit 30.
  jnz  @addr0956
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
  // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0110
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0956:
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
  // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0111
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0955:
  test al,   $40  // Bit 30.
  jnz  @addr0957
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=0|U=1|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
  // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0127
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0957:
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=1|U=1|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
  // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0128
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0954:
  test al,   $20  // Bit 29.
  jnz  @addr0958
  test al,   $40  // Bit 30.
  jnz  @addr0959
  // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q=0|U=0|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
  // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0114
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0959:
  // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q=1|U=0|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
  // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0115
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0958:
  test al,   $40  // Bit 30.
  jnz  @addr0960
  // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q=0|U=1|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
  // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0131
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0960:
  // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q=1|U=1|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
  // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0132
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0953:
  test ch,   $80  // Bit 15.
  jnz  @addr0961
  test al,   $20  // Bit 29.
  jnz  @addr0962
  test al,   $40  // Bit 30.
  jnz  @addr0963
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
  // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0112
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0963:
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
  // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0113
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0962:
  test al,   $40  // Bit 30.
  jnz  @addr0964
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=0|U=1|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
  // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0129
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0964:
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=1|U=1|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
  // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0130
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0961:
  test al,   $20  // Bit 29.
  jnz  @addr0965
  // 31|30|29 |28   |23  |21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=0|01111|size|L |M |Rm|opcode=1110|H |0 |Rn|Rd
  // e.g: SDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]
  mov  eax, 0109
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0965:
  // 31|30|29 |28   |23  |21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=1|01111|size|L |M |Rm|opcode=1110|H |0 |Rn|Rd
  // e.g: UDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]
  mov  eax, 0126
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0948:
  test ch,   $80  // Bit 15.
  jnz  @addr0966
  test al,   $20  // Bit 29.
  jnz  @addr0967
  test ch,   $20  // Bit 13.
  jnz  @addr0968
  test ch,   $40  // Bit 14.
  jnz  @addr0969
  test ah,   $80  // Bit 23.
  jnz  @addr0970
  // 31|30|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q |U=0|01111|size=00|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
  // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
  mov  eax, 0098
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0970:
  // 31|30|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q |U=0|01111|1 |sz|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
  // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0099
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0969:
  test ah,   $80  // Bit 23.
  jnz  @addr0971
  // 31|30|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q |U=0|01111|size=00|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
  // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
  mov  eax, 0100
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0971:
  // 31|30|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q |U=0|01111|1 |sz|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
  // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0101
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0968:
  test ch,   $40  // Bit 14.
  jnz  @addr0972
  test al,   $40  // Bit 30.
  jnz  @addr0973
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=0|11|H |0 |Rn|Rd
  // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0116
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0973:
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=0|11|H |0 |Rn|Rd
  // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0117
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0972:
  test al,   $40  // Bit 30.
  jnz  @addr0974
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=1|11|H |0 |Rn|Rd
  // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0118
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0974:
  // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=1|11|H |0 |Rn|Rd
  // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0119
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0967:
  // 31|30|29 |28   |23  |21|20|16|15|14 |12|11|10|5 |0 
  // 0 |Q |U=1|01111|size|L |M |Rm|0 |rot|1 |H |0 |Rn|Rd
  // e.g: FCMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>
  mov  eax, 0097
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0966:
  test ch,   $20  // Bit 13.
  jnz  @addr0975
  test ch,   $40  // Bit 14.
  jnz  @addr0976
  test ah,   $80  // Bit 23.
  jnz  @addr0977
  test al,   $20  // Bit 29.
  jnz  @addr0978
  // 31|30|29 |28   |23     |21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=0|01111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
  mov  eax, 0102
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0978:
  // 31|30|29 |28   |23     |21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=1|01111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
  mov  eax, 0104
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0977:
  test al,   $20  // Bit 29.
  jnz  @addr0979
  // 31|30|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=0|01111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0103
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0979:
  // 31|30|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
  // 0 |Q |U=1|01111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0105
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0976:
  test al,   $20  // Bit 29.
  jnz  @addr0980
  // 31|30|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
  // 0 |Q |U=0|01111|size|L |M |Rm|110|op=1|H |0 |Rn|Rd
  // e.g: SQRDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0125
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0980:
  // 31|30|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
  // 0 |Q |U=1|01111|size|L |M |Rm|11|S=0|1 |H |0 |Rn|Rd
  // e.g: SQRDMLAH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0123
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0975:
  test ch,   $40  // Bit 14.
  jnz  @addr0981
  test al,   $40  // Bit 30.
  jnz  @addr0982
  // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q=0|U=0|01111|size|L |M |Rm|opcode=1011|H |0 |Rn|Rd
  // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0121
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0982:
  // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 0 |Q=1|U=0|01111|size|L |M |Rm|opcode=1011|H |0 |Rn|Rd
  // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
  mov  eax, 0122
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0981:
  // 31|30|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
  // 0 |Q |U=1|01111|size|L |M |Rm|11|S=1|1 |H |0 |Rn|Rd
  // e.g: SQRDMLSH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
  mov  eax, 0124
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0947:
  test ch,   $08  // Bit 11.
  jnz  @addr0983
  test al,   $20  // Bit 29.
  jnz  @addr0984
  // 31|30|29  |28        |18|17|16|15        |11  |10|9|8|7|6|5|0 
  // 0 |Q |op=0|0111100000|a |b |c |cmode=1111|o2=0|1 |d|e|f|g|h|Rd
  // e.g: FMOV  <Vd>.<T>, #<imm>
  mov  eax, 0137
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0984:
  // 31|30 |29  |28        |18|17|16|15        |11  |10|9|8|7|6|5|0 
  // 0 |Q=1|op=1|0111100000|a |b |c |cmode=1111|o2=0|1 |d|e|f|g|h|Rd
  // e.g: FMOV  <Vd>.2D, #<imm>
  mov  eax, 0138
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0983:
  test ch,   $10  // Bit 12.
  jnz  @addr0985
  test al,   $20  // Bit 29.
  jnz  @addr0986
  test al,   $40  // Bit 30.
  jnz  @addr0987
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=0|U=0|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
  // e.g: RSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0373
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0987:
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=1|U=0|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
  // e.g: RSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0374
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0986:
  test al,   $40  // Bit 30.
  jnz  @addr0988
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=0|U=1|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
  // e.g: SQRSHRUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0382
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0988:
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=1|U=1|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
  // e.g: SQRSHRUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0383
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0985:
  test ch,   $20  // Bit 13.
  jnz  @addr0989
  test al,   $20  // Bit 29.
  jnz  @addr0990
  test al,   $40  // Bit 30.
  jnz  @addr0991
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=0|U=0|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
  // e.g: SQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0380
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0991:
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=1|U=0|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
  // e.g: SQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0381
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0990:
  test al,   $40  // Bit 30.
  jnz  @addr0992
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=0|U=1|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
  // e.g: UQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0400
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0992:
  // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
  // 0 |Q=1|U=1|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
  // e.g: UQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
  mov  eax, 0401
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0989:
  test al,   $20  // Bit 29.
  jnz  @addr0993
  // 31|30|29  |28        |18|17|16|15        |11  |10|9|8|7|6|5|0 
  // 0 |Q |op=0|0111100000|a |b |c |cmode=1111|o2=1|1 |d|e|f|g|h|Rd
  // e.g: FMOV  <Vd>.<T>, #<imm>
  mov  eax, 0136
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0993:
  // 31|30|29 |28    |19  |16  |15          |10|5 |0 
  // 0 |Q |U=1|011110|immh|immb|opcode=11111|1 |Rn|Rd
  // e.g: FCVTZU  <Vd>.<T>, <Vn>.<T>, #<fbits>
  mov  eax, 0372
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0946:
  test ch,   $80  // Bit 15.
  jnz  @addr0994
  test al,   $20  // Bit 29.
  jnz  @addr0995
  test al,   $40  // Bit 30.
  jnz  @addr0996
  test ah,   $20  // Bit 21.
  jnz  @addr0997
  test ah,   $80  // Bit 23.
  jnz  @addr0998
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=0x|o1=0|Rm|o0=0|Ra|Rn|Rd
  // e.g: FMADD  <Sd>, <Sn>, <Sm>, <Sa>
  mov  eax, 0857
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0998:
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=11|o1=0|Rm|o0=0|Ra|Rn|Rd
  // e.g: FMADD  <Hd>, <Hn>, <Hm>, <Ha>
  mov  eax, 0856
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0997:
  test ah,   $80  // Bit 23.
  jnz  @addr0999
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=0x|o1=1|Rm|o0=0|Ra|Rn|Rd
  // e.g: FNMADD  <Sd>, <Sn>, <Sm>, <Sa>
  mov  eax, 0861
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0999:
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=11|o1=1|Rm|o0=0|Ra|Rn|Rd
  // e.g: FNMADD  <Hd>, <Hn>, <Hm>, <Ha>
  mov  eax, 0860
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0996:
  test ch,   $04  // Bit 10.
  jnz  @addr1000
  test ch,   $20  // Bit 13.
  jnz  @addr1001
  test ch,   $40  // Bit 14.
  jnz  @addr1002
  test ah,   $80  // Bit 23.
  jnz  @addr1003
  // 31|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
  // 01|U=0|11111|size=00|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
  // e.g: FMLA  <Hd>, <Hn>, <Vm>.H[<index>]
  mov  eax, 0418
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1003:
  // 31|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
  // 01|U=0|11111|1 |sz|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
  // e.g: FMLA  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0419
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1002:
  test ah,   $80  // Bit 23.
  jnz  @addr1004
  // 31|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
  // 01|U=0|11111|size=00|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
  // e.g: FMLS  <Hd>, <Hn>, <Vm>.H[<index>]
  mov  eax, 0420
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1004:
  // 31|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
  // 01|U=0|11111|1 |sz|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
  // e.g: FMLS  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0421
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1001:
  test ch,   $40  // Bit 14.
  jnz  @addr1005
  // 31|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 01|U=0|11111|size|L |M |Rm|0 |o2=0|11|H |0 |Rn|Rd
  // e.g: SQDMLAL  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0426
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1005:
  // 31|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
  // 01|U=0|11111|size|L |M |Rm|0 |o2=1|11|H |0 |Rn|Rd
  // e.g: SQDMLSL  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0427
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1000:
  test ch,   $10  // Bit 12.
  jnz  @addr1006
  test ch,   $20  // Bit 13.
  jnz  @addr1007
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=0|111110|immh=1xxx|immb|00|o1=0|o0=0|0 |1 |Rn|Rd
  // e.g: SSHR  <V><d>, <V><n>, #<shift>
  mov  eax, 0602
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1007:
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=0|111110|immh=1xxx|immb|00|o1=1|o0=0|0 |1 |Rn|Rd
  // e.g: SRSHR  <V><d>, <V><n>, #<shift>
  mov  eax, 0600
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1006:
  test ch,   $20  // Bit 13.
  jnz  @addr1008
  test ch,   $40  // Bit 14.
  jnz  @addr1009
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=0|111110|immh=1xxx|immb|00|o1=0|o0=1|0 |1 |Rn|Rd
  // e.g: SSRA  <V><d>, <V><n>, #<shift>
  mov  eax, 0603
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1009:
  // 31|29 |28    |19       |16  |15          |10|5 |0 
  // 01|U=0|111110|immh=1xxx|immb|opcode=01010|1 |Rn|Rd
  // e.g: SHL  <V><d>, <V><n>, #<shift>
  mov  eax, 0591
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1008:
  test ch,   $40  // Bit 14.
  jnz  @addr1010
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=0|111110|immh=1xxx|immb|00|o1=1|o0=1|0 |1 |Rn|Rd
  // e.g: SRSRA  <V><d>, <V><n>, #<shift>
  mov  eax, 0601
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1010:
  // 31|29 |28    |19  |16  |15 |12  |11|10|5 |0 
  // 01|U=0|111110|immh|immb|011|op=1|0 |1 |Rn|Rd
  // e.g: SQSHL  <V><d>, <V><n>, #<shift>
  mov  eax, 0595
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0995:
  test ch,   $10  // Bit 12.
  jnz  @addr1011
  test ch,   $20  // Bit 13.
  jnz  @addr1012
  test ch,   $40  // Bit 14.
  jnz  @addr1013
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=1|111110|immh=1xxx|immb|00|o1=0|o0=0|0 |1 |Rn|Rd
  // e.g: USHR  <V><d>, <V><n>, #<shift>
  mov  eax, 0610
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1013:
  // 31|29 |28    |19       |16  |15          |10|5 |0 
  // 01|U=1|111110|immh=1xxx|immb|opcode=01000|1 |Rn|Rd
  // e.g: SRI  <V><d>, <V><n>, #<shift>
  mov  eax, 0599
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1012:
  test ch,   $40  // Bit 14.
  jnz  @addr1014
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=1|111110|immh=1xxx|immb|00|o1=1|o0=0|0 |1 |Rn|Rd
  // e.g: URSHR  <V><d>, <V><n>, #<shift>
  mov  eax, 0608
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1014:
  // 31|29 |28    |19  |16  |15 |12  |11|10|5 |0 
  // 01|U=1|111110|immh|immb|011|op=0|0 |1 |Rn|Rd
  // e.g: SQSHLU  <V><d>, <V><n>, #<shift>
  mov  eax, 0596
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1011:
  test ch,   $20  // Bit 13.
  jnz  @addr1015
  test ch,   $40  // Bit 14.
  jnz  @addr1016
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=1|111110|immh=1xxx|immb|00|o1=0|o0=1|0 |1 |Rn|Rd
  // e.g: USRA  <V><d>, <V><n>, #<shift>
  mov  eax, 0611
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1016:
  // 31|29 |28    |19       |16  |15          |10|5 |0 
  // 01|U=1|111110|immh=1xxx|immb|opcode=01010|1 |Rn|Rd
  // e.g: SLI  <V><d>, <V><n>, #<shift>
  mov  eax, 0592
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1015:
  test ch,   $40  // Bit 14.
  jnz  @addr1017
  // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
  // 01|U=1|111110|immh=1xxx|immb|00|o1=1|o0=1|0 |1 |Rn|Rd
  // e.g: URSRA  <V><d>, <V><n>, #<shift>
  mov  eax, 0609
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1017:
  // 31|29 |28    |19  |16  |15 |12  |11|10|5 |0 
  // 01|U=1|111110|immh|immb|011|op=1|0 |1 |Rn|Rd
  // e.g: UQSHL  <V><d>, <V><n>, #<shift>
  mov  eax, 0606
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr0994:
  test al,   $20  // Bit 29.
  jnz  @addr1018
  test al,   $40  // Bit 30.
  jnz  @addr1019
  test ah,   $20  // Bit 21.
  jnz  @addr1020
  test ah,   $80  // Bit 23.
  jnz  @addr1021
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=0x|o1=0|Rm|o0=1|Ra|Rn|Rd
  // e.g: FMSUB  <Sd>, <Sn>, <Sm>, <Sa>
  mov  eax, 0859
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1021:
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=11|o1=0|Rm|o0=1|Ra|Rn|Rd
  // e.g: FMSUB  <Hd>, <Hn>, <Hm>, <Ha>
  mov  eax, 0858
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1020:
  test ah,   $80  // Bit 23.
  jnz  @addr1022
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=0x|o1=1|Rm|o0=1|Ra|Rn|Rd
  // e.g: FNMSUB  <Sd>, <Sn>, <Sm>, <Sa>
  mov  eax, 0863
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1022:
  // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
  // M=0|0 |S=0|11111|type=11|o1=1|Rm|o0=1|Ra|Rn|Rd
  // e.g: FNMSUB  <Hd>, <Hn>, <Hm>, <Ha>
  mov  eax, 0862
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1019:
  test ch,   $04  // Bit 10.
  jnz  @addr1023
  test ch,   $10  // Bit 12.
  jnz  @addr1024
  // 31|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
  // 01|U=0|11111|size|L |M |Rm|110|op=0|H |0 |Rn|Rd
  // e.g: SQDMULH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0428
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1024:
  test ch,   $20  // Bit 13.
  jnz  @addr1025
  test ch,   $40  // Bit 14.
  jnz  @addr1026
  test ah,   $80  // Bit 23.
  jnz  @addr1027
  // 31|29 |28   |23     |21|20|16|15         |11|10|5 |0 
  // 01|U=0|11111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMUL  <Hd>, <Hn>, <Vm>.H[<index>]
  mov  eax, 0422
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1027:
  // 31|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
  // 01|U=0|11111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMUL  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0423
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1026:
  // 31|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
  // 01|U=0|11111|size|L |M |Rm|110|op=1|H |0 |Rn|Rd
  // e.g: SQRDMULH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0432
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1025:
  // 31|29 |28   |22  |21|20|16|15         |11|10|5 |0 
  // 01|U=0|11111|size|L |M |Rm|opcode=1011|H |0 |Rn|Rd
  // e.g: SQDMULL  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0429
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1023:
  test ch,   $08  // Bit 11.
  jnz  @addr1028
  test ch,   $10  // Bit 12.
  jnz  @addr1029
  // 31|29 |28    |19  |16  |15          |10|5 |0 
  // 01|U=0|111110|immh|immb|opcode=11100|1 |Rn|Rd
  // e.g: SCVTF  <V><d>, <V><n>, #<fbits>
  mov  eax, 0590
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1029:
  // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
  // 01|U=0|111110|immh=0xxx|immb|1001|op=0|1 |Rn|Rd
  // e.g: SQSHRN  <Vb><d>, <Va><n>, #<shift>
  mov  eax, 0597
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1028:
  test ch,   $20  // Bit 13.
  jnz  @addr1030
  // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
  // 01|U=0|111110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
  // e.g: SQRSHRN  <Vb><d>, <Va><n>, #<shift>
  mov  eax, 0593
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1030:
  // 31|29 |28    |19  |16  |15          |10|5 |0 
  // 01|U=0|111110|immh|immb|opcode=11111|1 |Rn|Rd
  // e.g: FCVTZS  <V><d>, <V><n>, #<fbits>
  mov  eax, 0588
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1018:
  test ch,   $04  // Bit 10.
  jnz  @addr1031
  test ch,   $20  // Bit 13.
  jnz  @addr1032
  test ch,   $40  // Bit 14.
  jnz  @addr1033
  test ah,   $80  // Bit 23.
  jnz  @addr1034
  // 31|29 |28   |23     |21|20|16|15         |11|10|5 |0 
  // 01|U=1|11111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMULX  <Hd>, <Hn>, <Vm>.H[<index>]
  mov  eax, 0424
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1034:
  // 31|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
  // 01|U=1|11111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
  // e.g: FMULX  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0425
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1033:
  // 31|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
  // 01|U=1|11111|size|L |M |Rm|11|S=0|1 |H |0 |Rn|Rd
  // e.g: SQRDMLAH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0430
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1032:
  // 31|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
  // 01|U=1|11111|size|L |M |Rm|11|S=1|1 |H |0 |Rn|Rd
  // e.g: SQRDMLSH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
  mov  eax, 0431
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1031:
  test ch,   $08  // Bit 11.
  jnz  @addr1035
  test ch,   $10  // Bit 12.
  jnz  @addr1036
  test ch,   $20  // Bit 13.
  jnz  @addr1037
  // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
  // 01|U=1|111110|immh=0xxx|immb|1000|op=0|1 |Rn|Rd
  // e.g: SQSHRUN  <Vb><d>, <Va><n>, #<shift>
  mov  eax, 0598
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1037:
  // 31|29 |28    |19  |16  |15          |10|5 |0 
  // 01|U=1|111110|immh|immb|opcode=11100|1 |Rn|Rd
  // e.g: UCVTF  <V><d>, <V><n>, #<fbits>
  mov  eax, 0604
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1036:
  // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
  // 01|U=1|111110|immh=0xxx|immb|1001|op=0|1 |Rn|Rd
  // e.g: UQSHRN  <Vb><d>, <Va><n>, #<shift>
  mov  eax, 0607
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1035:
  test ch,   $10  // Bit 12.
  jnz  @addr1038
  // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
  // 01|U=1|111110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
  // e.g: SQRSHRUN  <Vb><d>, <Va><n>, #<shift>
  mov  eax, 0594
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1038:
  test ch,   $20  // Bit 13.
  jnz  @addr1039
  // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
  // 01|U=1|111110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
  // e.g: UQRSHRN  <Vb><d>, <Va><n>, #<shift>
  mov  eax, 0605
  ret
{$IFDEF FPC}align 4{$ELSE}.align 4{$ENDIF}
@addr1039:
  // 31|29 |28    |19  |16  |15          |10|5 |0 
  // 01|U=1|111110|immh|immb|opcode=11111|1 |Rn|Rd
  // e.g: FCVTZU  <V><d>, <V><n>, #<fbits>
  mov  eax, 0589
  ret
end;
