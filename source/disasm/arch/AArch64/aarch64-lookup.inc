// *********************************************************
// *                                                       *
// *     Automatically generated file => do not edit!      *
// *                                                       *
// *********************************************************
// *                                                       *
// *       https://github.com/MahdiSafsafi/Azote           *
// *                                                       *
// *********************************************************

{ This function finds the next entry that wasn't listed in the ADT.

  When the ADT can't make a decision, it shots the instruction that have most set bit of its mask.
  However, when this instruction fails to decode, 
  it's necessary to decode the next instruction (second/third/...) until it finds a valid match. }

function FindNextEntry(Index: Integer): Integer;
begin
  case Index of
    1121: exit(1028); // staddb    => ldaddb.
    1028: exit(0000); // ldaddb    => invalid.
    1122: exit(1029); // staddh    => ldaddh.
    1029: exit(0000); // ldaddh    => invalid.
    1120: exit(1021); // stadd     => ldadd.
    1021: exit(0000); // ldadd     => invalid.
    1124: exit(1031); // staddlb   => ldaddlb.
    1031: exit(0000); // ldaddlb   => invalid.
    1125: exit(1032); // staddlh   => ldaddlh.
    1032: exit(0000); // ldaddlh   => invalid.
    1123: exit(1030); // staddl    => ldaddl.
    1030: exit(0000); // ldaddl    => invalid.
    1145: exit(1079); // stsmaxb   => ldsmaxb.
    1079: exit(0000); // ldsmaxb   => invalid.
    1146: exit(1080); // stsmaxh   => ldsmaxh.
    1080: exit(0000); // ldsmaxh   => invalid.
    1144: exit(1072); // stsmax    => ldsmax.
    1072: exit(0000); // ldsmax    => invalid.
    1148: exit(1082); // stsmaxlb  => ldsmaxlb.
    1082: exit(0000); // ldsmaxlb  => invalid.
    1149: exit(1083); // stsmaxlh  => ldsmaxlh.
    1083: exit(0000); // ldsmaxlh  => invalid.
    1147: exit(1081); // stsmaxl   => ldsmaxl.
    1081: exit(0000); // ldsmaxl   => invalid.
    1133: exit(1055); // steorb    => ldeorb.
    1055: exit(0000); // ldeorb    => invalid.
    1134: exit(1056); // steorh    => ldeorh.
    1056: exit(0000); // ldeorh    => invalid.
    1132: exit(1048); // steor     => ldeor.
    1048: exit(0000); // ldeor     => invalid.
    1136: exit(1058); // steorlb   => ldeorlb.
    1058: exit(0000); // ldeorlb   => invalid.
    1137: exit(1059); // steorlh   => ldeorlh.
    1059: exit(0000); // ldeorlh   => invalid.
    1135: exit(1057); // steorl    => ldeorl.
    1057: exit(0000); // ldeorl    => invalid.
    1157: exit(1103); // stumaxb   => ldumaxb.
    1103: exit(0000); // ldumaxb   => invalid.
    1158: exit(1104); // stumaxh   => ldumaxh.
    1104: exit(0000); // ldumaxh   => invalid.
    1156: exit(1096); // stumax    => ldumax.
    1096: exit(0000); // ldumax    => invalid.
    1160: exit(1106); // stumaxlb  => ldumaxlb.
    1106: exit(0000); // ldumaxlb  => invalid.
    1161: exit(1107); // stumaxlh  => ldumaxlh.
    1107: exit(0000); // ldumaxlh  => invalid.
    1159: exit(1105); // stumaxl   => ldumaxl.
    1105: exit(0000); // ldumaxl   => invalid.
    1127: exit(1043); // stclrb    => ldclrb.
    1043: exit(0000); // ldclrb    => invalid.
    1128: exit(1044); // stclrh    => ldclrh.
    1044: exit(0000); // ldclrh    => invalid.
    1126: exit(1036); // stclr     => ldclr.
    1036: exit(0000); // ldclr     => invalid.
    1130: exit(1046); // stclrlb   => ldclrlb.
    1046: exit(0000); // ldclrlb   => invalid.
    1131: exit(1047); // stclrlh   => ldclrlh.
    1047: exit(0000); // ldclrlh   => invalid.
    1129: exit(1045); // stclrl    => ldclrl.
    1045: exit(0000); // ldclrl    => invalid.
    1151: exit(1091); // stsminb   => ldsminb.
    1091: exit(0000); // ldsminb   => invalid.
    1152: exit(1092); // stsminh   => ldsminh.
    1092: exit(0000); // ldsminh   => invalid.
    1150: exit(1084); // stsmin    => ldsmin.
    1084: exit(0000); // ldsmin    => invalid.
    1154: exit(1094); // stsminlb  => ldsminlb.
    1094: exit(0000); // ldsminlb  => invalid.
    1155: exit(1095); // stsminlh  => ldsminlh.
    1095: exit(0000); // ldsminlh  => invalid.
    1153: exit(1093); // stsminl   => ldsminl.
    1093: exit(0000); // ldsminl   => invalid.
    1139: exit(1067); // stsetb    => ldsetb.
    1067: exit(0000); // ldsetb    => invalid.
    1140: exit(1068); // stseth    => ldseth.
    1068: exit(0000); // ldseth    => invalid.
    1138: exit(1060); // stset     => ldset.
    1060: exit(0000); // ldset     => invalid.
    1142: exit(1070); // stsetlb   => ldsetlb.
    1070: exit(0000); // ldsetlb   => invalid.
    1143: exit(1071); // stsetlh   => ldsetlh.
    1071: exit(0000); // ldsetlh   => invalid.
    1141: exit(1069); // stsetl    => ldsetl.
    1069: exit(0000); // ldsetl    => invalid.
    1163: exit(1115); // stuminb   => lduminb.
    1115: exit(0000); // lduminb   => invalid.
    1164: exit(1116); // stuminh   => lduminh.
    1116: exit(0000); // lduminh   => invalid.
    1162: exit(1108); // stumin    => ldumin.
    1108: exit(0000); // ldumin    => invalid.
    1166: exit(1118); // stuminlb  => lduminlb.
    1118: exit(0000); // lduminlb  => invalid.
    1167: exit(1119); // stuminlh  => lduminlh.
    1119: exit(0000); // lduminlh  => invalid.
    1165: exit(1117); // stuminl   => lduminl.
    1117: exit(0000); // lduminl   => invalid.
    0717: exit(0715); // rev32     => rev.
    0715: exit(0000); // rev       => invalid.
    1188: exit(1189); // autia1716 => autiasp.
    1189: exit(1190); // autiasp   => autiaz.
    1190: exit(1191); // autiaz    => autib1716.
    1191: exit(1192); // autib1716 => autibsp.
    1192: exit(1193); // autibsp   => autibz.
    1193: exit(1198); // autibz    => esb.
    1198: exit(1205); // esb       => nop.
    1205: exit(1206); // nop       => pacia1716.
    1206: exit(1207); // pacia1716 => paciasp.
    1207: exit(1208); // paciasp   => paciaz.
    1208: exit(1209); // paciaz    => pacib1716.
    1209: exit(1210); // pacib1716 => pacibsp.
    1210: exit(1211); // pacibsp   => pacibz.
    1211: exit(1212); // pacibz    => psb.
    1212: exit(1213); // psb       => sev.
    1213: exit(1214); // sev       => sevl.
    1214: exit(1218); // sevl      => wfe.
    1218: exit(1219); // wfe       => wfi.
    1219: exit(1220); // wfi       => xpaclri.
    1220: exit(1221); // xpaclri   => yield.
    1221: exit(1199); // yield     => hint.
    1199: exit(0000); // hint      => invalid.
    0450: exit(0449); // ld1r      => ld1.
    0449: exit(0000); // ld1       => invalid.
    0452: exit(0451); // ld2r      => ld2.
    0451: exit(0000); // ld2       => invalid.
    0454: exit(0453); // ld3r      => ld3.
    0453: exit(0000); // ld3       => invalid.
    0456: exit(0455); // ld4r      => ld4.
    0455: exit(0000); // ld4       => invalid.
    0462: exit(0461); // ld1r      => ld1.
    0461: exit(0000); // ld1       => invalid.
    0464: exit(0463); // ld2r      => ld2.
    0463: exit(0000); // ld2       => invalid.
    0466: exit(0465); // ld3r      => ld3.
    0465: exit(0000); // ld3       => invalid.
    0468: exit(0467); // ld4r      => ld4.
    0467: exit(0000); // ld4       => invalid.
    0137: exit(0139); // fmov      => movi.
    0139: exit(0140); // movi      => movi.
    0140: exit(0146); // movi      => orr.
    0146: exit(0147); // orr       => orr.
    0147: exit(0377); // orr       => shrn.
    0377: exit(0378); // shrn      => shrn2.
    0378: exit(0386); // shrn2     => sqshrn.
    0386: exit(0387); // sqshrn    => sqshrn2.
    0387: exit(0393); // sqshrn2   => sshll.
    0393: exit(0394); // sshll     => sshll2.
    0394: exit(0141); // sshll2    => movi.
    0141: exit(0375); // movi      => scvtf.
    0375: exit(0376); // scvtf     => shl.
    0376: exit(0384); // shl       => sqshl.
    0384: exit(0391); // sqshl     => srshr.
    0391: exit(0392); // srshr     => srsra.
    0392: exit(0395); // srsra     => sshr.
    0395: exit(0396); // sshr      => ssra.
    0396: exit(0000); // ssra      => invalid.
    0138: exit(0142); // fmov      => movi.
    0142: exit(0143); // movi      => movi.
    0143: exit(0134); // movi      => bic.
    0134: exit(0144); // bic       => mvni.
    0144: exit(0135); // mvni      => bic.
    0135: exit(0388); // bic       => sqshrun.
    0388: exit(0389); // sqshrun   => sqshrun2.
    0389: exit(0403); // sqshrun2  => uqshrn.
    0403: exit(0404); // uqshrn    => uqshrn2.
    0404: exit(0407); // uqshrn2   => ushll.
    0407: exit(0408); // ushll     => ushll2.
    0408: exit(0145); // ushll2    => mvni.
    0145: exit(0379); // mvni      => sli.
    0379: exit(0385); // sli       => sqshlu.
    0385: exit(0390); // sqshlu    => sri.
    0390: exit(0399); // sri       => ucvtf.
    0399: exit(0402); // ucvtf     => uqshl.
    0402: exit(0405); // uqshl     => urshr.
    0405: exit(0406); // urshr     => ursra.
    0406: exit(0409); // ursra     => ushr.
    0409: exit(0410); // ushr      => usra.
    0410: exit(0000); // usra      => invalid.
    0136: exit(0371); // fmov      => fcvtzs.
    0371: exit(0000); // fcvtzs    => invalid.
  else Result := 0000; // invalid. 
  end;
end;

{ This function finds first and next alias. 
    - If the given index does not represent an alias, it finds the first alias.
    - If the index is an alias, it finds the next alias. }

function FindAlias(Index: Integer): Integer;
begin
  case Index of
    0005: exit(0003); // $sbc       => ngc.
    0006: exit(0004); // $sbcs      => ngcs.
    0008: exit(0009); // $adds      => cmn.
    0012: exit(0010); // $subs      => cmp.
    0013: exit(0017); // $add       => mov.
    0014: exit(0015); // $adds      => cmn.
    0019: exit(0016); // $subs      => cmp.
    0021: exit(0022); // $adds      => cmn.
    0026: exit(0024); // $sub       => neg.
    0027: exit(0023); // $subs      => cmp.
    0023: exit(0025); // cmp        => negs.
    0150: exit(0152); // $ins       => mov.
    0151: exit(0153); // $ins       => mov.
    0156: exit(0154); // $umov      => mov.
    0201: exit(0199); // $not       => mvn.
    0306: exit(0303); // $orr       => mov.
    0393: exit(0397); // $sshll     => sxtl.
    0394: exit(0398); // $sshll2    => sxtl2.
    0407: exit(0411); // $ushll     => uxtl.
    0408: exit(0412); // $ushll2    => uxtl2.
    0528: exit(0529); // $dup       => mov.
    0615: exit(0613); // $bfm       => bfc.
    0613: exit(0614); // bfc        => bfi.
    0614: exit(0616); // bfi        => bfxil.
    0620: exit(0624); // $sbfm      => sxtw.
    0624: exit(0622); // sxtw       => sxtb.
    0622: exit(0623); // sxtb       => sxth.
    0623: exit(0612); // sxth       => asr.
    0612: exit(0619); // asr        => sbfiz.
    0619: exit(0621); // sbfiz      => sbfx.
    0626: exit(0628); // $ubfm      => uxtb.
    0628: exit(0629); // uxtb       => uxth.
    0629: exit(0618); // uxth       => lsr.
    0618: exit(0617); // lsr        => lsl.
    0617: exit(0625); // lsl        => ubfiz.
    0625: exit(0627); // ubfiz      => ubfx.
    0662: exit(0660); // $csinc     => cset.
    0660: exit(0656); // cset       => cinc.
    0663: exit(0661); // $csinv     => csetm.
    0661: exit(0657); // csetm      => cinv.
    0664: exit(0658); // $csneg     => cneg.
    0715: exit(0718); // $rev       => rev64.
    0722: exit(0721); // $asrv      => asr.
    0732: exit(0731); // $lslv      => lsl.
    0734: exit(0733); // $lsrv      => lsr.
    0737: exit(0736); // $rorv      => ror.
    0740: exit(0743); // $madd      => mul.
    0742: exit(0741); // $msub      => mneg.
    0744: exit(0748); // $smaddl    => smull.
    0746: exit(0745); // $smsubl    => smnegl.
    0749: exit(0753); // $umaddl    => umull.
    0751: exit(0750); // $umsubl    => umnegl.
    0762: exit(0763); // $extr      => ror.
    1005: exit(1009); // $ands      => tst.
    1008: exit(1007); // $orr       => mov.
    1011: exit(1020); // $ands      => tst.
    1018: exit(1017); // $orn       => mvn.
    1019: exit(1016); // $orr       => mov.
    1183: exit(1180); // $movn      => mov.
    1184: exit(1181); // $movz      => mov.
    1215: exit(1187); // $sys       => at.
    1187: exit(1195); // at         => dc.
    1195: exit(1200); // dc         => ic.
    1200: exit(1217); // ic         => tlbi.
  else Result := 0000; // invalid.
  end;
end;
