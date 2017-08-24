// *********************************************************
// *                                                       *
// *     Automatically generated file => do not edit!      *
// *                                                       *
// *********************************************************
// *                                                       *
// *       https://github.com/MahdiSafsafi/Azote           *
// *                                                       *
// *********************************************************

function FindFirstEntry(OpCode: UInt32): Integer;
var
  Long: LongRec absolute OpCode;
  { Do not change variables size. }
  a: UInt32;
  b: UInt32;
  c: UInt32;
  d: UInt32;
begin;
  { The algo used here is based on GNU Binutils implementation. However, I improved the algo as follow:
      - Uses single instruction for testing (only test) rather than three instruction (mov,shift and test).
	    As a result, the generated code remains small and faster.
	 
      - When the last node is not sealed, the tree shots the instruction that has the highest number of set bits of it's mask.
	    As a result, the disasm guarantees that it will never confuse between two similar instruction. 
		Also, when disassembling, it will never waste time to do semantic checks that allow to distinguish between those two instructions. 
		
    This routine should be compiled with $O+ to avoid stack usage, boost performance and reduce file size. 
  	  - When $O-: all variables are fetched from the stack during the comparison which will slow down the process.
  	  - When $O+: all variables (a,b,c and d) are stored in registers.
  	   	  
    ===> Always keep optimization on. 
	     Or use the asm version which uses 8-bit registers for all varaibles and aligns code address. }

  a := Long.Bytes[0]; // Low byte.
  b := Long.Bytes[1];
  c := Long.Bytes[2];
  d := Long.Bytes[3];

  if (d and $04 = $00) then
  begin
    if (d and $01 = $00) then
    begin
      if (d and $02 = $00) then
      begin
        if (d and $08 = $00) then
        begin
          if (d and $80 = $00) then
          begin
            // 31  |29   |28   |5    |0 
            // op=0|immlo|10000|immhi|Rd
            // e.g: ADR  <Xd>, <label>
            exit(1185);
          end
          else
          begin
            // 31  |29   |28   |5    |0 
            // op=1|immlo|10000|immhi|Rd
            // e.g: ADRP  <Xd>, <label>
            exit(1186);
          end;
        end
        else
        begin
          if (d and $10 = $00) then
          begin
            if (c and $40 = $00) then
            begin
              if (c and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $80 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=00|001000|o2=0|L=0|o1=0|Rs|o0=0|Rt2=11111|Rn|Rt
                          // e.g: STXRB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0979);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=01|001000|o2=0|L=0|o1=0|Rs|o0=0|Rt2=11111|Rn|Rt
                          // e.g: STXRH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0980);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                        // size=1x|001000|o2=0|L=0|o1=0|Rs|o0=0|Rt2=11111|Rn|Rt
                        // e.g: STXR  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                        exit(0978);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
                        // 0 |sz|001000|o2=0|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                        // e.g: CASP  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
                        exit(0949);
                      end
                      else
                      begin
                        // 31|30|29    |23  |22 |21  |16|15  |10 |9 |0 
                        // 1 |sz|001000|o2=0|L=0|o1=1|Rs|o0=0|Rt2|Rn|Rt
                        // e.g: STXP  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
                        exit(0977);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=00|001000|o2=0|L=0|o1=0|Rs|o0=1|Rt2=11111|Rn|Rt
                          // e.g: STLXRB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0975);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=01|001000|o2=0|L=0|o1=0|Rs|o0=1|Rt2=11111|Rn|Rt
                          // e.g: STLXRH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0976);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                        // size=1x|001000|o2=0|L=0|o1=0|Rs|o0=1|Rt2=11111|Rn|Rt
                        // e.g: STLXR  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                        exit(0974);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
                        // 0 |sz|001000|o2=0|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                        // e.g: CASPL  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
                        exit(0952);
                      end
                      else
                      begin
                        // 31|30|29    |23  |22 |21  |16|15  |10 |9 |0 
                        // 1 |sz|001000|o2=0|L=0|o1=1|Rs|o0=1|Rt2|Rn|Rt
                        // e.g: STLXP  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
                        exit(0973);
                      end;
                    end;
                  end;
                end
                else
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=x0|101|V=0|000|L=0|imm7|Rt2|Rn|Rt
                  // e.g: STNP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
                  exit(0983);
                end;
              end
              else
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $80 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=00|001000|o2=1|L=0|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                          // e.g: STLLRB  <Wt>, [<Xn|SP>{,#0}]
                          exit(0968);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=01|001000|o2=1|L=0|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                          // e.g: STLLRH  <Wt>, [<Xn|SP>{,#0}]
                          exit(0969);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=0|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                        // e.g: STLLR  <Wt>, [<Xn|SP>{,#0}]
                        exit(0967);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=00|001000|o2=1|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                          // e.g: CASB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0944);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=01|001000|o2=1|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                          // e.g: CASH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0945);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=0|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                        // e.g: CAS  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                        exit(0937);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=00|001000|o2=1|L=0|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                          // e.g: STLRB  <Wt>, [<Xn|SP>{,#0}]
                          exit(0971);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=01|001000|o2=1|L=0|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                          // e.g: STLRH  <Wt>, [<Xn|SP>{,#0}]
                          exit(0972);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=0|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                        // e.g: STLR  <Wt>, [<Xn|SP>{,#0}]
                        exit(0970);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=00|001000|o2=1|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                          // e.g: CASLB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0947);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=01|001000|o2=1|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                          // e.g: CASLH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0948);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=0|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                        // e.g: CASL  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                        exit(0946);
                      end;
                    end;
                  end;
                end
                else
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=x0|101|V=0|001|L=0|imm7|Rt2|Rn|Rt
                  // e.g: STP  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>
                  exit(0993);
                end;
              end;
            end
            else
            begin
              if (c and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $80 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=00|001000|o2=0|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                          // e.g: LDXRB  <Wt>, [<Xn|SP>{,#0}]
                          exit(0965);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=01|001000|o2=0|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                          // e.g: LDXRH  <Wt>, [<Xn|SP>{,#0}]
                          exit(0966);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                        // size=1x|001000|o2=0|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                        // e.g: LDXR  <Wt>, [<Xn|SP>{,#0}]
                        exit(0964);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
                        // 0 |sz|001000|o2=0|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                        // e.g: CASPA  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
                        exit(0950);
                      end
                      else
                      begin
                        // 31|30|29    |23  |22 |21  |20      |15  |10 |9 |0 
                        // 1 |sz|001000|o2=0|L=1|o1=1|Rs=11111|o0=0|Rt2|Rn|Rt
                        // e.g: LDXP  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
                        exit(0963);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=00|001000|o2=0|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                          // e.g: LDAXRB  <Wt>, [<Xn|SP>{,#0}]
                          exit(0958);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=01|001000|o2=0|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                          // e.g: LDAXRH  <Wt>, [<Xn|SP>{,#0}]
                          exit(0959);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                        // size=1x|001000|o2=0|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                        // e.g: LDAXR  <Wt>, [<Xn|SP>{,#0}]
                        exit(0957);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        // 31|30|29    |23  |22 |21  |16|15  |14       |9 |0 
                        // 0 |sz|001000|o2=0|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                        // e.g: CASPAL  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]
                        exit(0951);
                      end
                      else
                      begin
                        // 31|30|29    |23  |22 |21  |20      |15  |10 |9 |0 
                        // 1 |sz|001000|o2=0|L=1|o1=1|Rs=11111|o0=1|Rt2|Rn|Rt
                        // e.g: LDAXP  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]
                        exit(0956);
                      end;
                    end;
                  end;
                end
                else
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=x0|101|V=0|000|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDNP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
                  exit(0981);
                end;
              end
              else
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $80 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=00|001000|o2=1|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                          // e.g: LDLARB  <Wt>, [<Xn|SP>{,#0}]
                          exit(0961);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=01|001000|o2=1|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                          // e.g: LDLARH  <Wt>, [<Xn|SP>{,#0}]
                          exit(0962);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=1|o1=0|Rs=11111|o0=0|Rt2=11111|Rn|Rt
                        // e.g: LDLAR  <Wt>, [<Xn|SP>{,#0}]
                        exit(0960);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=00|001000|o2=1|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                          // e.g: CASAB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0939);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=01|001000|o2=1|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                          // e.g: CASAH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0940);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=1|o1=1|Rs|o0=0|Rt2=11111|Rn|Rt
                        // e.g: CASA  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                        exit(0938);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=00|001000|o2=1|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                          // e.g: LDARB  <Wt>, [<Xn|SP>{,#0}]
                          exit(0954);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                          // size=01|001000|o2=1|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                          // e.g: LDARH  <Wt>, [<Xn|SP>{,#0}]
                          exit(0955);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |20      |15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=1|o1=0|Rs=11111|o0=1|Rt2=11111|Rn|Rt
                        // e.g: LDAR  <Wt>, [<Xn|SP>{,#0}]
                        exit(0953);
                      end;
                    end
                    else
                    begin
                      if (d and $80 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=00|001000|o2=1|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                          // e.g: CASALB  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0942);
                        end
                        else
                        begin
                          // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                          // size=01|001000|o2=1|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                          // e.g: CASALH  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                          exit(0943);
                        end;
                      end
                      else
                      begin
                        // 31     |29    |23  |22 |21  |16|15  |14       |9 |0 
                        // size=1x|001000|o2=1|L=1|o1=1|Rs|o0=1|Rt2=11111|Rn|Rt
                        // e.g: CASAL  <Ws>, <Wt>, [<Xn|SP>{,#0}]
                        exit(0941);
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (d and $40 = $00) then
                  begin
                    // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                    // opc=x0|101|V=0|001|L=1|imm7|Rt2|Rn|Rt
                    // e.g: LDP  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>
                    exit(0990);
                  end
                  else
                  begin
                    // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                    // opc=01|101|V=0|001|L=1|imm7|Rt2|Rn|Rt
                    // e.g: LDPSW  <Xt1>, <Xt2>, [<Xn|SP>], #<imm>
                    exit(0992);
                  end;
                end;
              end;
            end;
          end
          else
          begin
            if (d and $20 = $00) then
            begin
              if (d and $80 = $00) then
              begin
                // 31    |29 |26 |25|5    |0 
                // opc=0x|011|V=0|00|imm19|Rt
                // e.g: LDR  <Wt>, <label>
                exit(1000);
              end
              else
              begin
                if (d and $40 = $00) then
                begin
                  // 31    |29 |26 |25|5    |0 
                  // opc=10|011|V=0|00|imm19|Rt
                  // e.g: LDRSW  <Xt>, <label>
                  exit(1002);
                end
                else
                begin
                  // 31    |29 |26 |25|5    |0 
                  // opc=11|011|V=0|00|imm19|Rt
                  // e.g: PRFM  <prfop>, <label>
                  exit(1003);
                end;
              end;
            end
            else
            begin
              if (b and $04 = $00) then
              begin
                if (b and $08 = $00) then
                begin
                  if (c and $20 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (c and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=00|0 |imm9|00|Rn|Rt
                            // e.g: STURB  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0935);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=00|0 |imm9|00|Rn|Rt
                            // e.g: STURH  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0936);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=00|0 |imm9|00|Rn|Rt
                          // e.g: STUR  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0933);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=01|0 |imm9|00|Rn|Rt
                            // e.g: LDURB  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0927);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=01|0 |imm9|00|Rn|Rt
                            // e.g: LDURH  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0928);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=01|0 |imm9|00|Rn|Rt
                          // e.g: LDUR  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0925);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=00|111|V=0|00|opc=1x|0 |imm9|00|Rn|Rt
                          // e.g: LDURSB  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0929);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=10|111|V=0|00|opc=10|0 |imm9|00|Rn|Rt
                          // e.g: LDURSW  <Xt>, [<Xn|SP>{, #<simm>}]
                          exit(0931);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=01|111|V=0|00|opc=1x|0 |imm9|00|Rn|Rt
                          // e.g: LDURSH  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0930);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=11|111|V=0|00|opc=10|0 |imm9|00|Rn|Rt
                          // e.g: PRFUM <prfop>, [<Xn|SP>{, #<simm>}]
                          exit(0932);
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (b and $80 = $00) then
                          begin
                            if (c and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
                                    // e.g: STADDB  <Ws>, [<Xn|SP>]
                                    exit(1121);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
                                    // e.g: STADDH  <Ws>, [<Xn|SP>]
                                    exit(1122);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
                                  // e.g: STADD  <Ws>, [<Xn|SP>]
                                  exit(1120);
                                end;
                              end
                              else
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt
                                    // e.g: LDADDAB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1023);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt
                                    // e.g: LDADDAH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1024);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=000|00|Rn|Rt
                                  // e.g: LDADDA  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1022);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
                                    // e.g: STADDLB  <Ws>, [<Xn|SP>]
                                    exit(1124);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
                                    // e.g: STADDLH  <Ws>, [<Xn|SP>]
                                    exit(1125);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt=11111
                                  // e.g: STADDL  <Ws>, [<Xn|SP>]
                                  exit(1123);
                                end;
                              end
                              else
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt
                                    // e.g: LDADDALB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1026);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt
                                    // e.g: LDADDALH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1027);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=000|00|Rn|Rt
                                  // e.g: LDADDAL  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1025);
                                end;
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1175);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1176);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                  // e.g: SWP  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1168);
                                end;
                              end
                              else
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPAB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1170);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPAH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1171);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                  // e.g: SWPA  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1169);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPLB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1178);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPLH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1179);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                  // e.g: SWPL  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1177);
                                end;
                              end
                              else
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPALB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1173);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                    // e.g: SWPALH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1174);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=1|opc=000|00|Rn|Rt
                                  // e.g: SWPAL  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1172);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $80 = $00) then
                          begin
                            if (c and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
                                    // e.g: STSMAXB  <Ws>, [<Xn|SP>]
                                    exit(1145);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
                                    // e.g: STSMAXH  <Ws>, [<Xn|SP>]
                                    exit(1146);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
                                  // e.g: STSMAX  <Ws>, [<Xn|SP>]
                                  exit(1144);
                                end;
                              end
                              else
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt
                                    // e.g: LDSMAXAB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1074);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt
                                    // e.g: LDSMAXAH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1075);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=100|00|Rn|Rt
                                  // e.g: LDSMAXA  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1073);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
                                    // e.g: STSMAXLB  <Ws>, [<Xn|SP>]
                                    exit(1148);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                    // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
                                    // e.g: STSMAXLH  <Ws>, [<Xn|SP>]
                                    exit(1149);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt=11111
                                  // e.g: STSMAXL  <Ws>, [<Xn|SP>]
                                  exit(1147);
                                end;
                              end
                              else
                              begin
                                if (d and $80 = $00) then
                                begin
                                  if (d and $40 = $00) then
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt
                                    // e.g: LDSMAXALB  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1077);
                                  end
                                  else
                                  begin
                                    // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                    // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt
                                    // e.g: LDSMAXALH  <Ws>, <Wt>, [<Xn|SP>]
                                    exit(1078);
                                  end;
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=100|00|Rn|Rt
                                  // e.g: LDSMAXAL  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1076);
                                end;
                              end;
                            end;
                          end
                          else
                          begin
                            if (d and $80 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31     |29 |26 |25|23 |22 |21|20      |15  |14     |11|9 |0 
                                // size=00|111|V=0|00|A=1|R=0|1 |Rs=11111|o3=1|opc=100|00|Rn|Rt
                                // e.g: LDAPRB  <Wt>, [<Xn|SP> {,#0}]
                                exit(1034);
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|20      |15  |14     |11|9 |0 
                                // size=01|111|V=0|00|A=1|R=0|1 |Rs=11111|o3=1|opc=100|00|Rn|Rt
                                // e.g: LDAPRH  <Wt>, [<Xn|SP> {,#0}]
                                exit(1035);
                              end;
                            end
                            else
                            begin
                              // 31     |29 |26 |25|23 |22 |21|20      |15  |14     |11|9 |0 
                              // size=1x|111|V=0|00|A=1|R=0|1 |Rs=11111|o3=1|opc=100|00|Rn|Rt
                              // e.g: LDAPR  <Wt>, [<Xn|SP> {,#0}]
                              exit(1033);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
                                  // e.g: STEORB  <Ws>, [<Xn|SP>]
                                  exit(1133);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
                                  // e.g: STEORH  <Ws>, [<Xn|SP>]
                                  exit(1134);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
                                // e.g: STEOR  <Ws>, [<Xn|SP>]
                                exit(1132);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt
                                  // e.g: LDEORAB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1050);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt
                                  // e.g: LDEORAH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1051);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=010|00|Rn|Rt
                                // e.g: LDEORA  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1049);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
                                  // e.g: STEORLB  <Ws>, [<Xn|SP>]
                                  exit(1136);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
                                  // e.g: STEORLH  <Ws>, [<Xn|SP>]
                                  exit(1137);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt=11111
                                // e.g: STEORL  <Ws>, [<Xn|SP>]
                                exit(1135);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt
                                  // e.g: LDEORALB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1053);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt
                                  // e.g: LDEORALH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1054);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=010|00|Rn|Rt
                                // e.g: LDEORAL  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1052);
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
                                  // e.g: STUMAXB  <Ws>, [<Xn|SP>]
                                  exit(1157);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
                                  // e.g: STUMAXH  <Ws>, [<Xn|SP>]
                                  exit(1158);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
                                // e.g: STUMAX  <Ws>, [<Xn|SP>]
                                exit(1156);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt
                                  // e.g: LDUMAXAB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1098);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt
                                  // e.g: LDUMAXAH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1099);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=110|00|Rn|Rt
                                // e.g: LDUMAXA  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1097);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
                                  // e.g: STUMAXLB  <Ws>, [<Xn|SP>]
                                  exit(1160);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
                                  // e.g: STUMAXLH  <Ws>, [<Xn|SP>]
                                  exit(1161);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt=11111
                                // e.g: STUMAXL  <Ws>, [<Xn|SP>]
                                exit(1159);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt
                                  // e.g: LDUMAXALB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1101);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt
                                  // e.g: LDUMAXALH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1102);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=110|00|Rn|Rt
                                // e.g: LDUMAXAL  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1100);
                              end;
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
                                  // e.g: STCLRB  <Ws>, [<Xn|SP>]
                                  exit(1127);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
                                  // e.g: STCLRH  <Ws>, [<Xn|SP>]
                                  exit(1128);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
                                // e.g: STCLR  <Ws>, [<Xn|SP>]
                                exit(1126);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt
                                  // e.g: LDCLRAB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1038);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt
                                  // e.g: LDCLRAH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1039);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=001|00|Rn|Rt
                                // e.g: LDCLRA  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1037);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
                                  // e.g: STCLRLB  <Ws>, [<Xn|SP>]
                                  exit(1130);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
                                  // e.g: STCLRLH  <Ws>, [<Xn|SP>]
                                  exit(1131);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt=11111
                                // e.g: STCLRL  <Ws>, [<Xn|SP>]
                                exit(1129);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt
                                  // e.g: LDCLRALB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1041);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt
                                  // e.g: LDCLRALH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1042);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=001|00|Rn|Rt
                                // e.g: LDCLRAL  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1040);
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
                                  // e.g: STSMINB  <Ws>, [<Xn|SP>]
                                  exit(1151);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
                                  // e.g: STSMINH  <Ws>, [<Xn|SP>]
                                  exit(1152);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
                                // e.g: STSMIN  <Ws>, [<Xn|SP>]
                                exit(1150);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt
                                  // e.g: LDSMINAB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1086);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt
                                  // e.g: LDSMINAH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1087);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=101|00|Rn|Rt
                                // e.g: LDSMINA  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1085);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
                                  // e.g: STSMINLB  <Ws>, [<Xn|SP>]
                                  exit(1154);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
                                  // e.g: STSMINLH  <Ws>, [<Xn|SP>]
                                  exit(1155);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt=11111
                                // e.g: STSMINL  <Ws>, [<Xn|SP>]
                                exit(1153);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt
                                  // e.g: LDSMINALB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1089);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt
                                  // e.g: LDSMINALH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1090);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=101|00|Rn|Rt
                                // e.g: LDSMINAL  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1088);
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
                                  // e.g: STSETB  <Ws>, [<Xn|SP>]
                                  exit(1139);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
                                  // e.g: STSETH  <Ws>, [<Xn|SP>]
                                  exit(1140);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
                                // e.g: STSET  <Ws>, [<Xn|SP>]
                                exit(1138);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt
                                  // e.g: LDSETAB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1062);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt
                                  // e.g: LDSETAH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1063);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=011|00|Rn|Rt
                                // e.g: LDSETA  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1061);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
                                  // e.g: STSETLB  <Ws>, [<Xn|SP>]
                                  exit(1142);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
                                  // e.g: STSETLH  <Ws>, [<Xn|SP>]
                                  exit(1143);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt=11111
                                // e.g: STSETL  <Ws>, [<Xn|SP>]
                                exit(1141);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt
                                  // e.g: LDSETALB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1065);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt
                                  // e.g: LDSETALH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1066);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=011|00|Rn|Rt
                                // e.g: LDSETAL  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1064);
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
                                  // e.g: STUMINB  <Ws>, [<Xn|SP>]
                                  exit(1163);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
                                  // e.g: STUMINH  <Ws>, [<Xn|SP>]
                                  exit(1164);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
                                // e.g: STUMIN  <Ws>, [<Xn|SP>]
                                exit(1162);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt
                                  // e.g: LDUMINAB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1110);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt
                                  // e.g: LDUMINAH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1111);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=0|1 |Rs|o3=0|opc=111|00|Rn|Rt
                                // e.g: LDUMINA  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1109);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=00|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
                                  // e.g: STUMINLB  <Ws>, [<Xn|SP>]
                                  exit(1166);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                  // size=01|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
                                  // e.g: STUMINLH  <Ws>, [<Xn|SP>]
                                  exit(1167);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |4       
                                // size=1x|111|V=0|00|A=0|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt=11111
                                // e.g: STUMINL  <Ws>, [<Xn|SP>]
                                exit(1165);
                              end;
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=00|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt
                                  // e.g: LDUMINALB  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1113);
                                end
                                else
                                begin
                                  // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                  // size=01|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt
                                  // e.g: LDUMINALH  <Ws>, <Wt>, [<Xn|SP>]
                                  exit(1114);
                                end;
                              end
                              else
                              begin
                                // 31     |29 |26 |25|23 |22 |21|16|15  |14     |11|9 |0 
                                // size=1x|111|V=0|00|A=1|R=1|1 |Rs|o3=0|opc=111|00|Rn|Rt
                                // e.g: LDUMINAL  <Ws>, <Wt>, [<Xn|SP>]
                                exit(1112);
                              end;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (c and $20 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (c and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=00|0 |imm9|10|Rn|Rt
                            // e.g: STTRB  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0923);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=00|0 |imm9|10|Rn|Rt
                            // e.g: STTRH  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0924);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=00|0 |imm9|10|Rn|Rt
                          // e.g: STTR  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0922);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=01|0 |imm9|10|Rn|Rt
                            // e.g: LDTRB  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0917);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=01|0 |imm9|10|Rn|Rt
                            // e.g: LDTRH  <Wt>, [<Xn|SP>{, #<simm>}]
                            exit(0918);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=01|0 |imm9|10|Rn|Rt
                          // e.g: LDTR  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0916);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=00|111|V=0|00|opc=1x|0 |imm9|10|Rn|Rt
                          // e.g: LDTRSB  <Wt>, [<Xn|SP>{, #<simm>}]
                          exit(0919);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=10|111|V=0|00|opc=10|0 |imm9|10|Rn|Rt
                          // e.g: LDTRSW  <Xt>, [<Xn|SP>{, #<simm>}]
                          exit(0921);
                        end;
                      end
                      else
                      begin
                        // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                        // size=01|111|V=0|00|opc=1x|0 |imm9|10|Rn|Rt
                        // e.g: LDTRSH  <Wt>, [<Xn|SP>{, #<simm>}]
                        exit(0920);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (c and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                            // size=00|111|V=0|00|opc=00|1 |Rm|option|S |10|Rn|Rt
                            // e.g: STRB  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
                            exit(0914);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                            // size=01|111|V=0|00|opc=00|1 |Rm|option|S |10|Rn|Rt
                            // e.g: STRH  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                            exit(0915);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                          // size=1x|111|V=0|00|opc=00|1 |Rm|option|S |10|Rn|Rt
                          // e.g: STR  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                          exit(0912);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                            // size=00|111|V=0|00|opc=01|1 |Rm|option|S |10|Rn|Rt
                            // e.g: LDRB  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
                            exit(0906);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                            // size=01|111|V=0|00|opc=01|1 |Rm|option|S |10|Rn|Rt
                            // e.g: LDRH  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                            exit(0907);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                          // size=1x|111|V=0|00|opc=01|1 |Rm|option|S |10|Rn|Rt
                          // e.g: LDR  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                          exit(0904);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                          // size=00|111|V=0|00|opc=1x|1 |Rm|option|S |10|Rn|Rt
                          // e.g: LDRSB  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
                          exit(0908);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                          // size=10|111|V=0|00|opc=10|1 |Rm|option|S |10|Rn|Rt
                          // e.g: LDRSW  <Xt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                          exit(0910);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                          // size=01|111|V=0|00|opc=1x|1 |Rm|option|S |10|Rn|Rt
                          // e.g: LDRSH  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                          exit(0909);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                          // size=11|111|V=0|00|opc=10|1 |Rm|option|S |10|Rn|Rt
                          // e.g: PRFM  <prfop>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]
                          exit(0911);
                        end;
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (c and $20 = $00) then
                begin
                  if (b and $08 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (c and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=00|0 |imm9|01|Rn|Rt
                            // e.g: STRB  <Wt>, [<Xn|SP>], #<simm>
                            exit(0877);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=00|0 |imm9|01|Rn|Rt
                            // e.g: STRH  <Wt>, [<Xn|SP>], #<simm>
                            exit(0878);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=00|0 |imm9|01|Rn|Rt
                          // e.g: STR  <Wt>, [<Xn|SP>], #<simm>
                          exit(0875);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=01|0 |imm9|01|Rn|Rt
                            // e.g: LDRB  <Wt>, [<Xn|SP>], #<simm>
                            exit(0870);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=01|0 |imm9|01|Rn|Rt
                            // e.g: LDRH  <Wt>, [<Xn|SP>], #<simm>
                            exit(0871);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=01|0 |imm9|01|Rn|Rt
                          // e.g: LDR  <Wt>, [<Xn|SP>], #<simm>
                          exit(0868);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=00|111|V=0|00|opc=1x|0 |imm9|01|Rn|Rt
                          // e.g: LDRSB  <Wt>, [<Xn|SP>], #<simm>
                          exit(0872);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=10|111|V=0|00|opc=10|0 |imm9|01|Rn|Rt
                          // e.g: LDRSW  <Xt>, [<Xn|SP>], #<simm>
                          exit(0874);
                        end;
                      end
                      else
                      begin
                        // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                        // size=01|111|V=0|00|opc=1x|0 |imm9|01|Rn|Rt
                        // e.g: LDRSH  <Wt>, [<Xn|SP>], #<simm>
                        exit(0873);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (c and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=00|0 |imm9|11|Rn|Rt
                            // e.g: STRB  <Wt>, [<Xn|SP>, #<simm>]!
                            exit(0888);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=00|0 |imm9|11|Rn|Rt
                            // e.g: STRH  <Wt>, [<Xn|SP>, #<simm>]!
                            exit(0889);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=00|0 |imm9|11|Rn|Rt
                          // e.g: STR  <Wt>, [<Xn|SP>, #<simm>]!
                          exit(0886);
                        end;
                      end
                      else
                      begin
                        if (d and $80 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=00|111|V=0|00|opc=01|0 |imm9|11|Rn|Rt
                            // e.g: LDRB  <Wt>, [<Xn|SP>, #<simm>]!
                            exit(0881);
                          end
                          else
                          begin
                            // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                            // size=01|111|V=0|00|opc=01|0 |imm9|11|Rn|Rt
                            // e.g: LDRH  <Wt>, [<Xn|SP>, #<simm>]!
                            exit(0882);
                          end;
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=1x|111|V=0|00|opc=01|0 |imm9|11|Rn|Rt
                          // e.g: LDR  <Wt>, [<Xn|SP>, #<simm>]!
                          exit(0879);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        if (d and $80 = $00) then
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=00|111|V=0|00|opc=1x|0 |imm9|11|Rn|Rt
                          // e.g: LDRSB  <Wt>, [<Xn|SP>, #<simm>]!
                          exit(0883);
                        end
                        else
                        begin
                          // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                          // size=10|111|V=0|00|opc=10|0 |imm9|11|Rn|Rt
                          // e.g: LDRSW  <Xt>, [<Xn|SP>, #<simm>]!
                          exit(0885);
                        end;
                      end
                      else
                      begin
                        // 31     |29 |26 |25|23    |21|12  |11|9 |0 
                        // size=01|111|V=0|00|opc=1x|0 |imm9|11|Rn|Rt
                        // e.g: LDRSH  <Wt>, [<Xn|SP>, #<simm>]!
                        exit(0884);
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (c and $80 = $00) then
                  begin
                    // 31     |29 |26 |25|23 |22|21|12  |11|10|9 |0 
                    // size=11|111|V=0|00|M=0|S |1 |imm9|W |1 |Rn|Rt
                    // e.g: LDRAA  <Xt>, [<Xn|SP>{, #<simm>}]
                    exit(0890);
                  end
                  else
                  begin
                    // 31     |29 |26 |25|23 |22|21|12  |11|10|9 |0 
                    // size=11|111|V=0|00|M=1|S |1 |imm9|W |1 |Rn|Rt
                    // e.g: LDRAB  <Xt>, [<Xn|SP>{, #<simm>}]
                    exit(0891);
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        if (d and $08 = $00) then
        begin
          if (c and $80 = $00) then
          begin
            if (d and $20 = $00) then
            begin
              if (d and $40 = $00) then
              begin
                // 31|30    |28    |22|16  |10  |5 |0 
                // sf|opc=00|100100|N |immr|imms|Rn|Rd
                // e.g: AND  <Wd|WSP>, <Wn>, #<imm>
                exit(1004);
              end
              else
              begin
                // 31|30    |28    |22|16  |10  |5 |0 
                // sf|opc=10|100100|N |immr|imms|Rn|Rd
                // e.g: EOR  <Wd|WSP>, <Wn>, #<imm>
                exit(1006);
              end;
            end
            else
            begin
              if (d and $40 = $00) then
              begin
                // 31|30    |28    |22|16  |10  |5 |0 
                // sf|opc=01|100100|N |immr|imms|Rn|Rd
                // e.g: ORR  <Wd|WSP>, <Wn>, #<imm>
                exit(1008);
              end
              else
              begin
                // 31|30    |28    |22|16  |10  |5 |0 
                // sf|opc=11|100100|N |immr|imms|Rn|Rd
                // e.g: ANDS  <Wd>, <Wn>, #<imm>
                exit(1005);
              end;
            end;
          end
          else
          begin
            if (d and $20 = $00) then
            begin
              if (d and $40 = $00) then
              begin
                // 31|30    |28    |21|5    |0 
                // sf|opc=00|100101|hw|imm16|Rd
                // e.g: MOVN  <Wd>, #<imm>{, LSL #<shift>}
                exit(1183);
              end
              else
              begin
                // 31|30    |28    |21|5    |0 
                // sf|opc=10|100101|hw|imm16|Rd
                // e.g: MOVZ  <Wd>, #<imm>{, LSL #<shift>}
                exit(1184);
              end;
            end
            else
            begin
              // 31|30    |28    |21|5    |0 
              // sf|opc=11|100101|hw|imm16|Rd
              // e.g: MOVK  <Wd>, #<imm>{, LSL #<shift>}
              exit(1182);
            end;
          end;
        end
        else
        begin
          if (c and $20 = $00) then
          begin
            if (d and $10 = $00) then
            begin
              if (d and $20 = $00) then
              begin
                if (d and $40 = $00) then
                begin
                  // 31|30    |28   |22   |21 |16|15  |5 |0 
                  // sf|opc=00|01010|shift|N=0|Rm|imm6|Rn|Rd
                  // e.g: AND  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(1010);
                end
                else
                begin
                  // 31|30    |28   |22   |21 |16|15  |5 |0 
                  // sf|opc=10|01010|shift|N=0|Rm|imm6|Rn|Rd
                  // e.g: EOR  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(1015);
                end;
              end
              else
              begin
                if (d and $40 = $00) then
                begin
                  // 31|30    |28   |22   |21 |16|15  |5 |0 
                  // sf|opc=01|01010|shift|N=0|Rm|imm6|Rn|Rd
                  // e.g: ORR  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(1019);
                end
                else
                begin
                  // 31|30    |28   |22   |21 |16|15  |5 |0 
                  // sf|opc=11|01010|shift|N=0|Rm|imm6|Rn|Rd
                  // e.g: ANDS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(1011);
                end;
              end;
            end
            else
            begin
              if (b and $08 = $00) then
              begin
                if (b and $04 = $00) then
                begin
                  if (c and $40 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (d and $20 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30  |29 |28      |16|15            |5 |0 
                          // sf|op=0|S=0|11010000|Rm|opcode2=000000|Rn|Rd
                          // e.g: ADC  <Wd>, <Wn>, <Wm>
                          exit(0001);
                        end
                        else
                        begin
                          // 31|30  |29 |28      |16|15            |5 |0 
                          // sf|op=1|S=0|11010000|Rm|opcode2=000000|Rn|Rd
                          // e.g: SBC  <Wd>, <Wn>, <Wm>
                          exit(0005);
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30  |29 |28      |16|15            |5 |0 
                          // sf|op=0|S=1|11010000|Rm|opcode2=000000|Rn|Rd
                          // e.g: ADCS  <Wd>, <Wn>, <Wm>
                          exit(0002);
                        end
                        else
                        begin
                          // 31|30  |29 |28      |16|15            |5 |0 
                          // sf|op=1|S=1|11010000|Rm|opcode2=000000|Rn|Rd
                          // e.g: SBCS  <Wd>, <Wn>, <Wm>
                          exit(0006);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        // 31|30  |29 |28      |16|12  |11|10  |5 |0 
                        // sf|op=0|S=0|11010100|Rm|cond|0 |o2=0|Rn|Rd
                        // e.g: CSEL  <Wd>, <Wn>, <Wm>, <cond>
                        exit(0659);
                      end
                      else
                      begin
                        // 31|30  |29 |28      |16|12  |11|10  |5 |0 
                        // sf|op=1|S=0|11010100|Rm|cond|0 |o2=0|Rn|Rd
                        // e.g: CSINV  <Wd>, <Wn>, <Wm>, <cond>
                        exit(0663);
                      end;
                    end;
                  end
                  else
                  begin
                    if (c and $80 = $00) then
                    begin
                      if (d and $40 = $00) then
                      begin
                        // 31|30  |29 |28      |16|12  |11|10  |5 |4   |0   
                        // sf|op=0|S=1|11010010|Rm|cond|0 |o2=0|Rn|o3=0|nzcv
                        // e.g: CCMN  <Wn>, <Wm>, #<nzcv>, <cond>
                        exit(0654);
                      end
                      else
                      begin
                        // 31|30  |29 |28      |16|12  |11|10  |5 |4   |0   
                        // sf|op=1|S=1|11010010|Rm|cond|0 |o2=0|Rn|o3=0|nzcv
                        // e.g: CCMP  <Wn>, <Wm>, #<nzcv>, <cond>
                        exit(0655);
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (c and $01 = $00) then
                            begin
                              // 31|30|29 |28      |20           |15              |11            |5 |0 
                              // sf|1 |S=0|11010110|opcode2=00000|opcode[5:2]=0000|opcode[1:0]=00|Rn|Rd
                              // e.g: RBIT  <Wd>, <Wn>
                              exit(0714);
                            end
                            else
                            begin
                              // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                              // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=000|Rn|Rd
                              // e.g: PACIA  <Xd>, <Xn|SP>
                              exit(0710);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                              // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=00|Rn|Rd
                              // e.g: CRC32B  <Wd>, <Wn>, <Wm>
                              exit(0723);
                            end
                            else
                            begin
                              // 31  |30|29 |28      |20           |15         |14         |13             |10 |9       |0 
                              // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=1|opcode[3:1]=000|D=0|Rn=11111|Rd
                              // e.g: XPACI  <Xd>
                              exit(0720);
                            end;
                          end;
                        end
                        else
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31|30  |29 |28      |16|15               |11    |5 |0 
                            // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=00|Rn|Rd
                            // e.g: LSLV  <Wd>, <Wn>, <Wm>
                            exit(0732);
                          end
                          else
                          begin
                            // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                            // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=000|Rn=11111|Rd
                            // e.g: PACIZA  <Xd>
                            exit(0712);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (c and $01 = $00) then
                            begin
                              // 31|30|29 |28      |20           |15               |10  |5 |0 
                              // sf|1 |S=0|11010110|opcode2=00000|opcode[5:1]=00010|op=0|Rn|Rd
                              // e.g: CLZ  <Wd>, <Wn>
                              exit(0705);
                            end
                            else
                            begin
                              // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                              // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=100|Rn|Rd
                              // e.g: AUTIA  <Xd>, <Xn|SP>
                              exit(0700);
                            end;
                          end
                          else
                          begin
                            // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                            // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=00|Rn|Rd
                            // e.g: CRC32CB  <Wd>, <Wn>, <Wm>
                            exit(0724);
                          end;
                        end
                        else
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31  |30  |29 |28      |16|15            |5 |0 
                            // sf=1|op=0|S=0|11010110|Rm|opcode2=001100|Rn|Rd
                            // e.g: PACGA  <Xd>, <Xn>, <Xm|SP>
                            exit(0735);
                          end
                          else
                          begin
                            // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                            // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=100|Rn=11111|Rd
                            // e.g: AUTIZA  <Xd>
                            exit(0702);
                          end;
                        end;
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (c and $40 = $00) then
                  begin
                    if (d and $40 = $00) then
                    begin
                      // 31|30  |29 |28      |16|12  |11|10  |5 |0 
                      // sf|op=0|S=0|11010100|Rm|cond|0 |o2=1|Rn|Rd
                      // e.g: CSINC  <Wd>, <Wn>, <Wm>, <cond>
                      exit(0662);
                    end
                    else
                    begin
                      // 31|30  |29 |28      |16|12  |11|10  |5 |0 
                      // sf|op=1|S=0|11010100|Rm|cond|0 |o2=1|Rn|Rd
                      // e.g: CSNEG  <Wd>, <Wn>, <Wm>, <cond>
                      exit(0664);
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $01 = $00) then
                          begin
                            // 31|30|29 |28      |20           |15              |11    |5 |0 
                            // sf|1 |S=0|11010110|opcode2=00000|opcode[5:2]=0000|opc=01|Rn|Rd
                            // e.g: REV16  <Wd>, <Wn>
                            exit(0716);
                          end
                          else
                          begin
                            // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                            // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=001|Rn|Rd
                            // e.g: PACIB  <Xd>, <Xn|SP>
                            exit(0711);
                          end;
                        end
                        else
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                            // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=01|Rn|Rd
                            // e.g: CRC32H  <Wd>, <Wn>, <Wm>
                            exit(0728);
                          end
                          else
                          begin
                            // 31  |30|29 |28      |20           |15         |14         |13             |10 |9       |0 
                            // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=1|opcode[3:1]=000|D=1|Rn=11111|Rd
                            // e.g: XPACD  <Xd>
                            exit(0719);
                          end;
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30  |29 |28      |16|15               |11    |5 |0 
                          // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=01|Rn|Rd
                          // e.g: LSRV  <Wd>, <Wn>, <Wm>
                          exit(0734);
                        end
                        else
                        begin
                          // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                          // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=001|Rn=11111|Rd
                          // e.g: PACIZB  <Xd>
                          exit(0713);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $01 = $00) then
                          begin
                            // 31|30|29 |28      |20           |15               |10  |5 |0 
                            // sf|1 |S=0|11010110|opcode2=00000|opcode[5:1]=00010|op=1|Rn|Rd
                            // e.g: CLS  <Wd>, <Wn>
                            exit(0704);
                          end
                          else
                          begin
                            // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                            // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=101|Rn|Rd
                            // e.g: AUTIB  <Xd>, <Xn|SP>
                            exit(0701);
                          end;
                        end
                        else
                        begin
                          // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                          // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=01|Rn|Rd
                          // e.g: CRC32CH  <Wd>, <Wn>, <Wm>
                          exit(0725);
                        end;
                      end
                      else
                      begin
                        // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                        // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=101|Rn=11111|Rd
                        // e.g: AUTIZB  <Xd>
                        exit(0703);
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (c and $80 = $00) then
                begin
                  if (d and $40 = $00) then
                  begin
                    // 31|30  |29 |28      |16  |12  |11|10  |5 |4   |0   
                    // sf|op=0|S=1|11010010|imm5|cond|1 |o2=0|Rn|o3=0|nzcv
                    // e.g: CCMN  <Wn>, #<imm>, #<nzcv>, <cond>
                    exit(0652);
                  end
                  else
                  begin
                    // 31|30  |29 |28      |16  |12  |11|10  |5 |4   |0   
                    // sf|op=1|S=1|11010010|imm5|cond|1 |o2=0|Rn|o3=0|nzcv
                    // e.g: CCMP  <Wn>, #<imm>, #<nzcv>, <cond>
                    exit(0653);
                  end;
                end
                else
                begin
                  if (b and $10 = $00) then
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          if (b and $04 = $00) then
                          begin
                            // 31|30  |29 |28      |16|15                |10  |5 |0 
                            // sf|op=0|S=0|11010110|Rm|opcode2<5:1>=00001|o1=0|Rn|Rd
                            // e.g: UDIV  <Wd>, <Wn>, <Wm>
                            exit(0739);
                          end
                          else
                          begin
                            // 31|30  |29 |28      |16|15                |10  |5 |0 
                            // sf|op=0|S=0|11010110|Rm|opcode2<5:1>=00001|o1=1|Rn|Rd
                            // e.g: SDIV  <Wd>, <Wn>, <Wm>
                            exit(0738);
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            // 31  |30|29 |28      |20           |15              |11    |5 |0 
                            // sf=1|1 |S=0|11010110|opcode2=00000|opcode[5:2]=0000|opc=10|Rn|Rd
                            // e.g: REV32  <Xd>, <Xn>
                            exit(0717);
                          end
                          else
                          begin
                            if (b and $04 = $00) then
                            begin
                              // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                              // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=010|Rn|Rd
                              // e.g: PACDA  <Xd>, <Xn|SP>
                              exit(0706);
                            end
                            else
                            begin
                              // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                              // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=011|Rn|Rd
                              // e.g: PACDB  <Xd>, <Xn|SP>
                              exit(0707);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $04 = $00) then
                        begin
                          // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                          // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=10|Rn|Rd
                          // e.g: CRC32W  <Wd>, <Wn>, <Wm>
                          exit(0729);
                        end
                        else
                        begin
                          // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                          // sf=1|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=0|sz=11|Rn|Rd
                          // e.g: CRC32X  <Wd>, <Wn>, <Xm>
                          exit(0730);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $04 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30  |29 |28      |16|15               |11    |5 |0 
                          // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=10|Rn|Rd
                          // e.g: ASRV  <Wd>, <Wn>, <Wm>
                          exit(0722);
                        end
                        else
                        begin
                          // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                          // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=010|Rn=11111|Rd
                          // e.g: PACDZA  <Xd>
                          exit(0708);
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30  |29 |28      |16|15               |11    |5 |0 
                          // sf|op=0|S=0|11010110|Rm|opcode2<5:2>=0010|op2=11|Rn|Rd
                          // e.g: RORV  <Wd>, <Wn>, <Wm>
                          exit(0737);
                        end
                        else
                        begin
                          // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                          // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=011|Rn=11111|Rd
                          // e.g: PACDZB  <Xd>
                          exit(0709);
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $04 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                          // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=110|Rn|Rd
                          // e.g: AUTDA  <Xd>, <Xn|SP>
                          exit(0696);
                        end
                        else
                        begin
                          // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                          // sf=0|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=10|Rn|Rd
                          // e.g: CRC32CW  <Wd>, <Wn>, <Wm>
                          exit(0726);
                        end;
                      end
                      else
                      begin
                        // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                        // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=110|Rn=11111|Rd
                        // e.g: AUTDZA  <Xd>
                        exit(0698);
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31  |30|29 |28      |20           |15         |14         |13 |12             |5 |0 
                          // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=0|opcode[2:0]=111|Rn|Rd
                          // e.g: AUTDB  <Xd>, <Xn|SP>
                          exit(0697);
                        end
                        else
                        begin
                          // 31  |30  |29 |28      |16|15              |12 |11   |5 |0 
                          // sf=1|op=0|S=0|11010110|Rm|opcode2<5:3>=010|C=1|sz=11|Rn|Rd
                          // e.g: CRC32CX  <Wd>, <Wn>, <Xm>
                          exit(0727);
                        end;
                      end
                      else
                      begin
                        // 31  |30|29 |28      |20           |15         |14         |13 |12             |9       |0 
                        // sf=1|1 |S=0|11010110|opcode2=00001|opcode[5]=0|opcode[4]=0|Z=1|opcode[2:0]=111|Rn=11111|Rd
                        // e.g: AUTDZB  <Xd>
                        exit(0699);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end
          else
          begin
            if (d and $20 = $00) then
            begin
              if (d and $40 = $00) then
              begin
                // 31|30    |28   |22   |21 |16|15  |5 |0 
                // sf|opc=00|01010|shift|N=1|Rm|imm6|Rn|Rd
                // e.g: BIC  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                exit(1012);
              end
              else
              begin
                // 31|30    |28   |22   |21 |16|15  |5 |0 
                // sf|opc=10|01010|shift|N=1|Rm|imm6|Rn|Rd
                // e.g: EON  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                exit(1014);
              end;
            end
            else
            begin
              if (d and $40 = $00) then
              begin
                // 31|30    |28   |22   |21 |16|15  |5 |0 
                // sf|opc=01|01010|shift|N=1|Rm|imm6|Rn|Rd
                // e.g: ORN  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                exit(1018);
              end
              else
              begin
                // 31|30    |28   |22   |21 |16|15  |5 |0 
                // sf|opc=11|01010|shift|N=1|Rm|imm6|Rn|Rd
                // e.g: BICS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                exit(1013);
              end;
            end;
          end;
        end;
      end;
    end
    else
    begin
      if (d and $02 = $00) then
      begin
        if (d and $08 = $00) then
        begin
          if (d and $20 = $00) then
          begin
            if (d and $40 = $00) then
            begin
              // 31|30  |29 |28   |22   |10   |5 |0 
              // sf|op=0|S=0|10001|shift|imm12|Rn|Rd
              // e.g: ADD  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}
              exit(0013);
            end
            else
            begin
              // 31|30  |29 |28   |22   |10   |5 |0 
              // sf|op=1|S=0|10001|shift|imm12|Rn|Rd
              // e.g: SUB  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}
              exit(0018);
            end;
          end
          else
          begin
            if (d and $40 = $00) then
            begin
              // 31|30  |29 |28   |22   |10   |5 |0 
              // sf|op=0|S=1|10001|shift|imm12|Rn|Rd
              // e.g: ADDS  <Wd>, <Wn|WSP>, #<imm>{, <shift>}
              exit(0014);
            end
            else
            begin
              // 31|30  |29 |28   |22   |10   |5 |0 
              // sf|op=1|S=1|10001|shift|imm12|Rn|Rd
              // e.g: SUBS  <Wd>, <Wn|WSP>, #<imm>{, <shift>}
              exit(0019);
            end;
          end;
        end
        else
        begin
          if (c and $80 = $00) then
          begin
            if (c and $40 = $00) then
            begin
              if (d and $10 = $00) then
              begin
                // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                // opc=x0|101|V=0|010|L=0|imm7|Rt2|Rn|Rt
                // e.g: STP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
                exit(0988);
              end
              else
              begin
                if (d and $80 = $00) then
                begin
                  if (d and $40 = $00) then
                  begin
                    // 31     |29 |26 |25|23    |10   |9 |0 
                    // size=00|111|V=0|01|opc=00|imm12|Rn|Rt
                    // e.g: STRB  <Wt>, [<Xn|SP>{, #<pimm>}]
                    exit(0902);
                  end
                  else
                  begin
                    // 31     |29 |26 |25|23    |10   |9 |0 
                    // size=01|111|V=0|01|opc=00|imm12|Rn|Rt
                    // e.g: STRH  <Wt>, [<Xn|SP>{, #<pimm>}]
                    exit(0903);
                  end;
                end
                else
                begin
                  // 31     |29 |26 |25|23    |10   |9 |0 
                  // size=1x|111|V=0|01|opc=00|imm12|Rn|Rt
                  // e.g: STR  <Wt>, [<Xn|SP>{, #<pimm>}]
                  exit(0900);
                end;
              end;
            end
            else
            begin
              if (d and $10 = $00) then
              begin
                if (d and $40 = $00) then
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=x0|101|V=0|010|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDP  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]
                  exit(0985);
                end
                else
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=01|101|V=0|010|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDPSW  <Xt1>, <Xt2>, [<Xn|SP>{, #<imm>}]
                  exit(0987);
                end;
              end
              else
              begin
                if (d and $80 = $00) then
                begin
                  if (d and $40 = $00) then
                  begin
                    // 31     |29 |26 |25|23    |10   |9 |0 
                    // size=00|111|V=0|01|opc=01|imm12|Rn|Rt
                    // e.g: LDRB  <Wt>, [<Xn|SP>{, #<pimm>}]
                    exit(0894);
                  end
                  else
                  begin
                    // 31     |29 |26 |25|23    |10   |9 |0 
                    // size=01|111|V=0|01|opc=01|imm12|Rn|Rt
                    // e.g: LDRH  <Wt>, [<Xn|SP>{, #<pimm>}]
                    exit(0895);
                  end;
                end
                else
                begin
                  // 31     |29 |26 |25|23    |10   |9 |0 
                  // size=1x|111|V=0|01|opc=01|imm12|Rn|Rt
                  // e.g: LDR  <Wt>, [<Xn|SP>{, #<pimm>}]
                  exit(0892);
                end;
              end;
            end;
          end
          else
          begin
            if (d and $10 = $00) then
            begin
              if (c and $40 = $00) then
              begin
                // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                // opc=x0|101|V=0|011|L=0|imm7|Rt2|Rn|Rt
                // e.g: STP  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!
                exit(0998);
              end
              else
              begin
                if (d and $40 = $00) then
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=x0|101|V=0|011|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDP  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!
                  exit(0995);
                end
                else
                begin
                  // 31    |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc=01|101|V=0|011|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDPSW  <Xt1>, <Xt2>, [<Xn|SP>, #<imm>]!
                  exit(0997);
                end;
              end;
            end
            else
            begin
              if (d and $40 = $00) then
              begin
                if (d and $80 = $00) then
                begin
                  // 31     |29 |26 |25|23    |10   |9 |0 
                  // size=00|111|V=0|01|opc=1x|imm12|Rn|Rt
                  // e.g: LDRSB  <Wt>, [<Xn|SP>{, #<pimm>}]
                  exit(0896);
                end
                else
                begin
                  // 31     |29 |26 |25|23    |10   |9 |0 
                  // size=10|111|V=0|01|opc=10|imm12|Rn|Rt
                  // e.g: LDRSW  <Xt>, [<Xn|SP>{, #<pimm>}]
                  exit(0898);
                end;
              end
              else
              begin
                if (d and $80 = $00) then
                begin
                  // 31     |29 |26 |25|23    |10   |9 |0 
                  // size=01|111|V=0|01|opc=1x|imm12|Rn|Rt
                  // e.g: LDRSH  <Wt>, [<Xn|SP>{, #<pimm>}]
                  exit(0897);
                end
                else
                begin
                  // 31     |29 |26 |25|23    |10   |9 |0 
                  // size=11|111|V=0|01|opc=10|imm12|Rn|Rt
                  // e.g: PRFM  <prfop>, [<Xn|SP>{, #<pimm>}]
                  exit(0899);
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        if (d and $08 = $00) then
        begin
          if (c and $80 = $00) then
          begin
            if (d and $20 = $00) then
            begin
              if (d and $40 = $00) then
              begin
                // 31|30    |28    |22|16  |10  |5 |0 
                // sf|opc=00|100110|N |immr|imms|Rn|Rd
                // e.g: SBFM  <Wd>, <Wn>, #<immr>, #<imms>
                exit(0620);
              end
              else
              begin
                // 31|30    |28    |22|16  |10  |5 |0 
                // sf|opc=10|100110|N |immr|imms|Rn|Rd
                // e.g: UBFM  <Wd>, <Wn>, #<immr>, #<imms>
                exit(0626);
              end;
            end
            else
            begin
              // 31|30    |28    |22|16  |10  |5 |0 
              // sf|opc=01|100110|N |immr|imms|Rn|Rd
              // e.g: BFM  <Wd>, <Wn>, #<immr>, #<imms>
              exit(0615);
            end;
          end
          else
          begin
            // 31|30     |28    |22|21  |16|10  |5 |0 
            // sf|op21=00|100111|N |o0=0|Rm|imms|Rn|Rd
            // e.g: EXTR  <Wd>, <Wn>, <Wm>, #<lsb>
            exit(0762);
          end;
        end
        else
        begin
          if (c and $20 = $00) then
          begin
            if (d and $10 = $00) then
            begin
              if (d and $20 = $00) then
              begin
                if (d and $40 = $00) then
                begin
                  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
                  // sf|op=0|S=0|01011|shift|0 |Rm|imm6|Rn|Rd
                  // e.g: ADD  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(0020);
                end
                else
                begin
                  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
                  // sf|op=1|S=0|01011|shift|0 |Rm|imm6|Rn|Rd
                  // e.g: SUB  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(0026);
                end;
              end
              else
              begin
                if (d and $40 = $00) then
                begin
                  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
                  // sf|op=0|S=1|01011|shift|0 |Rm|imm6|Rn|Rd
                  // e.g: ADDS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(0021);
                end
                else
                begin
                  // 31|30  |29 |28   |22   |21|16|15  |5 |0 
                  // sf|op=1|S=1|01011|shift|0 |Rm|imm6|Rn|Rd
                  // e.g: SUBS  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}
                  exit(0027);
                end;
              end;
            end
            else
            begin
              if (b and $80 = $00) then
              begin
                if (c and $40 = $00) then
                begin
                  // 31|30     |28   |23      |16|15  |10|5 |0 
                  // sf|op54=00|11011|op31=000|Rm|o0=0|Ra|Rn|Rd
                  // e.g: MADD  <Wd>, <Wn>, <Wm>, <Wa>
                  exit(0740);
                end
                else
                begin
                  if (c and $80 = $00) then
                  begin
                    // 31  |30     |28   |23 |22|16|15  |14      |5 |0 
                    // sf=1|op54=00|11011|U=0|10|Rm|o0=0|Ra=11111|Rn|Rd
                    // e.g: SMULH  <Xd>, <Xn>, <Xm>
                    exit(0747);
                  end
                  else
                  begin
                    // 31  |30     |28   |23 |22|16|15  |14      |5 |0 
                    // sf=1|op54=00|11011|U=1|10|Rm|o0=0|Ra=11111|Rn|Rd
                    // e.g: UMULH  <Xd>, <Xn>, <Xm>
                    exit(0752);
                  end;
                end;
              end
              else
              begin
                // 31|30     |28   |23      |16|15  |10|5 |0 
                // sf|op54=00|11011|op31=000|Rm|o0=1|Ra|Rn|Rd
                // e.g: MSUB  <Wd>, <Wn>, <Wm>, <Wa>
                exit(0742);
              end;
            end;
          end
          else
          begin
            if (c and $80 = $00) then
            begin
              if (d and $10 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (d and $40 = $00) then
                  begin
                    // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
                    // sf|op=0|S=0|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
                    // e.g: ADD  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
                    exit(0007);
                  end
                  else
                  begin
                    // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
                    // sf|op=1|S=0|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
                    // e.g: SUB  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
                    exit(0011);
                  end;
                end
                else
                begin
                  if (d and $40 = $00) then
                  begin
                    // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
                    // sf|op=0|S=1|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
                    // e.g: ADDS  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
                    exit(0008);
                  end
                  else
                  begin
                    // 31|30  |29 |28   |23    |21|16|13    |10  |5 |0 
                    // sf|op=1|S=1|01011|opt=00|1 |Rm|option|imm3|Rn|Rd
                    // e.g: SUBS  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}
                    exit(0012);
                  end;
                end;
              end
              else
              begin
                if (b and $80 = $00) then
                begin
                  // 31  |30     |28   |23 |22|16|15  |10|5 |0 
                  // sf=1|op54=00|11011|U=0|01|Rm|o0=0|Ra|Rn|Rd
                  // e.g: SMADDL  <Xd>, <Wn>, <Wm>, <Xa>
                  exit(0744);
                end
                else
                begin
                  // 31  |30     |28   |23 |22|16|15  |10|5 |0 
                  // sf=1|op54=00|11011|U=0|01|Rm|o0=1|Ra|Rn|Rd
                  // e.g: SMSUBL  <Xd>, <Wn>, <Wm>, <Xa>
                  exit(0746);
                end;
              end;
            end
            else
            begin
              if (b and $80 = $00) then
              begin
                // 31  |30     |28   |23 |22|16|15  |10|5 |0 
                // sf=1|op54=00|11011|U=1|01|Rm|o0=0|Ra|Rn|Rd
                // e.g: UMADDL  <Xd>, <Wn>, <Wm>, <Xa>
                exit(0749);
              end
              else
              begin
                // 31  |30     |28   |23 |22|16|15  |10|5 |0 
                // sf=1|op54=00|11011|U=1|01|Rm|o0=1|Ra|Rn|Rd
                // e.g: UMSUBL  <Xd>, <Wn>, <Wm>, <Xa>
                exit(0751);
              end;
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if (d and $08 = $00) then
    begin
      if (d and $20 = $00) then
      begin
        if (d and $40 = $00) then
        begin
          if (d and $80 = $00) then
          begin
            // 31  |30   |0    
            // op=0|00101|imm26
            // e.g: B  <label>
            exit(0630);
          end
          else
          begin
            // 31  |30   |0    
            // op=1|00101|imm26
            // e.g: BL  <label>
            exit(0631);
          end;
        end
        else
        begin
          if (d and $01 = $00) then
          begin
            if (a and $10 = $00) then
            begin
              if (d and $02 = $00) then
              begin
                if (d and $80 = $00) then
                begin
                  // 31     |24  |5    |4   |3   
                  // 0101010|o1=0|imm19|o0=0|cond
                  // e.g: B.<cond>  <label>
                  exit(0651);
                end
                else
                begin
                  if (a and $01 = $00) then
                  begin
                    if (a and $02 = $00) then
                    begin
                      if (c and $20 = $00) then
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=010|imm16|op2=000|LL=00
                        // e.g: HLT  #<imm>
                        exit(0758);
                      end
                      else
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=001|imm16|op2=000|LL=00
                        // e.g: BRK  #<imm>
                        exit(0754);
                      end;
                    end
                    else
                    begin
                      if (c and $20 = $00) then
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=000|imm16|op2=000|LL=10
                        // e.g: HVC  #<imm>
                        exit(0759);
                      end
                      else
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=101|imm16|op2=000|LL=10
                        // e.g: DCPS2  {#<imm>}
                        exit(0756);
                      end;
                    end;
                  end
                  else
                  begin
                    if (a and $02 = $00) then
                    begin
                      if (c and $20 = $00) then
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=000|imm16|op2=000|LL=01
                        // e.g: SVC  #<imm>
                        exit(0761);
                      end
                      else
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=101|imm16|op2=000|LL=01
                        // e.g: DCPS1  {#<imm>}
                        exit(0755);
                      end;
                    end
                    else
                    begin
                      if (c and $20 = $00) then
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=000|imm16|op2=000|LL=11
                        // e.g: SMC  #<imm>
                        exit(0760);
                      end
                      else
                      begin
                        // 31      |23     |5    |4      |1    
                        // 11010100|opc=101|imm16|op2=000|LL=11
                        // e.g: DCPS3  {#<imm>}
                        exit(0757);
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (c and $20 = $00) then
                begin
                  if (c and $40 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                      // 1101011|Z=0|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=0|M=0|Rn|Rm=00000
                      // e.g: BR  <Xn>
                      exit(0637);
                    end
                    else
                    begin
                      // 31     |24      |23          |20       |15           |11 |10 |9       |4        
                      // 1101011|opc[3]=0|opc[2:0]=100|op2=11111|op3[5:2]=0000|A=0|M=0|Rn=11111|op4=00000
                      // e.g: ERET
                      exit(0643);
                    end;
                  end
                  else
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                    // 1101011|Z=0|opc[2:1]=0|op=10|op2=11111|op3[5:2]=0000|A=0|M=0|Rn|Rm=00000
                    // e.g: RET  {<Xn>}
                    exit(0646);
                  end;
                end
                else
                begin
                  if (c and $80 = $00) then
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                    // 1101011|Z=0|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=0|M=0|Rn|Rm=00000
                    // e.g: BLR  <Xn>
                    exit(0632);
                  end
                  else
                  begin
                    // 31     |24      |20       |15        |9       |4        
                    // 1101011|opc=0101|op2=11111|op3=000000|Rt=11111|op4=00000
                    // e.g: DRPS
                    exit(0642);
                  end;
                end;
              end;
            end
            else
            begin
              if (b and $04 = $00) then
              begin
                if (c and $20 = $00) then
                begin
                  if (c and $40 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                      // 1101011|Z=0|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm=11111
                      // e.g: BRAAZ  <Xn>
                      exit(0639);
                    end
                    else
                    begin
                      // 31     |24      |23          |20       |15           |11 |10 |9       |4        
                      // 1101011|opc[3]=0|opc[2:0]=100|op2=11111|op3[5:2]=0000|A=1|M=0|Rn=11111|op4=11111
                      // e.g: ERETAA
                      exit(0644);
                    end;
                  end
                  else
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |9       |4       
                    // 1101011|Z=0|opc[2:1]=0|op=10|op2=11111|op3[5:2]=0000|A=1|M=0|Rn=11111|Rm=11111
                    // e.g: RETAA
                    exit(0647);
                  end;
                end
                else
                begin
                  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                  // 1101011|Z=0|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm=11111
                  // e.g: BLRAAZ  <Xn>
                  exit(0634);
                end;
              end
              else
              begin
                if (c and $20 = $00) then
                begin
                  if (c and $40 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                      // 1101011|Z=0|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm=11111
                      // e.g: BRABZ  <Xn>
                      exit(0641);
                    end
                    else
                    begin
                      // 31     |24      |23          |20       |15           |11 |10 |9       |4        
                      // 1101011|opc[3]=0|opc[2:0]=100|op2=11111|op3[5:2]=0000|A=1|M=1|Rn=11111|op4=11111
                      // e.g: ERETAB
                      exit(0645);
                    end;
                  end
                  else
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |9       |4       
                    // 1101011|Z=0|opc[2:1]=0|op=10|op2=11111|op3[5:2]=0000|A=1|M=1|Rn=11111|Rm=11111
                    // e.g: RETAB
                    exit(0648);
                  end;
                end
                else
                begin
                  // 31     |24 |23        |22   |20       |15           |11 |10 |5 |4       
                  // 1101011|Z=0|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm=11111
                  // e.g: BLRABZ  <Xn>
                  exit(0636);
                end;
              end;
            end;
          end
          else
          begin
            if (c and $10 = $00) then
            begin
              if (c and $08 = $00) then
              begin
                if (b and $10 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    // 31        |21 |20    |16 |15      |8  |5  |4        
                    // 1101010100|L=0|op0=00|op1|CRn=0100|CRm|op2|Rt =11111
                    // e.g: MSR  <pstatefield>, #<imm>
                    exit(1203);
                  end
                  else
                  begin
                    // 31        |21 |20    |18     |15      |11      |7      |4       
                    // 1101010100|L=0|op0=00|op1=011|CRn=0010|CRm=0001|op2=100|Rt=11111
                    // e.g: AUTIA1716
                    exit(1188);
                  end;
                end
                else
                begin
                  if (a and $20 = $00) then
                  begin
                    if (a and $40 = $00) then
                    begin
                      // 31        |21 |20    |18     |15      |8  |7|6     |4       
                      // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|1|opc=00|Rt=11111
                      // e.g: DSB  <barrier>
                      exit(1197);
                    end
                    else
                    begin
                      if (a and $80 = $00) then
                      begin
                        // 31        |21 |20    |18     |15      |8  |7      |4       
                        // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|op2=010|Rt=11111
                        // e.g: CLREX  {#<imm>}
                        exit(1194);
                      end
                      else
                      begin
                        // 31        |21 |20    |18     |15      |8  |7|6     |4       
                        // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|1|opc=10|Rt=11111
                        // e.g: ISB  {<barrier>}
                        exit(1201);
                      end;
                    end;
                  end
                  else
                  begin
                    // 31        |21 |20    |18     |15      |8  |7|6     |4       
                    // 1101010100|L=0|op0=00|op1=011|CRn=0011|CRm|1|opc=01|Rt=11111
                    // e.g: DMB  <barrier>
                    exit(1196);
                  end;
                end;
              end
              else
              begin
                if (c and $20 = $00) then
                begin
                  // 31        |21 |20    |16 |12 |8  |5  |0 
                  // 1101010100|L=0|op0=01|op1|CRn|CRm|op2|Rt
                  // e.g: SYS  #<op1>, <Cn>, <Cm>, #<op2>{, <Xt>}
                  exit(1215);
                end
                else
                begin
                  // 31        |21 |20    |16 |12 |8  |5  |0 
                  // 1101010100|L=1|op0=01|op1|CRn|CRm|op2|Rt
                  // e.g: SYSL  <Xt>, #<op1>, <Cn>, <Cm>, #<op2>
                  exit(1216);
                end;
              end;
            end
            else
            begin
              if (c and $20 = $00) then
              begin
                if (d and $02 = $00) then
                begin
                  // 31        |21 |20|19|16 |12 |8  |5  |0 
                  // 1101010100|L=0|1 |o0|op1|CRn|CRm|op2|Rt
                  // e.g: MSR  <systemreg>, <Xt>
                  exit(1204);
                end
                else
                begin
                  if (b and $04 = $00) then
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
                    // 1101011|Z=1|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm
                    // e.g: BRAA  <Xn>, <Xm|SP>
                    exit(0638);
                  end
                  else
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
                    // 1101011|Z=1|opc[2:1]=0|op=00|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm
                    // e.g: BRAB  <Xn>, <Xm|SP>
                    exit(0640);
                  end;
                end;
              end
              else
              begin
                if (d and $02 = $00) then
                begin
                  // 31        |21 |20|19|16 |12 |8  |5  |0 
                  // 1101010100|L=1|1 |o0|op1|CRn|CRm|op2|Rt
                  // e.g: MRS  <Xt>, <systemreg>
                  exit(1202);
                end
                else
                begin
                  if (b and $04 = $00) then
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
                    // 1101011|Z=1|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=0|Rn|Rm
                    // e.g: BLRAA  <Xn>, <Xm|SP>
                    exit(0633);
                  end
                  else
                  begin
                    // 31     |24 |23        |22   |20       |15           |11 |10 |5 |0 
                    // 1101011|Z=1|opc[2:1]=0|op=01|op2=11111|op3[5:2]=0000|A=1|M=1|Rn|Rm
                    // e.g: BLRAB  <Xn>, <Xm|SP>
                    exit(0635);
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        if (d and $01 = $00) then
        begin
          if (d and $02 = $00) then
          begin
            // 31|30    |24  |5    |0 
            // sf|011010|op=0|imm19|Rt
            // e.g: CBZ  <Wt>, <label>
            exit(0650);
          end
          else
          begin
            // 31|30    |24  |19 |5    |0 
            // b5|011011|op=0|b40|imm14|Rt
            // e.g: TBZ  <R><t>, #<imm>, <label>
            exit(1223);
          end;
        end
        else
        begin
          if (d and $02 = $00) then
          begin
            // 31|30    |24  |5    |0 
            // sf|011010|op=1|imm19|Rt
            // e.g: CBNZ  <Wt>, <label>
            exit(0649);
          end
          else
          begin
            // 31|30    |24  |19 |5    |0 
            // b5|011011|op=1|b40|imm14|Rt
            // e.g: TBNZ  <R><t>, #<imm>, <label>
            exit(1222);
          end;
        end;
      end;
    end
    else
    begin
      if (d and $01 = $00) then
      begin
        if (d and $02 = $00) then
        begin
          if (d and $10 = $00) then
          begin
            if (c and $40 = $00) then
            begin
              if (c and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (b and $80 = $00) then
                      begin
                        // 31|30|29     |22 |21    |15         |11  |9 |0 
                        // 0 |Q |0011000|L=0|000000|opcode=0000|size|Rn|Rt
                        // e.g: ST4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]
                        exit(0440);
                      end
                      else
                      begin
                        // 31|30|29     |22 |21    |15         |11  |9 |0 
                        // 0 |Q |0011000|L=0|000000|opcode=1000|size|Rn|Rt
                        // e.g: ST2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]
                        exit(0438);
                      end;
                    end
                    else
                    begin
                      // 31|30|29     |22 |21    |15         |11  |9 |0 
                      // 0 |Q |0011000|L=0|000000|opcode=0100|size|Rn|Rt
                      // e.g: ST3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]
                      exit(0439);
                    end;
                  end
                  else
                  begin
                    // 31|30|29     |22 |21    |15         |11  |9 |0 
                    // 0 |Q |0011000|L=0|000000|opcode=xx1x|size|Rn|Rt
                    // e.g: ST1  { <Vt>.<T> }, [<Xn|SP>]
                    exit(0437);
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|000|L=0|imm7|Rt2|Rn|Rt
                  // e.g: STNP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
                  exit(0984);
                end;
              end
              else
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (b and $80 = $00) then
                      begin
                        // 31|30|29     |22 |21|20|15         |11  |9 |0 
                        // 0 |Q |0011001|L=0|0 |Rm|opcode=0000|size|Rn|Rt
                        // e.g: ST4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>
                        exit(0448);
                      end
                      else
                      begin
                        // 31|30|29     |22 |21|20|15         |11  |9 |0 
                        // 0 |Q |0011001|L=0|0 |Rm|opcode=1000|size|Rn|Rt
                        // e.g: ST2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>
                        exit(0446);
                      end;
                    end
                    else
                    begin
                      // 31|30|29     |22 |21|20|15         |11  |9 |0 
                      // 0 |Q |0011001|L=0|0 |Rm|opcode=0100|size|Rn|Rt
                      // e.g: ST3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>
                      exit(0447);
                    end;
                  end
                  else
                  begin
                    // 31|30|29     |22 |21|20|15         |11  |9 |0 
                    // 0 |Q |0011001|L=0|0 |Rm|opcode=xx1x|size|Rn|Rt
                    // e.g: ST1  { <Vt>.<T> }, [<Xn|SP>], <imm>
                    exit(0445);
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|001|L=0|imm7|Rt2|Rn|Rt
                  // e.g: STP  <St1>, <St2>, [<Xn|SP>], #<imm>
                  exit(0994);
                end;
              end;
            end
            else
            begin
              if (c and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (b and $80 = $00) then
                      begin
                        // 31|30|29     |22 |21    |15         |11  |9 |0 
                        // 0 |Q |0011000|L=1|000000|opcode=0000|size|Rn|Rt
                        // e.g: LD4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]
                        exit(0436);
                      end
                      else
                      begin
                        // 31|30|29     |22 |21    |15         |11  |9 |0 
                        // 0 |Q |0011000|L=1|000000|opcode=1000|size|Rn|Rt
                        // e.g: LD2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]
                        exit(0434);
                      end;
                    end
                    else
                    begin
                      // 31|30|29     |22 |21    |15         |11  |9 |0 
                      // 0 |Q |0011000|L=1|000000|opcode=0100|size|Rn|Rt
                      // e.g: LD3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]
                      exit(0435);
                    end;
                  end
                  else
                  begin
                    // 31|30|29     |22 |21    |15         |11  |9 |0 
                    // 0 |Q |0011000|L=1|000000|opcode=xx1x|size|Rn|Rt
                    // e.g: LD1  { <Vt>.<T> }, [<Xn|SP>]
                    exit(0433);
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|000|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDNP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
                  exit(0982);
                end;
              end
              else
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (b and $80 = $00) then
                      begin
                        // 31|30|29     |22 |21|20|15         |11  |9 |0 
                        // 0 |Q |0011001|L=1|0 |Rm|opcode=0000|size|Rn|Rt
                        // e.g: LD4  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>
                        exit(0444);
                      end
                      else
                      begin
                        // 31|30|29     |22 |21|20|15         |11  |9 |0 
                        // 0 |Q |0011001|L=1|0 |Rm|opcode=1000|size|Rn|Rt
                        // e.g: LD2  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>
                        exit(0442);
                      end;
                    end
                    else
                    begin
                      // 31|30|29     |22 |21|20|15         |11  |9 |0 
                      // 0 |Q |0011001|L=1|0 |Rm|opcode=0100|size|Rn|Rt
                      // e.g: LD3  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>
                      exit(0443);
                    end;
                  end
                  else
                  begin
                    // 31|30|29     |22 |21|20|15         |11  |9 |0 
                    // 0 |Q |0011001|L=1|0 |Rm|opcode=xx1x|size|Rn|Rt
                    // e.g: LD1  { <Vt>.<T> }, [<Xn|SP>], <imm>
                    exit(0441);
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|001|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDP  <St1>, <St2>, [<Xn|SP>], #<imm>
                  exit(0991);
                end;
              end;
            end;
          end
          else
          begin
            if (d and $20 = $00) then
            begin
              // 31 |29 |26 |25|5    |0 
              // opc|011|V=1|00|imm19|Rt
              // e.g: LDR  <St>, <label>
              exit(1001);
            end
            else
            begin
              if (b and $04 = $00) then
              begin
                if (b and $08 = $00) then
                begin
                  if (c and $40 = $00) then
                  begin
                    // 31  |29 |26 |25|23    |21|12  |11|9 |0 
                    // size|111|V=1|00|opc=x0|0 |imm9|00|Rn|Rt
                    // e.g: STUR  <Bt>, [<Xn|SP>{, #<simm>}]
                    exit(0934);
                  end
                  else
                  begin
                    // 31  |29 |26 |25|23    |21|12  |11|9 |0 
                    // size|111|V=1|00|opc=x1|0 |imm9|00|Rn|Rt
                    // e.g: LDUR  <Bt>, [<Xn|SP>{, #<simm>}]
                    exit(0926);
                  end;
                end
                else
                begin
                  if (c and $40 = $00) then
                  begin
                    // 31  |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                    // size|111|V=1|00|opc=x0|1 |Rm|option|S |10|Rn|Rt
                    // e.g: STR  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
                    exit(0913);
                  end
                  else
                  begin
                    // 31  |29 |26 |25|23    |21|20|15    |12|11|9 |0 
                    // size|111|V=1|00|opc=x1|1 |Rm|option|S |10|Rn|Rt
                    // e.g: LDR  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]
                    exit(0905);
                  end;
                end;
              end
              else
              begin
                if (b and $08 = $00) then
                begin
                  if (c and $40 = $00) then
                  begin
                    // 31  |29 |26 |25|23    |21|12  |11|9 |0 
                    // size|111|V=1|00|opc=x0|0 |imm9|01|Rn|Rt
                    // e.g: STR  <Bt>, [<Xn|SP>], #<simm>
                    exit(0876);
                  end
                  else
                  begin
                    // 31  |29 |26 |25|23    |21|12  |11|9 |0 
                    // size|111|V=1|00|opc=x1|0 |imm9|01|Rn|Rt
                    // e.g: LDR  <Bt>, [<Xn|SP>], #<simm>
                    exit(0869);
                  end;
                end
                else
                begin
                  if (c and $40 = $00) then
                  begin
                    // 31  |29 |26 |25|23    |21|12  |11|9 |0 
                    // size|111|V=1|00|opc=x0|0 |imm9|11|Rn|Rt
                    // e.g: STR  <Bt>, [<Xn|SP>, #<simm>]!
                    exit(0887);
                  end
                  else
                  begin
                    // 31  |29 |26 |25|23    |21|12  |11|9 |0 
                    // size|111|V=1|00|opc=x1|0 |imm9|11|Rn|Rt
                    // e.g: LDR  <Bt>, [<Xn|SP>, #<simm>]!
                    exit(0880);
                  end;
                end;
              end;
            end;
          end;
        end
        else
        begin
          if (c and $20 = $00) then
          begin
            if (d and $10 = $00) then
            begin
              if (d and $20 = $00) then
              begin
                if (d and $80 = $00) then
                begin
                  if (b and $04 = $00) then
                  begin
                    if (b and $08 = $00) then
                    begin
                      if (b and $10 = $00) then
                      begin
                        // 31|30|29    |23    |21|16|15|14 |12  |11|5 |0 
                        // 0 |Q |001110|op2=00|0 |Rm|0 |len|op=0|00|Rn|Rd
                        // e.g: TBL  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>
                        exit(0413);
                      end
                      else
                      begin
                        // 31|30|29    |23    |21|16|15|14 |12  |11|5 |0 
                        // 0 |Q |001110|op2=00|0 |Rm|0 |len|op=1|00|Rn|Rd
                        // e.g: TBX  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>
                        exit(0414);
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
                          // 0 |Q |001110|size|0 |Rm|0 |op=0|10|10|Rn|Rd
                          // e.g: TRN1  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                          exit(0257);
                        end
                        else
                        begin
                          // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
                          // 0 |Q |001110|size|0 |Rm|0 |op=1|10|10|Rn|Rd
                          // e.g: TRN2  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                          exit(0258);
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
                            // 0 |Q |001110|size|0 |Rm|0 |op=0|01|10|Rn|Rd
                            // e.g: UZP1  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0259);
                          end
                          else
                          begin
                            // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
                            // 0 |Q |001110|size|0 |Rm|0 |op=1|01|10|Rn|Rd
                            // e.g: UZP2  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0260);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
                            // 0 |Q |001110|size|0 |Rm|0 |op=0|11|10|Rn|Rd
                            // e.g: ZIP1  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0261);
                          end
                          else
                          begin
                            // 31|30|29    |23  |21|16|15|14  |13|11|5 |0 
                            // 0 |Q |001110|size|0 |Rm|0 |op=1|11|10|Rn|Rd
                            // e.g: ZIP2  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0262);
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $08 = $00) then
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            // 31|30|29  |28      |20  |15|14       |10|5 |0 
                            // 0 |Q |op=0|01110000|imm5|0 |imm4=0000|1 |Rn|Rd
                            // e.g: DUP  <Vd>.<T>, <Vn>.<Ts>[<index>]
                            exit(0148);
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
                              // 0 |Q |U=0|01110|a=0|10|Rm|00|Op3=000|1 |Rn|Rd
                              // e.g: FMAXNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0357);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
                              // 0 |Q |U=0|01110|a=1|10|Rm|00|Op3=000|1 |Rn|Rd
                              // e.g: FMINNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0361);
                            end;
                          end;
                        end
                        else
                        begin
                          // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                          // 0 |Q |U=0|01110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
                          // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                          exit(0352);
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $80 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=010|1 |Rn|Rd
                              // e.g: FADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0350);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=0|01110|a=1|10|Rm|00|opcode=010|1 |Rn|Rd
                              // e.g: FSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0370);
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15|14         |10|5 |0 
                            // 0 |Q |U=0|01110|size|0 |Rm|1 |opcode=0010|1 |Rn|Rd
                            // e.g: SDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                            exit(0343);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
                            // 0 |Q |U=0|01110|o1=0|10|Rm|00|opcode=110|1 |Rn|Rd
                            // e.g: FMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0356);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
                            // 0 |Q |U=0|01110|o1=1|10|Rm|00|opcode=110|1 |Rn|Rd
                            // e.g: FMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0360);
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            // 31|30|29  |28      |20  |15|14       |10|5 |0 
                            // 0 |Q |op=0|01110000|imm5|0 |imm4=0001|1 |Rn|Rd
                            // e.g: DUP  <Vd>.<T>, <R><n>
                            exit(0149);
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=001|1 |Rn|Rd
                              // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0364);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=0|01110|a=1|10|Rm|00|opcode=001|1 |Rn|Rd
                              // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0365);
                            end;
                          end;
                        end
                        else
                        begin
                          // 31|30|29  |28      |20  |15|14          |12       |11       |10|5 |0 
                          // 0 |Q |op=0|01110000|imm5|0 |imm4<3:2>=01|imm4<1>=0|imm4<0>=1|1 |Rn|Rd
                          // e.g: SMOV  <Wd>, <Vn>.<Ts>[<index>]
                          exit(0155);
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            // 31|30 |29  |28      |20  |15|14       |10|5 |0 
                            // 0 |Q=1|op=0|01110000|imm5|0 |imm4=0011|1 |Rn|Rd
                            // e.g: INS  <Vd>.<Ts>[<index>], <R><n>
                            exit(0151);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                            // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=011|1 |Rn|Rd
                            // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0367);
                          end;
                        end
                        else
                        begin
                          if (c and $40 = $00) then
                          begin
                            // 31|30|29  |28      |20  |15|14          |12       |11       |10|5 |0 
                            // 0 |Q |op=0|01110000|imm5|0 |imm4<3:2>=01|imm4<1>=1|imm4<0>=1|1 |Rn|Rd
                            // e.g: UMOV  <Wd>, <Vn>.<Ts>[<index>]
                            exit(0156);
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=0|01110|a=0|10|Rm|00|opcode=111|1 |Rn|Rd
                              // e.g: FRECPS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0368);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=0|01110|a=1|10|Rm|00|opcode=111|1 |Rn|Rd
                              // e.g: FRSQRTS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0369);
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (c and $40 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31       |22    |16|15|10|5 |0 
                      // 110011100|Op0=00|Rm|0 |Ra|Rn|Rd
                      // e.g: EOR3  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B
                      exit(0671);
                    end
                    else
                    begin
                      // 31         |16|10  |5 |0 
                      // 11001110100|Rm|imm6|Rn|Rd
                      // e.g: XAR  <Vd>.2D, <Vn>.2D, <Vm>.2D, #<imm6>
                      exit(0669);
                    end;
                  end
                  else
                  begin
                    if (b and $80 = $00) then
                    begin
                      // 31       |22    |16|15|10|5 |0 
                      // 110011100|Op0=10|Rm|0 |Ra|Rn|Rd
                      // e.g: SM3SS1  <Vd>.4S, <Vn>.4S, <Vm>.4S, <Va>.4S
                      exit(0672);
                    end
                    else
                    begin
                      if (b and $04 = $00) then
                      begin
                        if (b and $08 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31         |16|15|12  |11       |5 |0 
                            // 11001110010|Rm|10|imm2|opcode=00|Rn|Rd
                            // e.g: SM3TT1A  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]
                            exit(0665);
                          end
                          else
                          begin
                            // 31                  |11       |5 |0 
                            // 11001110110000001000|opcode=00|Rn|Rd
                            // e.g: SHA512SU0  <Vd>.2D, <Vn>.2D
                            exit(0687);
                          end;
                        end
                        else
                        begin
                          // 31         |16|15|12  |11       |5 |0 
                          // 11001110010|Rm|10|imm2|opcode=10|Rn|Rd
                          // e.g: SM3TT2A  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]
                          exit(0667);
                        end;
                      end
                      else
                      begin
                        if (b and $08 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31         |16|15|12  |11       |5 |0 
                            // 11001110010|Rm|10|imm2|opcode=01|Rn|Rd
                            // e.g: SM3TT1B  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]
                            exit(0666);
                          end
                          else
                          begin
                            // 31                  |11       |5 |0 
                            // 11001110110000001000|opcode=01|Rn|Rd
                            // e.g: SM4E  <Vd>.4S, <Vn>.4S
                            exit(0688);
                          end;
                        end
                        else
                        begin
                          // 31         |16|15|12  |11       |5 |0 
                          // 11001110010|Rm|10|imm2|opcode=11|Rn|Rd
                          // e.g: SM3TT2B  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]
                          exit(0668);
                        end;
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (b and $04 = $00) then
                begin
                  // 31|30|29    |23    |21|16|15|11  |10|5 |0 
                  // 0 |Q |101110|op2=00|0 |Rm|0 |imm4|0 |Rn|Rd
                  // e.g: EXT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<index>
                  exit(0133);
                end
                else
                begin
                  if (b and $80 = $00) then
                  begin
                    if (c and $40 = $00) then
                    begin
                      // 31|30 |29  |28      |20  |15|14  |10|5 |0 
                      // 0 |Q=1|op=1|01110000|imm5|0 |imm4|1 |Rn|Rd
                      // e.g: INS  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>]
                      exit(0150);
                    end
                    else
                    begin
                      if (b and $08 = $00) then
                      begin
                        if (b and $10 = $00) then
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
                              // 0 |Q |U=1|01110|a=0|10|Rm|00|Op3=000|1 |Rn|Rd
                              // e.g: FMAXNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0358);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13     |10|5 |0 
                              // 0 |Q |U=1|01110|a=1|10|Rm|00|Op3=000|1 |Rn|Rd
                              // e.g: FMINNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0362);
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                              // 0 |Q |U=1|01110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
                              // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0353);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                              // 0 |Q |U=1|01110|E=1|10|Rm|00|10|ac=0|1 |Rn|Rd
                              // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0354);
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=1|01110|a=0|10|Rm|00|opcode=010|1 |Rn|Rd
                              // e.g: FADDP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0351);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=1|01110|a=1|10|Rm|00|opcode=010|1 |Rn|Rd
                              // e.g: FABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0347);
                            end;
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=1|01110|o1=0|10|Rm|00|opcode=110|1 |Rn|Rd
                              // e.g: FMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0359);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |22|16|15|13        |10|5 |0 
                              // 0 |Q |U=1|01110|o1=1|10|Rm|00|opcode=110|1 |Rn|Rd
                              // e.g: FMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0363);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $10 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                            // 0 |Q |U=1|01110|E=0|10|Rm|00|10|ac=1|1 |Rn|Rd
                            // e.g: FACGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0348);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                            // 0 |Q |U=1|01110|E=1|10|Rm|00|10|ac=1|1 |Rn|Rd
                            // e.g: FACGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0349);
                          end;
                        end
                        else
                        begin
                          if (b and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                            // 0 |Q |U=1|01110|a=0|10|Rm|00|opcode=011|1 |Rn|Rd
                            // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0366);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23 |22|16|15|13        |10|5 |0 
                            // 0 |Q |U=1|01110|a=0|10|Rm|00|opcode=111|1 |Rn|Rd
                            // e.g: FDIV  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0355);
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (b and $08 = $00) then
                        begin
                          if (b and $10 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
                            // 0 |Q |U=1|01110|size|0 |Rm|1 |000|S=0|1 |Rn|Rd
                            // e.g: SQRDMLAH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0344);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15|14         |10|5 |0 
                            // 0 |Q |U=1|01110|size|0 |Rm|1 |opcode=0010|1 |Rn|Rd
                            // e.g: UDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                            exit(0346);
                          end;
                        end
                        else
                        begin
                          // 31|30|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
                          // 0 |Q |U=1|01110|size|0 |Rm|1 |000|S=1|1 |Rn|Rd
                          // e.g: SQRDMLSH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                          exit(0345);
                        end;
                      end
                      else
                      begin
                        // 31|30|29 |28   |23  |21|16|15|14|12 |10|5 |0 
                        // 0 |Q |U=1|01110|size|0 |Rm|1 |10|rot|1 |Rn|Rd
                        // e.g: FCMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>
                        exit(0342);
                      end;
                    end
                    else
                    begin
                      // 31|30|29 |28   |23  |21|16|15|14|12 |11|10|5 |0 
                      // 0 |Q |U=1|01110|size|0 |Rm|1 |11|rot|0 |1 |Rn|Rd
                      // e.g: FCADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>
                      exit(0341);
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              if (d and $20 = $00) then
              begin
                if (c and $80 = $00) then
                begin
                  if (d and $40 = $00) then
                  begin
                    if (c and $01 = $00) then
                    begin
                      if (c and $02 = $00) then
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=0x|0 |rmode=11|opcode=000|scale|Rn|Rd
                        // e.g: FCVTZS  <Wd>, <Sn>, #<fbits>
                        exit(0765);
                      end
                      else
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=0x|0 |rmode=00|opcode=010|scale|Rn|Rd
                        // e.g: SCVTF  <Sd>, <Wn>, #<fbits>
                        exit(0769);
                      end;
                    end
                    else
                    begin
                      if (c and $02 = $00) then
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=0x|0 |rmode=11|opcode=001|scale|Rn|Rd
                        // e.g: FCVTZU  <Wd>, <Sn>, #<fbits>
                        exit(0767);
                      end
                      else
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=0x|0 |rmode=00|opcode=011|scale|Rn|Rd
                        // e.g: UCVTF  <Sd>, <Wn>, #<fbits>
                        exit(0771);
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $04 = $00) then
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31      |23     |21|16|15|14        |11|5 |0 
                            // 01011110|size=00|0 |Rm|0 |opcode=000|00|Rn|Rd
                            // e.g: SHA1C  <Qd>, <Sn>, <Vm>.4S
                            exit(0680);
                          end
                          else
                          begin
                            // 31      |23     |21|16|15|14|12 |11|5 |0 
                            // 01011110|size=00|0 |Rm|0 |10|P=0|00|Rn|Rd
                            // e.g: SHA256H  <Qd>, <Qn>, <Vm>.4S
                            exit(0684);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31      |23     |21|16|15|14        |11|5 |0 
                            // 01011110|size=00|0 |Rm|0 |opcode=010|00|Rn|Rd
                            // e.g: SHA1M  <Qd>, <Sn>, <Vm>.4S
                            exit(0681);
                          end
                          else
                          begin
                            // 31      |23     |21|16|15|14        |11|5 |0 
                            // 01011110|size=00|0 |Rm|0 |opcode=110|00|Rn|Rd
                            // e.g: SHA256SU1  <Vd>.4S, <Vn>.4S, <Vm>.4S
                            exit(0686);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31      |23     |21|16|15|14        |11|5 |0 
                            // 01011110|size=00|0 |Rm|0 |opcode=001|00|Rn|Rd
                            // e.g: SHA1P  <Qd>, <Sn>, <Vm>.4S
                            exit(0682);
                          end
                          else
                          begin
                            // 31      |23     |21|16|15|14|12 |11|5 |0 
                            // 01011110|size=00|0 |Rm|0 |10|P=1|00|Rn|Rd
                            // e.g: SHA256H2  <Qd>, <Qn>, <Vm>.4S
                            exit(0685);
                          end;
                        end
                        else
                        begin
                          // 31      |23     |21|16|15|14        |11|5 |0 
                          // 01011110|size=00|0 |Rm|0 |opcode=011|00|Rn|Rd
                          // e.g: SHA1SU0  <Vd>.4S, <Vn>.4S, <Vm>.4S
                          exit(0683);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $08 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          // 31|29  |28      |20  |15|14       |10|5 |0 
                          // 01|op=0|11110000|imm5|0 |imm4=0000|1 |Rn|Rd
                          // e.g: DUP  <V><d>, <Vn>.<T>[<index>]
                          exit(0528);
                        end
                        else
                        begin
                          // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                          // 01|U=0|11110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
                          // e.g: FCMEQ  <Hd>, <Hn>, <Hm>
                          exit(0582);
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
                          // 01|U=0|11110|a=0|10|Rm|00|opcode=011|1 |Rn|Rd
                          // e.g: FMULX  <Hd>, <Hn>, <Hm>
                          exit(0585);
                        end
                        else
                        begin
                          // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
                          // 01|U=0|11110|a=0|10|Rm|00|opcode=111|1 |Rn|Rd
                          // e.g: FRECPS  <Hd>, <Hn>, <Hm>
                          exit(0586);
                        end;
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (d and $40 = $00) then
                  begin
                    if (c and $01 = $00) then
                    begin
                      if (c and $02 = $00) then
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=11|0 |rmode=11|opcode=000|scale|Rn|Rd
                        // e.g: FCVTZS  <Wd>, <Hn>, #<fbits>
                        exit(0764);
                      end
                      else
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=11|0 |rmode=00|opcode=010|scale|Rn|Rd
                        // e.g: SCVTF  <Hd>, <Wn>, #<fbits>
                        exit(0768);
                      end;
                    end
                    else
                    begin
                      if (c and $02 = $00) then
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=11|0 |rmode=11|opcode=001|scale|Rn|Rd
                        // e.g: FCVTZU  <Wd>, <Hn>, #<fbits>
                        exit(0766);
                      end
                      else
                      begin
                        // 31|30|29 |28   |23     |21|20      |18        |10   |5 |0 
                        // sf|0 |S=0|11110|type=11|0 |rmode=00|opcode=011|scale|Rn|Rd
                        // e.g: UCVTF  <Hd>, <Wn>, #<fbits>
                        exit(0770);
                      end;
                    end;
                  end
                  else
                  begin
                    // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
                    // 01|U=0|11110|a=1|10|Rm|00|opcode=111|1 |Rn|Rd
                    // e.g: FRSQRTS  <Hd>, <Hn>, <Hm>
                    exit(0587);
                  end;
                end;
              end
              else
              begin
                if (b and $08 = $00) then
                begin
                  if (b and $10 = $00) then
                  begin
                    if (b and $20 = $00) then
                    begin
                      // 31|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
                      // 01|U=1|11110|size|0 |Rm|1 |000|S=0|1 |Rn|Rd
                      // e.g: SQRDMLAH  <V><d>, <V><n>, <V><m>
                      exit(0577);
                    end
                    else
                    begin
                      if (c and $80 = $00) then
                      begin
                        // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                        // 01|U=1|11110|E=0|10|Rm|00|10|ac=0|1 |Rn|Rd
                        // e.g: FCMGE  <Hd>, <Hn>, <Hm>
                        exit(0583);
                      end
                      else
                      begin
                        // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                        // 01|U=1|11110|E=1|10|Rm|00|10|ac=0|1 |Rn|Rd
                        // e.g: FCMGT  <Hd>, <Hn>, <Hm>
                        exit(0584);
                      end;
                    end;
                  end
                  else
                  begin
                    // 31|29 |28   |23 |22|16|15|13        |10|5 |0 
                    // 01|U=1|11110|a=1|10|Rm|00|opcode=010|1 |Rn|Rd
                    // e.g: FABD  <Hd>, <Hn>, <Hm>
                    exit(0579);
                  end;
                end
                else
                begin
                  if (b and $20 = $00) then
                  begin
                    // 31|29 |28   |23  |21|16|15|14 |11 |10|5 |0 
                    // 01|U=1|11110|size|0 |Rm|1 |000|S=1|1 |Rn|Rd
                    // e.g: SQRDMLSH  <V><d>, <V><n>, <V><m>
                    exit(0578);
                  end
                  else
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                      // 01|U=1|11110|E=0|10|Rm|00|10|ac=1|1 |Rn|Rd
                      // e.g: FACGE  <Hd>, <Hn>, <Hm>
                      exit(0580);
                    end
                    else
                    begin
                      // 31|29 |28   |23 |22|16|15|13|11  |10|5 |0 
                      // 01|U=1|11110|E=1|10|Rm|00|10|ac=1|1 |Rn|Rd
                      // e.g: FACGT  <Hd>, <Hn>, <Hm>
                      exit(0581);
                    end;
                  end;
                end;
              end;
            end;
          end
          else
          begin
            if (d and $10 = $00) then
            begin
              if (b and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (d and $80 = $00) then
                  begin
                    if (b and $04 = $00) then
                    begin
                      if (b and $08 = $00) then
                      begin
                        if (b and $10 = $00) then
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
                                // e.g: SADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0057);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
                                // e.g: SADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0058);
                              end;
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
                                // e.g: ADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                                exit(0043);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
                                // e.g: ADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                                exit(0044);
                              end;
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
                                // e.g: SSUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0073);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
                                // e.g: SSUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0074);
                              end;
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
                                // e.g: SUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                                exit(0077);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
                                // e.g: SUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                                exit(0078);
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
                                // e.g: SADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                                exit(0059);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
                                // e.g: SADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                                exit(0060);
                              end;
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
                                // e.g: SABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0053);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
                                // e.g: SABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0054);
                              end;
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
                                // e.g: SSUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                                exit(0075);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
                                // e.g: SSUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                                exit(0076);
                              end;
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=0|U=0|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
                                // e.g: SABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0055);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
                                // e.g: SABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0056);
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $10 = $00) then
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
                              // 0 |Q |U=0|01110|size|10000|0000|o0=0|10|Rn|Rd
                              // e.g: REV64  <Vd>.<T>, <Vn>.<T>
                              exit(0205);
                            end
                            else
                            begin
                              if (c and $01 = $00) then
                              begin
                                if (c and $08 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|size|10000|opcode=00100|10|Rn|Rd
                                  // e.g: CLS  <Vd>.<T>, <Vn>.<T>
                                  exit(0158);
                                end
                                else
                                begin
                                  // 31      |23     |21   |16  |12 |11|5 |0 
                                  // 01001110|size=00|10100|0010|D=0|10|Rn|Rd
                                  // e.g: AESE  <Vd>.16B, <Vn>.16B
                                  exit(0674);
                                end;
                              end
                              else
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                  // 0 |Q=0|U=0|01110|size|10000|opcode=10100|10|Rn|Rd
                                  // e.g: SQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                  exit(0213);
                                end
                                else
                                begin
                                  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                  // 0 |Q=1|U=0|01110|size|10000|opcode=10100|10|Rn|Rd
                                  // e.g: SQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                  exit(0214);
                                end;
                              end;
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (c and $01 = $00) then
                              begin
                                // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
                                // 0 |Q |U=0|01110|size|10000|00|op=0|10|10|Rn|Rd
                                // e.g: SADDLP  <Vd>.<Ta>, <Vn>.<Tb>
                                exit(0207);
                              end
                              else
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                  // 0 |Q=0|U=0|01110|size|10000|opcode=10010|10|Rn|Rd
                                  // e.g: XTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                  exit(0226);
                                end
                                else
                                begin
                                  // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                  // 0 |Q=1|U=0|01110|size|10000|opcode=10010|10|Rn|Rd
                                  // e.g: XTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                  exit(0227);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $01 = $00) then
                              begin
                                if (c and $08 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
                                  // 0 |Q |U=0|01110|size|10000|00|op=1|10|10|Rn|Rd
                                  // e.g: SADALP  <Vd>.<Ta>, <Vn>.<Tb>
                                  exit(0206);
                                end
                                else
                                begin
                                  // 31      |23     |21   |16  |12 |11|5 |0 
                                  // 01001110|size=00|10100|0011|D=0|10|Rn|Rd
                                  // e.g: AESMC  <Vd>.16B, <Vn>.16B
                                  exit(0676);
                                end;
                              end
                              else
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q=0|U=0|01110|0 |sz|10000|opcode=10110|10|Rn|Rd
                                  // e.g: FCVTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                  exit(0178);
                                end
                                else
                                begin
                                  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q=1|U=0|01110|0 |sz|10000|opcode=10110|10|Rn|Rd
                                  // e.g: FCVTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                  exit(0179);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23     |21   |16  |12  |11|5 |0 
                              // 0 |Q |U=0|01110|size=00|10000|0000|o0=1|10|Rn|Rd
                              // e.g: REV16  <Vd>.<T>, <Vn>.<T>
                              exit(0203);
                            end
                            else
                            begin
                              if (c and $08 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21   |16          |11|5 |0 
                                // 0 |Q |U=0|01110|size=00|10000|opcode=00101|10|Rn|Rd
                                // e.g: CNT  <Vd>.<T>, <Vn>.<T>
                                exit(0165);
                              end
                              else
                              begin
                                // 31      |23     |21   |16  |12 |11|5 |0 
                                // 01001110|size=00|10100|0010|D=1|10|Rn|Rd
                                // e.g: AESD  <Vd>.16B, <Vn>.16B
                                exit(0673);
                              end;
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q |U=0|01110|size|10000|opcode=00011|10|Rn|Rd
                                // e.g: SUQADD  <Vd>.<T>, <Vn>.<T>
                                exit(0217);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q |U=0|01110|size|11000|opcode=00011|10|Rn|Rd
                                // e.g: SADDLV  <V><d>, <Vn>.<T>
                                exit(0037);
                              end;
                            end
                            else
                            begin
                              if (c and $01 = $00) then
                              begin
                                if (c and $08 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|size|10000|opcode=00111|10|Rn|Rd
                                  // e.g: SQABS  <Vd>.<T>, <Vn>.<T>
                                  exit(0211);
                                end
                                else
                                begin
                                  // 31      |23     |21   |16  |12 |11|5 |0 
                                  // 01001110|size=00|10100|0011|D=1|10|Rn|Rd
                                  // e.g: AESIMC  <Vd>.16B, <Vn>.16B
                                  exit(0675);
                                end;
                              end
                              else
                              begin
                                if (d and $40 = $00) then
                                begin
                                  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q=0|U=0|01110|0 |sz|10000|opcode=10111|10|Rn|Rd
                                  // e.g: FCVTL<Q>  <Vd>.<Ta>, <Vn>.<Tb>
                                  exit(0174);
                                end
                                else
                                begin
                                  // 31|30 |29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q=1|U=0|01110|0 |sz|10000|opcode=10111|10|Rn|Rd
                                  // e.g: FCVTL<Q>  <Vd>.<Ta>, <Vn>.<Tb>
                                  exit(0175);
                                end;
                              end;
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $08 = $00) then
                      begin
                        if (b and $10 = $00) then
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=00000|1 |Rn|Rd
                              // e.g: SHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0310);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|010|R=0|S=0|1 |Rn|Rd
                              // e.g: SSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0324);
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=00100|1 |Rn|Rd
                              // e.g: SHSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0311);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|0110|o1=0|1 |Rn|Rd
                              // e.g: SMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0312);
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=00010|1 |Rn|Rd
                              // e.g: SRHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0322);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|010|R=1|S=0|1 |Rn|Rd
                              // e.g: SRSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0323);
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|0011|eq=0|1 |Rn|Rd
                              // e.g: CMGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0272);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|0111|ac=0|1 |Rn|Rd
                              // e.g: SABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0309);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $10 = $00) then
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=00001|1 |Rn|Rd
                              // e.g: SQADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0316);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
                              // e.g: SQSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0320);
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=00101|1 |Rn|Rd
                              // e.g: SQSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0321);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|0110|o1=1|1 |Rn|Rd
                              // e.g: SMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0314);
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $20 = $00) then
                          begin
                            if (b and $40 = $00) then
                            begin
                              if (c and $40 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                  // 0 |Q |U=0|01110|size=00|1 |Rm|opcode=00011|1 |Rn|Rd
                                  // e.g: AND  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                  exit(0265);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                  // 0 |Q |U=0|01110|size=10|1 |Rm|opcode=00011|1 |Rn|Rd
                                  // e.g: ORR  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                  exit(0306);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                  // 0 |Q |U=0|01110|size=01|1 |Rm|opcode=00011|1 |Rn|Rd
                                  // e.g: BIC  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                  exit(0266);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                  // 0 |Q |U=0|01110|size=11|1 |Rm|opcode=00011|1 |Rn|Rd
                                  // e.g: ORN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                  exit(0305);
                                end;
                              end;
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
                              // e.g: SQRSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0319);
                            end;
                          end
                          else
                          begin
                            if (b and $40 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|0011|eq=1|1 |Rn|Rd
                              // e.g: CMGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0271);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|0111|ac=1|1 |Rn|Rd
                              // e.g: SABA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0308);
                            end;
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    // 31       |22    |16|15|10|5 |0 
                    // 110011100|Op0=01|Rm|0 |Ra|Rn|Rd
                    // e.g: BCAX  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B
                    exit(0670);
                  end;
                end
                else
                begin
                  if (b and $04 = $00) then
                  begin
                    if (b and $08 = $00) then
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
                              // e.g: UADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0083);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=0|0 |00|Rn|Rd
                              // e.g: UADDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0084);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
                              // e.g: RADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                              exit(0049);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|01|o1=0|0 |00|Rn|Rd
                              // e.g: RADDHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                              exit(0050);
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
                              // e.g: USUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0093);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=1|0 |00|Rn|Rd
                              // e.g: USUBL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0094);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
                              // e.g: RSUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                              exit(0051);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|01|o1=1|0 |00|Rn|Rd
                              // e.g: RSUBHN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>
                              exit(0052);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
                              // e.g: UADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                              exit(0085);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=0|1 |00|Rn|Rd
                              // e.g: UADDW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                              exit(0086);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
                              // e.g: UABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0079);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|01|op=0|1 |00|Rn|Rd
                              // e.g: UABAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0080);
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
                              // e.g: USUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                              exit(0095);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|00|o1=1|1 |00|Rn|Rd
                              // e.g: USUBW<Q>  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>
                              exit(0096);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
                              // e.g: UABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0081);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|01|op=1|1 |00|Rn|Rd
                              // e.g: UABDL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0082);
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23     |21   |16  |12  |11|5 |0 
                            // 0 |Q |U=1|01110|size=0x|10000|0000|o0=0|10|Rn|Rd
                            // e.g: REV32  <Vd>.<T>, <Vn>.<T>
                            exit(0204);
                          end
                          else
                          begin
                            if (c and $01 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                              // 0 |Q |U=1|01110|size|10000|opcode=00100|10|Rn|Rd
                              // e.g: CLZ  <Vd>.<T>, <Vn>.<T>
                              exit(0159);
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q=0|U=1|01110|size|10000|opcode=10100|10|Rn|Rd
                                // e.g: UQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                exit(0221);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q=1|U=1|01110|size|10000|opcode=10100|10|Rn|Rd
                                // e.g: UQXTN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                exit(0222);
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (c and $01 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
                              // 0 |Q |U=1|01110|size|10000|00|op=0|10|10|Rn|Rd
                              // e.g: UADDLP  <Vd>.<Ta>, <Vn>.<Tb>
                              exit(0219);
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q=0|U=1|01110|size|10000|opcode=10010|10|Rn|Rd
                                // e.g: SQXTUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                exit(0215);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q=1|U=1|01110|size|10000|opcode=10010|10|Rn|Rd
                                // e.g: SQXTUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                exit(0216);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $01 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16|14  |13|11|5 |0 
                              // 0 |Q |U=1|01110|size|10000|00|op=1|10|10|Rn|Rd
                              // e.g: UADALP  <Vd>.<Ta>, <Vn>.<Tb>
                              exit(0218);
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |23|22  |21   |16          |11|5 |0 
                                // 0 |Q=0|U=1|01110|0 |sz=1|10000|opcode=10110|10|Rn|Rd
                                // e.g: FCVTXN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                exit(0184);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |23|22  |21   |16          |11|5 |0 
                                // 0 |Q=1|U=1|01110|0 |sz=1|10000|opcode=10110|10|Rn|Rd
                                // e.g: FCVTXN<Q>  <Vd>.<Tb>, <Vn>.<Ta>
                                exit(0185);
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (c and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23     |21   |16          |11|5 |0 
                            // 0 |Q |U=1|01110|size=00|10000|opcode=00101|10|Rn|Rd
                            // e.g: NOT  <Vd>.<T>, <Vn>.<T>
                            exit(0201);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23     |21   |16          |11|5 |0 
                            // 0 |Q |U=1|01110|size=01|10000|opcode=00101|10|Rn|Rd
                            // e.g: RBIT  <Vd>.<T>, <Vn>.<T>
                            exit(0202);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (c and $01 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q |U=1|01110|size|10000|opcode=00011|10|Rn|Rd
                                // e.g: USQADD  <Vd>.<T>, <Vn>.<T>
                                exit(0225);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q |U=1|01110|size|11000|opcode=00011|10|Rn|Rd
                                // e.g: UADDLV  <V><d>, <Vn>.<T>
                                exit(0040);
                              end;
                            end
                            else
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31|30 |29 |28   |22  |21   |16          |11|5 |0 
                                // 0 |Q=0|U=1|01110|size|10000|opcode=10011|10|Rn|Rd
                                // e.g: SHLL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>
                                exit(0209);
                              end
                              else
                              begin
                                // 31|30 |29 |28   |22  |21   |16          |11|5 |0 
                                // 0 |Q=1|U=1|01110|size|10000|opcode=10011|10|Rn|Rd
                                // e.g: SHLL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>
                                exit(0210);
                              end;
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                            // 0 |Q |U=1|01110|size|10000|opcode=00111|10|Rn|Rd
                            // e.g: SQNEG  <Vd>.<T>, <Vn>.<T>
                            exit(0212);
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $08 = $00) then
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=00000|1 |Rn|Rd
                            // e.g: UHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0328);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|010|R=0|S=0|1 |Rn|Rd
                            // e.g: USHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0340);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=00100|1 |Rn|Rd
                            // e.g: UHSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0329);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|0110|o1=0|1 |Rn|Rd
                            // e.g: UMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0330);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=00010|1 |Rn|Rd
                            // e.g: URHADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0338);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|010|R=1|S=0|1 |Rn|Rd
                            // e.g: URSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0339);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|0011|eq=0|1 |Rn|Rd
                            // e.g: CMHI  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0273);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|0111|ac=0|1 |Rn|Rd
                            // e.g: UABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0327);
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=00001|1 |Rn|Rd
                            // e.g: UQADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0334);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
                            // e.g: UQSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0336);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=00101|1 |Rn|Rd
                            // e.g: UQSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0337);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|0110|o1=1|1 |Rn|Rd
                            // e.g: UMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0332);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (c and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                // 0 |Q |U=1|01110|opc2=00|1 |Rm|opcode=00011|1 |Rn|Rd
                                // e.g: EOR  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                exit(0276);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                // 0 |Q |U=1|01110|opc2=10|1 |Rm|opcode=00011|1 |Rn|Rd
                                // e.g: BIT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                exit(0268);
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                // 0 |Q |U=1|01110|opc2=01|1 |Rm|opcode=00011|1 |Rn|Rd
                                // e.g: BSL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                exit(0269);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                                // 0 |Q |U=1|01110|opc2=11|1 |Rm|opcode=00011|1 |Rn|Rd
                                // e.g: BIF  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                exit(0267);
                              end;
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
                            // e.g: UQRSHL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0335);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|0011|eq=1|1 |Rn|Rd
                            // e.g: CMHS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0274);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|0111|ac=1|1 |Rn|Rd
                            // e.g: UABA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0326);
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (b and $04 = $00) then
                begin
                  if (b and $08 = $00) then
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
                              // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0061);
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
                                // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0062);
                              end
                              else
                              begin
                                // 31         |16|15|14 |13|11       |5 |0 
                                // 11001110011|Rm|1 |O=0|00|opcode=00|Rn|Rd
                                // e.g: SHA512H  <Qd>, <Qn>, <Vm>.2D
                                exit(0690);
                              end;
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
                              // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0087);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|10|o1=0|0 |00|Rn|Rd
                              // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0088);
                            end;
                          end;
                        end
                        else
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
                              // 0 |Q=0|U=0|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
                              // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0065);
                            end
                            else
                            begin
                              if (d and $80 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
                                // 0 |Q=1|U=0|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
                                // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                                exit(0066);
                              end
                              else
                              begin
                                // 31         |16|15|14 |13|11       |5 |0 
                                // 11001110011|Rm|1 |O=1|00|opcode=00|Rn|Rd
                                // e.g: SM3PARTW1  <Vd>.4S, <Vn>.4S, <Vm>.4S
                                exit(0693);
                              end;
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
                              // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0091);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15         |14         |13         |12         |11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|opcode<3>=1|opcode<2>=1|opcode<1>=0|opcode<0>=0|00|Rn|Rd
                              // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0092);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
                              // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0063);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
                              // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0064);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=0|U=1|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
                              // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0089);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                              // 0 |Q=1|U=1|01110|size|1 |Rm|10|o1=1|0 |00|Rn|Rd
                              // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0090);
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $40 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
                              // 0 |Q=0|U=0|01110|size=00|1 |Rm|opcode=1110|00|Rn|Rd
                              // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0046);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
                              // 0 |Q=1|U=0|01110|size=00|1 |Rm|opcode=1110|00|Rn|Rd
                              // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0048);
                            end;
                          end
                          else
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
                              // 0 |Q=0|U=0|01110|size=11|1 |Rm|opcode=1110|00|Rn|Rd
                              // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0045);
                            end
                            else
                            begin
                              // 31|30 |29 |28   |23     |21|16|15         |11|5 |0 
                              // 0 |Q=1|U=0|01110|size=11|1 |Rm|opcode=1110|00|Rn|Rd
                              // e.g: PMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                              exit(0047);
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                            // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=0|1 |00|Rn|Rd
                            // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                            exit(0067);
                          end
                          else
                          begin
                            // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                            // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=0|1 |00|Rn|Rd
                            // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                            exit(0068);
                          end;
                        end
                        else
                        begin
                          if (d and $40 = $00) then
                          begin
                            // 31|30 |29 |28   |23  |21|16|15         |11|5 |0 
                            // 0 |Q=0|U=0|01110|size|1 |Rm|opcode=1101|00|Rn|Rd
                            // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                            exit(0071);
                          end
                          else
                          begin
                            // 31|30 |29 |28   |23  |21|16|15         |11|5 |0 
                            // 0 |Q=1|U=0|01110|size|1 |Rm|opcode=1101|00|Rn|Rd
                            // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                            exit(0072);
                          end;
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                          // 0 |Q=0|U=0|01110|size|1 |Rm|10|o1=1|1 |00|Rn|Rd
                          // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                          exit(0069);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |23  |21|16|15|13  |12|11|5 |0 
                          // 0 |Q=1|U=0|01110|size|1 |Rm|10|o1=1|1 |00|Rn|Rd
                          // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>
                          exit(0070);
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $80 = $00) then
                            begin
                              if (c and $01 = $00) then
                              begin
                                // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
                                // 0 |Q |U=0|01110|size|10000|0100|op=0|10|Rn|Rd
                                // e.g: CMGT  <Vd>.<T>, <Vn>.<T>, #0
                                exit(0162);
                              end
                              else
                              begin
                                if (c and $08 = $00) then
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=0|sz|10000|1100|o1=0|10|Rn|Rd
                                    // e.g: FRINTN  <Vd>.<T>, <Vn>.<T>
                                    exit(0193);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=1|sz|10000|1100|o1=0|10|Rn|Rd
                                    // e.g: FRINTP  <Vd>.<T>, <Vn>.<T>
                                    exit(0194);
                                  end;
                                end
                                else
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=0|111100|1100|o1=0|10|Rn|Rd
                                    // e.g: FRINTN  <Vd>.<T>, <Vn>.<T>
                                    exit(0249);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=1|111100|1100|o1=0|10|Rn|Rd
                                    // e.g: FRINTP  <Vd>.<T>, <Vn>.<T>
                                    exit(0250);
                                  end;
                                end;
                              end;
                            end
                            else
                            begin
                              // 31         |16|15|14 |13|11       |5 |0 
                              // 11001110011|Rm|1 |O=0|00|opcode=10|Rn|Rd
                              // e.g: SHA512SU1  <Vd>.2D, <Vn>.2D, <Vm>.2D
                              exit(0692);
                            end;
                          end
                          else
                          begin
                            if (c and $01 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
                              // 0 |Q |U=1|01110|size|10000|0100|op=0|10|Rn|Rd
                              // e.g: CMGE  <Vd>.<T>, <Vn>.<T>, #0
                              exit(0161);
                            end
                            else
                            begin
                              if (c and $08 = $00) then
                              begin
                                // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                // 0 |Q |U=1|01110|o2=0|sz|10000|1100|o1=0|10|Rn|Rd
                                // e.g: FRINTA  <Vd>.<T>, <Vn>.<T>
                                exit(0190);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                // 0 |Q |U=1|01110|o2=0|111100|1100|o1=0|10|Rn|Rd
                                // e.g: FRINTA  <Vd>.<T>, <Vn>.<T>
                                exit(0246);
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                if (c and $01 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|o1=0|0 |11000|opcode=01100|10|Rn|Rd
                                  // e.g: FMAXNMV  Hd, <Vn>.<T>
                                  exit(0029);
                                end
                                else
                                begin
                                  if (c and $08 = $00) then
                                  begin
                                    // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                    // 0 |Q |U=0|01110|0 |sz|10000|opcode=11100|10|Rn|Rd
                                    // e.g: FCVTAS  <Vd>.<T>, <Vn>.<T>
                                    exit(0172);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                    // 0 |Q |U=0|01110|a=0|111100|opcode=11100|10|Rn|Rd
                                    // e.g: FCVTAS  <Vd>.<T>, <Vn>.<T>
                                    exit(0234);
                                  end;
                                end;
                              end
                              else
                              begin
                                // 31         |16|15|14 |13|11       |5 |0 
                                // 11001110011|Rm|1 |O=1|00|opcode=10|Rn|Rd
                                // e.g: SM4EKEY  <Vd>.4S, <Vn>.4S, <Vm>.4S
                                exit(0695);
                              end;
                            end
                            else
                            begin
                              if (c and $01 = $00) then
                              begin
                                // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
                                // 0 |Q=1|U=1|01110|o1=0|sz=0|11000|opcode=01100|10|Rn|Rd
                                // e.g: FMAXNMV  <V><d>, <Vn>.<T>
                                exit(0030);
                              end
                              else
                              begin
                                if (c and $08 = $00) then
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|0 |sz|10000|opcode=11100|10|Rn|Rd
                                  // e.g: FCVTAU  <Vd>.<T>, <Vn>.<T>
                                  exit(0173);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|a=0|111100|opcode=11100|10|Rn|Rd
                                  // e.g: FCVTAU  <Vd>.<T>, <Vn>.<T>
                                  exit(0235);
                                end;
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $01 = $00) then
                            begin
                              if (c and $08 = $00) then
                              begin
                                if (c and $10 = $00) then
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|1 |sz|10000|0110|op=0|10|Rn|Rd
                                    // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, #0.0
                                    exit(0169);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=1|01110|1 |sz|10000|0110|op=0|10|Rn|Rd
                                    // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, #0.0
                                    exit(0168);
                                  end;
                                end
                                else
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
                                    // 0 |Q |U=0|01110|o1=1|0 |11000|opcode=01100|10|Rn|Rd
                                    // e.g: FMINNMV  Hd, <Vn>.<T>
                                    exit(0033);
                                  end
                                  else
                                  begin
                                    // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
                                    // 0 |Q=1|U=1|01110|o1=1|sz=0|11000|opcode=01100|10|Rn|Rd
                                    // e.g: FMINNMV  <V><d>, <Vn>.<T>
                                    exit(0034);
                                  end;
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|a=1|111100|0110|op=0|10|Rn|Rd
                                  // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, #0.0
                                  exit(0231);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|a=1|111100|0110|op=0|10|Rn|Rd
                                  // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, #0.0
                                  exit(0230);
                                end;
                              end;
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|30|29 |28   |23|22  |21   |16          |11|5 |0 
                                // 0 |Q |U=0|01110|1 |sz=0|10000|opcode=11100|10|Rn|Rd
                                // e.g: URECPE  <Vd>.<T>, <Vn>.<T>
                                exit(0223);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23|22  |21   |16          |11|5 |0 
                                // 0 |Q |U=1|01110|1 |sz=0|10000|opcode=11100|10|Rn|Rd
                                // e.g: URSQRTE  <Vd>.<T>, <Vn>.<T>
                                exit(0224);
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (c and $10 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                              // 0 |Q |U=0|01110|size|10000|opcode=01010|10|Rn|Rd
                              // e.g: CMLT  <Vd>.<T>, <Vn>.<T>, #0
                              exit(0164);
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
                                // 0 |Q |U=0|01110|size|11000|op=0|1010|10|Rn|Rd
                                // e.g: SMAXV  <V><d>, <Vn>.<T>
                                exit(0038);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
                                // 0 |Q |U=1|01110|size|11000|op=0|1010|10|Rn|Rd
                                // e.g: UMAXV  <V><d>, <Vn>.<T>
                                exit(0041);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
                                    // e.g: FCVTNS  <Vd>.<T>, <Vn>.<T>
                                    exit(0180);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=1|01110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
                                    // e.g: FCVTNU  <Vd>.<T>, <Vn>.<T>
                                    exit(0181);
                                  end;
                                end
                                else
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
                                    // e.g: FCVTPS  <Vd>.<T>, <Vn>.<T>
                                    exit(0182);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=1|01110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
                                    // e.g: FCVTPU  <Vd>.<T>, <Vn>.<T>
                                    exit(0183);
                                  end;
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
                                  // 0 |Q |U=0|01110|size|11000|op=1|1010|10|Rn|Rd
                                  // e.g: SMINV  <V><d>, <Vn>.<T>
                                  exit(0039);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |21   |16  |15  |11|5 |0 
                                  // 0 |Q |U=1|01110|size|11000|op=1|1010|10|Rn|Rd
                                  // e.g: UMINV  <V><d>, <Vn>.<T>
                                  exit(0042);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=0|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTNS  <Vd>.<T>, <Vn>.<T>
                                  exit(0238);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=0|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTNU  <Vd>.<T>, <Vn>.<T>
                                  exit(0239);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=1|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTPS  <Vd>.<T>, <Vn>.<T>
                                  exit(0240);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=1|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTPU  <Vd>.<T>, <Vn>.<T>
                                  exit(0241);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $08 = $00) then
                          begin
                            // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                            // 0 |Q |U=0|01110|1 |sz|10000|opcode=01110|10|Rn|Rd
                            // e.g: FCMLT  <Vd>.<T>, <Vn>.<T>, #0.0
                            exit(0171);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                            // 0 |Q |U=0|01110|a=1|111100|opcode=01110|10|Rn|Rd
                            // e.g: FCMLT  <Vd>.<T>, <Vn>.<T>, #0.0
                            exit(0233);
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
                              // 0 |Q |U=0|01110|size|10000|0100|op=1|10|Rn|Rd
                              // e.g: CMEQ  <Vd>.<T>, <Vn>.<T>, #0
                              exit(0160);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21   |16  |12  |11|5 |0 
                              // 0 |Q |U=1|01110|size|10000|0100|op=1|10|Rn|Rd
                              // e.g: CMLE  <Vd>.<T>, <Vn>.<T>, #0
                              exit(0163);
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=0|sz|10000|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTM  <Vd>.<T>, <Vn>.<T>
                                  exit(0192);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=0|sz|10000|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTX  <Vd>.<T>, <Vn>.<T>
                                  exit(0195);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=1|sz|10000|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTZ  <Vd>.<T>, <Vn>.<T>
                                  exit(0196);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=1|sz|10000|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTI  <Vd>.<T>, <Vn>.<T>
                                  exit(0191);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=0|111100|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTM  <Vd>.<T>, <Vn>.<T>
                                  exit(0248);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=0|111100|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTX  <Vd>.<T>, <Vn>.<T>
                                  exit(0251);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=1|111100|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTZ  <Vd>.<T>, <Vn>.<T>
                                  exit(0252);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=1|111100|1100|o1=1|10|Rn|Rd
                                  // e.g: FRINTI  <Vd>.<T>, <Vn>.<T>
                                  exit(0247);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                // 0 |Q |U=0|01110|1 |sz|10000|0110|op=1|10|Rn|Rd
                                // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, #0.0
                                exit(0167);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                // 0 |Q |U=1|01110|1 |sz|10000|0110|op=1|10|Rn|Rd
                                // e.g: FCMLE  <Vd>.<T>, <Vn>.<T>, #0.0
                                exit(0170);
                              end;
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
                                // 0 |Q |U=0|01110|a=1|111100|0110|op=1|10|Rn|Rd
                                // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, #0.0
                                exit(0229);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23 |22    |16  |12  |11|5 |0 
                                // 0 |Q |U=1|01110|a=1|111100|0110|op=1|10|Rn|Rd
                                // e.g: FCMLE  <Vd>.<T>, <Vn>.<T>, #0.0
                                exit(0232);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|0 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: SCVTF  <Vd>.<T>, <Vn>.<T>
                                  exit(0208);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|0 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: UCVTF  <Vd>.<T>, <Vn>.<T>
                                  exit(0220);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|1 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: FRECPE  <Vd>.<T>, <Vn>.<T>
                                  exit(0189);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|1 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: FRSQRTE  <Vd>.<T>, <Vn>.<T>
                                  exit(0197);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|a=0|111100|opcode=11101|10|Rn|Rd
                                  // e.g: SCVTF  <Vd>.<T>, <Vn>.<T>
                                  exit(0255);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|a=0|111100|opcode=11101|10|Rn|Rd
                                  // e.g: UCVTF  <Vd>.<T>, <Vn>.<T>
                                  exit(0256);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|a=1|111100|opcode=11101|10|Rn|Rd
                                  // e.g: FRECPE  <Vd>.<T>, <Vn>.<T>
                                  exit(0245);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|a=1|111100|opcode=11101|10|Rn|Rd
                                  // e.g: FRSQRTE  <Vd>.<T>, <Vn>.<T>
                                  exit(0253);
                                end;
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                              // 0 |Q |U=0|01110|size|10000|opcode=01011|10|Rn|Rd
                              // e.g: ABS  <Vd>.<T>, <Vn>.<T>
                              exit(0157);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                              // 0 |Q |U=1|01110|size|10000|opcode=01011|10|Rn|Rd
                              // e.g: NEG  <Vd>.<T>, <Vn>.<T>
                              exit(0200);
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTMS  <Vd>.<T>, <Vn>.<T>
                                    exit(0176);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=1|01110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTMU  <Vd>.<T>, <Vn>.<T>
                                    exit(0177);
                                  end;
                                end
                                else
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=0|01110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTZS  <Vd>.<T>, <Vn>.<T>
                                    exit(0186);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 0 |Q |U=1|01110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTZU  <Vd>.<T>, <Vn>.<T>
                                    exit(0187);
                                  end;
                                end;
                              end
                              else
                              begin
                                // 31|30|29 |28   |23  |21   |16          |11|5 |0 
                                // 0 |Q |U=0|01110|size|11000|opcode=11011|10|Rn|Rd
                                // e.g: ADDV  <V><d>, <Vn>.<T>
                                exit(0028);
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=0|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTMS  <Vd>.<T>, <Vn>.<T>
                                  exit(0236);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=0|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTMU  <Vd>.<T>, <Vn>.<T>
                                  exit(0237);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=0|01110|o2=1|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTZS  <Vd>.<T>, <Vn>.<T>
                                  exit(0242);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 0 |Q |U=1|01110|o2=1|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTZU  <Vd>.<T>, <Vn>.<T>
                                  exit(0243);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=0|01110|1 |sz|10000|opcode=01111|10|Rn|Rd
                                  // e.g: FABS  <Vd>.<T>, <Vn>.<T>
                                  exit(0166);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 0 |Q |U=1|01110|1 |sz|10000|opcode=01111|10|Rn|Rd
                                  // e.g: FNEG  <Vd>.<T>, <Vn>.<T>
                                  exit(0188);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
                                    // 0 |Q |U=0|01110|o1=0|0 |11000|opcode=01111|10|Rn|Rd
                                    // e.g: FMAXV  Hd, <Vn>.<T>
                                    exit(0031);
                                  end
                                  else
                                  begin
                                    // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
                                    // 0 |Q=1|U=1|01110|o1=0|sz=0|11000|opcode=01111|10|Rn|Rd
                                    // e.g: FMAXV  <V><d>, <Vn>.<T>
                                    exit(0032);
                                  end;
                                end
                                else
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|30|29 |28   |23  |22|21   |16          |11|5 |0 
                                    // 0 |Q |U=0|01110|o1=1|0 |11000|opcode=01111|10|Rn|Rd
                                    // e.g: FMINV  Hd, <Vn>.<T>
                                    exit(0035);
                                  end
                                  else
                                  begin
                                    // 31|30 |29 |28   |23  |22  |21   |16          |11|5 |0 
                                    // 0 |Q=1|U=1|01110|o1=1|sz=0|11000|opcode=01111|10|Rn|Rd
                                    // e.g: FMINV  <V><d>, <Vn>.<T>
                                    exit(0036);
                                  end;
                                end;
                              end;
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                // 0 |Q |U=0|01110|a=1|111100|opcode=01111|10|Rn|Rd
                                // e.g: FABS  <Vd>.<T>, <Vn>.<T>
                                exit(0228);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                                // 0 |Q |U=1|01110|a=1|111100|opcode=01111|10|Rn|Rd
                                // e.g: FNEG  <Vd>.<T>, <Vn>.<T>
                                exit(0244);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              // 31|30|29 |28   |23|22|21   |16          |11|5 |0 
                              // 0 |Q |U=1|01110|1 |sz|10000|opcode=11111|10|Rn|Rd
                              // e.g: FSQRT  <Vd>.<T>, <Vn>.<T>
                              exit(0198);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22    |16          |11|5 |0 
                              // 0 |Q |U=1|01110|a=1|111100|opcode=11111|10|Rn|Rd
                              // e.g: FSQRT  <Vd>.<T>, <Vn>.<T>
                              exit(0254);
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (b and $08 = $00) then
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=10000|1 |Rn|Rd
                              // e.g: ADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0263);
                            end
                            else
                            begin
                              // 31         |16|15|14 |13|11       |5 |0 
                              // 11001110011|Rm|1 |O=0|00|opcode=01|Rn|Rd
                              // e.g: SHA512H2  <Qd>, <Qn>, <Vm>.2D
                              exit(0691);
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=10000|1 |Rn|Rd
                            // e.g: SUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0325);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              if (d and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                                // 0 |Q |U=0|01110|o1=0|sz|1 |Rm|opcode=11000|1 |Rn|Rd
                                // e.g: FMAXNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                                exit(0287);
                              end
                              else
                              begin
                                // 31         |16|15|14 |13|11       |5 |0 
                                // 11001110011|Rm|1 |O=1|00|opcode=01|Rn|Rd
                                // e.g: SM3PARTW2  <Vd>.4S, <Vn>.4S, <Vm>.4S
                                exit(0694);
                              end;
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|o1=0|sz|1 |Rm|opcode=11000|1 |Rn|Rd
                              // e.g: FMAXNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0288);
                            end;
                          end
                          else
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|o1=1|sz|1 |Rm|opcode=11000|1 |Rn|Rd
                              // e.g: FMINNM  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0291);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|o1=1|sz|1 |Rm|opcode=11000|1 |Rn|Rd
                              // e.g: FMINNMP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0292);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=0|01110|size|1 |Rm|1010|o1=0|1 |Rn|Rd
                            // e.g: SMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0313);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|1010|o1=0|1 |Rn|Rd
                            // e.g: UMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0331);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=0|01110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
                              // e.g: FCMEQ  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0282);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                              // 0 |Q |U=1|01110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
                              // e.g: FCMGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0283);
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|E=1|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
                            // e.g: FCMGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0284);
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|size|1 |Rm|opcode=10010|1 |Rn|Rd
                            // e.g: MLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0301);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=10010|1 |Rn|Rd
                            // e.g: MLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0302);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|0 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
                              // e.g: FADD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0280);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|0 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
                              // e.g: FADDP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0281);
                            end;
                          end
                          else
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|1 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
                              // e.g: FSUB  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0300);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|1 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
                              // e.g: FABD  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0277);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|size|1 |Rm|opcode=10110|1 |Rn|Rd
                            // e.g: SQDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0317);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=10110|1 |Rn|Rd
                            // e.g: SQRDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0318);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|o1=0|sz|1 |Rm|opcode=11110|1 |Rn|Rd
                              // e.g: FMAX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0286);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|o1=0|sz|1 |Rm|opcode=11110|1 |Rn|Rd
                              // e.g: FMAXP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0289);
                            end;
                          end
                          else
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|o1=1|sz|1 |Rm|opcode=11110|1 |Rn|Rd
                              // e.g: FMIN  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0290);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|o1=1|sz|1 |Rm|opcode=11110|1 |Rn|Rd
                              // e.g: FMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0293);
                            end;
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $80 = $00) then
                            begin
                              // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|size|1 |Rm|opcode=10001|1 |Rn|Rd
                              // e.g: CMTST  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0275);
                            end
                            else
                            begin
                              // 31         |16|15|14 |13|11       |5 |0 
                              // 11001110011|Rm|1 |O=0|00|opcode=11|Rn|Rd
                              // e.g: RAX1  <Vd>.2D, <Vn>.2D, <Vm>.2D
                              exit(0689);
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|opcode=10001|1 |Rn|Rd
                            // e.g: CMEQ  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0270);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|op=0|sz|1 |Rm|opcode=11001|1 |Rn|Rd
                            // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0294);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |22|21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|op=1|sz|1 |Rm|opcode=11001|1 |Rn|Rd
                            // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0295);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=0|01110|size|1 |Rm|1010|o1=1|1 |Rn|Rd
                            // e.g: SMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0315);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23  |21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|size|1 |Rm|1010|o1=1|1 |Rn|Rd
                            // e.g: UMINP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0333);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|E=0|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
                            // e.g: FACGE  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0278);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                            // 0 |Q |U=1|01110|E=1|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
                            // e.g: FACGT  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0279);
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|size|1 |Rm|opcode=10011|1 |Rn|Rd
                            // e.g: MUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0304);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23     |21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|size=00|1 |Rm|opcode=10011|1 |Rn|Rd
                            // e.g: PMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0307);
                          end;
                        end
                        else
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|0 |sz|1 |Rm|opcode=11011|1 |Rn|Rd
                            // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0297);
                          end
                          else
                          begin
                            // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                            // 0 |Q |U=1|01110|0 |sz|1 |Rm|opcode=11011|1 |Rn|Rd
                            // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0296);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|30|29 |28   |23  |21|16|15          |10|5 |0 
                          // 0 |Q |U=0|01110|size|1 |Rm|opcode=10111|1 |Rn|Rd
                          // e.g: ADDP  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                          exit(0264);
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 0 |Q |U=0|01110|0 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
                              // e.g: FRECPS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0298);
                            end
                            else
                            begin
                              // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 0 |Q |U=1|01110|0 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
                              // e.g: FDIV  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                              exit(0285);
                            end;
                          end
                          else
                          begin
                            // 31|30|29 |28   |23|22|21|16|15          |10|5 |0 
                            // 0 |Q |U=0|01110|1 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
                            // e.g: FRSQRTS  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>
                            exit(0299);
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              if (b and $04 = $00) then
              begin
                if (b and $08 = $00) then
                begin
                  if (b and $10 = $00) then
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (c and $01 = $00) then
                        begin
                          if (c and $02 = $00) then
                          begin
                            if (c and $04 = $00) then
                            begin
                              if (c and $08 = $00) then
                              begin
                                if (c and $10 = $00) then
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTNS  <Wd>, <Sn>
                                    exit(0781);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTNS  <Wd>, <Hn>
                                    exit(0780);
                                  end;
                                end
                                else
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=10|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTMS  <Wd>, <Sn>
                                    exit(0777);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=10|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTMS  <Wd>, <Hn>
                                    exit(0776);
                                  end;
                                end;
                              end
                              else
                              begin
                                if (c and $10 = $00) then
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=01|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTPS  <Wd>, <Sn>
                                    exit(0785);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=01|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTPS  <Wd>, <Hn>
                                    exit(0784);
                                  end;
                                end
                                else
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=11|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTZS  <Wd>, <Sn>
                                    exit(0789);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=11|opcode=000|000000|Rn|Rd
                                    // e.g: FCVTZS  <Wd>, <Hn>
                                    exit(0788);
                                  end;
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=100|000000|Rn|Rd
                                // e.g: FCVTAS  <Wd>, <Sn>
                                exit(0773);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=100|000000|Rn|Rd
                                // e.g: FCVTAS  <Wd>, <Hn>
                                exit(0772);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $04 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=010|000000|Rn|Rd
                                // e.g: SCVTF  <Sd>, <Wn>
                                exit(0800);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=010|000000|Rn|Rd
                                // e.g: SCVTF  <Hd>, <Wn>
                                exit(0799);
                              end;
                            end
                            else
                            begin
                              if (c and $08 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=110|000000|Rn|Rd
                                  // e.g: FMOV  <Wd>, <Sn>
                                  exit(0796);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=110|000000|Rn|Rd
                                  // e.g: FMOV  <Wd>, <Hn>
                                  exit(0793);
                                end;
                              end
                              else
                              begin
                                if (c and $10 = $00) then
                                begin
                                  // 31  |30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                  // sf=1|0 |S=0|11110|type=10|1 |rmode=01|opcode=110|000000|Rn|Rd
                                  // e.g: FMOV  <Xd>, <Vn>.D[1]
                                  exit(0798);
                                end
                                else
                                begin
                                  // 31  |30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                  // sf=0|0 |S=0|11110|type=01|1 |rmode=11|opcode=110|000000|Rn|Rd
                                  // e.g: FJCVTZS  <Wd>, <Dn>
                                  exit(0792);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $02 = $00) then
                          begin
                            if (c and $04 = $00) then
                            begin
                              if (c and $08 = $00) then
                              begin
                                if (c and $10 = $00) then
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTNU  <Wd>, <Sn>
                                    exit(0783);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTNU  <Wd>, <Hn>
                                    exit(0782);
                                  end;
                                end
                                else
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=10|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTMU  <Wd>, <Sn>
                                    exit(0779);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=10|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTMU  <Wd>, <Hn>
                                    exit(0778);
                                  end;
                                end;
                              end
                              else
                              begin
                                if (c and $10 = $00) then
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=01|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTPU  <Wd>, <Sn>
                                    exit(0787);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=01|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTPU  <Wd>, <Hn>
                                    exit(0786);
                                  end;
                                end
                                else
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=0x|1 |rmode=11|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTZU  <Wd>, <Sn>
                                    exit(0791);
                                  end
                                  else
                                  begin
                                    // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                    // sf|0 |S=0|11110|type=11|1 |rmode=11|opcode=001|000000|Rn|Rd
                                    // e.g: FCVTZU  <Wd>, <Hn>
                                    exit(0790);
                                  end;
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=101|000000|Rn|Rd
                                // e.g: FCVTAU  <Wd>, <Sn>
                                exit(0775);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=101|000000|Rn|Rd
                                // e.g: FCVTAU  <Wd>, <Hn>
                                exit(0774);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $04 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=011|000000|Rn|Rd
                                // e.g: UCVTF  <Sd>, <Wn>
                                exit(0802);
                              end
                              else
                              begin
                                // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=011|000000|Rn|Rd
                                // e.g: UCVTF  <Hd>, <Wn>
                                exit(0801);
                              end;
                            end
                            else
                            begin
                              if (c and $08 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                  // sf|0 |S=0|11110|type=0x|1 |rmode=00|opcode=111|000000|Rn|Rd
                                  // e.g: FMOV  <Sd>, <Wn>
                                  exit(0795);
                                end
                                else
                                begin
                                  // 31|30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                  // sf|0 |S=0|11110|type=11|1 |rmode=00|opcode=111|000000|Rn|Rd
                                  // e.g: FMOV  <Hd>, <Wn>
                                  exit(0794);
                                end;
                              end
                              else
                              begin
                                // 31  |30|29 |28   |23     |21|20      |18        |15    |5 |0 
                                // sf=1|0 |S=0|11110|type=10|1 |rmode=01|opcode=111|000000|Rn|Rd
                                // e.g: FMOV  <Vd>.D[1], <Xn>
                                exit(0797);
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (c and $02 = $00) then
                        begin
                          if (b and $80 = $00) then
                          begin
                            if (c and $01 = $00) then
                            begin
                              if (c and $04 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=00|10000|Rn|Rd
                                  // e.g: FMOV  <Sd>, <Sn>
                                  exit(0819);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |0000|opc=00|10000|Rn|Rd
                                  // e.g: FMOV  <Hd>, <Hn>
                                  exit(0818);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=000|10000|Rn|Rd
                                  // e.g: FRINTN  <Sd>, <Sn>
                                  exit(0829);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |001|rmode=000|10000|Rn|Rd
                                  // e.g: FRINTN  <Hd>, <Hn>
                                  exit(0828);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $04 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=10|10000|Rn|Rd
                                  // e.g: FNEG  <Sd>, <Sn>
                                  exit(0821);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |0000|opc=10|10000|Rn|Rd
                                  // e.g: FNEG  <Hd>, <Hn>
                                  exit(0820);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=010|10000|Rn|Rd
                                  // e.g: FRINTM  <Sd>, <Sn>
                                  exit(0827);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |001|rmode=010|10000|Rn|Rd
                                  // e.g: FRINTM  <Hd>, <Hn>
                                  exit(0826);
                                end;
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $01 = $00) then
                            begin
                              if (c and $04 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=01|10000|Rn|Rd
                                  // e.g: FABS  <Sd>, <Sn>
                                  exit(0816);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |0000|opc=01|10000|Rn|Rd
                                  // e.g: FABS  <Hd>, <Hn>
                                  exit(0815);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=001|10000|Rn|Rd
                                  // e.g: FRINTP  <Sd>, <Sn>
                                  exit(0831);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |001|rmode=001|10000|Rn|Rd
                                  // e.g: FRINTP  <Hd>, <Hn>
                                  exit(0830);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $04 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |0000|opc=11|10000|Rn|Rd
                                  // e.g: FSQRT  <Sd>, <Sn>
                                  exit(0837);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20  |16    |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |0000|opc=11|10000|Rn|Rd
                                  // e.g: FSQRT  <Hd>, <Hn>
                                  exit(0836);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=011|10000|Rn|Rd
                                  // e.g: FRINTZ  <Sd>, <Sn>
                                  exit(0835);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |001|rmode=011|10000|Rn|Rd
                                  // e.g: FRINTZ  <Hd>, <Hn>
                                  exit(0834);
                                end;
                              end;
                            end;
                          end;
                        end
                        else
                        begin
                          if (c and $04 = $00) then
                          begin
                            // 31 |30|29 |28   |23  |21|20  |16 |14   |5 |0 
                            // M=0|0 |S=0|11110|type|1 |0001|opc|10000|Rn|Rd
                            // e.g: FCVT  <Sd>, <Hn>
                            exit(0817);
                          end
                          else
                          begin
                            if (b and $80 = $00) then
                            begin
                              if (c and $01 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=100|10000|Rn|Rd
                                  // e.g: FRINTA  <Sd>, <Sn>
                                  exit(0823);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |001|rmode=100|10000|Rn|Rd
                                  // e.g: FRINTA  <Hd>, <Hn>
                                  exit(0822);
                                end;
                              end
                              else
                              begin
                                if (c and $80 = $00) then
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=0x|1 |001|rmode=110|10000|Rn|Rd
                                  // e.g: FRINTX  <Sd>, <Sn>
                                  exit(0833);
                                end
                                else
                                begin
                                  // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                  // M=0|0 |S=0|11110|type=11|1 |001|rmode=110|10000|Rn|Rd
                                  // e.g: FRINTX  <Hd>, <Hn>
                                  exit(0832);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                // M=0|0 |S=0|11110|type=0x|1 |001|rmode=111|10000|Rn|Rd
                                // e.g: FRINTI  <Sd>, <Sn>
                                exit(0825);
                              end
                              else
                              begin
                                // 31 |30|29 |28   |23     |21|20 |17       |14   |5 |0 
                                // M=0|0 |S=0|11110|type=11|1 |001|rmode=111|10000|Rn|Rd
                                // e.g: FRINTI  <Hd>, <Hn>
                                exit(0824);
                              end;
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (a and $08 = $00) then
                      begin
                        if (a and $10 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=0x|1 |Rm|op=00|1000|Rn|opc=00|000
                            // e.g: FCMP  <Sn>, <Sm>
                            exit(0809);
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=11|1 |Rm|op=00|1000|Rn|opc=00|000
                            // e.g: FCMP  <Hn>, <Hm>
                            exit(0807);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=0x|1 |Rm|op=00|1000|Rn|opc=10|000
                            // e.g: FCMPE  <Sn>, <Sm>
                            exit(0813);
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|16|15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=11|1 |Rm|op=00|1000|Rn|opc=10|000
                            // e.g: FCMPE  <Hn>, <Hm>
                            exit(0811);
                          end;
                        end;
                      end
                      else
                      begin
                        if (a and $10 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=0x|1 |Rm=00000|op=00|1000|Rn|opc=01|000
                            // e.g: FCMP  <Sn>, #0.0
                            exit(0810);
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=11|1 |Rm=00000|op=00|1000|Rn|opc=01|000
                            // e.g: FCMP  <Hn>, #0.0
                            exit(0808);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=0x|1 |Rm=00000|op=00|1000|Rn|opc=11|000
                            // e.g: FCMPE  <Sn>, #0.0
                            exit(0814);
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|20      |15   |13  |5 |4     |2  
                            // M=0|0 |S=0|11110|type=11|1 |Rm=00000|op=00|1000|Rn|opc=11|000
                            // e.g: FCMPE  <Hn>, #0.0
                            exit(0812);
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (d and $40 = $00) then
                    begin
                      if (c and $80 = $00) then
                      begin
                        // 31 |30|29 |28   |23     |21|13  |12 |9         |0 
                        // M=0|0 |S=0|11110|type=0x|1 |imm8|100|imm5=00000|Rd
                        // e.g: FMOV  <Sd>, #<imm>
                        exit(0865);
                      end
                      else
                      begin
                        // 31 |30|29 |28   |23     |21|13  |12 |9         |0 
                        // M=0|0 |S=0|11110|type=11|1 |imm8|100|imm5=00000|Rd
                        // e.g: FMOV  <Hd>, #<imm>
                        exit(0864);
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|29 |28   |23  |21|16|15|13  |12|11|5 |0 
                          // 01|U=0|11110|size|1 |Rm|10|o1=0|1 |00|Rn|Rd
                          // e.g: SQDMLAL  <Va><d>, <Vb><n>, <Vb><m>
                          exit(0415);
                        end
                        else
                        begin
                          // 31|29 |28   |23  |21|16|15         |11|5 |0 
                          // 01|U=0|11110|size|1 |Rm|opcode=1101|00|Rn|Rd
                          // e.g: SQDMULL  <Va><d>, <Vb><n>, <Vb><m>
                          exit(0417);
                        end;
                      end
                      else
                      begin
                        // 31|29 |28   |23  |21|16|15|13  |12|11|5 |0 
                        // 01|U=0|11110|size|1 |Rm|10|o1=1|1 |00|Rn|Rd
                        // e.g: SQDMLSL  <Va><d>, <Vb><n>, <Vb><m>
                        exit(0416);
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (b and $10 = $00) then
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
                              // M=0|0 |S=0|11110|type=0x|1 |Rm|op=0|000|10|Rn|Rd
                              // e.g: FMUL  <Sd>, <Sn>, <Sm>
                              exit(0851);
                            end
                            else
                            begin
                              // 31      |23     |21   |16          |11|5 |0 
                              // 01011110|size=00|10100|opcode=00000|10|Rn|Rd
                              // e.g: SHA1H  <Sd>, <Sn>
                              exit(0677);
                            end;
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
                            // M=0|0 |S=0|11110|type=11|1 |Rm|op=0|000|10|Rn|Rd
                            // e.g: FMUL  <Hd>, <Hn>, <Hm>
                            exit(0850);
                          end;
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
                            // M=0|0 |S=0|11110|type=0x|1 |Rm|op=1|000|10|Rn|Rd
                            // e.g: FNMUL  <Sd>, <Sn>, <Sm>
                            exit(0853);
                          end
                          else
                          begin
                            if (d and $20 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31 |30|29 |28   |23     |21|16|15  |14 |11|5 |0 
                                // M=0|0 |S=0|11110|type=11|1 |Rm|op=1|000|10|Rn|Rd
                                // e.g: FNMUL  <Hd>, <Hn>, <Hm>
                                exit(0852);
                              end
                              else
                              begin
                                // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
                                // 01|U=0|11110|size=11|10000|0100|op=0|10|Rn|Rd
                                // e.g: CMGT  <V><d>, <V><n>, #0
                                exit(0476);
                              end;
                            end
                            else
                            begin
                              // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
                              // 01|U=1|11110|size=11|10000|0100|op=0|10|Rn|Rd
                              // e.g: CMGE  <V><d>, <V><n>, #0
                              exit(0475);
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                                // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=00|10|Rn|Rd
                                // e.g: FMAX  <Sd>, <Sn>, <Sm>
                                exit(0843);
                              end
                              else
                              begin
                                // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                                // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=00|10|Rn|Rd
                                // e.g: FMAX  <Hd>, <Hn>, <Hm>
                                exit(0842);
                              end;
                            end
                            else
                            begin
                              // 31|29 |28   |23  |21   |16          |11|5 |0 
                              // 01|U=0|11110|size|10000|opcode=10100|10|Rn|Rd
                              // e.g: SQXTN  <Vb><d>, <Va><n>
                              exit(0502);
                            end;
                          end
                          else
                          begin
                            // 31|29 |28   |23  |21   |16          |11|5 |0 
                            // 01|U=1|11110|size|10000|opcode=10100|10|Rn|Rd
                            // e.g: UQXTN  <Vb><d>, <Va><n>
                            exit(0506);
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                  // 01|U=0|11110|1 |sz|10000|0110|op=0|10|Rn|Rd
                                  // e.g: FCMGT  <V><d>, <V><n>, #0.0
                                  exit(0481);
                                end
                                else
                                begin
                                  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                  // 01|U=1|11110|1 |sz|10000|0110|op=0|10|Rn|Rd
                                  // e.g: FCMGE  <V><d>, <V><n>, #0.0
                                  exit(0480);
                                end;
                              end
                              else
                              begin
                                if (c and $40 = $00) then
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    if (d and $20 = $00) then
                                    begin
                                      // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                      // 01|U=0|11110|o1=0|sz=0|11000|opcode=01100|10|Rn|Rd
                                      // e.g: FMAXNMP  <V><d>, <Vn>.<T>
                                      exit(0534);
                                    end
                                    else
                                    begin
                                      // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                      // 01|U=1|11110|o1=0|sz=0|11000|opcode=01100|10|Rn|Rd
                                      // e.g: FMAXNMP  <V><d>, <Vn>.<T>
                                      exit(0535);
                                    end;
                                  end
                                  else
                                  begin
                                    if (d and $20 = $00) then
                                    begin
                                      // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                      // 01|U=0|11110|o1=1|sz=0|11000|opcode=01100|10|Rn|Rd
                                      // e.g: FMINNMP  <V><d>, <Vn>.<T>
                                      exit(0540);
                                    end
                                    else
                                    begin
                                      // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                      // 01|U=1|11110|o1=1|sz=0|11000|opcode=01100|10|Rn|Rd
                                      // e.g: FMINNMP  <V><d>, <Vn>.<T>
                                      exit(0542);
                                    end;
                                  end;
                                end
                                else
                                begin
                                  if (c and $80 = $00) then
                                  begin
                                    // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                    // 01|U=1|11110|o1=0|sz=1|11000|opcode=01100|10|Rn|Rd
                                    // e.g: FMAXNMP  <V><d>, <Vn>.<T>
                                    exit(0536);
                                  end
                                  else
                                  begin
                                    // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                    // 01|U=1|11110|o1=1|sz=1|11000|opcode=01100|10|Rn|Rd
                                    // e.g: FMINNMP  <V><d>, <Vn>.<T>
                                    exit(0541);
                                  end;
                                end;
                              end;
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
                                // 01|U=0|11110|a=1|111100|0110|op=0|10|Rn|Rd
                                // e.g: FCMGT  <Hd>, <Hn>, #0.0
                                exit(0510);
                              end
                              else
                              begin
                                // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
                                // 01|U=1|11110|a=1|111100|0110|op=0|10|Rn|Rd
                                // e.g: FCMGE  <Hd>, <Hn>, #0.0
                                exit(0509);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|29 |28   |23|22|21   |16          |11|5 |0 
                                // 01|U=0|11110|0 |sz|10000|opcode=11100|10|Rn|Rd
                                // e.g: FCVTAS  <V><d>, <V><n>
                                exit(0484);
                              end
                              else
                              begin
                                // 31|29 |28   |23|22|21   |16          |11|5 |0 
                                // 01|U=1|11110|0 |sz|10000|opcode=11100|10|Rn|Rd
                                // e.g: FCVTAU  <V><d>, <V><n>
                                exit(0485);
                              end;
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|29 |28   |23       |22    |16          |11|5 |0 
                                // 01|U=0|11110|size<1>=0|111100|opcode=11100|10|Rn|Rd
                                // e.g: FCVTAS  <Hd>, <Hn>
                                exit(0513);
                              end
                              else
                              begin
                                // 31|29 |28   |23       |22    |16          |11|5 |0 
                                // 01|U=1|11110|size<1>=0|111100|opcode=11100|10|Rn|Rd
                                // e.g: FCVTAU  <Hd>, <Hn>
                                exit(0514);
                              end;
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (c and $80 = $00) then
                            begin
                              if (d and $40 = $00) then
                              begin
                                // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
                                // M=0|0 |S=0|11110|type=0x|1 |Rm|001|op=0|10|Rn|Rd
                                // e.g: FADD  <Sd>, <Sn>, <Sm>
                                exit(0839);
                              end
                              else
                              begin
                                // 31      |23     |21   |16          |11|5 |0 
                                // 01011110|size=00|10100|opcode=00010|10|Rn|Rd
                                // e.g: SHA256SU0  <Vd>.4S, <Vn>.4S
                                exit(0679);
                              end;
                            end
                            else
                            begin
                              // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
                              // M=0|0 |S=0|11110|type=11|1 |Rm|001|op=0|10|Rn|Rd
                              // e.g: FADD  <Hd>, <Hn>, <Hm>
                              exit(0838);
                            end;
                          end
                          else
                          begin
                            // 31|29 |28   |23  |21   |16          |11|5 |0 
                            // 01|U=1|11110|size|10000|opcode=10010|10|Rn|Rd
                            // e.g: SQXTUN  <Vb><d>, <Va><n>
                            exit(0503);
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            // 31|29 |28   |23     |21   |16          |11|5 |0 
                            // 01|U=0|11110|size=11|10000|opcode=01010|10|Rn|Rd
                            // e.g: CMLT  <V><d>, <V><n>, #0
                            exit(0478);
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 01|U=0|11110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTNS  <V><d>, <V><n>
                                  exit(0488);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 01|U=1|11110|o2=0|sz|10000|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTNU  <V><d>, <V><n>
                                  exit(0489);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 01|U=0|11110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTPS  <V><d>, <V><n>
                                  exit(0490);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                  // 01|U=1|11110|o2=1|sz|10000|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTPU  <V><d>, <V><n>
                                  exit(0491);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=0|11110|o2=0|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTNS  <Hd>, <Hn>
                                  exit(0517);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=1|11110|o2=0|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTNU  <Hd>, <Hn>
                                  exit(0518);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=0|11110|o2=1|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTPS  <Hd>, <Hn>
                                  exit(0519);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=1|11110|o2=1|111100|1101|o1=0|10|Rn|Rd
                                  // e.g: FCVTPU  <Hd>, <Hn>
                                  exit(0520);
                                end;
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                              // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=10|10|Rn|Rd
                              // e.g: FMAXNM  <Sd>, <Sn>, <Sm>
                              exit(0845);
                            end
                            else
                            begin
                              // 31|29 |28   |23|22  |21   |16          |11|5 |0 
                              // 01|U=1|11110|0 |sz=1|10000|opcode=10110|10|Rn|Rd
                              // e.g: FCVTXN  <Vb><d>, <Va><n>
                              exit(0492);
                            end;
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                            // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=10|10|Rn|Rd
                            // e.g: FMAXNM  <Hd>, <Hn>, <Hm>
                            exit(0844);
                          end;
                        end
                        else
                        begin
                          if (c and $08 = $00) then
                          begin
                            // 31|29 |28   |23|22|21   |16          |11|5 |0 
                            // 01|U=0|11110|1 |sz|10000|opcode=01110|10|Rn|Rd
                            // e.g: FCMLT  <V><d>, <V><n>, #0.0
                            exit(0483);
                          end
                          else
                          begin
                            // 31|29 |28   |23 |22    |16          |11|5 |0 
                            // 01|U=0|11110|a=1|111100|opcode=01110|10|Rn|Rd
                            // e.g: FCMLT  <Hd>, <Hn>, #0.0
                            exit(0512);
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              // 31 |30|29 |28   |23     |21|16|15         |11|5 |0 
                              // M=0|0 |S=0|11110|type=0x|1 |Rm|opcode=0001|10|Rn|Rd
                              // e.g: FDIV  <Sd>, <Sn>, <Sm>
                              exit(0841);
                            end
                            else
                            begin
                              // 31      |23     |21   |16          |11|5 |0 
                              // 01011110|size=00|10100|opcode=00001|10|Rn|Rd
                              // e.g: SHA1SU1  <Vd>.4S, <Vn>.4S
                              exit(0678);
                            end;
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|16|15         |11|5 |0 
                            // M=0|0 |S=0|11110|type=11|1 |Rm|opcode=0001|10|Rn|Rd
                            // e.g: FDIV  <Hd>, <Hn>, <Hm>
                            exit(0840);
                          end;
                        end
                        else
                        begin
                          if (d and $20 = $00) then
                          begin
                            // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
                            // 01|U=0|11110|size=11|10000|0100|op=1|10|Rn|Rd
                            // e.g: CMEQ  <V><d>, <V><n>, #0
                            exit(0474);
                          end
                          else
                          begin
                            // 31|29 |28   |23     |21   |16  |12  |11|5 |0 
                            // 01|U=1|11110|size=11|10000|0100|op=1|10|Rn|Rd
                            // e.g: CMLE  <V><d>, <V><n>, #0
                            exit(0477);
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                            // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=01|10|Rn|Rd
                            // e.g: FMIN  <Sd>, <Sn>, <Sm>
                            exit(0847);
                          end
                          else
                          begin
                            // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                            // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=01|10|Rn|Rd
                            // e.g: FMIN  <Hd>, <Hn>, <Hm>
                            exit(0846);
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                  // 01|U=0|11110|1 |sz|10000|0110|op=1|10|Rn|Rd
                                  // e.g: FCMEQ  <V><d>, <V><n>, #0.0
                                  exit(0479);
                                end
                                else
                                begin
                                  // 31|29 |28   |23|22|21   |16  |12  |11|5 |0 
                                  // 01|U=1|11110|1 |sz|10000|0110|op=1|10|Rn|Rd
                                  // e.g: FCMLE  <V><d>, <V><n>, #0.0
                                  exit(0482);
                                end;
                              end
                              else
                              begin
                                if (c and $40 = $00) then
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|29 |28   |23|22  |21   |16          |11|5 |0 
                                    // 01|U=0|11110|0 |sz=0|11000|opcode=01101|10|Rn|Rd
                                    // e.g: FADDP  <V><d>, <Vn>.<T>
                                    exit(0531);
                                  end
                                  else
                                  begin
                                    // 31|29 |28   |23|22  |21   |16          |11|5 |0 
                                    // 01|U=1|11110|0 |sz=0|11000|opcode=01101|10|Rn|Rd
                                    // e.g: FADDP  <V><d>, <Vn>.<T>
                                    exit(0532);
                                  end;
                                end
                                else
                                begin
                                  // 31|29 |28   |23|22  |21   |16          |11|5 |0 
                                  // 01|U=1|11110|0 |sz=1|11000|opcode=01101|10|Rn|Rd
                                  // e.g: FADDP  <V><d>, <Vn>.<T>
                                  exit(0533);
                                end;
                              end;
                            end
                            else
                            begin
                              if (d and $20 = $00) then
                              begin
                                // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
                                // 01|U=0|11110|a=1|111100|0110|op=1|10|Rn|Rd
                                // e.g: FCMEQ  <Hd>, <Hn>, #0.0
                                exit(0508);
                              end
                              else
                              begin
                                // 31|29 |28   |23 |22    |16  |12  |11|5 |0 
                                // 01|U=1|11110|a=1|111100|0110|op=1|10|Rn|Rd
                                // e.g: FCMLE  <Hd>, <Hn>, #0.0
                                exit(0511);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 01|U=0|11110|0 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: SCVTF  <V><d>, <V><n>
                                  exit(0499);
                                end
                                else
                                begin
                                  // 31|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 01|U=1|11110|0 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: UCVTF  <V><d>, <V><n>
                                  exit(0505);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 01|U=0|11110|1 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: FRECPE  <V><d>, <V><n>
                                  exit(0495);
                                end
                                else
                                begin
                                  // 31|29 |28   |23|22|21   |16          |11|5 |0 
                                  // 01|U=1|11110|1 |sz|10000|opcode=11101|10|Rn|Rd
                                  // e.g: FRSQRTE  <V><d>, <V><n>
                                  exit(0497);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23 |22    |16          |11|5 |0 
                                  // 01|U=0|11110|a=0|111100|opcode=11101|10|Rn|Rd
                                  // e.g: SCVTF  <Hd>, <Hn>
                                  exit(0526);
                                end
                                else
                                begin
                                  // 31|29 |28   |23 |22    |16          |11|5 |0 
                                  // 01|U=1|11110|a=0|111100|opcode=11101|10|Rn|Rd
                                  // e.g: UCVTF  <Hd>, <Hn>
                                  exit(0527);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23       |22    |16          |11|5 |0 
                                  // 01|U=0|11110|size<1>=1|111100|opcode=11101|10|Rn|Rd
                                  // e.g: FRECPE  <Hd>, <Hn>
                                  exit(0523);
                                end
                                else
                                begin
                                  // 31|29 |28   |23 |22    |16          |11|5 |0 
                                  // 01|U=1|11110|a=1|111100|opcode=11101|10|Rn|Rd
                                  // e.g: FRSQRTE  <Hd>, <Hn>
                                  exit(0525);
                                end;
                              end;
                            end;
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
                                // M=0|0 |S=0|11110|type=0x|1 |Rm|001|op=1|10|Rn|Rd
                                // e.g: FSUB  <Sd>, <Sn>, <Sm>
                                exit(0855);
                              end
                              else
                              begin
                                // 31 |30|29 |28   |23     |21|16|15 |12  |11|5 |0 
                                // M=0|0 |S=0|11110|type=11|1 |Rm|001|op=1|10|Rn|Rd
                                // e.g: FSUB  <Hd>, <Hn>, <Hm>
                                exit(0854);
                              end;
                            end
                            else
                            begin
                              // 31|29 |28   |23  |21   |16          |11|5 |0 
                              // 01|U=0|11110|size|10000|opcode=00011|10|Rn|Rd
                              // e.g: SUQADD  <V><d>, <V><n>
                              exit(0504);
                            end;
                          end
                          else
                          begin
                            // 31|29 |28   |23  |21   |16          |11|5 |0 
                            // 01|U=1|11110|size|10000|opcode=00011|10|Rn|Rd
                            // e.g: USQADD  <V><d>, <V><n>
                            exit(0507);
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (d and $20 = $00) then
                            begin
                              // 31|29 |28   |23     |21   |16          |11|5 |0 
                              // 01|U=0|11110|size=11|10000|opcode=01011|10|Rn|Rd
                              // e.g: ABS  <V><d>, <V><n>
                              exit(0473);
                            end
                            else
                            begin
                              // 31|29 |28   |23     |21   |16          |11|5 |0 
                              // 01|U=1|11110|size=11|10000|opcode=01011|10|Rn|Rd
                              // e.g: NEG  <V><d>, <V><n>
                              exit(0498);
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              if (c and $10 = $00) then
                              begin
                                if (c and $80 = $00) then
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 01|U=0|11110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTMS  <V><d>, <V><n>
                                    exit(0486);
                                  end
                                  else
                                  begin
                                    // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 01|U=1|11110|o2=0|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTMU  <V><d>, <V><n>
                                    exit(0487);
                                  end;
                                end
                                else
                                begin
                                  if (d and $20 = $00) then
                                  begin
                                    // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 01|U=0|11110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTZS  <V><d>, <V><n>
                                    exit(0493);
                                  end
                                  else
                                  begin
                                    // 31|29 |28   |23  |22|21   |16  |12  |11|5 |0 
                                    // 01|U=1|11110|o2=1|sz|10000|1101|o1=1|10|Rn|Rd
                                    // e.g: FCVTZU  <V><d>, <V><n>
                                    exit(0494);
                                  end;
                                end;
                              end
                              else
                              begin
                                // 31|29 |28   |23     |21   |16          |11|5 |0 
                                // 01|U=0|11110|size=11|11000|opcode=11011|10|Rn|Rd
                                // e.g: ADDP  <V><d>, <Vn>.<T>
                                exit(0530);
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=0|11110|o2=0|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTMS  <Hd>, <Hn>
                                  exit(0515);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=1|11110|o2=0|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTMU  <Hd>, <Hn>
                                  exit(0516);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=0|11110|o2=1|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTZS  <Hd>, <Hn>
                                  exit(0521);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22    |16  |12  |11|5 |0 
                                  // 01|U=1|11110|o2=1|111100|1101|o1=1|10|Rn|Rd
                                  // e.g: FCVTZU  <Hd>, <Hn>
                                  exit(0522);
                                end;
                              end;
                            end;
                          end;
                        end;
                      end
                      else
                      begin
                        if (b and $80 = $00) then
                        begin
                          if (d and $20 = $00) then
                          begin
                            if (d and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                                // M=0|0 |S=0|11110|type=0x|1 |Rm|01|op=11|10|Rn|Rd
                                // e.g: FMINNM  <Sd>, <Sn>, <Sm>
                                exit(0849);
                              end
                              else
                              begin
                                // 31 |30|29 |28   |23     |21|16|15|13   |11|5 |0 
                                // M=0|0 |S=0|11110|type=11|1 |Rm|01|op=11|10|Rn|Rd
                                // e.g: FMINNM  <Hd>, <Hn>, <Hm>
                                exit(0848);
                              end;
                            end
                            else
                            begin
                              // 31|29 |28   |23  |21   |16          |11|5 |0 
                              // 01|U=0|11110|size|10000|opcode=00111|10|Rn|Rd
                              // e.g: SQABS  <V><d>, <V><n>
                              exit(0500);
                            end;
                          end
                          else
                          begin
                            // 31|29 |28   |23  |21   |16          |11|5 |0 
                            // 01|U=1|11110|size|10000|opcode=00111|10|Rn|Rd
                            // e.g: SQNEG  <V><d>, <V><n>
                            exit(0501);
                          end;
                        end
                        else
                        begin
                          if (c and $01 = $00) then
                          begin
                            if (c and $40 = $00) then
                            begin
                              if (c and $80 = $00) then
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                  // 01|U=0|11110|o1=0|sz=0|11000|opcode=01111|10|Rn|Rd
                                  // e.g: FMAXP  <V><d>, <Vn>.<T>
                                  exit(0537);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                  // 01|U=1|11110|o1=0|sz=0|11000|opcode=01111|10|Rn|Rd
                                  // e.g: FMAXP  <V><d>, <Vn>.<T>
                                  exit(0538);
                                end;
                              end
                              else
                              begin
                                if (d and $20 = $00) then
                                begin
                                  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                  // 01|U=0|11110|o1=1|sz=0|11000|opcode=01111|10|Rn|Rd
                                  // e.g: FMINP  <V><d>, <Vn>.<T>
                                  exit(0543);
                                end
                                else
                                begin
                                  // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                  // 01|U=1|11110|o1=1|sz=0|11000|opcode=01111|10|Rn|Rd
                                  // e.g: FMINP  <V><d>, <Vn>.<T>
                                  exit(0545);
                                end;
                              end;
                            end
                            else
                            begin
                              if (c and $80 = $00) then
                              begin
                                // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                // 01|U=1|11110|o1=0|sz=1|11000|opcode=01111|10|Rn|Rd
                                // e.g: FMAXP  <V><d>, <Vn>.<T>
                                exit(0539);
                              end
                              else
                              begin
                                // 31|29 |28   |23  |22  |21   |16          |11|5 |0 
                                // 01|U=1|11110|o1=1|sz=1|11000|opcode=01111|10|Rn|Rd
                                // e.g: FMINP  <V><d>, <Vn>.<T>
                                exit(0544);
                              end;
                            end;
                          end
                          else
                          begin
                            if (c and $08 = $00) then
                            begin
                              // 31|29 |28   |23|22|21   |16          |11|5 |0 
                              // 01|U=0|11110|1 |sz|10000|opcode=11111|10|Rn|Rd
                              // e.g: FRECPX  <V><d>, <V><n>
                              exit(0496);
                            end
                            else
                            begin
                              // 31|29 |28   |23 |22    |16          |11|5 |0 
                              // 01|U=0|11110|a=1|111100|opcode=11111|10|Rn|Rd
                              // e.g: FRECPX  <Hd>, <Hn>
                              exit(0524);
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (b and $08 = $00) then
                begin
                  if (d and $20 = $00) then
                  begin
                    if (d and $40 = $00) then
                    begin
                      if (a and $10 = $00) then
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
                          // M=0|0 |S=0|11110|type=0x|1 |Rm|cond|01|Rn|op=0|nzcv
                          // e.g: FCCMP  <Sn>, <Sm>, #<nzcv>, <cond>
                          exit(0804);
                        end
                        else
                        begin
                          // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
                          // M=0|0 |S=0|11110|type=11|1 |Rm|cond|01|Rn|op=0|nzcv
                          // e.g: FCCMP  <Hn>, <Hm>, #<nzcv>, <cond>
                          exit(0803);
                        end;
                      end
                      else
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
                          // M=0|0 |S=0|11110|type=0x|1 |Rm|cond|01|Rn|op=1|nzcv
                          // e.g: FCCMPE  <Sn>, <Sm>, #<nzcv>, <cond>
                          exit(0806);
                        end
                        else
                        begin
                          // 31 |30|29 |28   |23     |21|16|12  |11|5 |4   |0   
                          // M=0|0 |S=0|11110|type=11|1 |Rm|cond|01|Rn|op=1|nzcv
                          // e.g: FCCMPE  <Hn>, <Hm>, #<nzcv>, <cond>
                          exit(0805);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|29 |28   |23     |21|16|15          |10|5 |0 
                            // 01|U=0|11110|size=11|1 |Rm|opcode=10000|1 |Rn|Rd
                            // e.g: ADD  <V><d>, <V><n>, <V><m>
                            exit(0546);
                          end
                          else
                          begin
                            // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
                            // 01|U=0|11110|size=11|1 |Rm|010|R=0|S=0|1 |Rn|Rd
                            // e.g: SSHL  <V><d>, <V><n>, <V><m>
                            exit(0569);
                          end;
                        end
                        else
                        begin
                          // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                          // 01|U=0|11110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
                          // e.g: FCMEQ  <V><d>, <V><n>, <V><m>
                          exit(0556);
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
                          // 01|U=0|11110|size=11|1 |Rm|010|R=1|S=0|1 |Rn|Rd
                          // e.g: SRSHL  <V><d>, <V><n>, <V><m>
                          exit(0568);
                        end
                        else
                        begin
                          if (b and $80 = $00) then
                          begin
                            // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
                            // 01|U=0|11110|size=11|1 |Rm|0011|eq=0|1 |Rn|Rd
                            // e.g: CMGT  <V><d>, <V><n>, <V><m>
                            exit(0549);
                          end
                          else
                          begin
                            // 31|29 |28   |23  |21|16|15          |10|5 |0 
                            // 01|U=0|11110|size|1 |Rm|opcode=10110|1 |Rn|Rd
                            // e.g: SQDMULH  <V><d>, <V><n>, <V><m>
                            exit(0563);
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|29 |28   |23     |21|16|15          |10|5 |0 
                          // 01|U=1|11110|size=11|1 |Rm|opcode=10000|1 |Rn|Rd
                          // e.g: SUB  <V><d>, <V><n>, <V><m>
                          exit(0570);
                        end
                        else
                        begin
                          // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
                          // 01|U=1|11110|size=11|1 |Rm|010|R=0|S=0|1 |Rn|Rd
                          // e.g: USHL  <V><d>, <V><n>, <V><m>
                          exit(0576);
                        end;
                      end
                      else
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                          // 01|U=1|11110|E=0|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
                          // e.g: FCMGE  <V><d>, <V><n>, <V><m>
                          exit(0557);
                        end
                        else
                        begin
                          // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                          // 01|U=1|11110|E=1|sz|1 |Rm|1110|ac=0|1 |Rn|Rd
                          // e.g: FCMGT  <V><d>, <V><n>, <V><m>
                          exit(0558);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $80 = $00) then
                        begin
                          // 31|29 |28   |23     |21|16|15 |12 |11 |10|5 |0 
                          // 01|U=1|11110|size=11|1 |Rm|010|R=1|S=0|1 |Rn|Rd
                          // e.g: URSHL  <V><d>, <V><n>, <V><m>
                          exit(0575);
                        end
                        else
                        begin
                          // 31|29 |28   |23|22|21|16|15          |10|5 |0 
                          // 01|U=1|11110|1 |sz|1 |Rm|opcode=11010|1 |Rn|Rd
                          // e.g: FABD  <V><d>, <V><n>, <V><m>
                          exit(0553);
                        end;
                      end
                      else
                      begin
                        if (b and $80 = $00) then
                        begin
                          // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
                          // 01|U=1|11110|size=11|1 |Rm|0011|eq=0|1 |Rn|Rd
                          // e.g: CMHI  <V><d>, <V><n>, <V><m>
                          exit(0550);
                        end
                        else
                        begin
                          // 31|29 |28   |23  |21|16|15          |10|5 |0 
                          // 01|U=1|11110|size|1 |Rm|opcode=10110|1 |Rn|Rd
                          // e.g: SQRDMULH  <V><d>, <V><n>, <V><m>
                          exit(0564);
                        end;
                      end;
                    end;
                  end;
                end
                else
                begin
                  if (d and $20 = $00) then
                  begin
                    if (d and $40 = $00) then
                    begin
                      if (c and $80 = $00) then
                      begin
                        // 31 |30|29 |28   |23     |21|16|12  |11|5 |0 
                        // M=0|0 |S=0|11110|type=0x|1 |Rm|cond|11|Rn|Rd
                        // e.g: FCSEL  <Sd>, <Sn>, <Sm>, <cond>
                        exit(0867);
                      end
                      else
                      begin
                        // 31 |30|29 |28   |23     |21|16|12  |11|5 |0 
                        // M=0|0 |S=0|11110|type=11|1 |Rm|cond|11|Rn|Rd
                        // e.g: FCSEL  <Hd>, <Hn>, <Hm>, <cond>
                        exit(0866);
                      end;
                    end
                    else
                    begin
                      if (b and $10 = $00) then
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $40 = $00) then
                          begin
                            if (b and $80 = $00) then
                            begin
                              // 31|29 |28   |23  |21|16|15          |10|5 |0 
                              // 01|U=0|11110|size|1 |Rm|opcode=00001|1 |Rn|Rd
                              // e.g: SQADD  <V><d>, <V><n>, <V><m>
                              exit(0562);
                            end
                            else
                            begin
                              // 31|29 |28   |23     |21|16|15          |10|5 |0 
                              // 01|U=0|11110|size=11|1 |Rm|opcode=10001|1 |Rn|Rd
                              // e.g: CMTST  <V><d>, <V><n>, <V><m>
                              exit(0552);
                            end;
                          end
                          else
                          begin
                            // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                            // 01|U=0|11110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
                            // e.g: SQSHL  <V><d>, <V><n>, <V><m>
                            exit(0566);
                          end;
                        end
                        else
                        begin
                          // 31|29 |28   |23  |21|16|15          |10|5 |0 
                          // 01|U=0|11110|size|1 |Rm|opcode=00101|1 |Rn|Rd
                          // e.g: SQSUB  <V><d>, <V><n>, <V><m>
                          exit(0567);
                        end;
                      end
                      else
                      begin
                        if (b and $20 = $00) then
                        begin
                          if (b and $80 = $00) then
                          begin
                            // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                            // 01|U=0|11110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
                            // e.g: SQRSHL  <V><d>, <V><n>, <V><m>
                            exit(0565);
                          end
                          else
                          begin
                            // 31|29 |28   |23|22|21|16|15          |10|5 |0 
                            // 01|U=0|11110|0 |sz|1 |Rm|opcode=11011|1 |Rn|Rd
                            // e.g: FMULX  <V><d>, <V><n>, <V><m>
                            exit(0559);
                          end;
                        end
                        else
                        begin
                          if (b and $40 = $00) then
                          begin
                            // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
                            // 01|U=0|11110|size=11|1 |Rm|0011|eq=1|1 |Rn|Rd
                            // e.g: CMGE  <V><d>, <V><n>, <V><m>
                            exit(0548);
                          end
                          else
                          begin
                            if (c and $80 = $00) then
                            begin
                              // 31|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 01|U=0|11110|0 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
                              // e.g: FRECPS  <V><d>, <V><n>, <V><m>
                              exit(0560);
                            end
                            else
                            begin
                              // 31|29 |28   |23|22|21|16|15          |10|5 |0 
                              // 01|U=0|11110|1 |sz|1 |Rm|opcode=11111|1 |Rn|Rd
                              // e.g: FRSQRTS  <V><d>, <V><n>, <V><m>
                              exit(0561);
                            end;
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (b and $80 = $00) then
                          begin
                            // 31|29 |28   |23  |21|16|15          |10|5 |0 
                            // 01|U=1|11110|size|1 |Rm|opcode=00001|1 |Rn|Rd
                            // e.g: UQADD  <V><d>, <V><n>, <V><m>
                            exit(0571);
                          end
                          else
                          begin
                            // 31|29 |28   |23     |21|16|15          |10|5 |0 
                            // 01|U=1|11110|size=11|1 |Rm|opcode=10001|1 |Rn|Rd
                            // e.g: CMEQ  <V><d>, <V><n>, <V><m>
                            exit(0547);
                          end;
                        end
                        else
                        begin
                          // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                          // 01|U=1|11110|size|1 |Rm|010|R=0|S=1|1 |Rn|Rd
                          // e.g: UQSHL  <V><d>, <V><n>, <V><m>
                          exit(0573);
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|29 |28   |23  |21|16|15          |10|5 |0 
                          // 01|U=1|11110|size|1 |Rm|opcode=00101|1 |Rn|Rd
                          // e.g: UQSUB  <V><d>, <V><n>, <V><m>
                          exit(0574);
                        end
                        else
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                            // 01|U=1|11110|E=0|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
                            // e.g: FACGE  <V><d>, <V><n>, <V><m>
                            exit(0554);
                          end
                          else
                          begin
                            // 31|29 |28   |23 |22|21|16|15  |11  |10|5 |0 
                            // 01|U=1|11110|E=1|sz|1 |Rm|1110|ac=1|1 |Rn|Rd
                            // e.g: FACGT  <V><d>, <V><n>, <V><m>
                            exit(0555);
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        // 31|29 |28   |23  |21|16|15 |12 |11 |10|5 |0 
                        // 01|U=1|11110|size|1 |Rm|010|R=1|S=1|1 |Rn|Rd
                        // e.g: UQRSHL  <V><d>, <V><n>, <V><m>
                        exit(0572);
                      end
                      else
                      begin
                        // 31|29 |28   |23     |21|16|15  |11  |10|5 |0 
                        // 01|U=1|11110|size=11|1 |Rm|0011|eq=1|1 |Rn|Rd
                        // e.g: CMHS  <V><d>, <V><n>, <V><m>
                        exit(0551);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        if (d and $02 = $00) then
        begin
          if (c and $40 = $00) then
          begin
            if (d and $10 = $00) then
            begin
              if (c and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
                      // 0 |Q |0011010|L=0|R=0|00000|opcode=xx0|S |size|Rn|Rt
                      // e.g: ST1  { <Vt>.B }[<index>], [<Xn|SP>]
                      exit(0457);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
                      // 0 |Q |0011010|L=0|R=1|00000|opcode=xx0|S |size|Rn|Rt
                      // e.g: ST2  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>]
                      exit(0458);
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
                      // 0 |Q |0011010|L=0|R=0|00000|opcode=xx1|S |size|Rn|Rt
                      // e.g: ST3  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]
                      exit(0459);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12|11  |9 |0 
                      // 0 |Q |0011010|L=0|R=1|00000|opcode=xx1|S |size|Rn|Rt
                      // e.g: ST4  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>]
                      exit(0460);
                    end;
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|010|L=0|imm7|Rt2|Rn|Rt
                  // e.g: STP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
                  exit(0989);
                end;
              end
              else
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
                      // 0 |Q |0011011|L=0|R=0|Rm|opcode=xx0|S |size|Rn|Rt
                      // e.g: ST1  { <Vt>.B }[<index>], [<Xn|SP>], #1
                      exit(0469);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
                      // 0 |Q |0011011|L=0|R=1|Rm|opcode=xx0|S |size|Rn|Rt
                      // e.g: ST2  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], #2
                      exit(0470);
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
                      // 0 |Q |0011011|L=0|R=0|Rm|opcode=xx1|S |size|Rn|Rt
                      // e.g: ST3  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], #3
                      exit(0471);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20|15        |12|11  |9 |0 
                      // 0 |Q |0011011|L=0|R=1|Rm|opcode=xx1|S |size|Rn|Rt
                      // e.g: ST4  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], #4
                      exit(0472);
                    end;
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|011|L=0|imm7|Rt2|Rn|Rt
                  // e.g: STP  <St1>, <St2>, [<Xn|SP>, #<imm>]!
                  exit(0999);
                end;
              end;
            end
            else
            begin
              // 31  |29 |26 |25|23    |10   |9 |0 
              // size|111|V=1|01|opc=x0|imm12|Rn|Rt
              // e.g: STR  <Bt>, [<Xn|SP>{, #<pimm>}]
              exit(0901);
            end;
          end
          else
          begin
            if (d and $10 = $00) then
            begin
              if (c and $80 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
                      // 0 |Q |0011010|L=1|R=0|00000|opcode=110|S=0|size|Rn|Rt
                      // e.g: LD1R  { <Vt>.<T> }, [<Xn|SP>]
                      exit(0450);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
                      // 0 |Q |0011010|L=1|R=1|00000|opcode=110|S=0|size|Rn|Rt
                      // e.g: LD2R  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]
                      exit(0452);
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
                      // 0 |Q |0011010|L=1|R=0|00000|opcode=111|S=0|size|Rn|Rt
                      // e.g: LD3R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]
                      exit(0454);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20   |15        |12 |11  |9 |0 
                      // 0 |Q |0011010|L=1|R=1|00000|opcode=111|S=0|size|Rn|Rt
                      // e.g: LD4R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]
                      exit(0456);
                    end;
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|010|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDP  <St1>, <St2>, [<Xn|SP>{, #<imm>}]
                  exit(0986);
                end;
              end
              else
              begin
                if (d and $20 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
                      // 0 |Q |0011011|L=1|R=0|Rm|opcode=110|S=0|size|Rn|Rt
                      // e.g: LD1R  { <Vt>.<T> }, [<Xn|SP>], <imm>
                      exit(0462);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
                      // 0 |Q |0011011|L=1|R=1|Rm|opcode=110|S=0|size|Rn|Rt
                      // e.g: LD2R  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>
                      exit(0464);
                    end;
                  end
                  else
                  begin
                    if (c and $20 = $00) then
                    begin
                      // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
                      // 0 |Q |0011011|L=1|R=0|Rm|opcode=111|S=0|size|Rn|Rt
                      // e.g: LD3R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>
                      exit(0466);
                    end
                    else
                    begin
                      // 31|30|29     |22 |21 |20|15        |12 |11  |9 |0 
                      // 0 |Q |0011011|L=1|R=1|Rm|opcode=111|S=0|size|Rn|Rt
                      // e.g: LD4R  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>
                      exit(0468);
                    end;
                  end;
                end
                else
                begin
                  // 31 |29 |26 |25 |22 |15  |10 |9 |0 
                  // opc|101|V=1|011|L=1|imm7|Rt2|Rn|Rt
                  // e.g: LDP  <St1>, <St2>, [<Xn|SP>, #<imm>]!
                  exit(0996);
                end;
              end;
            end
            else
            begin
              // 31  |29 |26 |25|23    |10   |9 |0 
              // size|111|V=1|01|opc=x1|imm12|Rn|Rt
              // e.g: LDR  <Bt>, [<Xn|SP>{, #<pimm>}]
              exit(0893);
            end;
          end;
        end
        else
        begin
          if (d and $10 = $00) then
          begin
            if (b and $04 = $00) then
            begin
              if (b and $10 = $00) then
              begin
                if (b and $20 = $00) then
                begin
                  if (b and $40 = $00) then
                  begin
                    if (b and $80 = $00) then
                    begin
                      // 31|30|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                      // 0 |Q |U=1|01111|size|L |M |Rm|0 |o2=0|00|H |0 |Rn|Rd
                      // e.g: MLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                      exit(0106);
                    end
                    else
                    begin
                      // 31|30|29 |28   |22  |21|20|16|15         |11|10|5 |0 
                      // 0 |Q |U=0|01111|size|L |M |Rm|opcode=1000|H |0 |Rn|Rd
                      // e.g: MUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                      exit(0108);
                    end;
                  end
                  else
                  begin
                    if (b and $80 = $00) then
                    begin
                      // 31|30|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                      // 0 |Q |U=1|01111|size|L |M |Rm|0 |o2=1|00|H |0 |Rn|Rd
                      // e.g: MLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                      exit(0107);
                    end
                    else
                    begin
                      // 31|30|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
                      // 0 |Q |U=0|01111|size|L |M |Rm|110|op=0|H |0 |Rn|Rd
                      // e.g: SQDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                      exit(0120);
                    end;
                  end;
                end
                else
                begin
                  if (b and $40 = $00) then
                  begin
                    if (b and $80 = $00) then
                    begin
                      if (d and $20 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
                          // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0110);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
                          // e.g: SMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0111);
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=0|U=1|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
                          // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0127);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=1|U=1|01111|size|L |M |Rm|0 |o2=0|10|H |0 |Rn|Rd
                          // e.g: UMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0128);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $20 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
                          // 0 |Q=0|U=0|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
                          // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0114);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
                          // 0 |Q=1|U=0|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
                          // e.g: SMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0115);
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
                          // 0 |Q=0|U=1|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
                          // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0131);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
                          // 0 |Q=1|U=1|01111|size|L |M |Rm|opcode=1010|H |0 |Rn|Rd
                          // e.g: UMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0132);
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $80 = $00) then
                    begin
                      if (d and $20 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
                          // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0112);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
                          // e.g: SMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0113);
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=0|U=1|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
                          // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0129);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=1|U=1|01111|size|L |M |Rm|0 |o2=1|10|H |0 |Rn|Rd
                          // e.g: UMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0130);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $20 = $00) then
                      begin
                        // 31|30|29 |28   |23  |21|20|16|15         |11|10|5 |0 
                        // 0 |Q |U=0|01111|size|L |M |Rm|opcode=1110|H |0 |Rn|Rd
                        // e.g: SDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]
                        exit(0109);
                      end
                      else
                      begin
                        // 31|30|29 |28   |23  |21|20|16|15         |11|10|5 |0 
                        // 0 |Q |U=1|01111|size|L |M |Rm|opcode=1110|H |0 |Rn|Rd
                        // e.g: UDOT  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]
                        exit(0126);
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (b and $80 = $00) then
                begin
                  if (d and $20 = $00) then
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31|30|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q |U=0|01111|size=00|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
                          // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
                          exit(0098);
                        end
                        else
                        begin
                          // 31|30|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q |U=0|01111|1 |sz|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
                          // e.g: FMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                          exit(0099);
                        end;
                      end
                      else
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31|30|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q |U=0|01111|size=00|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
                          // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
                          exit(0100);
                        end
                        else
                        begin
                          // 31|30|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q |U=0|01111|1 |sz|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
                          // e.g: FMLS  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                          exit(0101);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=0|11|H |0 |Rn|Rd
                          // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0116);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=0|11|H |0 |Rn|Rd
                          // e.g: SQDMLAL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0117);
                        end;
                      end
                      else
                      begin
                        if (d and $40 = $00) then
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=0|U=0|01111|size|L |M |Rm|0 |o2=1|11|H |0 |Rn|Rd
                          // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0118);
                        end
                        else
                        begin
                          // 31|30 |29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                          // 0 |Q=1|U=0|01111|size|L |M |Rm|0 |o2=1|11|H |0 |Rn|Rd
                          // e.g: SQDMLSL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                          exit(0119);
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    // 31|30|29 |28   |23  |21|20|16|15|14 |12|11|10|5 |0 
                    // 0 |Q |U=1|01111|size|L |M |Rm|0 |rot|1 |H |0 |Rn|Rd
                    // e.g: FCMLA  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>
                    exit(0097);
                  end;
                end
                else
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (c and $80 = $00) then
                      begin
                        if (d and $20 = $00) then
                        begin
                          // 31|30|29 |28   |23     |21|20|16|15         |11|10|5 |0 
                          // 0 |Q |U=0|01111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                          // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
                          exit(0102);
                        end
                        else
                        begin
                          // 31|30|29 |28   |23     |21|20|16|15         |11|10|5 |0 
                          // 0 |Q |U=1|01111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                          // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]
                          exit(0104);
                        end;
                      end
                      else
                      begin
                        if (d and $20 = $00) then
                        begin
                          // 31|30|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
                          // 0 |Q |U=0|01111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                          // e.g: FMUL  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                          exit(0103);
                        end
                        else
                        begin
                          // 31|30|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
                          // 0 |Q |U=1|01111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                          // e.g: FMULX  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                          exit(0105);
                        end;
                      end;
                    end
                    else
                    begin
                      if (d and $20 = $00) then
                      begin
                        // 31|30|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
                        // 0 |Q |U=0|01111|size|L |M |Rm|110|op=1|H |0 |Rn|Rd
                        // e.g: SQRDMULH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                        exit(0125);
                      end
                      else
                      begin
                        // 31|30|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
                        // 0 |Q |U=1|01111|size|L |M |Rm|11|S=0|1 |H |0 |Rn|Rd
                        // e.g: SQRDMLAH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                        exit(0123);
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (d and $40 = $00) then
                      begin
                        // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
                        // 0 |Q=0|U=0|01111|size|L |M |Rm|opcode=1011|H |0 |Rn|Rd
                        // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                        exit(0121);
                      end
                      else
                      begin
                        // 31|30 |29 |28   |22  |21|20|16|15         |11|10|5 |0 
                        // 0 |Q=1|U=0|01111|size|L |M |Rm|opcode=1011|H |0 |Rn|Rd
                        // e.g: SQDMULL<Q>  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]
                        exit(0122);
                      end;
                    end
                    else
                    begin
                      // 31|30|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
                      // 0 |Q |U=1|01111|size|L |M |Rm|11|S=1|1 |H |0 |Rn|Rd
                      // e.g: SQRDMLSH  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]
                      exit(0124);
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              if (b and $08 = $00) then
              begin
                if (d and $20 = $00) then
                begin
                  // 31|30|29  |28        |18|17|16|15        |11  |10|9|8|7|6|5|0 
                  // 0 |Q |op=0|0111100000|a |b |c |cmode=1111|o2=0|1 |d|e|f|g|h|Rd
                  // e.g: FMOV  <Vd>.<T>, #<imm>
                  exit(0137);
                end
                else
                begin
                  // 31|30 |29  |28        |18|17|16|15        |11  |10|9|8|7|6|5|0 
                  // 0 |Q=1|op=1|0111100000|a |b |c |cmode=1111|o2=0|1 |d|e|f|g|h|Rd
                  // e.g: FMOV  <Vd>.2D, #<imm>
                  exit(0138);
                end;
              end
              else
              begin
                if (b and $10 = $00) then
                begin
                  if (d and $20 = $00) then
                  begin
                    if (d and $40 = $00) then
                    begin
                      // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                      // 0 |Q=0|U=0|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
                      // e.g: RSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                      exit(0373);
                    end
                    else
                    begin
                      // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                      // 0 |Q=1|U=0|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
                      // e.g: RSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                      exit(0374);
                    end;
                  end
                  else
                  begin
                    if (d and $40 = $00) then
                    begin
                      // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                      // 0 |Q=0|U=1|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
                      // e.g: SQRSHRUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                      exit(0382);
                    end
                    else
                    begin
                      // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                      // 0 |Q=1|U=1|011110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
                      // e.g: SQRSHRUN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                      exit(0383);
                    end;
                  end;
                end
                else
                begin
                  if (b and $20 = $00) then
                  begin
                    if (d and $20 = $00) then
                    begin
                      if (d and $40 = $00) then
                      begin
                        // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 0 |Q=0|U=0|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
                        // e.g: SQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                        exit(0380);
                      end
                      else
                      begin
                        // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 0 |Q=1|U=0|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
                        // e.g: SQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                        exit(0381);
                      end;
                    end
                    else
                    begin
                      if (d and $40 = $00) then
                      begin
                        // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 0 |Q=0|U=1|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
                        // e.g: UQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                        exit(0400);
                      end
                      else
                      begin
                        // 31|30 |29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 0 |Q=1|U=1|011110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
                        // e.g: UQRSHRN<Q>  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>
                        exit(0401);
                      end;
                    end;
                  end
                  else
                  begin
                    if (d and $20 = $00) then
                    begin
                      // 31|30|29  |28        |18|17|16|15        |11  |10|9|8|7|6|5|0 
                      // 0 |Q |op=0|0111100000|a |b |c |cmode=1111|o2=1|1 |d|e|f|g|h|Rd
                      // e.g: FMOV  <Vd>.<T>, #<imm>
                      exit(0136);
                    end
                    else
                    begin
                      // 31|30|29 |28    |19  |16  |15          |10|5 |0 
                      // 0 |Q |U=1|011110|immh|immb|opcode=11111|1 |Rn|Rd
                      // e.g: FCVTZU  <Vd>.<T>, <Vn>.<T>, #<fbits>
                      exit(0372);
                    end;
                  end;
                end;
              end;
            end;
          end
          else
          begin
            if (b and $80 = $00) then
            begin
              if (d and $20 = $00) then
              begin
                if (d and $40 = $00) then
                begin
                  if (c and $20 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=0x|o1=0|Rm|o0=0|Ra|Rn|Rd
                      // e.g: FMADD  <Sd>, <Sn>, <Sm>, <Sa>
                      exit(0857);
                    end
                    else
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=11|o1=0|Rm|o0=0|Ra|Rn|Rd
                      // e.g: FMADD  <Hd>, <Hn>, <Hm>, <Ha>
                      exit(0856);
                    end;
                  end
                  else
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=0x|o1=1|Rm|o0=0|Ra|Rn|Rd
                      // e.g: FNMADD  <Sd>, <Sn>, <Sm>, <Sa>
                      exit(0861);
                    end
                    else
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=11|o1=1|Rm|o0=0|Ra|Rn|Rd
                      // e.g: FNMADD  <Hd>, <Hn>, <Hm>, <Ha>
                      exit(0860);
                    end;
                  end;
                end
                else
                begin
                  if (b and $04 = $00) then
                  begin
                    if (b and $20 = $00) then
                    begin
                      if (b and $40 = $00) then
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
                          // 01|U=0|11111|size=00|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
                          // e.g: FMLA  <Hd>, <Hn>, <Vm>.H[<index>]
                          exit(0418);
                        end
                        else
                        begin
                          // 31|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
                          // 01|U=0|11111|1 |sz|L |M |Rm|0 |o2=0|01|H |0 |Rn|Rd
                          // e.g: FMLA  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                          exit(0419);
                        end;
                      end
                      else
                      begin
                        if (c and $80 = $00) then
                        begin
                          // 31|29 |28   |23     |21|20|16|15|14  |13|11|10|5 |0 
                          // 01|U=0|11111|size=00|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
                          // e.g: FMLS  <Hd>, <Hn>, <Vm>.H[<index>]
                          exit(0420);
                        end
                        else
                        begin
                          // 31|29 |28   |23|22|21|20|16|15|14  |13|11|10|5 |0 
                          // 01|U=0|11111|1 |sz|L |M |Rm|0 |o2=1|01|H |0 |Rn|Rd
                          // e.g: FMLS  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                          exit(0421);
                        end;
                      end;
                    end
                    else
                    begin
                      if (b and $40 = $00) then
                      begin
                        // 31|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                        // 01|U=0|11111|size|L |M |Rm|0 |o2=0|11|H |0 |Rn|Rd
                        // e.g: SQDMLAL  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]
                        exit(0426);
                      end
                      else
                      begin
                        // 31|29 |28   |22  |21|20|16|15|14  |13|11|10|5 |0 
                        // 01|U=0|11111|size|L |M |Rm|0 |o2=1|11|H |0 |Rn|Rd
                        // e.g: SQDMLSL  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]
                        exit(0427);
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                        // 01|U=0|111110|immh=1xxx|immb|00|o1=0|o0=0|0 |1 |Rn|Rd
                        // e.g: SSHR  <V><d>, <V><n>, #<shift>
                        exit(0602);
                      end
                      else
                      begin
                        // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                        // 01|U=0|111110|immh=1xxx|immb|00|o1=1|o0=0|0 |1 |Rn|Rd
                        // e.g: SRSHR  <V><d>, <V><n>, #<shift>
                        exit(0600);
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                          // 01|U=0|111110|immh=1xxx|immb|00|o1=0|o0=1|0 |1 |Rn|Rd
                          // e.g: SSRA  <V><d>, <V><n>, #<shift>
                          exit(0603);
                        end
                        else
                        begin
                          // 31|29 |28    |19       |16  |15          |10|5 |0 
                          // 01|U=0|111110|immh=1xxx|immb|opcode=01010|1 |Rn|Rd
                          // e.g: SHL  <V><d>, <V><n>, #<shift>
                          exit(0591);
                        end;
                      end
                      else
                      begin
                        if (b and $40 = $00) then
                        begin
                          // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                          // 01|U=0|111110|immh=1xxx|immb|00|o1=1|o0=1|0 |1 |Rn|Rd
                          // e.g: SRSRA  <V><d>, <V><n>, #<shift>
                          exit(0601);
                        end
                        else
                        begin
                          // 31|29 |28    |19  |16  |15 |12  |11|10|5 |0 
                          // 01|U=0|111110|immh|immb|011|op=1|0 |1 |Rn|Rd
                          // e.g: SQSHL  <V><d>, <V><n>, #<shift>
                          exit(0595);
                        end;
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (b and $10 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                      // 01|U=1|111110|immh=1xxx|immb|00|o1=0|o0=0|0 |1 |Rn|Rd
                      // e.g: USHR  <V><d>, <V><n>, #<shift>
                      exit(0610);
                    end
                    else
                    begin
                      // 31|29 |28    |19       |16  |15          |10|5 |0 
                      // 01|U=1|111110|immh=1xxx|immb|opcode=01000|1 |Rn|Rd
                      // e.g: SRI  <V><d>, <V><n>, #<shift>
                      exit(0599);
                    end;
                  end
                  else
                  begin
                    if (b and $40 = $00) then
                    begin
                      // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                      // 01|U=1|111110|immh=1xxx|immb|00|o1=1|o0=0|0 |1 |Rn|Rd
                      // e.g: URSHR  <V><d>, <V><n>, #<shift>
                      exit(0608);
                    end
                    else
                    begin
                      // 31|29 |28    |19  |16  |15 |12  |11|10|5 |0 
                      // 01|U=1|111110|immh|immb|011|op=0|0 |1 |Rn|Rd
                      // e.g: SQSHLU  <V><d>, <V><n>, #<shift>
                      exit(0596);
                    end;
                  end;
                end
                else
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                      // 01|U=1|111110|immh=1xxx|immb|00|o1=0|o0=1|0 |1 |Rn|Rd
                      // e.g: USRA  <V><d>, <V><n>, #<shift>
                      exit(0611);
                    end
                    else
                    begin
                      // 31|29 |28    |19       |16  |15          |10|5 |0 
                      // 01|U=1|111110|immh=1xxx|immb|opcode=01010|1 |Rn|Rd
                      // e.g: SLI  <V><d>, <V><n>, #<shift>
                      exit(0592);
                    end;
                  end
                  else
                  begin
                    if (b and $40 = $00) then
                    begin
                      // 31|29 |28    |19       |16  |15|13  |12  |11|10|5 |0 
                      // 01|U=1|111110|immh=1xxx|immb|00|o1=1|o0=1|0 |1 |Rn|Rd
                      // e.g: URSRA  <V><d>, <V><n>, #<shift>
                      exit(0609);
                    end
                    else
                    begin
                      // 31|29 |28    |19  |16  |15 |12  |11|10|5 |0 
                      // 01|U=1|111110|immh|immb|011|op=1|0 |1 |Rn|Rd
                      // e.g: UQSHL  <V><d>, <V><n>, #<shift>
                      exit(0606);
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              if (d and $20 = $00) then
              begin
                if (d and $40 = $00) then
                begin
                  if (c and $20 = $00) then
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=0x|o1=0|Rm|o0=1|Ra|Rn|Rd
                      // e.g: FMSUB  <Sd>, <Sn>, <Sm>, <Sa>
                      exit(0859);
                    end
                    else
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=11|o1=0|Rm|o0=1|Ra|Rn|Rd
                      // e.g: FMSUB  <Hd>, <Hn>, <Hm>, <Ha>
                      exit(0858);
                    end;
                  end
                  else
                  begin
                    if (c and $80 = $00) then
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=0x|o1=1|Rm|o0=1|Ra|Rn|Rd
                      // e.g: FNMSUB  <Sd>, <Sn>, <Sm>, <Sa>
                      exit(0863);
                    end
                    else
                    begin
                      // 31 |30|29 |28   |23     |21  |16|15  |10|5 |0 
                      // M=0|0 |S=0|11111|type=11|o1=1|Rm|o0=1|Ra|Rn|Rd
                      // e.g: FNMSUB  <Hd>, <Hn>, <Hm>, <Ha>
                      exit(0862);
                    end;
                  end;
                end
                else
                begin
                  if (b and $04 = $00) then
                  begin
                    if (b and $10 = $00) then
                    begin
                      // 31|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
                      // 01|U=0|11111|size|L |M |Rm|110|op=0|H |0 |Rn|Rd
                      // e.g: SQDMULH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                      exit(0428);
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        if (b and $40 = $00) then
                        begin
                          if (c and $80 = $00) then
                          begin
                            // 31|29 |28   |23     |21|20|16|15         |11|10|5 |0 
                            // 01|U=0|11111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                            // e.g: FMUL  <Hd>, <Hn>, <Vm>.H[<index>]
                            exit(0422);
                          end
                          else
                          begin
                            // 31|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
                            // 01|U=0|11111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                            // e.g: FMUL  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                            exit(0423);
                          end;
                        end
                        else
                        begin
                          // 31|29 |28   |22  |21|20|16|15 |12  |11|10|5 |0 
                          // 01|U=0|11111|size|L |M |Rm|110|op=1|H |0 |Rn|Rd
                          // e.g: SQRDMULH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                          exit(0432);
                        end;
                      end
                      else
                      begin
                        // 31|29 |28   |22  |21|20|16|15         |11|10|5 |0 
                        // 01|U=0|11111|size|L |M |Rm|opcode=1011|H |0 |Rn|Rd
                        // e.g: SQDMULL  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]
                        exit(0429);
                      end;
                    end;
                  end
                  else
                  begin
                    if (b and $08 = $00) then
                    begin
                      if (b and $10 = $00) then
                      begin
                        // 31|29 |28    |19  |16  |15          |10|5 |0 
                        // 01|U=0|111110|immh|immb|opcode=11100|1 |Rn|Rd
                        // e.g: SCVTF  <V><d>, <V><n>, #<fbits>
                        exit(0590);
                      end
                      else
                      begin
                        // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 01|U=0|111110|immh=0xxx|immb|1001|op=0|1 |Rn|Rd
                        // e.g: SQSHRN  <Vb><d>, <Va><n>, #<shift>
                        exit(0597);
                      end;
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 01|U=0|111110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
                        // e.g: SQRSHRN  <Vb><d>, <Va><n>, #<shift>
                        exit(0593);
                      end
                      else
                      begin
                        // 31|29 |28    |19  |16  |15          |10|5 |0 
                        // 01|U=0|111110|immh|immb|opcode=11111|1 |Rn|Rd
                        // e.g: FCVTZS  <V><d>, <V><n>, #<fbits>
                        exit(0588);
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                if (b and $04 = $00) then
                begin
                  if (b and $20 = $00) then
                  begin
                    if (b and $40 = $00) then
                    begin
                      if (c and $80 = $00) then
                      begin
                        // 31|29 |28   |23     |21|20|16|15         |11|10|5 |0 
                        // 01|U=1|11111|size=00|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                        // e.g: FMULX  <Hd>, <Hn>, <Vm>.H[<index>]
                        exit(0424);
                      end
                      else
                      begin
                        // 31|29 |28   |23|22|21|20|16|15         |11|10|5 |0 
                        // 01|U=1|11111|1 |sz|L |M |Rm|opcode=1001|H |0 |Rn|Rd
                        // e.g: FMULX  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                        exit(0425);
                      end;
                    end
                    else
                    begin
                      // 31|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
                      // 01|U=1|11111|size|L |M |Rm|11|S=0|1 |H |0 |Rn|Rd
                      // e.g: SQRDMLAH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                      exit(0430);
                    end;
                  end
                  else
                  begin
                    // 31|29 |28   |22  |21|20|16|15|13 |12|11|10|5 |0 
                    // 01|U=1|11111|size|L |M |Rm|11|S=1|1 |H |0 |Rn|Rd
                    // e.g: SQRDMLSH  <V><d>, <V><n>, <Vm>.<Ts>[<index>]
                    exit(0431);
                  end;
                end
                else
                begin
                  if (b and $08 = $00) then
                  begin
                    if (b and $10 = $00) then
                    begin
                      if (b and $20 = $00) then
                      begin
                        // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 01|U=1|111110|immh=0xxx|immb|1000|op=0|1 |Rn|Rd
                        // e.g: SQSHRUN  <Vb><d>, <Va><n>, #<shift>
                        exit(0598);
                      end
                      else
                      begin
                        // 31|29 |28    |19  |16  |15          |10|5 |0 
                        // 01|U=1|111110|immh|immb|opcode=11100|1 |Rn|Rd
                        // e.g: UCVTF  <V><d>, <V><n>, #<fbits>
                        exit(0604);
                      end;
                    end
                    else
                    begin
                      // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
                      // 01|U=1|111110|immh=0xxx|immb|1001|op=0|1 |Rn|Rd
                      // e.g: UQSHRN  <Vb><d>, <Va><n>, #<shift>
                      exit(0607);
                    end;
                  end
                  else
                  begin
                    if (b and $10 = $00) then
                    begin
                      // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
                      // 01|U=1|111110|immh=0xxx|immb|1000|op=1|1 |Rn|Rd
                      // e.g: SQRSHRUN  <Vb><d>, <Va><n>, #<shift>
                      exit(0594);
                    end
                    else
                    begin
                      if (b and $20 = $00) then
                      begin
                        // 31|29 |28    |19       |16  |15  |11  |10|5 |0 
                        // 01|U=1|111110|immh=0xxx|immb|1001|op=1|1 |Rn|Rd
                        // e.g: UQRSHRN  <Vb><d>, <Va><n>, #<shift>
                        exit(0605);
                      end
                      else
                      begin
                        // 31|29 |28    |19  |16  |15          |10|5 |0 
                        // 01|U=1|111110|immh|immb|opcode=11111|1 |Rn|Rd
                        // e.g: FCVTZU  <V><d>, <V><n>, #<fbits>
                        exit(0589);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;
