// *********************************************************
// *                                                       *
// *     Automatically generated file => do not edit!      *
// *                                                       *
// *********************************************************
// *                                                       *
// *       https://github.com/MahdiSafsafi/Azote           *
// *                                                       *
// *********************************************************

{ This file provides required fields info to extract operands from opcode. }
type
  TField = (
  { Standard fields. }
    FLD_None,
    FLD_CRm,
    FLD_CRn,
    FLD_H,
    FLD_L,
    FLD_M,
    FLD_N,
    FLD_Q,
    FLD_Ra,
    FLD_Rd,
    FLD_Rn,
    FLD_Rs,
    FLD_Rt,
    FLD_Rt2,
    FLD_abc,
    FLD_b40,
    FLD_b5,
    FLD_cmode,
    FLD_cond,
    FLD_defgh,
    FLD_hw,
    FLD_imm12,
    FLD_imm14,
    FLD_imm16,
    FLD_imm19,
    FLD_imm2,
    FLD_imm26,
    FLD_imm3,
    FLD_imm4,
    FLD_imm5,
    FLD_imm6,
    FLD_imm7,
    FLD_imm8,
    FLD_imm9,
    FLD_immb,
    FLD_immh,
    FLD_immhi,
    FLD_immlo,
    FLD_immr,
    FLD_imms,
    FLD_len,
    FLD_nzcv,
    FLD_o0,
    FLD_op1,
    FLD_op2,
    FLD_opext,
    FLD_option,
    FLD_rot1,
    FLD_rot2,
    FLD_rot3,
    FLD_scale,
    FLD_sfn,
    FLD_shift,
    FLD_type,
  { Dynamic fields. }
    FLD_Rm,
    FLD_S,
    FLD_opc,
    FLD_opcode,
    FLD_sf,
    FLD_size
);

const
  StdInfo: array [0 .. 54 -1] of TFieldInfo = (
    { FLD_None   } (Pos: 00; Size: 00),
    { FLD_CRm    } (Pos: 08; Size: 04),
    { FLD_CRn    } (Pos: 12; Size: 04),
    { FLD_H      } (Pos: 11; Size: 01),
    { FLD_L      } (Pos: 21; Size: 01),
    { FLD_M      } (Pos: 20; Size: 01),
    { FLD_N      } (Pos: 22; Size: 01),
    { FLD_Q      } (Pos: 30; Size: 01),
    { FLD_Ra     } (Pos: 10; Size: 05),
    { FLD_Rd     } (Pos: 00; Size: 05),
    { FLD_Rn     } (Pos: 05; Size: 05),
    { FLD_Rs     } (Pos: 16; Size: 05),
    { FLD_Rt     } (Pos: 00; Size: 05),
    { FLD_Rt2    } (Pos: 10; Size: 05),
    { FLD_abc    } (Pos: 16; Size: 03),
    { FLD_b40    } (Pos: 19; Size: 05),
    { FLD_b5     } (Pos: 31; Size: 01),
    { FLD_cmode  } (Pos: 12; Size: 04),
    { FLD_cond   } (Pos: 12; Size: 04),
    { FLD_defgh  } (Pos: 05; Size: 05),
    { FLD_hw     } (Pos: 21; Size: 02),
    { FLD_imm12  } (Pos: 10; Size: 12),
    { FLD_imm14  } (Pos: 05; Size: 14),
    { FLD_imm16  } (Pos: 05; Size: 16),
    { FLD_imm19  } (Pos: 05; Size: 19),
    { FLD_imm2   } (Pos: 12; Size: 02),
    { FLD_imm26  } (Pos: 00; Size: 26),
    { FLD_imm3   } (Pos: 10; Size: 03),
    { FLD_imm4   } (Pos: 11; Size: 04),
    { FLD_imm5   } (Pos: 16; Size: 05),
    { FLD_imm6   } (Pos: 10; Size: 06),
    { FLD_imm7   } (Pos: 15; Size: 07),
    { FLD_imm8   } (Pos: 13; Size: 08),
    { FLD_imm9   } (Pos: 12; Size: 09),
    { FLD_immb   } (Pos: 16; Size: 03),
    { FLD_immh   } (Pos: 19; Size: 04),
    { FLD_immhi  } (Pos: 05; Size: 19),
    { FLD_immlo  } (Pos: 29; Size: 02),
    { FLD_immr   } (Pos: 16; Size: 06),
    { FLD_imms   } (Pos: 10; Size: 06),
    { FLD_len    } (Pos: 13; Size: 02),
    { FLD_nzcv   } (Pos: 00; Size: 04),
    { FLD_o0     } (Pos: 19; Size: 01),
    { FLD_op1    } (Pos: 16; Size: 03),
    { FLD_op2    } (Pos: 05; Size: 03),
    { FLD_opext  } (Pos: 23; Size: 01),
    { FLD_option } (Pos: 13; Size: 03),
    { FLD_rot1   } (Pos: 12; Size: 01),
    { FLD_rot2   } (Pos: 11; Size: 02),
    { FLD_rot3   } (Pos: 13; Size: 02),
    { FLD_scale  } (Pos: 10; Size: 06),
    { FLD_sfn    } (Pos: 22; Size: 01),
    { FLD_shift  } (Pos: 22; Size: 02),
    { FLD_type   } (Pos: 22; Size: 02)
);

procedure GetFieldInfo(Field:TField; IClass: TA64Class; out Info: TFieldInfo);
begin
  if (Field < FLD_Rm) then
  begin
    { Standard/static fields }
    Info := StdInfo[Integer(Field)];
  end else
  begin
    { Dynamic fields. }
    case Field of
      FLD_Rm:
        begin
          case IClass of
            c_branch_reg:
              begin
               Info.Pos := 00;
               Info.Size := 05;
              end;
          else
            begin
               { c_addsub_carry , c_addsub_ext , c_addsub_shift , c_asimddiff , c_asimdelem , c_asimdext , c_asimdperm , c_asimdsame , c_asimdsame2 , c_asimdsamefp16 , c_asimdtbl , c_asisddiff , c_asisdelem , c_asisdsame , c_asisdsame2 , c_asisdsamefp16 , c_condcmp_reg , c_condsel , c_crypto3_imm2 , c_crypto3_imm6 , c_crypto4 , c_cryptosha3 , c_cryptosha512_3 , c_dp_2src , c_dp_3src , c_extract , c_floatccmp , c_floatcmp , c_floatdp2 , c_floatdp3 , c_floatsel , c_log_shift }
              Info.Pos := 16;
              Info.Size := 05;
            end;
          end;
        end;
      FLD_S:
        begin
          case IClass of
            c_ldst_pac:
              begin
               Info.Pos := 22;
               Info.Size := 01;
              end;
          else
            begin
               { c_asisdlso , c_asisdlsop , c_ldst_regoff }
              Info.Pos := 12;
              Info.Size := 01;
            end;
          end;
        end;
      FLD_opc:
        begin
          case IClass of
            c_floatdp1:
              begin
               Info.Pos := 15;
               Info.Size := 02;
              end;
          else
            begin
               { c_ldstnapair_offs , c_ldstpair_off , c_ldstpair_post , c_ldstpair_pre , c_loadlit }
              Info.Pos := 30;
              Info.Size := 02;
            end;
          end;
        end;
      FLD_opcode:
        begin
          case IClass of
            c_asisdlse , c_asisdlsep:
              begin
               Info.Pos := 12;
               Info.Size := 04;
              end;
          else
            begin
               { c_asisdlso , c_asisdlsop }
              Info.Pos := 13;
              Info.Size := 03;
            end;
          end;
        end;
      FLD_sf:
        begin
          case IClass of
            c_asimdins , c_ldst_immpost , c_ldst_immpre , c_ldst_pos , c_ldst_regoff , c_ldst_unpriv , c_ldst_unscaled , c_ldstexcl , c_loadlit , c_memop:
              begin
               Info.Pos := 30;
               Info.Size := 01;
              end;
          else
            begin
               { c_addsub_carry , c_addsub_ext , c_addsub_imm , c_addsub_shift , c_bitfield , c_compbranch , c_condcmp_imm , c_condcmp_reg , c_condsel , c_dp_1src , c_dp_2src , c_dp_3src , c_extract , c_float2fix , c_float2int , c_ldstnapair_offs , c_ldstpair_off , c_ldstpair_post , c_ldstpair_pre , c_log_imm , c_log_shift , c_movewide , c_testbranch }
              Info.Pos := 31;
              Info.Size := 01;
            end;
          end;
        end;
      FLD_size:
        begin
          case IClass of
            c_asisdlse , c_asisdlsep , c_asisdlso , c_asisdlsop:
              begin
               Info.Pos := 10;
               Info.Size := 02;
              end;
            c_ldst_immpost , c_ldst_immpre , c_ldst_pos , c_ldst_regoff , c_ldst_unscaled:
              begin
               Info.Pos := 30;
               Info.Size := 02;
              end;
          else
            begin
               { c_asimdall , c_asimddiff , c_asimdelem , c_asimdext , c_asimdimm , c_asimdmisc , c_asimdmiscfp16 , c_asimdperm , c_asimdsame , c_asimdsame2 , c_asimdsamefp16 , c_asimdtbl , c_asisddiff , c_asisdelem , c_asisdmisc , c_asisdpair , c_asisdsame , c_asisdsame2 , c_crypto3_imm2 , c_crypto3_imm6 , c_crypto4 , c_cryptoaes , c_cryptosha2 , c_cryptosha3 , c_cryptosha512_2 , c_cryptosha512_3 }
              Info.Pos := 22;
              Info.Size := 02;
            end;
          end;
        end;
    end;
  end;
end;
