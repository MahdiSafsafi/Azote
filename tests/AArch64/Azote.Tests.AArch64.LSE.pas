// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/armv8.1a-lse.s
// ===========================================================================================================

unit Azote.Tests.AArch64.LSE;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TLSETest = class(TObject)
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
    procedure Test129;
    procedure Test130;
    procedure Test131;
    procedure Test132;
    procedure Test133;
    procedure Test134;
    procedure Test135;
    procedure Test136;
    procedure Test137;
    procedure Test138;
    procedure Test139;
    procedure Test140;
    procedure Test141;
    procedure Test142;
    procedure Test143;
    procedure Test144;
    procedure Test145;
    procedure Test146;
    procedure Test147;
    procedure Test148;
    procedure Test149;
    procedure Test150;
    procedure Test151;
    procedure Test152;
    procedure Test153;
    procedure Test154;
    procedure Test155;
    procedure Test156;
    procedure Test157;
    procedure Test158;
    procedure Test159;
    procedure Test160;
    procedure Test161;
    procedure Test162;
    procedure Test163;
    procedure Test164;
    procedure Test165;
    procedure Test166;
    procedure Test167;
    procedure Test168;
    procedure Test169;
    procedure Test170;
    procedure Test171;
    procedure Test172;
    procedure Test173;
    procedure Test174;
    procedure Test175;
    procedure Test176;
    procedure Test177;
    procedure Test178;
    procedure Test179;
    procedure Test180;
    procedure Test181;
    procedure Test182;
    procedure Test183;
    procedure Test184;
    procedure Test185;
    procedure Test186;
    procedure Test187;
    procedure Test188;
    procedure Test189;
    procedure Test190;
    procedure Test191;
    procedure Test192;
    procedure Test193;
    procedure Test194;
    procedure Test195;
    procedure Test196;
    procedure Test197;
    procedure Test198;
    procedure Test199;
    procedure Test200;
    procedure Test201;
    procedure Test202;
    procedure Test203;
    procedure Test204;
    procedure Test205;
    procedure Test206;
    procedure Test207;
    procedure Test208;
    procedure Test209;
    procedure Test210;
    procedure Test211;
    procedure Test212;
    procedure Test213;
    procedure Test214;
    procedure Test215;
    procedure Test216;
    procedure Test217;
    procedure Test218;
    procedure Test219;
    procedure Test220;
    procedure Test221;
    procedure Test222;
    procedure Test223;
    procedure Test224;
    procedure Test225;
    procedure Test226;
    procedure Test227;
    procedure Test228;
    procedure Test229;
    procedure Test230;
    procedure Test231;
    procedure Test232;
    procedure Test233;
    procedure Test234;
    procedure Test235;
    procedure Test236;
    procedure Test237;
    procedure Test238;
    procedure Test239;
    procedure Test240;
    procedure Test241;
    procedure Test242;
    procedure Test243;
    procedure Test244;
    procedure Test245;
    procedure Test246;
    procedure Test247;
    procedure Test248;
    procedure Test249;
    procedure Test250;
    procedure Test251;
    procedure Test252;
    procedure Test253;
    procedure Test254;
    procedure Test255;
    procedure Test256;
    procedure Test257;
    procedure Test258;
    procedure Test259;
    procedure Test260;
    procedure Test261;
    procedure Test262;
    procedure Test263;
    procedure Test264;
    procedure Test265;
    procedure Test266;
    procedure Test267;
    procedure Test268;
    procedure Test269;
    procedure Test270;
    procedure Test271;
    procedure Test272;
    procedure Test273;
    procedure Test274;
    procedure Test275;
    procedure Test276;
    procedure Test277;
    procedure Test278;
    procedure Test279;
    procedure Test280;
    procedure Test281;
    procedure Test282;
    procedure Test283;
    procedure Test284;
    procedure Test285;
    procedure Test286;
    procedure Test287;
    procedure Test288;
    procedure Test289;
    procedure Test290;
    procedure Test291;
    procedure Test292;
    procedure Test293;
    procedure Test294;
    procedure Test295;
    procedure Test296;
    procedure Test297;
    procedure Test298;
    procedure Test299;
    procedure Test300;
    procedure Test301;
    procedure Test302;
    procedure Test303;
    procedure Test304;
    procedure Test305;
    procedure Test306;
    procedure Test307;
    procedure Test308;
    procedure Test309;
    procedure Test310;
    procedure Test311;
    procedure Test312;
    procedure Test313;
    procedure Test314;
    procedure Test315;
    procedure Test316;
    procedure Test317;
    procedure Test318;
    procedure Test319;
    procedure Test320;
    procedure Test321;
    procedure Test322;
    procedure Test323;
    procedure Test324;
    procedure Test325;
    procedure Test326;
    procedure Test327;
    procedure Test328;
    procedure Test329;
    procedure Test330;
    procedure Test331;
    procedure Test332;
    procedure Test333;
    procedure Test334;
    procedure Test335;
    procedure Test336;
    procedure Test337;
    procedure Test338;
    procedure Test339;
    procedure Test340;
    procedure Test341;
    procedure Test342;
    procedure Test343;
    procedure Test344;
    procedure Test345;
    procedure Test346;
    procedure Test347;
    procedure Test348;
    procedure Test349;
    procedure Test350;
    procedure Test351;
    procedure Test352;
    procedure Test353;
    procedure Test354;
    procedure Test355;
    procedure Test356;
    procedure Test357;
    procedure Test358;
    procedure Test359;
    procedure Test360;
    procedure Test361;
    procedure Test362;
    procedure Test363;
    procedure Test364;
    procedure Test365;
    procedure Test366;
    procedure Test367;
    procedure Test368;
    procedure Test369;
    procedure Test370;
    procedure Test371;
    procedure Test372;
    procedure Test373;
    procedure Test374;
    procedure Test375;
    procedure Test376;
    procedure Test377;
    procedure Test378;
    procedure Test379;
    procedure Test380;
    procedure Test381;
    procedure Test382;
    procedure Test383;
    procedure Test384;
    procedure Test385;
    procedure Test386;
    procedure Test387;
    procedure Test388;
    procedure Test389;
    procedure Test390;
    procedure Test391;
    procedure Test392;
    procedure Test393;
    procedure Test394;
    procedure Test395;
    procedure Test396;
    procedure Test397;
    procedure Test398;
    procedure Test399;
    procedure Test400;
    procedure Test401;
    procedure Test402;
    procedure Test403;
    procedure Test404;
    procedure Test405;
    procedure Test406;
    procedure Test407;
    procedure Test408;
    procedure Test409;
    procedure Test410;
    procedure Test411;
    procedure Test412;
    procedure Test413;
    procedure Test414;
    procedure Test415;
    procedure Test416;
    procedure Test417;
    procedure Test418;
    procedure Test419;
    procedure Test420;
    procedure Test421;
    procedure Test422;
    procedure Test423;
    procedure Test424;
    procedure Test425;
    procedure Test426;
    procedure Test427;
    procedure Test428;
    procedure Test429;
    procedure Test430;
    procedure Test431;
    procedure Test432;
    procedure Test433;
    procedure Test434;
    procedure Test435;
    procedure Test436;
    procedure Test437;
    procedure Test438;
    procedure Test439;
    procedure Test440;
    procedure Test441;
    procedure Test442;
    procedure Test443;
    procedure Test444;
    procedure Test445;
    procedure Test446;
    procedure Test447;
    procedure Test448;
    procedure Test449;
    procedure Test450;
    procedure Test451;
    procedure Test452;
    procedure Test453;
    procedure Test454;
    procedure Test455;
    procedure Test456;
  end;

implementation

procedure TLSETest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TLSETest.TearDown;
begin

end;	

procedure TLSETest.Test1;
begin
  // cas w0, w1, [x2].
  FInsn.OpCode := $88A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test2;
begin
  // cas w2, w3, [sp].
  FInsn.OpCode := $88A27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test3;
begin
  // casa w0, w1, [x2].
  FInsn.OpCode := $88E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test4;
begin
  // casa w2, w3, [sp].
  FInsn.OpCode := $88E27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test5;
begin
  // casl w0, w1, [x2].
  FInsn.OpCode := $88A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test6;
begin
  // casl w2, w3, [sp].
  FInsn.OpCode := $88A2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test7;
begin
  // casal w0, w1, [x2].
  FInsn.OpCode := $88E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test8;
begin
  // casal w2, w3, [sp].
  FInsn.OpCode := $88E2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test9;
begin
  // casb w0, w1, [x2].
  FInsn.OpCode := $08A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test10;
begin
  // casb w2, w3, [sp].
  FInsn.OpCode := $08A27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test11;
begin
  // cash w0, w1, [x2].
  FInsn.OpCode := $48A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test12;
begin
  // cash w2, w3, [sp].
  FInsn.OpCode := $48A27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test13;
begin
  // casab w0, w1, [x2].
  FInsn.OpCode := $08E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test14;
begin
  // casab w2, w3, [sp].
  FInsn.OpCode := $08E27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test15;
begin
  // caslb w0, w1, [x2].
  FInsn.OpCode := $08A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test16;
begin
  // caslb w2, w3, [sp].
  FInsn.OpCode := $08A2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test17;
begin
  // casalb w0, w1, [x2].
  FInsn.OpCode := $08E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test18;
begin
  // casalb w2, w3, [sp].
  FInsn.OpCode := $08E2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test19;
begin
  // casah w0, w1, [x2].
  FInsn.OpCode := $48E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test20;
begin
  // casah w2, w3, [sp].
  FInsn.OpCode := $48E27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test21;
begin
  // caslh w0, w1, [x2].
  FInsn.OpCode := $48A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test22;
begin
  // caslh w2, w3, [sp].
  FInsn.OpCode := $48A2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test23;
begin
  // casalh w0, w1, [x2].
  FInsn.OpCode := $48E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test24;
begin
  // casalh w2, w3, [sp].
  FInsn.OpCode := $48E2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test25;
begin
  // cas x0, x1, [x2].
  FInsn.OpCode := $C8A07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test26;
begin
  // cas x2, x3, [sp].
  FInsn.OpCode := $C8A27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test27;
begin
  // casa x0, x1, [x2].
  FInsn.OpCode := $C8E07C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test28;
begin
  // casa x2, x3, [sp].
  FInsn.OpCode := $C8E27FE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test29;
begin
  // casl x0, x1, [x2].
  FInsn.OpCode := $C8A0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test30;
begin
  // casl x2, x3, [sp].
  FInsn.OpCode := $C8A2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test31;
begin
  // casal x0, x1, [x2].
  FInsn.OpCode := $C8E0FC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test32;
begin
  // casal x2, x3, [sp].
  FInsn.OpCode := $C8E2FFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test33;
begin
  // swp w0, w1, [x2].
  FInsn.OpCode := $B8208041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test34;
begin
  // swp w2, w3, [sp].
  FInsn.OpCode := $B82283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test35;
begin
  // swpa w0, w1, [x2].
  FInsn.OpCode := $B8A08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test36;
begin
  // swpa w2, w3, [sp].
  FInsn.OpCode := $B8A283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test37;
begin
  // swpl w0, w1, [x2].
  FInsn.OpCode := $B8608041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test38;
begin
  // swpl w2, w3, [sp].
  FInsn.OpCode := $B86283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test39;
begin
  // swpal w0, w1, [x2].
  FInsn.OpCode := $B8E08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test40;
begin
  // swpal w2, w3, [sp].
  FInsn.OpCode := $B8E283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test41;
begin
  // swpb w0, w1, [x2].
  FInsn.OpCode := $38208041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test42;
begin
  // swpb w2, w3, [sp].
  FInsn.OpCode := $382283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test43;
begin
  // swph w0, w1, [x2].
  FInsn.OpCode := $78208041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test44;
begin
  // swph w2, w3, [sp].
  FInsn.OpCode := $782283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test45;
begin
  // swpab w0, w1, [x2].
  FInsn.OpCode := $38A08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test46;
begin
  // swpab w2, w3, [sp].
  FInsn.OpCode := $38A283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test47;
begin
  // swplb w0, w1, [x2].
  FInsn.OpCode := $38608041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test48;
begin
  // swplb w2, w3, [sp].
  FInsn.OpCode := $386283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test49;
begin
  // swpalb w0, w1, [x2].
  FInsn.OpCode := $38E08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test50;
begin
  // swpalb w2, w3, [sp].
  FInsn.OpCode := $38E283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test51;
begin
  // swpah w0, w1, [x2].
  FInsn.OpCode := $78A08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test52;
begin
  // swpah w2, w3, [sp].
  FInsn.OpCode := $78A283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test53;
begin
  // swplh w0, w1, [x2].
  FInsn.OpCode := $78608041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test54;
begin
  // swplh w2, w3, [sp].
  FInsn.OpCode := $786283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test55;
begin
  // swpalh w0, w1, [x2].
  FInsn.OpCode := $78E08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test56;
begin
  // swpalh w2, w3, [sp].
  FInsn.OpCode := $78E283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test57;
begin
  // swp x0, x1, [x2].
  FInsn.OpCode := $F8208041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test58;
begin
  // swp x2, x3, [sp].
  FInsn.OpCode := $F82283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test59;
begin
  // swpa x0, x1, [x2].
  FInsn.OpCode := $F8A08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test60;
begin
  // swpa x2, x3, [sp].
  FInsn.OpCode := $F8A283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test61;
begin
  // swpl x0, x1, [x2].
  FInsn.OpCode := $F8608041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test62;
begin
  // swpl x2, x3, [sp].
  FInsn.OpCode := $F86283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test63;
begin
  // swpal x0, x1, [x2].
  FInsn.OpCode := $F8E08041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test64;
begin
  // swpal x2, x3, [sp].
  FInsn.OpCode := $F8E283E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SWPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test65;
begin
  // casp w0, w1, w2, w3, [x5].
  FInsn.OpCode := $08207CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X5);
end;

procedure TLSETest.Test66;
begin
  // casp w4, w5, w6, w7, [sp].
  FInsn.OpCode := $08247FE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test67;
begin
  // casp x0, x1, x2, x3, [x2].
  FInsn.OpCode := $48207C42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X2);
end;

procedure TLSETest.Test68;
begin
  // casp x4, x5, x6, x7, [sp].
  FInsn.OpCode := $48247FE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test69;
begin
  // caspa w0, w1, w2, w3, [x5].
  FInsn.OpCode := $08607CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X5);
end;

procedure TLSETest.Test70;
begin
  // caspa w4, w5, w6, w7, [sp].
  FInsn.OpCode := $08647FE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test71;
begin
  // caspa x0, x1, x2, x3, [x2].
  FInsn.OpCode := $48607C42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X2);
end;

procedure TLSETest.Test72;
begin
  // caspa x4, x5, x6, x7, [sp].
  FInsn.OpCode := $48647FE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test73;
begin
  // caspl w0, w1, w2, w3, [x5].
  FInsn.OpCode := $0820FCA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X5);
end;

procedure TLSETest.Test74;
begin
  // caspl w4, w5, w6, w7, [sp].
  FInsn.OpCode := $0824FFE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test75;
begin
  // caspl x0, x1, x2, x3, [x2].
  FInsn.OpCode := $4820FC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X2);
end;

procedure TLSETest.Test76;
begin
  // caspl x4, x5, x6, x7, [sp].
  FInsn.OpCode := $4824FFE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test77;
begin
  // caspal w0, w1, w2, w3, [x5].
  FInsn.OpCode := $0860FCA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X5);
end;

procedure TLSETest.Test78;
begin
  // caspal w4, w5, w6, w7, [sp].
  FInsn.OpCode := $0864FFE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test79;
begin
  // caspal x0, x1, x2, x3, [x2].
  FInsn.OpCode := $4860FC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_X2);
end;

procedure TLSETest.Test80;
begin
  // caspal x4, x5, x6, x7, [sp].
  FInsn.OpCode := $4864FFE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CASPAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[4].Memory.Base, REG_SP);
end;

procedure TLSETest.Test81;
begin
  // ldadd w0, w1, [x2].
  FInsn.OpCode := $B8200041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test82;
begin
  // ldadd w2, w3, [sp].
  FInsn.OpCode := $B82203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test83;
begin
  // ldadda w0, w1, [x2].
  FInsn.OpCode := $B8A00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test84;
begin
  // ldadda w2, w3, [sp].
  FInsn.OpCode := $B8A203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test85;
begin
  // ldaddl w0, w1, [x2].
  FInsn.OpCode := $B8600041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test86;
begin
  // ldaddl w2, w3, [sp].
  FInsn.OpCode := $B86203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test87;
begin
  // ldaddal w0, w1, [x2].
  FInsn.OpCode := $B8E00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test88;
begin
  // ldaddal w2, w3, [sp].
  FInsn.OpCode := $B8E203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test89;
begin
  // ldaddb w0, w1, [x2].
  FInsn.OpCode := $38200041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test90;
begin
  // ldaddb w2, w3, [sp].
  FInsn.OpCode := $382203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test91;
begin
  // ldaddh w0, w1, [x2].
  FInsn.OpCode := $78200041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test92;
begin
  // ldaddh w2, w3, [sp].
  FInsn.OpCode := $782203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test93;
begin
  // ldaddab w0, w1, [x2].
  FInsn.OpCode := $38A00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test94;
begin
  // ldaddab w2, w3, [sp].
  FInsn.OpCode := $38A203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test95;
begin
  // ldaddlb w0, w1, [x2].
  FInsn.OpCode := $38600041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test96;
begin
  // ldaddlb w2, w3, [sp].
  FInsn.OpCode := $386203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test97;
begin
  // ldaddalb w0, w1, [x2].
  FInsn.OpCode := $38E00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test98;
begin
  // ldaddalb w2, w3, [sp].
  FInsn.OpCode := $38E203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test99;
begin
  // ldaddah w0, w1, [x2].
  FInsn.OpCode := $78A00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test100;
begin
  // ldaddah w2, w3, [sp].
  FInsn.OpCode := $78A203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test101;
begin
  // ldaddlh w0, w1, [x2].
  FInsn.OpCode := $78600041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test102;
begin
  // ldaddlh w2, w3, [sp].
  FInsn.OpCode := $786203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test103;
begin
  // ldaddalh w0, w1, [x2].
  FInsn.OpCode := $78E00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test104;
begin
  // ldaddalh w2, w3, [sp].
  FInsn.OpCode := $78E203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test105;
begin
  // ldadd x0, x1, [x2].
  FInsn.OpCode := $F8200041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test106;
begin
  // ldadd x2, x3, [sp].
  FInsn.OpCode := $F82203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test107;
begin
  // ldadda x0, x1, [x2].
  FInsn.OpCode := $F8A00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test108;
begin
  // ldadda x2, x3, [sp].
  FInsn.OpCode := $F8A203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test109;
begin
  // ldaddl x0, x1, [x2].
  FInsn.OpCode := $F8600041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test110;
begin
  // ldaddl x2, x3, [sp].
  FInsn.OpCode := $F86203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test111;
begin
  // ldaddal x0, x1, [x2].
  FInsn.OpCode := $F8E00041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test112;
begin
  // ldaddal x2, x3, [sp].
  FInsn.OpCode := $F8E203E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDADDAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test113;
begin
  // ldclr w0, w1, [x2].
  FInsn.OpCode := $B8201041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test114;
begin
  // ldclr w2, w3, [sp].
  FInsn.OpCode := $B82213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test115;
begin
  // ldclra w0, w1, [x2].
  FInsn.OpCode := $B8A01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test116;
begin
  // ldclra w2, w3, [sp].
  FInsn.OpCode := $B8A213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test117;
begin
  // ldclrl w0, w1, [x2].
  FInsn.OpCode := $B8601041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test118;
begin
  // ldclrl w2, w3, [sp].
  FInsn.OpCode := $B86213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test119;
begin
  // ldclral w0, w1, [x2].
  FInsn.OpCode := $B8E01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test120;
begin
  // ldclral w2, w3, [sp].
  FInsn.OpCode := $B8E213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test121;
begin
  // ldclrb w0, w1, [x2].
  FInsn.OpCode := $38201041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test122;
begin
  // ldclrb w2, w3, [sp].
  FInsn.OpCode := $382213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test123;
begin
  // ldclrh w0, w1, [x2].
  FInsn.OpCode := $78201041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test124;
begin
  // ldclrh w2, w3, [sp].
  FInsn.OpCode := $782213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test125;
begin
  // ldclrab w0, w1, [x2].
  FInsn.OpCode := $38A01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test126;
begin
  // ldclrab w2, w3, [sp].
  FInsn.OpCode := $38A213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test127;
begin
  // ldclrlb w0, w1, [x2].
  FInsn.OpCode := $38601041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test128;
begin
  // ldclrlb w2, w3, [sp].
  FInsn.OpCode := $386213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test129;
begin
  // ldclralb w0, w1, [x2].
  FInsn.OpCode := $38E01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test130;
begin
  // ldclralb w2, w3, [sp].
  FInsn.OpCode := $38E213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test131;
begin
  // ldclrah w0, w1, [x2].
  FInsn.OpCode := $78A01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test132;
begin
  // ldclrah w2, w3, [sp].
  FInsn.OpCode := $78A213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test133;
begin
  // ldclrlh w0, w1, [x2].
  FInsn.OpCode := $78601041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test134;
begin
  // ldclrlh w2, w3, [sp].
  FInsn.OpCode := $786213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test135;
begin
  // ldclralh w0, w1, [x2].
  FInsn.OpCode := $78E01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test136;
begin
  // ldclralh w2, w3, [sp].
  FInsn.OpCode := $78E213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test137;
begin
  // ldclr x0, x1, [x2].
  FInsn.OpCode := $F8201041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test138;
begin
  // ldclr x2, x3, [sp].
  FInsn.OpCode := $F82213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test139;
begin
  // ldclra x0, x1, [x2].
  FInsn.OpCode := $F8A01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test140;
begin
  // ldclra x2, x3, [sp].
  FInsn.OpCode := $F8A213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test141;
begin
  // ldclrl x0, x1, [x2].
  FInsn.OpCode := $F8601041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test142;
begin
  // ldclrl x2, x3, [sp].
  FInsn.OpCode := $F86213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test143;
begin
  // ldclral x0, x1, [x2].
  FInsn.OpCode := $F8E01041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test144;
begin
  // ldclral x2, x3, [sp].
  FInsn.OpCode := $F8E213E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDCLRAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test145;
begin
  // ldeor w0, w1, [x2].
  FInsn.OpCode := $B8202041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test146;
begin
  // ldeor w2, w3, [sp].
  FInsn.OpCode := $B82223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test147;
begin
  // ldeora w0, w1, [x2].
  FInsn.OpCode := $B8A02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test148;
begin
  // ldeora w2, w3, [sp].
  FInsn.OpCode := $B8A223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test149;
begin
  // ldeorl w0, w1, [x2].
  FInsn.OpCode := $B8602041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test150;
begin
  // ldeorl w2, w3, [sp].
  FInsn.OpCode := $B86223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test151;
begin
  // ldeoral w0, w1, [x2].
  FInsn.OpCode := $B8E02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test152;
begin
  // ldeoral w2, w3, [sp].
  FInsn.OpCode := $B8E223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test153;
begin
  // ldeorb w0, w1, [x2].
  FInsn.OpCode := $38202041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test154;
begin
  // ldeorb w2, w3, [sp].
  FInsn.OpCode := $382223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test155;
begin
  // ldeorh w0, w1, [x2].
  FInsn.OpCode := $78202041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test156;
begin
  // ldeorh w2, w3, [sp].
  FInsn.OpCode := $782223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test157;
begin
  // ldeorab w0, w1, [x2].
  FInsn.OpCode := $38A02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test158;
begin
  // ldeorab w2, w3, [sp].
  FInsn.OpCode := $38A223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test159;
begin
  // ldeorlb w0, w1, [x2].
  FInsn.OpCode := $38602041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test160;
begin
  // ldeorlb w2, w3, [sp].
  FInsn.OpCode := $386223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test161;
begin
  // ldeoralb w0, w1, [x2].
  FInsn.OpCode := $38E02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test162;
begin
  // ldeoralb w2, w3, [sp].
  FInsn.OpCode := $38E223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test163;
begin
  // ldeorah w0, w1, [x2].
  FInsn.OpCode := $78A02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test164;
begin
  // ldeorah w2, w3, [sp].
  FInsn.OpCode := $78A223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test165;
begin
  // ldeorlh w0, w1, [x2].
  FInsn.OpCode := $78602041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test166;
begin
  // ldeorlh w2, w3, [sp].
  FInsn.OpCode := $786223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test167;
begin
  // ldeoralh w0, w1, [x2].
  FInsn.OpCode := $78E02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test168;
begin
  // ldeoralh w2, w3, [sp].
  FInsn.OpCode := $78E223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test169;
begin
  // ldeor x0, x1, [x2].
  FInsn.OpCode := $F8202041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test170;
begin
  // ldeor x2, x3, [sp].
  FInsn.OpCode := $F82223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test171;
begin
  // ldeora x0, x1, [x2].
  FInsn.OpCode := $F8A02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test172;
begin
  // ldeora x2, x3, [sp].
  FInsn.OpCode := $F8A223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test173;
begin
  // ldeorl x0, x1, [x2].
  FInsn.OpCode := $F8602041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test174;
begin
  // ldeorl x2, x3, [sp].
  FInsn.OpCode := $F86223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test175;
begin
  // ldeoral x0, x1, [x2].
  FInsn.OpCode := $F8E02041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test176;
begin
  // ldeoral x2, x3, [sp].
  FInsn.OpCode := $F8E223E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDEORAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test177;
begin
  // ldset w0, w1, [x2].
  FInsn.OpCode := $B8203041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test178;
begin
  // ldset w2, w3, [sp].
  FInsn.OpCode := $B82233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test179;
begin
  // ldseta w0, w1, [x2].
  FInsn.OpCode := $B8A03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test180;
begin
  // ldseta w2, w3, [sp].
  FInsn.OpCode := $B8A233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test181;
begin
  // ldsetl w0, w1, [x2].
  FInsn.OpCode := $B8603041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test182;
begin
  // ldsetl w2, w3, [sp].
  FInsn.OpCode := $B86233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test183;
begin
  // ldsetal w0, w1, [x2].
  FInsn.OpCode := $B8E03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test184;
begin
  // ldsetal w2, w3, [sp].
  FInsn.OpCode := $B8E233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test185;
begin
  // ldsetb w0, w1, [x2].
  FInsn.OpCode := $38203041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test186;
begin
  // ldsetb w2, w3, [sp].
  FInsn.OpCode := $382233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test187;
begin
  // ldseth w0, w1, [x2].
  FInsn.OpCode := $78203041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test188;
begin
  // ldseth w2, w3, [sp].
  FInsn.OpCode := $782233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test189;
begin
  // ldsetab w0, w1, [x2].
  FInsn.OpCode := $38A03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test190;
begin
  // ldsetab w2, w3, [sp].
  FInsn.OpCode := $38A233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test191;
begin
  // ldsetlb w0, w1, [x2].
  FInsn.OpCode := $38603041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test192;
begin
  // ldsetlb w2, w3, [sp].
  FInsn.OpCode := $386233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test193;
begin
  // ldsetalb w0, w1, [x2].
  FInsn.OpCode := $38E03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test194;
begin
  // ldsetalb w2, w3, [sp].
  FInsn.OpCode := $38E233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test195;
begin
  // ldsetah w0, w1, [x2].
  FInsn.OpCode := $78A03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test196;
begin
  // ldsetah w2, w3, [sp].
  FInsn.OpCode := $78A233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test197;
begin
  // ldsetlh w0, w1, [x2].
  FInsn.OpCode := $78603041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test198;
begin
  // ldsetlh w2, w3, [sp].
  FInsn.OpCode := $786233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test199;
begin
  // ldsetalh w0, w1, [x2].
  FInsn.OpCode := $78E03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test200;
begin
  // ldsetalh w2, w3, [sp].
  FInsn.OpCode := $78E233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test201;
begin
  // ldset x0, x1, [x2].
  FInsn.OpCode := $F8203041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test202;
begin
  // ldset x2, x3, [sp].
  FInsn.OpCode := $F82233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test203;
begin
  // ldseta x0, x1, [x2].
  FInsn.OpCode := $F8A03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test204;
begin
  // ldseta x2, x3, [sp].
  FInsn.OpCode := $F8A233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test205;
begin
  // ldsetl x0, x1, [x2].
  FInsn.OpCode := $F8603041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test206;
begin
  // ldsetl x2, x3, [sp].
  FInsn.OpCode := $F86233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test207;
begin
  // ldsetal x0, x1, [x2].
  FInsn.OpCode := $F8E03041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test208;
begin
  // ldsetal x2, x3, [sp].
  FInsn.OpCode := $F8E233E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSETAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test209;
begin
  // ldsmax w0, w1, [x2].
  FInsn.OpCode := $B8204041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test210;
begin
  // ldsmax w2, w3, [sp].
  FInsn.OpCode := $B82243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test211;
begin
  // ldsmaxa w0, w1, [x2].
  FInsn.OpCode := $B8A04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test212;
begin
  // ldsmaxa w2, w3, [sp].
  FInsn.OpCode := $B8A243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test213;
begin
  // ldsmaxl w0, w1, [x2].
  FInsn.OpCode := $B8604041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test214;
begin
  // ldsmaxl w2, w3, [sp].
  FInsn.OpCode := $B86243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test215;
begin
  // ldsmaxal w0, w1, [x2].
  FInsn.OpCode := $B8E04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test216;
begin
  // ldsmaxal w2, w3, [sp].
  FInsn.OpCode := $B8E243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test217;
begin
  // ldsmaxb w0, w1, [x2].
  FInsn.OpCode := $38204041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test218;
begin
  // ldsmaxb w2, w3, [sp].
  FInsn.OpCode := $382243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test219;
begin
  // ldsmaxh w0, w1, [x2].
  FInsn.OpCode := $78204041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test220;
begin
  // ldsmaxh w2, w3, [sp].
  FInsn.OpCode := $782243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test221;
begin
  // ldsmaxab w0, w1, [x2].
  FInsn.OpCode := $38A04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test222;
begin
  // ldsmaxab w2, w3, [sp].
  FInsn.OpCode := $38A243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test223;
begin
  // ldsmaxlb w0, w1, [x2].
  FInsn.OpCode := $38604041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test224;
begin
  // ldsmaxlb w2, w3, [sp].
  FInsn.OpCode := $386243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test225;
begin
  // ldsmaxalb w0, w1, [x2].
  FInsn.OpCode := $38E04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test226;
begin
  // ldsmaxalb w2, w3, [sp].
  FInsn.OpCode := $38E243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test227;
begin
  // ldsmaxah w0, w1, [x2].
  FInsn.OpCode := $78A04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test228;
begin
  // ldsmaxah w2, w3, [sp].
  FInsn.OpCode := $78A243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test229;
begin
  // ldsmaxlh w0, w1, [x2].
  FInsn.OpCode := $78604041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test230;
begin
  // ldsmaxlh w2, w3, [sp].
  FInsn.OpCode := $786243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test231;
begin
  // ldsmaxalh w0, w1, [x2].
  FInsn.OpCode := $78E04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test232;
begin
  // ldsmaxalh w2, w3, [sp].
  FInsn.OpCode := $78E243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test233;
begin
  // ldsmax x0, x1, [x2].
  FInsn.OpCode := $F8204041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test234;
begin
  // ldsmax x2, x3, [sp].
  FInsn.OpCode := $F82243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test235;
begin
  // ldsmaxa x0, x1, [x2].
  FInsn.OpCode := $F8A04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test236;
begin
  // ldsmaxa x2, x3, [sp].
  FInsn.OpCode := $F8A243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test237;
begin
  // ldsmaxl x0, x1, [x2].
  FInsn.OpCode := $F8604041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test238;
begin
  // ldsmaxl x2, x3, [sp].
  FInsn.OpCode := $F86243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test239;
begin
  // ldsmaxal x0, x1, [x2].
  FInsn.OpCode := $F8E04041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test240;
begin
  // ldsmaxal x2, x3, [sp].
  FInsn.OpCode := $F8E243E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test241;
begin
  // ldsmin w0, w1, [x2].
  FInsn.OpCode := $B8205041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test242;
begin
  // ldsmin w2, w3, [sp].
  FInsn.OpCode := $B82253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test243;
begin
  // ldsmina w0, w1, [x2].
  FInsn.OpCode := $B8A05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test244;
begin
  // ldsmina w2, w3, [sp].
  FInsn.OpCode := $B8A253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test245;
begin
  // ldsminl w0, w1, [x2].
  FInsn.OpCode := $B8605041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test246;
begin
  // ldsminl w2, w3, [sp].
  FInsn.OpCode := $B86253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test247;
begin
  // ldsminal w0, w1, [x2].
  FInsn.OpCode := $B8E05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test248;
begin
  // ldsminal w2, w3, [sp].
  FInsn.OpCode := $B8E253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test249;
begin
  // ldsminb w0, w1, [x2].
  FInsn.OpCode := $38205041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test250;
begin
  // ldsminb w2, w3, [sp].
  FInsn.OpCode := $382253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test251;
begin
  // ldsminh w0, w1, [x2].
  FInsn.OpCode := $78205041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test252;
begin
  // ldsminh w2, w3, [sp].
  FInsn.OpCode := $782253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test253;
begin
  // ldsminab w0, w1, [x2].
  FInsn.OpCode := $38A05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test254;
begin
  // ldsminab w2, w3, [sp].
  FInsn.OpCode := $38A253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test255;
begin
  // ldsminlb w0, w1, [x2].
  FInsn.OpCode := $38605041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test256;
begin
  // ldsminlb w2, w3, [sp].
  FInsn.OpCode := $386253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test257;
begin
  // ldsminalb w0, w1, [x2].
  FInsn.OpCode := $38E05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test258;
begin
  // ldsminalb w2, w3, [sp].
  FInsn.OpCode := $38E253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test259;
begin
  // ldsminah w0, w1, [x2].
  FInsn.OpCode := $78A05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test260;
begin
  // ldsminah w2, w3, [sp].
  FInsn.OpCode := $78A253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test261;
begin
  // ldsminlh w0, w1, [x2].
  FInsn.OpCode := $78605041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test262;
begin
  // ldsminlh w2, w3, [sp].
  FInsn.OpCode := $786253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test263;
begin
  // ldsminalh w0, w1, [x2].
  FInsn.OpCode := $78E05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test264;
begin
  // ldsminalh w2, w3, [sp].
  FInsn.OpCode := $78E253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test265;
begin
  // ldsmin x0, x1, [x2].
  FInsn.OpCode := $F8205041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test266;
begin
  // ldsmin x2, x3, [sp].
  FInsn.OpCode := $F82253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test267;
begin
  // ldsmina x0, x1, [x2].
  FInsn.OpCode := $F8A05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test268;
begin
  // ldsmina x2, x3, [sp].
  FInsn.OpCode := $F8A253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test269;
begin
  // ldsminl x0, x1, [x2].
  FInsn.OpCode := $F8605041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test270;
begin
  // ldsminl x2, x3, [sp].
  FInsn.OpCode := $F86253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test271;
begin
  // ldsminal x0, x1, [x2].
  FInsn.OpCode := $F8E05041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test272;
begin
  // ldsminal x2, x3, [sp].
  FInsn.OpCode := $F8E253E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDSMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test273;
begin
  // ldumax w0, w1, [x2].
  FInsn.OpCode := $B8206041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test274;
begin
  // ldumax w2, w3, [sp].
  FInsn.OpCode := $B82263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test275;
begin
  // ldumaxa w0, w1, [x2].
  FInsn.OpCode := $B8A06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test276;
begin
  // ldumaxa w2, w3, [sp].
  FInsn.OpCode := $B8A263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test277;
begin
  // ldumaxl w0, w1, [x2].
  FInsn.OpCode := $B8606041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test278;
begin
  // ldumaxl w2, w3, [sp].
  FInsn.OpCode := $B86263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test279;
begin
  // ldumaxal w0, w1, [x2].
  FInsn.OpCode := $B8E06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test280;
begin
  // ldumaxal w2, w3, [sp].
  FInsn.OpCode := $B8E263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test281;
begin
  // ldumaxb w0, w1, [x2].
  FInsn.OpCode := $38206041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test282;
begin
  // ldumaxb w2, w3, [sp].
  FInsn.OpCode := $382263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test283;
begin
  // ldumaxh w0, w1, [x2].
  FInsn.OpCode := $78206041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test284;
begin
  // ldumaxh w2, w3, [sp].
  FInsn.OpCode := $782263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test285;
begin
  // ldumaxab w0, w1, [x2].
  FInsn.OpCode := $38A06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test286;
begin
  // ldumaxab w2, w3, [sp].
  FInsn.OpCode := $38A263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test287;
begin
  // ldumaxlb w0, w1, [x2].
  FInsn.OpCode := $38606041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test288;
begin
  // ldumaxlb w2, w3, [sp].
  FInsn.OpCode := $386263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test289;
begin
  // ldumaxalb w0, w1, [x2].
  FInsn.OpCode := $38E06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test290;
begin
  // ldumaxalb w2, w3, [sp].
  FInsn.OpCode := $38E263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test291;
begin
  // ldumaxah w0, w1, [x2].
  FInsn.OpCode := $78A06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test292;
begin
  // ldumaxah w2, w3, [sp].
  FInsn.OpCode := $78A263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test293;
begin
  // ldumaxlh w0, w1, [x2].
  FInsn.OpCode := $78606041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test294;
begin
  // ldumaxlh w2, w3, [sp].
  FInsn.OpCode := $786263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test295;
begin
  // ldumaxalh w0, w1, [x2].
  FInsn.OpCode := $78E06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test296;
begin
  // ldumaxalh w2, w3, [sp].
  FInsn.OpCode := $78E263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test297;
begin
  // ldumax x0, x1, [x2].
  FInsn.OpCode := $F8206041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test298;
begin
  // ldumax x2, x3, [sp].
  FInsn.OpCode := $F82263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test299;
begin
  // ldumaxa x0, x1, [x2].
  FInsn.OpCode := $F8A06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test300;
begin
  // ldumaxa x2, x3, [sp].
  FInsn.OpCode := $F8A263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test301;
begin
  // ldumaxl x0, x1, [x2].
  FInsn.OpCode := $F8606041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test302;
begin
  // ldumaxl x2, x3, [sp].
  FInsn.OpCode := $F86263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test303;
begin
  // ldumaxal x0, x1, [x2].
  FInsn.OpCode := $F8E06041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test304;
begin
  // ldumaxal x2, x3, [sp].
  FInsn.OpCode := $F8E263E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMAXAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test305;
begin
  // ldumin w0, w1, [x2].
  FInsn.OpCode := $B8207041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test306;
begin
  // ldumin w2, w3, [sp].
  FInsn.OpCode := $B82273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test307;
begin
  // ldumina w0, w1, [x2].
  FInsn.OpCode := $B8A07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test308;
begin
  // ldumina w2, w3, [sp].
  FInsn.OpCode := $B8A273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test309;
begin
  // lduminl w0, w1, [x2].
  FInsn.OpCode := $B8607041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test310;
begin
  // lduminl w2, w3, [sp].
  FInsn.OpCode := $B86273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test311;
begin
  // lduminal w0, w1, [x2].
  FInsn.OpCode := $B8E07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test312;
begin
  // lduminal w2, w3, [sp].
  FInsn.OpCode := $B8E273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test313;
begin
  // lduminb w0, w1, [x2].
  FInsn.OpCode := $38207041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test314;
begin
  // lduminb w2, w3, [sp].
  FInsn.OpCode := $382273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test315;
begin
  // lduminh w0, w1, [x2].
  FInsn.OpCode := $78207041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test316;
begin
  // lduminh w2, w3, [sp].
  FInsn.OpCode := $782273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test317;
begin
  // lduminab w0, w1, [x2].
  FInsn.OpCode := $38A07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test318;
begin
  // lduminab w2, w3, [sp].
  FInsn.OpCode := $38A273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test319;
begin
  // lduminlb w0, w1, [x2].
  FInsn.OpCode := $38607041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test320;
begin
  // lduminlb w2, w3, [sp].
  FInsn.OpCode := $386273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test321;
begin
  // lduminalb w0, w1, [x2].
  FInsn.OpCode := $38E07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test322;
begin
  // lduminalb w2, w3, [sp].
  FInsn.OpCode := $38E273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINALB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test323;
begin
  // lduminah w0, w1, [x2].
  FInsn.OpCode := $78A07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test324;
begin
  // lduminah w2, w3, [sp].
  FInsn.OpCode := $78A273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test325;
begin
  // lduminlh w0, w1, [x2].
  FInsn.OpCode := $78607041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test326;
begin
  // lduminlh w2, w3, [sp].
  FInsn.OpCode := $786273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test327;
begin
  // lduminalh w0, w1, [x2].
  FInsn.OpCode := $78E07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test328;
begin
  // lduminalh w2, w3, [sp].
  FInsn.OpCode := $78E273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINALH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test329;
begin
  // ldumin x0, x1, [x2].
  FInsn.OpCode := $F8207041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test330;
begin
  // ldumin x2, x3, [sp].
  FInsn.OpCode := $F82273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test331;
begin
  // ldumina x0, x1, [x2].
  FInsn.OpCode := $F8A07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test332;
begin
  // ldumina x2, x3, [sp].
  FInsn.OpCode := $F8A273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test333;
begin
  // lduminl x0, x1, [x2].
  FInsn.OpCode := $F8607041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test334;
begin
  // lduminl x2, x3, [sp].
  FInsn.OpCode := $F86273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test335;
begin
  // lduminal x0, x1, [x2].
  FInsn.OpCode := $F8E07041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
end;

procedure TLSETest.Test336;
begin
  // lduminal x2, x3, [sp].
  FInsn.OpCode := $F8E273E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUMINAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TLSETest.Test337;
begin
  // stadd w0, [x2].
  FInsn.OpCode := $B820005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test338;
begin
  // stadd w2, [sp].
  FInsn.OpCode := $B82203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test339;
begin
  // staddl w0, [x2].
  FInsn.OpCode := $B860005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test340;
begin
  // staddl w2, [sp].
  FInsn.OpCode := $B86203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test341;
begin
  // staddb w0, [x2].
  FInsn.OpCode := $3820005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test342;
begin
  // staddb w2, [sp].
  FInsn.OpCode := $382203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test343;
begin
  // staddh w0, [x2].
  FInsn.OpCode := $7820005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test344;
begin
  // staddh w2, [sp].
  FInsn.OpCode := $782203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test345;
begin
  // staddlb w0, [x2].
  FInsn.OpCode := $3860005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test346;
begin
  // staddlb w2, [sp].
  FInsn.OpCode := $386203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test347;
begin
  // staddlh w0, [x2].
  FInsn.OpCode := $7860005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test348;
begin
  // staddlh w2, [sp].
  FInsn.OpCode := $786203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test349;
begin
  // stadd x0, [x2].
  FInsn.OpCode := $F820005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test350;
begin
  // stadd x2, [sp].
  FInsn.OpCode := $F82203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test351;
begin
  // staddl x0, [x2].
  FInsn.OpCode := $F860005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test352;
begin
  // staddl x2, [sp].
  FInsn.OpCode := $F86203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test353;
begin
  // stclr w0, [x2].
  FInsn.OpCode := $B820105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test354;
begin
  // stclr w2, [sp].
  FInsn.OpCode := $B82213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test355;
begin
  // stclrl w0, [x2].
  FInsn.OpCode := $B860105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test356;
begin
  // stclrl w2, [sp].
  FInsn.OpCode := $B86213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test357;
begin
  // stclrb w0, [x2].
  FInsn.OpCode := $3820105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test358;
begin
  // stclrb w2, [sp].
  FInsn.OpCode := $382213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test359;
begin
  // stclrh w0, [x2].
  FInsn.OpCode := $7820105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test360;
begin
  // stclrh w2, [sp].
  FInsn.OpCode := $782213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test361;
begin
  // stclrlb w0, [x2].
  FInsn.OpCode := $3860105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test362;
begin
  // stclrlb w2, [sp].
  FInsn.OpCode := $386213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test363;
begin
  // stclrlh w0, [x2].
  FInsn.OpCode := $7860105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test364;
begin
  // stclrlh w2, [sp].
  FInsn.OpCode := $786213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test365;
begin
  // stclr x0, [x2].
  FInsn.OpCode := $F820105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test366;
begin
  // stclr x2, [sp].
  FInsn.OpCode := $F82213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test367;
begin
  // stclrl x0, [x2].
  FInsn.OpCode := $F860105F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test368;
begin
  // stclrl x2, [sp].
  FInsn.OpCode := $F86213FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STCLRL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test369;
begin
  // steor w0, [x2].
  FInsn.OpCode := $B820205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test370;
begin
  // steor w2, [sp].
  FInsn.OpCode := $B82223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test371;
begin
  // steorl w0, [x2].
  FInsn.OpCode := $B860205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test372;
begin
  // steorl w2, [sp].
  FInsn.OpCode := $B86223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test373;
begin
  // steorb w0, [x2].
  FInsn.OpCode := $3820205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test374;
begin
  // steorb w2, [sp].
  FInsn.OpCode := $382223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test375;
begin
  // steorh w0, [x2].
  FInsn.OpCode := $7820205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test376;
begin
  // steorh w2, [sp].
  FInsn.OpCode := $782223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test377;
begin
  // steorlb w0, [x2].
  FInsn.OpCode := $3860205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test378;
begin
  // steorlb w2, [sp].
  FInsn.OpCode := $386223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test379;
begin
  // steorlh w0, [x2].
  FInsn.OpCode := $7860205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test380;
begin
  // steorlh w2, [sp].
  FInsn.OpCode := $786223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test381;
begin
  // steor x0, [x2].
  FInsn.OpCode := $F820205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test382;
begin
  // steor x2, [sp].
  FInsn.OpCode := $F82223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test383;
begin
  // steorl x0, [x2].
  FInsn.OpCode := $F860205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test384;
begin
  // steorl x2, [sp].
  FInsn.OpCode := $F86223FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STEORL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test385;
begin
  // stset w0, [x2].
  FInsn.OpCode := $B820305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test386;
begin
  // stset w2, [sp].
  FInsn.OpCode := $B82233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test387;
begin
  // stsetl w0, [x2].
  FInsn.OpCode := $B860305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test388;
begin
  // stsetl w2, [sp].
  FInsn.OpCode := $B86233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test389;
begin
  // stsetb w0, [x2].
  FInsn.OpCode := $3820305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test390;
begin
  // stsetb w2, [sp].
  FInsn.OpCode := $382233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test391;
begin
  // stseth w0, [x2].
  FInsn.OpCode := $7820305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test392;
begin
  // stseth w2, [sp].
  FInsn.OpCode := $782233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test393;
begin
  // stsetlb w0, [x2].
  FInsn.OpCode := $3860305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test394;
begin
  // stsetlb w2, [sp].
  FInsn.OpCode := $386233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test395;
begin
  // stsetlh w0, [x2].
  FInsn.OpCode := $7860305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test396;
begin
  // stsetlh w2, [sp].
  FInsn.OpCode := $786233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test397;
begin
  // stset x0, [x2].
  FInsn.OpCode := $F820305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test398;
begin
  // stset x2, [sp].
  FInsn.OpCode := $F82233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test399;
begin
  // stsetl x0, [x2].
  FInsn.OpCode := $F860305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test400;
begin
  // stsetl x2, [sp].
  FInsn.OpCode := $F86233FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSETL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test401;
begin
  // stsmax w0, [x2].
  FInsn.OpCode := $B820405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test402;
begin
  // stsmax w2, [sp].
  FInsn.OpCode := $B82243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test403;
begin
  // stsmaxl w0, [x2].
  FInsn.OpCode := $B860405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test404;
begin
  // stsmaxl w2, [sp].
  FInsn.OpCode := $B86243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test405;
begin
  // stsmaxb w0, [x2].
  FInsn.OpCode := $3820405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test406;
begin
  // stsmaxb w2, [sp].
  FInsn.OpCode := $382243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test407;
begin
  // stsmaxh w0, [x2].
  FInsn.OpCode := $7820405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test408;
begin
  // stsmaxh w2, [sp].
  FInsn.OpCode := $782243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test409;
begin
  // stsmaxlb w0, [x2].
  FInsn.OpCode := $3860405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test410;
begin
  // stsmaxlb w2, [sp].
  FInsn.OpCode := $386243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test411;
begin
  // stsmaxlh w0, [x2].
  FInsn.OpCode := $7860405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test412;
begin
  // stsmaxlh w2, [sp].
  FInsn.OpCode := $786243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test413;
begin
  // stsmax x0, [x2].
  FInsn.OpCode := $F820405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test414;
begin
  // stsmax x2, [sp].
  FInsn.OpCode := $F82243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test415;
begin
  // stsmaxl x0, [x2].
  FInsn.OpCode := $F860405F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test416;
begin
  // stsmaxl x2, [sp].
  FInsn.OpCode := $F86243FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test417;
begin
  // stsmin w0, [x2].
  FInsn.OpCode := $B820505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test418;
begin
  // stsmin w2, [sp].
  FInsn.OpCode := $B82253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test419;
begin
  // stsminl w0, [x2].
  FInsn.OpCode := $B860505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test420;
begin
  // stsminl w2, [sp].
  FInsn.OpCode := $B86253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test421;
begin
  // stsminb w0, [x2].
  FInsn.OpCode := $3820505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test422;
begin
  // stsminb w2, [sp].
  FInsn.OpCode := $382253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test423;
begin
  // stsminh w0, [x2].
  FInsn.OpCode := $7820505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test424;
begin
  // stsminh w2, [sp].
  FInsn.OpCode := $782253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test425;
begin
  // stsminlb w0, [x2].
  FInsn.OpCode := $3860505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test426;
begin
  // stsminlb w2, [sp].
  FInsn.OpCode := $386253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test427;
begin
  // stsminlh w0, [x2].
  FInsn.OpCode := $7860505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test428;
begin
  // stsminlh w2, [sp].
  FInsn.OpCode := $786253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test429;
begin
  // stsmin x0, [x2].
  FInsn.OpCode := $F820505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test430;
begin
  // stsmin x2, [sp].
  FInsn.OpCode := $F82253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test431;
begin
  // stsminl x0, [x2].
  FInsn.OpCode := $F860505F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test432;
begin
  // stsminl x2, [sp].
  FInsn.OpCode := $F86253FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STSMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test433;
begin
  // stumax w0, [x2].
  FInsn.OpCode := $B820605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test434;
begin
  // stumax w2, [sp].
  FInsn.OpCode := $B82263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test435;
begin
  // stumaxl w0, [x2].
  FInsn.OpCode := $B860605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test436;
begin
  // stumaxl w2, [sp].
  FInsn.OpCode := $B86263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test437;
begin
  // stumaxb w0, [x2].
  FInsn.OpCode := $3820605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test438;
begin
  // stumaxb w2, [sp].
  FInsn.OpCode := $382263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test439;
begin
  // stumaxh w0, [x2].
  FInsn.OpCode := $7820605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test440;
begin
  // stumaxh w2, [sp].
  FInsn.OpCode := $782263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test441;
begin
  // stumaxlb w0, [x2].
  FInsn.OpCode := $3860605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test442;
begin
  // stumaxlb w2, [sp].
  FInsn.OpCode := $386263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXLB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test443;
begin
  // stumaxlh w0, [x2].
  FInsn.OpCode := $7860605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test444;
begin
  // stumaxlh w2, [sp].
  FInsn.OpCode := $786263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXLH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test445;
begin
  // stumax x0, [x2].
  FInsn.OpCode := $F820605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test446;
begin
  // stumax x2, [sp].
  FInsn.OpCode := $F82263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test447;
begin
  // stumaxl x0, [x2].
  FInsn.OpCode := $F860605F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test448;
begin
  // stumaxl x2, [sp].
  FInsn.OpCode := $F86263FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMAXL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test449;
begin
  // stumin w0, [x2].
  FInsn.OpCode := $B820705F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test450;
begin
  // stumin w2, [sp].
  FInsn.OpCode := $B82273FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test451;
begin
  // stuminl w0, [x2].
  FInsn.OpCode := $B860705F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test452;
begin
  // stuminl w2, [sp].
  FInsn.OpCode := $B86273FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMINL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test453;
begin
  // stuminb w0, [x2].
  FInsn.OpCode := $3820705F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test454;
begin
  // stuminb w2, [sp].
  FInsn.OpCode := $382273FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMINB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TLSETest.Test455;
begin
  // stuminh w0, [x2].
  FInsn.OpCode := $7820705F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TLSETest.Test456;
begin
  // stuminh w2, [sp].
  FInsn.OpCode := $782273FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUMINH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

initialization
  TDUnitX.RegisterTestFixture(TLSETest);

end.
