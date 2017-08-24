// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-advsimd.s
// ===========================================================================================================

unit Azote.Tests.AArch64.AdvSIMD;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TAdvSIMDTest = class(TObject)
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
    procedure Test457;
    procedure Test458;
    procedure Test459;
    procedure Test460;
    procedure Test461;
    procedure Test462;
    procedure Test463;
    procedure Test464;
    procedure Test465;
    procedure Test466;
    procedure Test467;
    procedure Test468;
    procedure Test469;
    procedure Test470;
    procedure Test471;
    procedure Test472;
    procedure Test473;
    procedure Test474;
    procedure Test475;
    procedure Test476;
    procedure Test477;
    procedure Test478;
    procedure Test479;
    procedure Test480;
    procedure Test481;
    procedure Test482;
    procedure Test483;
    procedure Test484;
    procedure Test485;
    procedure Test486;
    procedure Test487;
    procedure Test488;
    procedure Test489;
    procedure Test490;
    procedure Test491;
    procedure Test492;
    procedure Test493;
    procedure Test494;
    procedure Test495;
    procedure Test496;
    procedure Test497;
    procedure Test498;
    procedure Test499;
    procedure Test500;
    procedure Test501;
    procedure Test502;
    procedure Test503;
    procedure Test504;
    procedure Test505;
    procedure Test506;
    procedure Test507;
    procedure Test508;
    procedure Test509;
    procedure Test510;
    procedure Test511;
    procedure Test512;
    procedure Test513;
    procedure Test514;
    procedure Test515;
    procedure Test516;
    procedure Test517;
    procedure Test518;
    procedure Test519;
    procedure Test520;
    procedure Test521;
    procedure Test522;
    procedure Test523;
    procedure Test524;
    procedure Test525;
    procedure Test526;
    procedure Test527;
    procedure Test528;
    procedure Test529;
    procedure Test530;
    procedure Test531;
    procedure Test532;
    procedure Test533;
    procedure Test534;
    procedure Test535;
    procedure Test536;
    procedure Test537;
    procedure Test538;
    procedure Test539;
    procedure Test540;
    procedure Test541;
    procedure Test542;
    procedure Test543;
    procedure Test544;
    procedure Test545;
    procedure Test546;
    procedure Test547;
    procedure Test548;
    procedure Test549;
    procedure Test550;
    procedure Test551;
    procedure Test552;
    procedure Test553;
    procedure Test554;
    procedure Test555;
    procedure Test556;
    procedure Test557;
    procedure Test558;
    procedure Test559;
    procedure Test560;
    procedure Test561;
    procedure Test562;
    procedure Test563;
    procedure Test564;
    procedure Test565;
    procedure Test566;
    procedure Test567;
    procedure Test568;
    procedure Test569;
    procedure Test570;
    procedure Test571;
    procedure Test572;
    procedure Test573;
    procedure Test574;
    procedure Test575;
    procedure Test576;
    procedure Test577;
    procedure Test578;
    procedure Test579;
    procedure Test580;
    procedure Test581;
    procedure Test582;
    procedure Test583;
    procedure Test584;
    procedure Test585;
    procedure Test586;
    procedure Test587;
    procedure Test588;
    procedure Test589;
    procedure Test590;
    procedure Test591;
    procedure Test592;
    procedure Test593;
    procedure Test594;
    procedure Test595;
    procedure Test596;
    procedure Test597;
    procedure Test598;
    procedure Test599;
    procedure Test600;
    procedure Test601;
    procedure Test602;
    procedure Test603;
    procedure Test604;
    procedure Test605;
    procedure Test606;
    procedure Test607;
    procedure Test608;
    procedure Test609;
    procedure Test610;
    procedure Test611;
    procedure Test612;
    procedure Test613;
    procedure Test614;
    procedure Test615;
    procedure Test616;
    procedure Test617;
    procedure Test618;
    procedure Test619;
    procedure Test620;
    procedure Test621;
    procedure Test622;
    procedure Test623;
    procedure Test624;
    procedure Test625;
    procedure Test626;
    procedure Test627;
    procedure Test628;
    procedure Test629;
    procedure Test630;
    procedure Test631;
    procedure Test632;
    procedure Test633;
    procedure Test634;
    procedure Test635;
    procedure Test636;
    procedure Test637;
    procedure Test638;
    procedure Test639;
    procedure Test640;
    procedure Test641;
    procedure Test642;
    procedure Test643;
    procedure Test644;
    procedure Test645;
    procedure Test646;
    procedure Test647;
    procedure Test648;
    procedure Test649;
    procedure Test650;
    procedure Test651;
    procedure Test652;
    procedure Test653;
    procedure Test654;
    procedure Test655;
    procedure Test656;
    procedure Test657;
    procedure Test658;
    procedure Test659;
    procedure Test660;
    procedure Test661;
    procedure Test662;
    procedure Test663;
    procedure Test664;
    procedure Test665;
    procedure Test666;
    procedure Test667;
    procedure Test668;
    procedure Test669;
    procedure Test670;
    procedure Test671;
    procedure Test672;
    procedure Test673;
    procedure Test674;
    procedure Test675;
    procedure Test676;
    procedure Test677;
    procedure Test678;
    procedure Test679;
    procedure Test680;
    procedure Test681;
    procedure Test682;
    procedure Test683;
    procedure Test684;
    procedure Test685;
    procedure Test686;
    procedure Test687;
    procedure Test688;
    procedure Test689;
    procedure Test690;
    procedure Test691;
    procedure Test692;
    procedure Test693;
    procedure Test694;
    procedure Test695;
    procedure Test696;
    procedure Test697;
    procedure Test698;
    procedure Test699;
    procedure Test700;
    procedure Test701;
    procedure Test702;
    procedure Test703;
    procedure Test704;
    procedure Test705;
    procedure Test706;
    procedure Test707;
    procedure Test708;
    procedure Test709;
    procedure Test710;
    procedure Test711;
    procedure Test712;
    procedure Test713;
    procedure Test714;
    procedure Test715;
    procedure Test716;
    procedure Test717;
    procedure Test718;
    procedure Test719;
    procedure Test720;
    procedure Test721;
    procedure Test722;
    procedure Test723;
    procedure Test724;
    procedure Test725;
    procedure Test726;
    procedure Test727;
    procedure Test728;
    procedure Test729;
    procedure Test730;
    procedure Test731;
    procedure Test732;
    procedure Test733;
    procedure Test734;
    procedure Test735;
    procedure Test736;
    procedure Test737;
    procedure Test738;
    procedure Test739;
    procedure Test740;
    procedure Test741;
    procedure Test742;
    procedure Test743;
    procedure Test744;
    procedure Test745;
    procedure Test746;
    procedure Test747;
    procedure Test748;
    procedure Test749;
    procedure Test750;
    procedure Test751;
    procedure Test752;
    procedure Test753;
    procedure Test754;
    procedure Test755;
    procedure Test756;
    procedure Test757;
    procedure Test758;
    procedure Test759;
    procedure Test760;
    procedure Test761;
    procedure Test762;
    procedure Test763;
    procedure Test764;
    procedure Test765;
    procedure Test766;
    procedure Test767;
    procedure Test768;
    procedure Test769;
    procedure Test770;
    procedure Test771;
    procedure Test772;
    procedure Test773;
    procedure Test774;
    procedure Test775;
    procedure Test776;
    procedure Test777;
    procedure Test778;
    procedure Test779;
    procedure Test780;
    procedure Test781;
    procedure Test782;
    procedure Test783;
    procedure Test784;
    procedure Test785;
    procedure Test786;
    procedure Test787;
    procedure Test788;
    procedure Test789;
    procedure Test790;
    procedure Test791;
    procedure Test792;
    procedure Test793;
    procedure Test794;
    procedure Test795;
    procedure Test796;
    procedure Test797;
    procedure Test798;
    procedure Test799;
    procedure Test800;
    procedure Test801;
    procedure Test802;
    procedure Test803;
    procedure Test804;
    procedure Test805;
    procedure Test806;
    procedure Test807;
    procedure Test808;
    procedure Test809;
    procedure Test810;
    procedure Test811;
    procedure Test812;
    procedure Test813;
    procedure Test814;
    procedure Test815;
    procedure Test816;
    procedure Test817;
    procedure Test818;
    procedure Test819;
    procedure Test820;
    procedure Test821;
    procedure Test822;
    procedure Test823;
    procedure Test824;
    procedure Test825;
    procedure Test826;
    procedure Test827;
    procedure Test828;
    procedure Test829;
    procedure Test830;
    procedure Test831;
    procedure Test832;
    procedure Test833;
    procedure Test834;
    procedure Test835;
    procedure Test836;
    procedure Test837;
    procedure Test838;
    procedure Test839;
    procedure Test840;
    procedure Test841;
    procedure Test842;
    procedure Test843;
    procedure Test844;
    procedure Test845;
    procedure Test846;
    procedure Test847;
    procedure Test848;
    procedure Test849;
    procedure Test850;
    procedure Test851;
    procedure Test852;
    procedure Test853;
    procedure Test854;
    procedure Test855;
    procedure Test856;
    procedure Test857;
    procedure Test858;
    procedure Test859;
    procedure Test860;
    procedure Test861;
    procedure Test862;
    procedure Test863;
    procedure Test864;
    procedure Test865;
    procedure Test866;
    procedure Test867;
    procedure Test868;
    procedure Test869;
    procedure Test870;
    procedure Test871;
    procedure Test872;
    procedure Test873;
    procedure Test874;
    procedure Test875;
    procedure Test876;
    procedure Test877;
    procedure Test878;
    procedure Test879;
    procedure Test880;
    procedure Test881;
    procedure Test882;
    procedure Test883;
    procedure Test884;
    procedure Test885;
    procedure Test886;
    procedure Test887;
    procedure Test888;
    procedure Test889;
    procedure Test890;
    procedure Test891;
    procedure Test892;
    procedure Test893;
    procedure Test894;
    procedure Test895;
    procedure Test896;
    procedure Test897;
    procedure Test898;
    procedure Test899;
    procedure Test900;
    procedure Test901;
    procedure Test902;
    procedure Test903;
    procedure Test904;
    procedure Test905;
    procedure Test906;
    procedure Test907;
    procedure Test908;
    procedure Test909;
    procedure Test910;
    procedure Test911;
    procedure Test912;
    procedure Test913;
    procedure Test914;
    procedure Test915;
    procedure Test916;
    procedure Test917;
    procedure Test918;
    procedure Test919;
    procedure Test920;
    procedure Test921;
    procedure Test922;
    procedure Test923;
    procedure Test924;
    procedure Test925;
    procedure Test926;
    procedure Test927;
    procedure Test928;
    procedure Test929;
    procedure Test930;
    procedure Test931;
    procedure Test932;
    procedure Test933;
    procedure Test934;
    procedure Test935;
    procedure Test936;
    procedure Test937;
    procedure Test938;
    procedure Test939;
    procedure Test940;
    procedure Test941;
    procedure Test942;
    procedure Test943;
    procedure Test944;
    procedure Test945;
    procedure Test946;
    procedure Test947;
    procedure Test948;
    procedure Test949;
    procedure Test950;
    procedure Test951;
    procedure Test952;
  end;

implementation

procedure TAdvSIMDTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TAdvSIMDTest.TearDown;
begin

end;	

procedure TAdvSIMDTest.Test1;
begin
  // abs.8b v0, v0.
  FInsn.OpCode := $0E20B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test2;
begin
  // abs.16b v0, v0.
  FInsn.OpCode := $4E20B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test3;
begin
  // abs.4h v0, v0.
  FInsn.OpCode := $0E60B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test4;
begin
  // abs.8h v0, v0.
  FInsn.OpCode := $4E60B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test5;
begin
  // abs.2s v0, v0.
  FInsn.OpCode := $0EA0B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test6;
begin
  // abs.4s v0, v0.
  FInsn.OpCode := $4EA0B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test7;
begin
  // add.8b v0, v0, v0.
  FInsn.OpCode := $0E208400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test8;
begin
  // add.16b v0, v0, v0.
  FInsn.OpCode := $4E208400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test9;
begin
  // add.4h v0, v0, v0.
  FInsn.OpCode := $0E608400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test10;
begin
  // add.8h v0, v0, v0.
  FInsn.OpCode := $4E608400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test11;
begin
  // add.2s v0, v0, v0.
  FInsn.OpCode := $0EA08400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test12;
begin
  // add.4s v0, v0, v0.
  FInsn.OpCode := $4EA08400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test13;
begin
  // add.2d v0, v0, v0.
  FInsn.OpCode := $4EE08400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test14;
begin
  // add d1, d2, d3.
  FInsn.OpCode := $5EE38441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TAdvSIMDTest.Test15;
begin
  // addhn.8b v0, v0, v0.
  FInsn.OpCode := $0E204000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test16;
begin
  // addhn2.16b v0, v0, v0.
  FInsn.OpCode := $4E204000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test17;
begin
  // addhn.4h v0, v0, v0.
  FInsn.OpCode := $0E604000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test18;
begin
  // addhn2.8h v0, v0, v0.
  FInsn.OpCode := $4E604000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test19;
begin
  // addhn.2s v0, v0, v0.
  FInsn.OpCode := $0EA04000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test20;
begin
  // addhn2.4s v0, v0, v0.
  FInsn.OpCode := $4EA04000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDHN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test21;
begin
  // addp.8b v0, v0, v0.
  FInsn.OpCode := $0E20BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test22;
begin
  // addp.16b v0, v0, v0.
  FInsn.OpCode := $4E20BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test23;
begin
  // addp.4h v0, v0, v0.
  FInsn.OpCode := $0E60BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test24;
begin
  // addp.8h v0, v0, v0.
  FInsn.OpCode := $4E60BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test25;
begin
  // addp.2s v0, v0, v0.
  FInsn.OpCode := $0EA0BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test26;
begin
  // addp.4s v0, v0, v0.
  FInsn.OpCode := $4EA0BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test27;
begin
  // addp.2d v0, v0, v0.
  FInsn.OpCode := $4EE0BC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test28;
begin
  // addp.2d d0, v0.
  FInsn.OpCode := $5EF1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test29;
begin
  // addv.8b b0, v0.
  FInsn.OpCode := $0E31B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test30;
begin
  // addv.16b b0, v0.
  FInsn.OpCode := $4E31B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test31;
begin
  // addv.4h h0, v0.
  FInsn.OpCode := $0E71B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test32;
begin
  // addv.8h h0, v0.
  FInsn.OpCode := $4E71B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test33;
begin
  // addv.4s s0, v0.
  FInsn.OpCode := $4EB1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test34;
begin
  // dup.2d v0, x3.
  FInsn.OpCode := $4E080C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
end;

procedure TAdvSIMDTest.Test35;
begin
  // dup.4s v0, w3.
  FInsn.OpCode := $4E040C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test36;
begin
  // dup.2s v0, w3.
  FInsn.OpCode := $0E040C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test37;
begin
  // dup.8h v0, w3.
  FInsn.OpCode := $4E020C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test38;
begin
  // dup.4h v0, w3.
  FInsn.OpCode := $0E020C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test39;
begin
  // dup.16b v0, w3.
  FInsn.OpCode := $4E010C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test40;
begin
  // dup.8b v0, w3.
  FInsn.OpCode := $0E010C60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test41;
begin
  // dup.2d v1, x3.
  FInsn.OpCode := $4E080C61;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
end;

procedure TAdvSIMDTest.Test42;
begin
  // dup.4s v2, w4.
  FInsn.OpCode := $4E040C82;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
end;

procedure TAdvSIMDTest.Test43;
begin
  // dup.2s v3, w5.
  FInsn.OpCode := $0E040CA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test44;
begin
  // dup.8h v4, w6.
  FInsn.OpCode := $4E020CC4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
end;

procedure TAdvSIMDTest.Test45;
begin
  // dup.4h v5, w7.
  FInsn.OpCode := $0E020CE5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
end;

procedure TAdvSIMDTest.Test46;
begin
  // dup.16b v6, w8.
  FInsn.OpCode := $4E010D06;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
end;

procedure TAdvSIMDTest.Test47;
begin
  // dup.8b v7, w9.
  FInsn.OpCode := $0E010D27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TAdvSIMDTest.Test48;
begin
  // dup.2d v0, v3[1].
  FInsn.OpCode := $4E180460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test49;
begin
  // dup.2s v0, v3[1].
  FInsn.OpCode := $0E0C0460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test50;
begin
  // dup.4s v0, v3[1].
  FInsn.OpCode := $4E0C0460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test51;
begin
  // dup.4h v0, v3[1].
  FInsn.OpCode := $0E060460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test52;
begin
  // dup.8h v0, v3[1].
  FInsn.OpCode := $4E060460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test53;
begin
  // dup.8b v0, v3[1].
  FInsn.OpCode := $0E030460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test54;
begin
  // dup.16b v0, v3[1].
  FInsn.OpCode := $4E030460;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test55;
begin
  // dup.2d v7, v9[1].
  FInsn.OpCode := $4E180527;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test56;
begin
  // dup.2s v6, v8[1].
  FInsn.OpCode := $0E0C0506;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test57;
begin
  // dup.4s v5, v7[2].
  FInsn.OpCode := $4E1404E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test58;
begin
  // dup.4h v4, v6[3].
  FInsn.OpCode := $0E0E04C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test59;
begin
  // dup.8h v3, v5[4].
  FInsn.OpCode := $4E1204A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(4));
end;

procedure TAdvSIMDTest.Test60;
begin
  // dup.8b v2, v4[5].
  FInsn.OpCode := $0E0B0482;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(5));
end;

procedure TAdvSIMDTest.Test61;
begin
  // dup.16b v1, v3[6].
  FInsn.OpCode := $4E0D0461;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DUP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(6));
end;

procedure TAdvSIMDTest.Test62;
begin
  // mov b3, v4[1].
  FInsn.OpCode := $5E030483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test63;
begin
  // mov h3, v4[1].
  FInsn.OpCode := $5E060483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test64;
begin
  // mov s3, v4[1].
  FInsn.OpCode := $5E0C0483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test65;
begin
  // mov d3, v4[1].
  FInsn.OpCode := $5E180483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test66;
begin
  // mov b3, v4[1].
  FInsn.OpCode := $5E030483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test67;
begin
  // mov h3, v4[1].
  FInsn.OpCode := $5E060483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test68;
begin
  // mov s3, v4[1].
  FInsn.OpCode := $5E0C0483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test69;
begin
  // mov d3, v4[1].
  FInsn.OpCode := $5E180483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test70;
begin
  // mov b3, v4[1].
  FInsn.OpCode := $5E030483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test71;
begin
  // mov h3, v4[1].
  FInsn.OpCode := $5E060483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test72;
begin
  // mov s3, v4[1].
  FInsn.OpCode := $5E0C0483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test73;
begin
  // mov d3, v4[1].
  FInsn.OpCode := $5E180483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test74;
begin
  // mov b3, v4[1].
  FInsn.OpCode := $5E030483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test75;
begin
  // mov h3, v4[1].
  FInsn.OpCode := $5E060483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test76;
begin
  // mov s3, v4[1].
  FInsn.OpCode := $5E0C0483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test77;
begin
  // mov d3, v4[1].
  FInsn.OpCode := $5E180483;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test78;
begin
  // smov.s x3, v2[2].
  FInsn.OpCode := $4E142C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test79;
begin
  // smov.s x3, v2[2].
  FInsn.OpCode := $4E142C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test80;
begin
  // mov.s w3, v2[2].
  FInsn.OpCode := $0E143C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test81;
begin
  // mov.s w3, v2[2].
  FInsn.OpCode := $0E143C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test82;
begin
  // mov.d x3, v2[1].
  FInsn.OpCode := $4E183C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test83;
begin
  // mov.d x3, v2[1].
  FInsn.OpCode := $4E183C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test84;
begin
  // mov.s w2, v3[3].
  FInsn.OpCode := $0E1C3C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test85;
begin
  // mov.s w5, v7[2].
  FInsn.OpCode := $0E143CE5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test86;
begin
  // mov.d x11, v13[1].
  FInsn.OpCode := $4E183DAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test87;
begin
  // mov.d x17, v19[0].
  FInsn.OpCode := $4E083E71;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V19);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test88;
begin
  // ins.d v2[1], x5.
  FInsn.OpCode := $4E181CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
end;

procedure TAdvSIMDTest.Test89;
begin
  // ins.s v2[1], w5.
  FInsn.OpCode := $4E0C1CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test90;
begin
  // ins.h v2[1], w5.
  FInsn.OpCode := $4E061CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test91;
begin
  // ins.b v2[1], w5.
  FInsn.OpCode := $4E031CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test92;
begin
  // ins.d v2[1], x5.
  FInsn.OpCode := $4E181CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
end;

procedure TAdvSIMDTest.Test93;
begin
  // ins.s v2[1], w5.
  FInsn.OpCode := $4E0C1CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test94;
begin
  // ins.h v2[1], w5.
  FInsn.OpCode := $4E061CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test95;
begin
  // ins.b v2[1], w5.
  FInsn.OpCode := $4E031CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test96;
begin
  // ins.d v2[1], v15[1].
  FInsn.OpCode := $6E1845E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test97;
begin
  // ins.s v2[1], v15[1].
  FInsn.OpCode := $6E0C25E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test98;
begin
  // ins.h v2[1], v15[1].
  FInsn.OpCode := $6E0615E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test99;
begin
  // ins.b v2[1], v15[1].
  FInsn.OpCode := $6E030DE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test100;
begin
  // ins.d v2[1], v15[0].
  FInsn.OpCode := $6E1805E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test101;
begin
  // ins.s v2[3], v15[2].
  FInsn.OpCode := $6E1C45E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test102;
begin
  // ins.h v2[7], v15[3].
  FInsn.OpCode := $6E1E35E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test103;
begin
  // ins.b v2[10], v15[5].
  FInsn.OpCode := $6E152DE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(10));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(5));
end;

procedure TAdvSIMDTest.Test104;
begin
  // ins.d v2[1], x5.
  FInsn.OpCode := $4E181CA2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
end;

procedure TAdvSIMDTest.Test105;
begin
  // ins.s v3[1], w6.
  FInsn.OpCode := $4E0C1CC3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
end;

procedure TAdvSIMDTest.Test106;
begin
  // ins.h v4[1], w7.
  FInsn.OpCode := $4E061CE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
end;

procedure TAdvSIMDTest.Test107;
begin
  // ins.b v5[1], w8.
  FInsn.OpCode := $4E031D05;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W8);
end;

procedure TAdvSIMDTest.Test108;
begin
  // ins.d v9[1], x2.
  FInsn.OpCode := $4E181C49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TAdvSIMDTest.Test109;
begin
  // ins.s v8[1], w3.
  FInsn.OpCode := $4E0C1C68;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TAdvSIMDTest.Test110;
begin
  // ins.h v7[1], w4.
  FInsn.OpCode := $4E061C87;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
end;

procedure TAdvSIMDTest.Test111;
begin
  // ins.b v6[1], w5.
  FInsn.OpCode := $4E031CA6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TAdvSIMDTest.Test112;
begin
  // ins.d v1[1], v10[1].
  FInsn.OpCode := $6E184541;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test113;
begin
  // ins.s v2[1], v11[1].
  FInsn.OpCode := $6E0C2562;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test114;
begin
  // ins.h v7[1], v12[1].
  FInsn.OpCode := $6E061587;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test115;
begin
  // ins.b v8[1], v15[1].
  FInsn.OpCode := $6E030DE8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test116;
begin
  // ins.d v2[1], v15[0].
  FInsn.OpCode := $6E1805E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test117;
begin
  // ins.s v7[3], v16[2].
  FInsn.OpCode := $6E1C4607;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test118;
begin
  // ins.h v8[7], v17[3].
  FInsn.OpCode := $6E1E3628;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(7));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test119;
begin
  // ins.b v9[10], v18[5].
  FInsn.OpCode := $6E152E49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(10));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V18);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(5));
end;

procedure TAdvSIMDTest.Test120;
begin
  // and.8b v0, v0, v0.
  FInsn.OpCode := $0E201C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test121;
begin
  // and.16b v0, v0, v0.
  FInsn.OpCode := $4E201C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test122;
begin
  // bic.8b v0, v0, v0.
  FInsn.OpCode := $0E601C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test123;
begin
  // cmeq.8b v0, v0, v0.
  FInsn.OpCode := $2E208C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test124;
begin
  // cmge.8b v0, v0, v0.
  FInsn.OpCode := $0E203C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test125;
begin
  // cmgt.8b v0, v0, v0.
  FInsn.OpCode := $0E203400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test126;
begin
  // cmhi.8b v0, v0, v0.
  FInsn.OpCode := $2E203400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test127;
begin
  // cmhs.8b v0, v0, v0.
  FInsn.OpCode := $2E203C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMHS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test128;
begin
  // cmtst.8b v0, v0, v0.
  FInsn.OpCode := $0E208C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMTST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test129;
begin
  // fabd.2s v0, v0, v0.
  FInsn.OpCode := $2EA0D400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test130;
begin
  // facge.2s v0, v0, v0.
  FInsn.OpCode := $2E20EC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test131;
begin
  // facgt.2s v0, v0, v0.
  FInsn.OpCode := $2EA0EC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test132;
begin
  // faddp.2s v0, v0, v0.
  FInsn.OpCode := $2E20D400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test133;
begin
  // fadd.2s v0, v0, v0.
  FInsn.OpCode := $0E20D400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test134;
begin
  // fcmeq.2s v0, v0, v0.
  FInsn.OpCode := $0E20E400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test135;
begin
  // fcmge.2s v0, v0, v0.
  FInsn.OpCode := $2E20E400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test136;
begin
  // fcmgt.2s v0, v0, v0.
  FInsn.OpCode := $2EA0E400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test137;
begin
  // fdiv.2s v0, v0, v0.
  FInsn.OpCode := $2E20FC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test138;
begin
  // fmaxnmp.2s v0, v0, v0.
  FInsn.OpCode := $2E20C400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test139;
begin
  // fmaxnm.2s v0, v0, v0.
  FInsn.OpCode := $0E20C400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test140;
begin
  // fmaxp.2s v0, v0, v0.
  FInsn.OpCode := $2E20F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test141;
begin
  // fmax.2s v0, v0, v0.
  FInsn.OpCode := $0E20F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test142;
begin
  // fminnmp.2s v0, v0, v0.
  FInsn.OpCode := $2EA0C400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test143;
begin
  // fminnm.2s v0, v0, v0.
  FInsn.OpCode := $0EA0C400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test144;
begin
  // fminp.2s v0, v0, v0.
  FInsn.OpCode := $2EA0F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test145;
begin
  // fmin.2s v0, v0, v0.
  FInsn.OpCode := $0EA0F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test146;
begin
  // fmla.2s v0, v0, v0.
  FInsn.OpCode := $0E20CC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test147;
begin
  // fmls.2s v0, v0, v0.
  FInsn.OpCode := $0EA0CC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test148;
begin
  // fmulx.2s v0, v0, v0.
  FInsn.OpCode := $0E20DC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test149;
begin
  // fmul.2s v0, v0, v0.
  FInsn.OpCode := $2E20DC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test150;
begin
  // fmulx d2, d3, d1.
  FInsn.OpCode := $5E61DC62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D1);
end;

procedure TAdvSIMDTest.Test151;
begin
  // fmulx s2, s3, s1.
  FInsn.OpCode := $5E21DC62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S1);
end;

procedure TAdvSIMDTest.Test152;
begin
  // frecps.2s v0, v0, v0.
  FInsn.OpCode := $0E20FC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test153;
begin
  // frsqrts.2s v0, v0, v0.
  FInsn.OpCode := $0EA0FC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test154;
begin
  // fsub.2s v0, v0, v0.
  FInsn.OpCode := $0EA0D400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test155;
begin
  // mla.8b v0, v0, v0.
  FInsn.OpCode := $0E209400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test156;
begin
  // mls.8b v0, v0, v0.
  FInsn.OpCode := $2E209400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test157;
begin
  // mul.8b v0, v0, v0.
  FInsn.OpCode := $0E209C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test158;
begin
  // pmul.8b v0, v0, v0.
  FInsn.OpCode := $2E209C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test159;
begin
  // saba.8b v0, v0, v0.
  FInsn.OpCode := $0E207C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test160;
begin
  // sabd.8b v0, v0, v0.
  FInsn.OpCode := $0E207400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SABD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test161;
begin
  // shadd.8b v0, v0, v0.
  FInsn.OpCode := $0E200400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test162;
begin
  // shsub.8b v0, v0, v0.
  FInsn.OpCode := $0E202400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test163;
begin
  // smaxp.8b v0, v0, v0.
  FInsn.OpCode := $0E20A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test164;
begin
  // smax.8b v0, v0, v0.
  FInsn.OpCode := $0E206400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test165;
begin
  // sminp.8b v0, v0, v0.
  FInsn.OpCode := $0E20AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMINP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test166;
begin
  // smin.8b v0, v0, v0.
  FInsn.OpCode := $0E206C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test167;
begin
  // sqadd.8b v0, v0, v0.
  FInsn.OpCode := $0E200C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test168;
begin
  // sqdmulh.4h v0, v0, v0.
  FInsn.OpCode := $0E60B400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test169;
begin
  // sqrdmulh.4h v0, v0, v0.
  FInsn.OpCode := $2E60B400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test170;
begin
  // sqrshl.8b v0, v0, v0.
  FInsn.OpCode := $0E205C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test171;
begin
  // sqshl.8b v0, v0, v0.
  FInsn.OpCode := $0E204C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test172;
begin
  // sqsub.8b v0, v0, v0.
  FInsn.OpCode := $0E202C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test173;
begin
  // srhadd.8b v0, v0, v0.
  FInsn.OpCode := $0E201400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test174;
begin
  // srshl.8b v0, v0, v0.
  FInsn.OpCode := $0E205400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test175;
begin
  // sshl.8b v0, v0, v0.
  FInsn.OpCode := $0E204400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test176;
begin
  // sub.8b v0, v0, v0.
  FInsn.OpCode := $2E208400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test177;
begin
  // uaba.8b v0, v0, v0.
  FInsn.OpCode := $2E207C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test178;
begin
  // uabd.8b v0, v0, v0.
  FInsn.OpCode := $2E207400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test179;
begin
  // uhadd.8b v0, v0, v0.
  FInsn.OpCode := $2E200400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test180;
begin
  // uhsub.8b v0, v0, v0.
  FInsn.OpCode := $2E202400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UHSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test181;
begin
  // umaxp.8b v0, v0, v0.
  FInsn.OpCode := $2E20A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test182;
begin
  // umax.8b v0, v0, v0.
  FInsn.OpCode := $2E206400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test183;
begin
  // uminp.8b v0, v0, v0.
  FInsn.OpCode := $2E20AC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMINP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test184;
begin
  // umin.8b v0, v0, v0.
  FInsn.OpCode := $2E206C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test185;
begin
  // uqadd.8b v0, v0, v0.
  FInsn.OpCode := $2E200C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test186;
begin
  // uqrshl.8b v0, v0, v0.
  FInsn.OpCode := $2E205C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test187;
begin
  // uqshl.8b v0, v0, v0.
  FInsn.OpCode := $2E204C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test188;
begin
  // uqsub.8b v0, v0, v0.
  FInsn.OpCode := $2E202C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test189;
begin
  // urhadd.8b v0, v0, v0.
  FInsn.OpCode := $2E201400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URHADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test190;
begin
  // urshl.8b v0, v0, v0.
  FInsn.OpCode := $2E205400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test191;
begin
  // ushl.8b v0, v0, v0.
  FInsn.OpCode := $2E204400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test192;
begin
  // fabd.4h v0, v0, v0.
  FInsn.OpCode := $2EC01400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test193;
begin
  // facge.4h v0, v0, v0.
  FInsn.OpCode := $2E402C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test194;
begin
  // facgt.4h v0, v0, v0.
  FInsn.OpCode := $2EC02C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test195;
begin
  // faddp.4h v0, v0, v0.
  FInsn.OpCode := $2E401400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test196;
begin
  // fadd.4h v0, v0, v0.
  FInsn.OpCode := $0E401400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test197;
begin
  // fcmeq.4h v0, v0, v0.
  FInsn.OpCode := $0E402400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test198;
begin
  // fcmge.4h v0, v0, v0.
  FInsn.OpCode := $2E402400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test199;
begin
  // fcmgt.4h v0, v0, v0.
  FInsn.OpCode := $2EC02400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test200;
begin
  // fdiv.4h v0, v0, v0.
  FInsn.OpCode := $2E403C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test201;
begin
  // fmaxnmp.4h v0, v0, v0.
  FInsn.OpCode := $2E400400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test202;
begin
  // fmaxnm.4h v0, v0, v0.
  FInsn.OpCode := $0E400400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test203;
begin
  // fmaxp.4h v0, v0, v0.
  FInsn.OpCode := $2E403400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test204;
begin
  // fmax.4h v0, v0, v0.
  FInsn.OpCode := $0E403400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test205;
begin
  // fminnmp.4h v0, v0, v0.
  FInsn.OpCode := $2EC00400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test206;
begin
  // fminnm.4h v0, v0, v0.
  FInsn.OpCode := $0EC00400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test207;
begin
  // fminp.4h v0, v0, v0.
  FInsn.OpCode := $2EC03400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test208;
begin
  // fmin.4h v0, v0, v0.
  FInsn.OpCode := $0EC03400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test209;
begin
  // fmla.4h v0, v0, v0.
  FInsn.OpCode := $0E400C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test210;
begin
  // fmls.4h v0, v0, v0.
  FInsn.OpCode := $0EC00C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test211;
begin
  // fmulx.4h v0, v0, v0.
  FInsn.OpCode := $0E401C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test212;
begin
  // fmul.4h v0, v0, v0.
  FInsn.OpCode := $2E401C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test213;
begin
  // frecps.4h v0, v0, v0.
  FInsn.OpCode := $0E403C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test214;
begin
  // frsqrts.4h v0, v0, v0.
  FInsn.OpCode := $0EC03C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test215;
begin
  // fsub.4h v0, v0, v0.
  FInsn.OpCode := $0EC01400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test216;
begin
  // fabd.8h v0, v0, v0.
  FInsn.OpCode := $6EC01400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test217;
begin
  // facge.8h v0, v0, v0.
  FInsn.OpCode := $6E402C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test218;
begin
  // facgt.8h v0, v0, v0.
  FInsn.OpCode := $6EC02C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FACGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test219;
begin
  // faddp.8h v0, v0, v0.
  FInsn.OpCode := $6E401400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test220;
begin
  // fadd.8h v0, v0, v0.
  FInsn.OpCode := $4E401400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test221;
begin
  // fcmeq.8h v0, v0, v0.
  FInsn.OpCode := $4E402400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test222;
begin
  // fcmge.8h v0, v0, v0.
  FInsn.OpCode := $6E402400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test223;
begin
  // fcmgt.8h v0, v0, v0.
  FInsn.OpCode := $6EC02400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test224;
begin
  // fdiv.8h v0, v0, v0.
  FInsn.OpCode := $6E403C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test225;
begin
  // fmaxnmp.8h v0, v0, v0.
  FInsn.OpCode := $6E400400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test226;
begin
  // fmaxnm.8h v0, v0, v0.
  FInsn.OpCode := $4E400400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test227;
begin
  // fmaxp.8h v0, v0, v0.
  FInsn.OpCode := $6E403400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test228;
begin
  // fmax.8h v0, v0, v0.
  FInsn.OpCode := $4E403400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test229;
begin
  // fminnmp.8h v0, v0, v0.
  FInsn.OpCode := $6EC00400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test230;
begin
  // fminnm.8h v0, v0, v0.
  FInsn.OpCode := $4EC00400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test231;
begin
  // fminp.8h v0, v0, v0.
  FInsn.OpCode := $6EC03400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test232;
begin
  // fmin.8h v0, v0, v0.
  FInsn.OpCode := $4EC03400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test233;
begin
  // fmla.8h v0, v0, v0.
  FInsn.OpCode := $4E400C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test234;
begin
  // fmls.8h v0, v0, v0.
  FInsn.OpCode := $4EC00C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test235;
begin
  // fmulx.8h v0, v0, v0.
  FInsn.OpCode := $4E401C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test236;
begin
  // fmul.8h v0, v0, v0.
  FInsn.OpCode := $6E401C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test237;
begin
  // frecps.8h v0, v0, v0.
  FInsn.OpCode := $4E403C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test238;
begin
  // frsqrts.8h v0, v0, v0.
  FInsn.OpCode := $4EC03C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test239;
begin
  // fsub.8h v0, v0, v0.
  FInsn.OpCode := $4EC01400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test240;
begin
  // bif.8b v0, v0, v0.
  FInsn.OpCode := $2EE01C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test241;
begin
  // bit.8b v0, v0, v0.
  FInsn.OpCode := $2EA01C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test242;
begin
  // bsl.8b v0, v0, v0.
  FInsn.OpCode := $2E601C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test243;
begin
  // eor.8b v0, v0, v0.
  FInsn.OpCode := $2E201C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test244;
begin
  // orn.8b v0, v0, v0.
  FInsn.OpCode := $0EE01C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test245;
begin
  // orr.8b v0, v0, v1.
  FInsn.OpCode := $0EA11C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test246;
begin
  // sadalp.4h v0, v0.
  FInsn.OpCode := $0E206800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test247;
begin
  // sadalp.8h v0, v0.
  FInsn.OpCode := $4E206800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test248;
begin
  // sadalp.2s v0, v0.
  FInsn.OpCode := $0E606800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test249;
begin
  // sadalp.4s v0, v0.
  FInsn.OpCode := $4E606800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test250;
begin
  // sadalp.1d v0, v0.
  FInsn.OpCode := $0EA06800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test251;
begin
  // sadalp.2d v0, v0.
  FInsn.OpCode := $4EA06800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test252;
begin
  // cls.8b v0, v0.
  FInsn.OpCode := $0E204800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test253;
begin
  // clz.8b v0, v0.
  FInsn.OpCode := $2E204800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test254;
begin
  // cnt.8b v0, v0.
  FInsn.OpCode := $0E205800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CNT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test255;
begin
  // fabs.2s v0, v0.
  FInsn.OpCode := $0EA0F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test256;
begin
  // fneg.2s v0, v0.
  FInsn.OpCode := $2EA0F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test257;
begin
  // frecpe.2s v0, v0.
  FInsn.OpCode := $0EA1D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test258;
begin
  // frinta.2s v0, v0.
  FInsn.OpCode := $2E218800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test259;
begin
  // frintx.2s v0, v0.
  FInsn.OpCode := $2E219800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test260;
begin
  // frinti.2s v0, v0.
  FInsn.OpCode := $2EA19800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test261;
begin
  // frintm.2s v0, v0.
  FInsn.OpCode := $0E219800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test262;
begin
  // frintn.2s v0, v0.
  FInsn.OpCode := $0E218800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test263;
begin
  // frintp.2s v0, v0.
  FInsn.OpCode := $0EA18800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test264;
begin
  // frintz.2s v0, v0.
  FInsn.OpCode := $0EA19800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test265;
begin
  // frsqrte.2s v0, v0.
  FInsn.OpCode := $2EA1D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test266;
begin
  // fsqrt.2s v0, v0.
  FInsn.OpCode := $2EA1F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test267;
begin
  // neg.8b v0, v0.
  FInsn.OpCode := $2E20B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test268;
begin
  // mvn.8b v0, v0.
  FInsn.OpCode := $2E205800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test269;
begin
  // rbit.8b v0, v0.
  FInsn.OpCode := $2E605800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RBIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test270;
begin
  // rev16.8b v0, v0.
  FInsn.OpCode := $0E201800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV16);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test271;
begin
  // rev32.8b v0, v0.
  FInsn.OpCode := $2E200800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test272;
begin
  // rev64.8b v0, v0.
  FInsn.OpCode := $0E200800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV64);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test273;
begin
  // sadalp.4h v0, v0.
  FInsn.OpCode := $0E206800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test274;
begin
  // saddlp.4h v0, v0.
  FInsn.OpCode := $0E202800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test275;
begin
  // scvtf.2s v0, v0.
  FInsn.OpCode := $0E21D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test276;
begin
  // sqabs.8b v0, v0.
  FInsn.OpCode := $0E207800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test277;
begin
  // sqneg.8b v0, v0.
  FInsn.OpCode := $2E207800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test278;
begin
  // sqxtn.8b v0, v0.
  FInsn.OpCode := $0E214800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test279;
begin
  // sqxtun.8b v0, v0.
  FInsn.OpCode := $2E212800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQXTUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test280;
begin
  // suqadd.8b v0, v0.
  FInsn.OpCode := $0E203800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test281;
begin
  // uadalp.4h v0, v0.
  FInsn.OpCode := $2E206800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test282;
begin
  // uaddlp.4h v0, v0.
  FInsn.OpCode := $2E202800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDLP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test283;
begin
  // ucvtf.2s v0, v0.
  FInsn.OpCode := $2E21D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test284;
begin
  // uqxtn.8b v0, v0.
  FInsn.OpCode := $2E214800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQXTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test285;
begin
  // urecpe.2s v0, v0.
  FInsn.OpCode := $0EA1C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test286;
begin
  // ursqrte.2s v0, v0.
  FInsn.OpCode := $2EA1C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test287;
begin
  // usqadd.8b v0, v0.
  FInsn.OpCode := $2E203800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USQADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test288;
begin
  // xtn.8b v0, v0.
  FInsn.OpCode := $0E212800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test289;
begin
  // shll.8h v1, v2, #8.
  FInsn.OpCode := $2E213841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(8));
end;

procedure TAdvSIMDTest.Test290;
begin
  // shll.4s v3, v4, #16.
  FInsn.OpCode := $2E613883;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TAdvSIMDTest.Test291;
begin
  // shll.2d v5, v6, #32.
  FInsn.OpCode := $2EA138C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TAdvSIMDTest.Test292;
begin
  // shll2.8h v7, v8, #8.
  FInsn.OpCode := $6E213907;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(8));
end;

procedure TAdvSIMDTest.Test293;
begin
  // shll2.4s v9, v10, #16.
  FInsn.OpCode := $6E613949;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TAdvSIMDTest.Test294;
begin
  // shll2.2d v11, v12, #32.
  FInsn.OpCode := $6EA1398B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TAdvSIMDTest.Test295;
begin
  // shll.8h v1, v2, #8.
  FInsn.OpCode := $2E213841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(8));
end;

procedure TAdvSIMDTest.Test296;
begin
  // shll.4s v1, v2, #16.
  FInsn.OpCode := $2E613841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TAdvSIMDTest.Test297;
begin
  // shll.2d v1, v2, #32.
  FInsn.OpCode := $2EA13841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TAdvSIMDTest.Test298;
begin
  // shll2.8h v1, v2, #8.
  FInsn.OpCode := $6E213841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(8));
end;

procedure TAdvSIMDTest.Test299;
begin
  // shll2.4s v1, v2, #16.
  FInsn.OpCode := $6E613841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TAdvSIMDTest.Test300;
begin
  // shll2.2d v1, v2, #32.
  FInsn.OpCode := $6EA13841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TAdvSIMDTest.Test301;
begin
  // fabs.4h v0, v0.
  FInsn.OpCode := $0EF8F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test302;
begin
  // fneg.4h v0, v0.
  FInsn.OpCode := $2EF8F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test303;
begin
  // frecpe.4h v0, v0.
  FInsn.OpCode := $0EF9D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test304;
begin
  // frinta.4h v0, v0.
  FInsn.OpCode := $2E798800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test305;
begin
  // frintx.4h v0, v0.
  FInsn.OpCode := $2E799800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test306;
begin
  // frinti.4h v0, v0.
  FInsn.OpCode := $2EF99800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test307;
begin
  // frintm.4h v0, v0.
  FInsn.OpCode := $0E799800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test308;
begin
  // frintn.4h v0, v0.
  FInsn.OpCode := $0E798800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test309;
begin
  // frintp.4h v0, v0.
  FInsn.OpCode := $0EF98800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test310;
begin
  // frintz.4h v0, v0.
  FInsn.OpCode := $0EF99800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test311;
begin
  // frsqrte.4h v0, v0.
  FInsn.OpCode := $2EF9D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test312;
begin
  // fsqrt.4h v0, v0.
  FInsn.OpCode := $2EF9F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test313;
begin
  // fabs.8h v0, v0.
  FInsn.OpCode := $4EF8F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test314;
begin
  // fneg.8h v0, v0.
  FInsn.OpCode := $6EF8F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test315;
begin
  // frecpe.8h v0, v0.
  FInsn.OpCode := $4EF9D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRECPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test316;
begin
  // frinta.8h v0, v0.
  FInsn.OpCode := $6E798800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test317;
begin
  // frintx.8h v0, v0.
  FInsn.OpCode := $6E799800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test318;
begin
  // frinti.8h v0, v0.
  FInsn.OpCode := $6EF99800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test319;
begin
  // frintm.8h v0, v0.
  FInsn.OpCode := $4E799800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test320;
begin
  // frintn.8h v0, v0.
  FInsn.OpCode := $4E798800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test321;
begin
  // frintp.8h v0, v0.
  FInsn.OpCode := $4EF98800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test322;
begin
  // frintz.8h v0, v0.
  FInsn.OpCode := $4EF99800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test323;
begin
  // frsqrte.8h v0, v0.
  FInsn.OpCode := $6EF9D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test324;
begin
  // fsqrt.8h v0, v0.
  FInsn.OpCode := $6EF9F800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test325;
begin
  // cmeq.8b v0, v0, #0.
  FInsn.OpCode := $0E209800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test326;
begin
  // cmeq.16b v0, v0, #0.
  FInsn.OpCode := $4E209800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test327;
begin
  // cmeq.4h v0, v0, #0.
  FInsn.OpCode := $0E609800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test328;
begin
  // cmeq.8h v0, v0, #0.
  FInsn.OpCode := $4E609800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test329;
begin
  // cmeq.2s v0, v0, #0.
  FInsn.OpCode := $0EA09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test330;
begin
  // cmeq.4s v0, v0, #0.
  FInsn.OpCode := $4EA09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test331;
begin
  // cmeq.2d v0, v0, #0.
  FInsn.OpCode := $4EE09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test332;
begin
  // cmge.8b v0, v0, #0.
  FInsn.OpCode := $2E208800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test333;
begin
  // cmgt.8b v0, v0, #0.
  FInsn.OpCode := $0E208800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test334;
begin
  // cmle.8b v0, v0, #0.
  FInsn.OpCode := $2E209800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test335;
begin
  // cmlt.8b v0, v0, #0.
  FInsn.OpCode := $0E20A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test336;
begin
  // fcmeq.2s v0, v0, #0.0.
  FInsn.OpCode := $0EA0D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMEQ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TAdvSIMDTest.Test337;
begin
  // fcmge.2s v0, v0, #0.0.
  FInsn.OpCode := $2EA0C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TAdvSIMDTest.Test338;
begin
  // fcmgt.2s v0, v0, #0.0.
  FInsn.OpCode := $0EA0C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMGT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TAdvSIMDTest.Test339;
begin
  // fcmle.2s v0, v0, #0.0.
  FInsn.OpCode := $2EA0D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TAdvSIMDTest.Test340;
begin
  // fcmlt.2s v0, v0, #0.0.
  FInsn.OpCode := $0EA0E800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsFP, Double(0.0));
end;

procedure TAdvSIMDTest.Test341;
begin
  // cmlt.8b v8, v14, #0.
  FInsn.OpCode := $0E20A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test342;
begin
  // cmlt.16b v8, v14, #0.
  FInsn.OpCode := $4E20A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test343;
begin
  // cmlt.4h v8, v14, #0.
  FInsn.OpCode := $0E60A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test344;
begin
  // cmlt.8h v8, v14, #0.
  FInsn.OpCode := $4E60A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test345;
begin
  // cmlt.2s v8, v14, #0.
  FInsn.OpCode := $0EA0A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test346;
begin
  // cmlt.4s v8, v14, #0.
  FInsn.OpCode := $4EA0A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test347;
begin
  // cmlt.2d v8, v14, #0.
  FInsn.OpCode := $4EE0A9C8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMLT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TAdvSIMDTest.Test348;
begin
  // fcvtas.2s v0, v0.
  FInsn.OpCode := $0E21C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test349;
begin
  // fcvtas.4s v0, v0.
  FInsn.OpCode := $4E21C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test350;
begin
  // fcvtas.2d v0, v0.
  FInsn.OpCode := $4E61C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test351;
begin
  // fcvtas s0, s0.
  FInsn.OpCode := $5E21C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test352;
begin
  // fcvtas d0, d0.
  FInsn.OpCode := $5E61C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test353;
begin
  // fcvtau.2s v0, v0.
  FInsn.OpCode := $2E21C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test354;
begin
  // fcvtau.4s v0, v0.
  FInsn.OpCode := $6E21C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test355;
begin
  // fcvtau.2d v0, v0.
  FInsn.OpCode := $6E61C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test356;
begin
  // fcvtau s0, s0.
  FInsn.OpCode := $7E21C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test357;
begin
  // fcvtau d0, d0.
  FInsn.OpCode := $7E61C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test358;
begin
  // fcvtl v1.4s, v5.4h.
  FInsn.OpCode := $0E2178A1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4H);
end;

procedure TAdvSIMDTest.Test359;
begin
  // fcvtl v2.2d, v6.2s.
  FInsn.OpCode := $0E6178C2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2S);
end;

procedure TAdvSIMDTest.Test360;
begin
  // fcvtl2 v3.4s, v7.8h.
  FInsn.OpCode := $4E2178E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_8H);
end;

procedure TAdvSIMDTest.Test361;
begin
  // fcvtl2 v4.2d, v8.4s.
  FInsn.OpCode := $4E617904;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2D);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TAdvSIMDTest.Test362;
begin
  // fcvtms.2s v0, v0.
  FInsn.OpCode := $0E21B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test363;
begin
  // fcvtms.4s v0, v0.
  FInsn.OpCode := $4E21B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test364;
begin
  // fcvtms.2d v0, v0.
  FInsn.OpCode := $4E61B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test365;
begin
  // fcvtms s0, s0.
  FInsn.OpCode := $5E21B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test366;
begin
  // fcvtms d0, d0.
  FInsn.OpCode := $5E61B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test367;
begin
  // fcvtmu.2s v0, v0.
  FInsn.OpCode := $2E21B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test368;
begin
  // fcvtmu.4s v0, v0.
  FInsn.OpCode := $6E21B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test369;
begin
  // fcvtmu.2d v0, v0.
  FInsn.OpCode := $6E61B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test370;
begin
  // fcvtmu s0, s0.
  FInsn.OpCode := $7E21B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test371;
begin
  // fcvtmu d0, d0.
  FInsn.OpCode := $7E61B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test372;
begin
  // fcvtns.2s v0, v0.
  FInsn.OpCode := $0E21A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test373;
begin
  // fcvtns.4s v0, v0.
  FInsn.OpCode := $4E21A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test374;
begin
  // fcvtns.2d v0, v0.
  FInsn.OpCode := $4E61A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test375;
begin
  // fcvtns s0, s0.
  FInsn.OpCode := $5E21A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test376;
begin
  // fcvtns d0, d0.
  FInsn.OpCode := $5E61A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test377;
begin
  // fcvtnu.2s v0, v0.
  FInsn.OpCode := $2E21A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test378;
begin
  // fcvtnu.4s v0, v0.
  FInsn.OpCode := $6E21A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test379;
begin
  // fcvtnu.2d v0, v0.
  FInsn.OpCode := $6E61A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test380;
begin
  // fcvtnu s0, s0.
  FInsn.OpCode := $7E21A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test381;
begin
  // fcvtnu d0, d0.
  FInsn.OpCode := $7E61A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test382;
begin
  // fcvtn v2.4h, v4.4s.
  FInsn.OpCode := $0E216882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TAdvSIMDTest.Test383;
begin
  // fcvtn v3.2s, v5.2d.
  FInsn.OpCode := $0E6168A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TAdvSIMDTest.Test384;
begin
  // fcvtn2 v4.8h, v6.4s.
  FInsn.OpCode := $4E2168C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_8H);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_4S);
end;

procedure TAdvSIMDTest.Test385;
begin
  // fcvtn2 v5.4s, v7.2d.
  FInsn.OpCode := $4E6168E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TAdvSIMDTest.Test386;
begin
  // fcvtxn v6.2s, v9.2d.
  FInsn.OpCode := $2E616926;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTXN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_2S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TAdvSIMDTest.Test387;
begin
  // fcvtxn2 v7.4s, v8.2d.
  FInsn.OpCode := $6E616907;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTXN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_4S);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_2D);
end;

procedure TAdvSIMDTest.Test388;
begin
  // fcvtps.2s v0, v0.
  FInsn.OpCode := $0EA1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test389;
begin
  // fcvtps.4s v0, v0.
  FInsn.OpCode := $4EA1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test390;
begin
  // fcvtps.2d v0, v0.
  FInsn.OpCode := $4EE1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test391;
begin
  // fcvtps s0, s0.
  FInsn.OpCode := $5EA1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test392;
begin
  // fcvtps d0, d0.
  FInsn.OpCode := $5EE1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test393;
begin
  // fcvtpu.2s v0, v0.
  FInsn.OpCode := $2EA1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test394;
begin
  // fcvtpu.4s v0, v0.
  FInsn.OpCode := $6EA1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test395;
begin
  // fcvtpu.2d v0, v0.
  FInsn.OpCode := $6EE1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test396;
begin
  // fcvtpu s0, s0.
  FInsn.OpCode := $7EA1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test397;
begin
  // fcvtpu d0, d0.
  FInsn.OpCode := $7EE1A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test398;
begin
  // fcvtzs.2s v0, v0.
  FInsn.OpCode := $0EA1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test399;
begin
  // fcvtzs.4s v0, v0.
  FInsn.OpCode := $4EA1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test400;
begin
  // fcvtzs.2d v0, v0.
  FInsn.OpCode := $4EE1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test401;
begin
  // fcvtzs s0, s0.
  FInsn.OpCode := $5EA1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test402;
begin
  // fcvtzs d0, d0.
  FInsn.OpCode := $5EE1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test403;
begin
  // fcvtzu.2s v0, v0.
  FInsn.OpCode := $2EA1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test404;
begin
  // fcvtzu.4s v0, v0.
  FInsn.OpCode := $6EA1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test405;
begin
  // fcvtzu.2d v0, v0.
  FInsn.OpCode := $6EE1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test406;
begin
  // fcvtzu s0, s0.
  FInsn.OpCode := $7EA1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test407;
begin
  // fcvtzu d0, d0.
  FInsn.OpCode := $7EE1B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test408;
begin
  // bic.2s v0, #1.
  FInsn.OpCode := $2F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test409;
begin
  // bic.2s v0, #1.
  FInsn.OpCode := $2F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test410;
begin
  // bic.2s v0, #1, lsl #8.
  FInsn.OpCode := $2F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test411;
begin
  // bic.2s v0, #1, lsl #16.
  FInsn.OpCode := $2F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test412;
begin
  // bic.2s v0, #1, lsl #24.
  FInsn.OpCode := $2F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test413;
begin
  // bic.4h v0, #1.
  FInsn.OpCode := $2F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test414;
begin
  // bic.4h v0, #1.
  FInsn.OpCode := $2F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test415;
begin
  // bic.4h v0, #1, lsl #8.
  FInsn.OpCode := $2F00B420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test416;
begin
  // bic.4s v0, #1.
  FInsn.OpCode := $6F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test417;
begin
  // bic.4s v0, #1.
  FInsn.OpCode := $6F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test418;
begin
  // bic.4s v0, #1, lsl #8.
  FInsn.OpCode := $6F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test419;
begin
  // bic.4s v0, #1, lsl #16.
  FInsn.OpCode := $6F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test420;
begin
  // bic.4s v0, #1, lsl #24.
  FInsn.OpCode := $6F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test421;
begin
  // bic.8h v0, #1.
  FInsn.OpCode := $6F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test422;
begin
  // bic.8h v0, #1.
  FInsn.OpCode := $6F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test423;
begin
  // bic.8h v0, #1, lsl #8.
  FInsn.OpCode := $6F00B420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test424;
begin
  // fmov.2d v0, #0.12500000.
  FInsn.OpCode := $6F02F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TAdvSIMDTest.Test425;
begin
  // fmov.2s v0, #0.12500000.
  FInsn.OpCode := $0F02F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TAdvSIMDTest.Test426;
begin
  // fmov.4s v0, #0.12500000.
  FInsn.OpCode := $4F02F400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TAdvSIMDTest.Test427;
begin
  // orr.2s v0, #1.
  FInsn.OpCode := $0F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test428;
begin
  // orr.2s v0, #1.
  FInsn.OpCode := $0F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test429;
begin
  // orr.2s v0, #1, lsl #8.
  FInsn.OpCode := $0F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test430;
begin
  // orr.2s v0, #1, lsl #16.
  FInsn.OpCode := $0F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test431;
begin
  // orr.2s v0, #1, lsl #24.
  FInsn.OpCode := $0F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test432;
begin
  // orr.4h v0, #1.
  FInsn.OpCode := $0F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test433;
begin
  // orr.4h v0, #1.
  FInsn.OpCode := $0F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test434;
begin
  // orr.4h v0, #1, lsl #8.
  FInsn.OpCode := $0F00B420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test435;
begin
  // orr.4s v0, #1.
  FInsn.OpCode := $4F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test436;
begin
  // orr.4s v0, #1.
  FInsn.OpCode := $4F001420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test437;
begin
  // orr.4s v0, #1, lsl #8.
  FInsn.OpCode := $4F003420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test438;
begin
  // orr.4s v0, #1, lsl #16.
  FInsn.OpCode := $4F005420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test439;
begin
  // orr.4s v0, #1, lsl #24.
  FInsn.OpCode := $4F007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test440;
begin
  // orr.8h v0, #1.
  FInsn.OpCode := $4F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test441;
begin
  // orr.8h v0, #1.
  FInsn.OpCode := $4F009420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test442;
begin
  // orr.8h v0, #1, lsl #8.
  FInsn.OpCode := $4F00B420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test443;
begin
  // movi d0, #0x000000000000ff.
  FInsn.OpCode := $2F00E420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($000000000000ff));
end;

procedure TAdvSIMDTest.Test444;
begin
  // movi.2d v0, #0x000000000000ff.
  FInsn.OpCode := $6F00E420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64($000000000000ff));
end;

procedure TAdvSIMDTest.Test445;
begin
  // movi.2s v0, #1.
  FInsn.OpCode := $0F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test446;
begin
  // movi.2s v0, #1.
  FInsn.OpCode := $0F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test447;
begin
  // movi.2s v0, #1, lsl #8.
  FInsn.OpCode := $0F002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test448;
begin
  // movi.2s v0, #1, lsl #16.
  FInsn.OpCode := $0F004420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test449;
begin
  // movi.2s v0, #1, lsl #24.
  FInsn.OpCode := $0F006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test450;
begin
  // movi.4s v0, #1.
  FInsn.OpCode := $4F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test451;
begin
  // movi.4s v0, #1.
  FInsn.OpCode := $4F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test452;
begin
  // movi.4s v0, #1, lsl #8.
  FInsn.OpCode := $4F002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test453;
begin
  // movi.4s v0, #1, lsl #16.
  FInsn.OpCode := $4F004420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test454;
begin
  // movi.4s v0, #1, lsl #24.
  FInsn.OpCode := $4F006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test455;
begin
  // movi.4h v0, #1.
  FInsn.OpCode := $0F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test456;
begin
  // movi.4h v0, #1.
  FInsn.OpCode := $0F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test457;
begin
  // movi.4h v0, #1, lsl #8.
  FInsn.OpCode := $0F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test458;
begin
  // movi.8h v0, #1.
  FInsn.OpCode := $4F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test459;
begin
  // movi.8h v0, #1.
  FInsn.OpCode := $4F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test460;
begin
  // movi.8h v0, #1, lsl #8.
  FInsn.OpCode := $4F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test461;
begin
  // movi.2s v0, #1, msl #8.
  FInsn.OpCode := $0F00C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test462;
begin
  // movi.2s v0, #1, msl #16.
  FInsn.OpCode := $0F00D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test463;
begin
  // movi.4s v0, #1, msl #8.
  FInsn.OpCode := $4F00C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test464;
begin
  // movi.4s v0, #1, msl #16.
  FInsn.OpCode := $4F00D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test465;
begin
  // movi.8b v0, #1.
  FInsn.OpCode := $0F00E420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test466;
begin
  // movi.16b v0, #1.
  FInsn.OpCode := $4F00E420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test467;
begin
  // mvni.2s v0, #1.
  FInsn.OpCode := $2F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test468;
begin
  // mvni.2s v0, #1.
  FInsn.OpCode := $2F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test469;
begin
  // mvni.2s v0, #1, lsl #8.
  FInsn.OpCode := $2F002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test470;
begin
  // mvni.2s v0, #1, lsl #16.
  FInsn.OpCode := $2F004420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test471;
begin
  // mvni.2s v0, #1, lsl #24.
  FInsn.OpCode := $2F006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test472;
begin
  // mvni.4s v0, #1.
  FInsn.OpCode := $6F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test473;
begin
  // mvni.4s v0, #1.
  FInsn.OpCode := $6F000420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test474;
begin
  // mvni.4s v0, #1, lsl #8.
  FInsn.OpCode := $6F002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test475;
begin
  // mvni.4s v0, #1, lsl #16.
  FInsn.OpCode := $6F004420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test476;
begin
  // mvni.4s v0, #1, lsl #24.
  FInsn.OpCode := $6F006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(24));
end;

procedure TAdvSIMDTest.Test477;
begin
  // mvni.4h v0, #1.
  FInsn.OpCode := $2F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test478;
begin
  // mvni.4h v0, #1.
  FInsn.OpCode := $2F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test479;
begin
  // mvni.4h v0, #1, lsl #8.
  FInsn.OpCode := $2F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test480;
begin
  // mvni.8h v0, #1.
  FInsn.OpCode := $6F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test481;
begin
  // mvni.8h v0, #1.
  FInsn.OpCode := $6F008420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test482;
begin
  // mvni.8h v0, #1, lsl #8.
  FInsn.OpCode := $6F00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test483;
begin
  // mvni.2s v0, #1, msl #8.
  FInsn.OpCode := $2F00C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test484;
begin
  // mvni.2s v0, #1, msl #16.
  FInsn.OpCode := $2F00D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test485;
begin
  // mvni.4s v0, #1, msl #8.
  FInsn.OpCode := $6F00C420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(8));
end;

procedure TAdvSIMDTest.Test486;
begin
  // mvni.4s v0, #1, msl #16.
  FInsn.OpCode := $6F00D420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVNI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfMsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TAdvSIMDTest.Test487;
begin
  // fmla.s s0, s0, v0[3].
  FInsn.OpCode := $5FA01800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test488;
begin
  // fmla.d d0, d0, v0[1].
  FInsn.OpCode := $5FC01800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test489;
begin
  // fmls.s s0, s0, v0[3].
  FInsn.OpCode := $5FA05800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test490;
begin
  // fmls.d d0, d0, v0[1].
  FInsn.OpCode := $5FC05800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test491;
begin
  // fmulx.s s0, s0, v0[3].
  FInsn.OpCode := $7FA09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test492;
begin
  // fmulx.d d0, d0, v0[1].
  FInsn.OpCode := $7FC09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test493;
begin
  // fmul.s s0, s0, v0[3].
  FInsn.OpCode := $5FA09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test494;
begin
  // fmul.d d0, d0, v0[1].
  FInsn.OpCode := $5FC09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test495;
begin
  // sqdmlal.h s0, h0, v0[7].
  FInsn.OpCode := $5F703800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TAdvSIMDTest.Test496;
begin
  // sqdmlal.s d0, s0, v0[3].
  FInsn.OpCode := $5FA03800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test497;
begin
  // sqdmlsl.h s0, h0, v0[7].
  FInsn.OpCode := $5F707800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TAdvSIMDTest.Test498;
begin
  // sqdmulh.h h0, h0, v0[7].
  FInsn.OpCode := $5F70C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TAdvSIMDTest.Test499;
begin
  // sqdmulh.s s0, s0, v0[3].
  FInsn.OpCode := $5FA0C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test500;
begin
  // sqdmull.h s0, h0, v0[7].
  FInsn.OpCode := $5F70B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TAdvSIMDTest.Test501;
begin
  // sqdmull.s d0, s0, v0[3].
  FInsn.OpCode := $5FA0B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test502;
begin
  // sqrdmulh.h h0, h0, v0[7].
  FInsn.OpCode := $5F70D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(7));
end;

procedure TAdvSIMDTest.Test503;
begin
  // sqrdmulh.s s0, s0, v0[3].
  FInsn.OpCode := $5FA0D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test504;
begin
  // smlal.8h v1, v2, v3.
  FInsn.OpCode := $0E238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TAdvSIMDTest.Test505;
begin
  // smlal.4s v1, v2, v3.
  FInsn.OpCode := $0E638041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TAdvSIMDTest.Test506;
begin
  // smlal.2d v1, v2, v3.
  FInsn.OpCode := $0EA38041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TAdvSIMDTest.Test507;
begin
  // smlal2.8h v1, v2, v3.
  FInsn.OpCode := $4E238041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TAdvSIMDTest.Test508;
begin
  // smlal2.4s v1, v2, v3.
  FInsn.OpCode := $4E638041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TAdvSIMDTest.Test509;
begin
  // smlal2.2d v1, v2, v3.
  FInsn.OpCode := $4EA38041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V3);
end;

procedure TAdvSIMDTest.Test510;
begin
  // smlal.8h v13, v8, v0.
  FInsn.OpCode := $0E20810D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test511;
begin
  // smlal.4s v13, v8, v0.
  FInsn.OpCode := $0E60810D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test512;
begin
  // smlal.2d v13, v8, v0.
  FInsn.OpCode := $0EA0810D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test513;
begin
  // smlal2.8h v13, v8, v0.
  FInsn.OpCode := $4E20810D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test514;
begin
  // smlal2.4s v13, v8, v0.
  FInsn.OpCode := $4E60810D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test515;
begin
  // smlal2.2d v13, v8, v0.
  FInsn.OpCode := $4EA0810D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test516;
begin
  // fmla.2s v0, v0, v0[0].
  FInsn.OpCode := $0F801000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test517;
begin
  // fmla.4s v0, v0, v0[1].
  FInsn.OpCode := $4FA01000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test518;
begin
  // fmla.2d v0, v0, v0[1].
  FInsn.OpCode := $4FC01800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test519;
begin
  // fmls.2s v0, v0, v0[0].
  FInsn.OpCode := $0F805000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test520;
begin
  // fmls.4s v0, v0, v0[1].
  FInsn.OpCode := $4FA05000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test521;
begin
  // fmls.2d v0, v0, v0[1].
  FInsn.OpCode := $4FC05800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test522;
begin
  // fmulx.2s v0, v0, v0[0].
  FInsn.OpCode := $2F809000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test523;
begin
  // fmulx.4s v0, v0, v0[1].
  FInsn.OpCode := $6FA09000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test524;
begin
  // fmulx.2d v0, v0, v0[1].
  FInsn.OpCode := $6FC09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMULX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test525;
begin
  // fmul.2s v0, v0, v0[0].
  FInsn.OpCode := $0F809000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test526;
begin
  // fmul.4s v0, v0, v0[1].
  FInsn.OpCode := $4FA09000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test527;
begin
  // fmul.2d v0, v0, v0[1].
  FInsn.OpCode := $4FC09800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test528;
begin
  // mla.4h v0, v0, v0[0].
  FInsn.OpCode := $2F400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test529;
begin
  // mla.8h v0, v0, v0[1].
  FInsn.OpCode := $6F500000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test530;
begin
  // mla.2s v0, v0, v0[2].
  FInsn.OpCode := $2F800800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test531;
begin
  // mla.4s v0, v0, v0[3].
  FInsn.OpCode := $6FA00800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test532;
begin
  // mls.4h v0, v0, v0[0].
  FInsn.OpCode := $2F404000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test533;
begin
  // mls.8h v0, v0, v0[1].
  FInsn.OpCode := $6F504000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test534;
begin
  // mls.2s v0, v0, v0[2].
  FInsn.OpCode := $2F804800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test535;
begin
  // mls.4s v0, v0, v0[3].
  FInsn.OpCode := $6FA04800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test536;
begin
  // mul.4h v0, v0, v0[0].
  FInsn.OpCode := $0F408000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test537;
begin
  // mul.8h v0, v0, v0[1].
  FInsn.OpCode := $4F508000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test538;
begin
  // mul.2s v0, v0, v0[2].
  FInsn.OpCode := $0F808800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test539;
begin
  // mul.4s v0, v0, v0[3].
  FInsn.OpCode := $4FA08800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test540;
begin
  // smlal.4s v0, v0, v0[0].
  FInsn.OpCode := $0F402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test541;
begin
  // smlal2.4s v0, v0, v0[1].
  FInsn.OpCode := $4F502000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test542;
begin
  // smlal.2d v0, v0, v0[2].
  FInsn.OpCode := $0F802800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test543;
begin
  // smlal2.2d v0, v0, v0[3].
  FInsn.OpCode := $4FA02800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test544;
begin
  // smlsl.4s v0, v0, v0[0].
  FInsn.OpCode := $0F406000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test545;
begin
  // smlsl2.4s v0, v0, v0[1].
  FInsn.OpCode := $4F506000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test546;
begin
  // smlsl.2d v0, v0, v0[2].
  FInsn.OpCode := $0F806800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test547;
begin
  // smlsl2.2d v0, v0, v0[3].
  FInsn.OpCode := $4FA06800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test548;
begin
  // smull.4s v0, v0, v0[0].
  FInsn.OpCode := $0F40A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test549;
begin
  // smull2.4s v0, v0, v0[1].
  FInsn.OpCode := $4F50A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test550;
begin
  // smull.2d v0, v0, v0[2].
  FInsn.OpCode := $0F80A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test551;
begin
  // smull2.2d v0, v0, v0[3].
  FInsn.OpCode := $4FA0A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test552;
begin
  // sqdmlal.4s v0, v0, v0[0].
  FInsn.OpCode := $0F403000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test553;
begin
  // sqdmlal2.4s v0, v0, v0[1].
  FInsn.OpCode := $4F503000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test554;
begin
  // sqdmlal.2d v0, v0, v0[2].
  FInsn.OpCode := $0F803800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test555;
begin
  // sqdmlal2.2d v0, v0, v0[3].
  FInsn.OpCode := $4FA03800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test556;
begin
  // sqdmlsl.4s v0, v0, v0[0].
  FInsn.OpCode := $0F407000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test557;
begin
  // sqdmlsl2.4s v0, v0, v0[1].
  FInsn.OpCode := $4F507000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test558;
begin
  // sqdmlsl.2d v0, v0, v0[2].
  FInsn.OpCode := $0F807800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test559;
begin
  // sqdmlsl2.2d v0, v0, v0[3].
  FInsn.OpCode := $4FA07800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test560;
begin
  // sqdmulh.4h v0, v0, v0[0].
  FInsn.OpCode := $0F40C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test561;
begin
  // sqdmulh.8h v0, v0, v0[1].
  FInsn.OpCode := $4F50C000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test562;
begin
  // sqdmulh.2s v0, v0, v0[2].
  FInsn.OpCode := $0F80C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test563;
begin
  // sqdmulh.4s v0, v0, v0[3].
  FInsn.OpCode := $4FA0C800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test564;
begin
  // sqdmull.4s v0, v0, v0[0].
  FInsn.OpCode := $0F40B000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test565;
begin
  // sqdmull2.4s v0, v0, v0[1].
  FInsn.OpCode := $4F50B000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test566;
begin
  // sqdmull.2d v0, v0, v0[2].
  FInsn.OpCode := $0F80B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test567;
begin
  // sqdmull2.2d v0, v0, v0[3].
  FInsn.OpCode := $4FA0B800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test568;
begin
  // sqrdmulh.4h v0, v0, v0[0].
  FInsn.OpCode := $0F40D000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test569;
begin
  // sqrdmulh.8h v0, v0, v0[1].
  FInsn.OpCode := $4F50D000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test570;
begin
  // sqrdmulh.2s v0, v0, v0[2].
  FInsn.OpCode := $0F80D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test571;
begin
  // sqrdmulh.4s v0, v0, v0[3].
  FInsn.OpCode := $4FA0D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRDMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test572;
begin
  // umlal.4s v0, v0, v0[0].
  FInsn.OpCode := $2F402000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test573;
begin
  // umlal2.4s v0, v0, v0[1].
  FInsn.OpCode := $6F502000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test574;
begin
  // umlal.2d v0, v0, v0[2].
  FInsn.OpCode := $2F802800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test575;
begin
  // umlal2.2d v0, v0, v0[3].
  FInsn.OpCode := $6FA02800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLAL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test576;
begin
  // umlsl.4s v0, v0, v0[0].
  FInsn.OpCode := $2F406000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test577;
begin
  // umlsl2.4s v0, v0, v0[1].
  FInsn.OpCode := $6F506000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test578;
begin
  // umlsl.2d v0, v0, v0[2].
  FInsn.OpCode := $2F806800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test579;
begin
  // umlsl2.2d v0, v0, v0[3].
  FInsn.OpCode := $6FA06800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMLSL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test580;
begin
  // umull.4s v0, v0, v0[0].
  FInsn.OpCode := $2F40A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(0));
end;

procedure TAdvSIMDTest.Test581;
begin
  // umull2.4s v0, v0, v0[1].
  FInsn.OpCode := $6F50A000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(1));
end;

procedure TAdvSIMDTest.Test582;
begin
  // umull.2d v0, v0, v0[2].
  FInsn.OpCode := $2F80A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(2));
end;

procedure TAdvSIMDTest.Test583;
begin
  // umull2.2d v0, v0, v0[3].
  FInsn.OpCode := $6FA0A800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Index, Integer(3));
end;

procedure TAdvSIMDTest.Test584;
begin
  // fcvtzs s0, s0, #1.
  FInsn.OpCode := $5F3FFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test585;
begin
  // fcvtzs d0, d0, #2.
  FInsn.OpCode := $5F7EFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test586;
begin
  // fcvtzu s0, s0, #1.
  FInsn.OpCode := $7F3FFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test587;
begin
  // fcvtzu d0, d0, #2.
  FInsn.OpCode := $7F7EFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test588;
begin
  // shl d0, d0, #1.
  FInsn.OpCode := $5F415400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test589;
begin
  // sli d0, d0, #1.
  FInsn.OpCode := $7F415400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test590;
begin
  // sqrshrn b0, h0, #1.
  FInsn.OpCode := $5F0F9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test591;
begin
  // sqrshrn h0, s0, #2.
  FInsn.OpCode := $5F1E9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test592;
begin
  // sqrshrn s0, d0, #3.
  FInsn.OpCode := $5F3D9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test593;
begin
  // sqrshrun b0, h0, #1.
  FInsn.OpCode := $7F0F8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test594;
begin
  // sqrshrun h0, s0, #2.
  FInsn.OpCode := $7F1E8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test595;
begin
  // sqrshrun s0, d0, #3.
  FInsn.OpCode := $7F3D8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test596;
begin
  // sqshlu b0, b0, #1.
  FInsn.OpCode := $7F096400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test597;
begin
  // sqshlu h0, h0, #2.
  FInsn.OpCode := $7F126400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test598;
begin
  // sqshlu s0, s0, #3.
  FInsn.OpCode := $7F236400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test599;
begin
  // sqshlu d0, d0, #4.
  FInsn.OpCode := $7F446400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test600;
begin
  // sqshl b0, b0, #1.
  FInsn.OpCode := $5F097400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test601;
begin
  // sqshl h0, h0, #2.
  FInsn.OpCode := $5F127400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test602;
begin
  // sqshl s0, s0, #3.
  FInsn.OpCode := $5F237400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test603;
begin
  // sqshl d0, d0, #4.
  FInsn.OpCode := $5F447400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test604;
begin
  // sqshrn b0, h0, #1.
  FInsn.OpCode := $5F0F9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test605;
begin
  // sqshrn h0, s0, #2.
  FInsn.OpCode := $5F1E9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test606;
begin
  // sqshrn s0, d0, #3.
  FInsn.OpCode := $5F3D9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test607;
begin
  // sqshrun b0, h0, #1.
  FInsn.OpCode := $7F0F8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test608;
begin
  // sqshrun h0, s0, #2.
  FInsn.OpCode := $7F1E8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test609;
begin
  // sqshrun s0, d0, #3.
  FInsn.OpCode := $7F3D8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test610;
begin
  // sri d0, d0, #1.
  FInsn.OpCode := $7F7F4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test611;
begin
  // srshr d0, d0, #1.
  FInsn.OpCode := $5F7F2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test612;
begin
  // srsra d0, d0, #1.
  FInsn.OpCode := $5F7F3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test613;
begin
  // sshr d0, d0, #1.
  FInsn.OpCode := $5F7F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test614;
begin
  // ucvtf s0, s0, #1.
  FInsn.OpCode := $7F3FE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test615;
begin
  // ucvtf d0, d0, #2.
  FInsn.OpCode := $7F7EE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test616;
begin
  // uqrshrn b0, h0, #1.
  FInsn.OpCode := $7F0F9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test617;
begin
  // uqrshrn h0, s0, #2.
  FInsn.OpCode := $7F1E9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test618;
begin
  // uqrshrn s0, d0, #3.
  FInsn.OpCode := $7F3D9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test619;
begin
  // uqshl b0, b0, #1.
  FInsn.OpCode := $7F097400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test620;
begin
  // uqshl h0, h0, #2.
  FInsn.OpCode := $7F127400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test621;
begin
  // uqshl s0, s0, #3.
  FInsn.OpCode := $7F237400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test622;
begin
  // uqshl d0, d0, #4.
  FInsn.OpCode := $7F447400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test623;
begin
  // uqshrn b0, h0, #1.
  FInsn.OpCode := $7F0F9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test624;
begin
  // uqshrn h0, s0, #2.
  FInsn.OpCode := $7F1E9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test625;
begin
  // uqshrn s0, d0, #3.
  FInsn.OpCode := $7F3D9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test626;
begin
  // urshr d0, d0, #1.
  FInsn.OpCode := $7F7F2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test627;
begin
  // ursra d0, d0, #1.
  FInsn.OpCode := $7F7F3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test628;
begin
  // ushr d0, d0, #1.
  FInsn.OpCode := $7F7F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test629;
begin
  // usra d0, d0, #1.
  FInsn.OpCode := $7F7F1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test630;
begin
  // fcvtzs.2s v0, v0, #1.
  FInsn.OpCode := $0F3FFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test631;
begin
  // fcvtzs.4s v0, v0, #2.
  FInsn.OpCode := $4F3EFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test632;
begin
  // fcvtzs.2d v0, v0, #3.
  FInsn.OpCode := $4F7DFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test633;
begin
  // fcvtzu.2s v0, v0, #1.
  FInsn.OpCode := $2F3FFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test634;
begin
  // fcvtzu.4s v0, v0, #2.
  FInsn.OpCode := $6F3EFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test635;
begin
  // fcvtzu.2d v0, v0, #3.
  FInsn.OpCode := $6F7DFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test636;
begin
  // rshrn.8b v0, v0, #1.
  FInsn.OpCode := $0F0F8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test637;
begin
  // rshrn2.16b v0, v0, #2.
  FInsn.OpCode := $4F0E8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test638;
begin
  // rshrn.4h v0, v0, #3.
  FInsn.OpCode := $0F1D8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test639;
begin
  // rshrn2.8h v0, v0, #4.
  FInsn.OpCode := $4F1C8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test640;
begin
  // rshrn.2s v0, v0, #5.
  FInsn.OpCode := $0F3B8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test641;
begin
  // rshrn2.4s v0, v0, #6.
  FInsn.OpCode := $4F3A8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test642;
begin
  // scvtf.2s v0, v0, #1.
  FInsn.OpCode := $0F3FE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test643;
begin
  // scvtf.4s v0, v0, #2.
  FInsn.OpCode := $4F3EE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test644;
begin
  // scvtf.2d v0, v0, #3.
  FInsn.OpCode := $4F7DE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test645;
begin
  // shl.8b v0, v0, #1.
  FInsn.OpCode := $0F095400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test646;
begin
  // shl.16b v0, v0, #2.
  FInsn.OpCode := $4F0A5400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test647;
begin
  // shl.4h v0, v0, #3.
  FInsn.OpCode := $0F135400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test648;
begin
  // shl.8h v0, v0, #4.
  FInsn.OpCode := $4F145400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test649;
begin
  // shl.2s v0, v0, #5.
  FInsn.OpCode := $0F255400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test650;
begin
  // shl.4s v0, v0, #6.
  FInsn.OpCode := $4F265400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test651;
begin
  // shl.2d v0, v0, #7.
  FInsn.OpCode := $4F475400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test652;
begin
  // shrn.8b v0, v0, #1.
  FInsn.OpCode := $0F0F8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test653;
begin
  // shrn2.16b v0, v0, #2.
  FInsn.OpCode := $4F0E8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test654;
begin
  // shrn.4h v0, v0, #3.
  FInsn.OpCode := $0F1D8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test655;
begin
  // shrn2.8h v0, v0, #4.
  FInsn.OpCode := $4F1C8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test656;
begin
  // shrn.2s v0, v0, #5.
  FInsn.OpCode := $0F3B8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test657;
begin
  // shrn2.4s v0, v0, #6.
  FInsn.OpCode := $4F3A8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test658;
begin
  // sli.8b v0, v0, #1.
  FInsn.OpCode := $2F095400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test659;
begin
  // sli.16b v0, v0, #2.
  FInsn.OpCode := $6F0A5400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test660;
begin
  // sli.4h v0, v0, #3.
  FInsn.OpCode := $2F135400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test661;
begin
  // sli.8h v0, v0, #4.
  FInsn.OpCode := $6F145400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test662;
begin
  // sli.2s v0, v0, #5.
  FInsn.OpCode := $2F255400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test663;
begin
  // sli.4s v0, v0, #6.
  FInsn.OpCode := $6F265400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test664;
begin
  // sli.2d v0, v0, #7.
  FInsn.OpCode := $6F475400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SLI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test665;
begin
  // sqrshrn.8b v0, v0, #1.
  FInsn.OpCode := $0F0F9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test666;
begin
  // sqrshrn2.16b v0, v0, #2.
  FInsn.OpCode := $4F0E9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test667;
begin
  // sqrshrn.4h v0, v0, #3.
  FInsn.OpCode := $0F1D9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test668;
begin
  // sqrshrn2.8h v0, v0, #4.
  FInsn.OpCode := $4F1C9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test669;
begin
  // sqrshrn.2s v0, v0, #5.
  FInsn.OpCode := $0F3B9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test670;
begin
  // sqrshrn2.4s v0, v0, #6.
  FInsn.OpCode := $4F3A9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test671;
begin
  // sqrshrun.8b v0, v0, #1.
  FInsn.OpCode := $2F0F8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test672;
begin
  // sqrshrun2.16b v0, v0, #2.
  FInsn.OpCode := $6F0E8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test673;
begin
  // sqrshrun.4h v0, v0, #3.
  FInsn.OpCode := $2F1D8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test674;
begin
  // sqrshrun2.8h v0, v0, #4.
  FInsn.OpCode := $6F1C8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test675;
begin
  // sqrshrun.2s v0, v0, #5.
  FInsn.OpCode := $2F3B8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test676;
begin
  // sqrshrun2.4s v0, v0, #6.
  FInsn.OpCode := $6F3A8C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test677;
begin
  // sqshlu.8b v0, v0, #1.
  FInsn.OpCode := $2F096400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test678;
begin
  // sqshlu.16b v0, v0, #2.
  FInsn.OpCode := $6F0A6400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test679;
begin
  // sqshlu.4h v0, v0, #3.
  FInsn.OpCode := $2F136400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test680;
begin
  // sqshlu.8h v0, v0, #4.
  FInsn.OpCode := $6F146400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test681;
begin
  // sqshlu.2s v0, v0, #5.
  FInsn.OpCode := $2F256400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test682;
begin
  // sqshlu.4s v0, v0, #6.
  FInsn.OpCode := $6F266400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test683;
begin
  // sqshlu.2d v0, v0, #7.
  FInsn.OpCode := $6F476400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHLU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test684;
begin
  // sqshl.8b v0, v0, #1.
  FInsn.OpCode := $0F097400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test685;
begin
  // sqshl.16b v0, v0, #2.
  FInsn.OpCode := $4F0A7400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test686;
begin
  // sqshl.4h v0, v0, #3.
  FInsn.OpCode := $0F137400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test687;
begin
  // sqshl.8h v0, v0, #4.
  FInsn.OpCode := $4F147400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test688;
begin
  // sqshl.2s v0, v0, #5.
  FInsn.OpCode := $0F257400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test689;
begin
  // sqshl.4s v0, v0, #6.
  FInsn.OpCode := $4F267400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test690;
begin
  // sqshl.2d v0, v0, #7.
  FInsn.OpCode := $4F477400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test691;
begin
  // sqshrn.8b v0, v0, #1.
  FInsn.OpCode := $0F0F9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test692;
begin
  // sqshrn2.16b v0, v0, #2.
  FInsn.OpCode := $4F0E9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test693;
begin
  // sqshrn.4h v0, v0, #3.
  FInsn.OpCode := $0F1D9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test694;
begin
  // sqshrn2.8h v0, v0, #4.
  FInsn.OpCode := $4F1C9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test695;
begin
  // sqshrn.2s v0, v0, #5.
  FInsn.OpCode := $0F3B9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test696;
begin
  // sqshrn2.4s v0, v0, #6.
  FInsn.OpCode := $4F3A9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test697;
begin
  // sqshrun.8b v0, v0, #1.
  FInsn.OpCode := $2F0F8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test698;
begin
  // sqshrun2.16b v0, v0, #2.
  FInsn.OpCode := $6F0E8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test699;
begin
  // sqshrun.4h v0, v0, #3.
  FInsn.OpCode := $2F1D8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test700;
begin
  // sqshrun2.8h v0, v0, #4.
  FInsn.OpCode := $6F1C8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test701;
begin
  // sqshrun.2s v0, v0, #5.
  FInsn.OpCode := $2F3B8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test702;
begin
  // sqshrun2.4s v0, v0, #6.
  FInsn.OpCode := $6F3A8400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test703;
begin
  // sri.8b v0, v0, #1.
  FInsn.OpCode := $2F0F4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test704;
begin
  // sri.16b v0, v0, #2.
  FInsn.OpCode := $6F0E4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test705;
begin
  // sri.4h v0, v0, #3.
  FInsn.OpCode := $2F1D4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test706;
begin
  // sri.8h v0, v0, #4.
  FInsn.OpCode := $6F1C4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test707;
begin
  // sri.2s v0, v0, #5.
  FInsn.OpCode := $2F3B4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test708;
begin
  // sri.4s v0, v0, #6.
  FInsn.OpCode := $6F3A4400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test709;
begin
  // sri.2d v0, v0, #7.
  FInsn.OpCode := $6F794400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test710;
begin
  // srshr.8b v0, v0, #1.
  FInsn.OpCode := $0F0F2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test711;
begin
  // srshr.16b v0, v0, #2.
  FInsn.OpCode := $4F0E2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test712;
begin
  // srshr.4h v0, v0, #3.
  FInsn.OpCode := $0F1D2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test713;
begin
  // srshr.8h v0, v0, #4.
  FInsn.OpCode := $4F1C2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test714;
begin
  // srshr.2s v0, v0, #5.
  FInsn.OpCode := $0F3B2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test715;
begin
  // srshr.4s v0, v0, #6.
  FInsn.OpCode := $4F3A2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test716;
begin
  // srshr.2d v0, v0, #7.
  FInsn.OpCode := $4F792400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test717;
begin
  // srsra.8b v0, v0, #1.
  FInsn.OpCode := $0F0F3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test718;
begin
  // srsra.16b v0, v0, #2.
  FInsn.OpCode := $4F0E3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test719;
begin
  // srsra.4h v0, v0, #3.
  FInsn.OpCode := $0F1D3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test720;
begin
  // srsra.8h v0, v0, #4.
  FInsn.OpCode := $4F1C3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test721;
begin
  // srsra.2s v0, v0, #5.
  FInsn.OpCode := $0F3B3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test722;
begin
  // srsra.4s v0, v0, #6.
  FInsn.OpCode := $4F3A3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test723;
begin
  // srsra.2d v0, v0, #7.
  FInsn.OpCode := $4F793400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SRSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test724;
begin
  // sshll.8h v0, v0, #1.
  FInsn.OpCode := $0F09A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test725;
begin
  // sshll2.8h v0, v0, #2.
  FInsn.OpCode := $4F0AA400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test726;
begin
  // sshll.4s v0, v0, #3.
  FInsn.OpCode := $0F13A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test727;
begin
  // sshll2.4s v0, v0, #4.
  FInsn.OpCode := $4F14A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test728;
begin
  // sshll.2d v0, v0, #5.
  FInsn.OpCode := $0F25A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test729;
begin
  // sshll2.2d v0, v0, #6.
  FInsn.OpCode := $4F26A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test730;
begin
  // sshr.8b v0, v0, #1.
  FInsn.OpCode := $0F0F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test731;
begin
  // sshr.16b v0, v0, #2.
  FInsn.OpCode := $4F0E0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test732;
begin
  // sshr.4h v0, v0, #3.
  FInsn.OpCode := $0F1D0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test733;
begin
  // sshr.8h v0, v0, #4.
  FInsn.OpCode := $4F1C0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test734;
begin
  // sshr.2s v0, v0, #5.
  FInsn.OpCode := $0F3B0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test735;
begin
  // sshr.4s v0, v0, #6.
  FInsn.OpCode := $4F3A0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test736;
begin
  // sshr.2d v0, v0, #7.
  FInsn.OpCode := $4F790400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test737;
begin
  // sshr.8b v0, v0, #1.
  FInsn.OpCode := $0F0F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test738;
begin
  // ssra.16b v0, v0, #2.
  FInsn.OpCode := $4F0E1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test739;
begin
  // ssra.4h v0, v0, #3.
  FInsn.OpCode := $0F1D1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test740;
begin
  // ssra.8h v0, v0, #4.
  FInsn.OpCode := $4F1C1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test741;
begin
  // ssra.2s v0, v0, #5.
  FInsn.OpCode := $0F3B1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test742;
begin
  // ssra.4s v0, v0, #6.
  FInsn.OpCode := $4F3A1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test743;
begin
  // ssra.2d v0, v0, #7.
  FInsn.OpCode := $4F791400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test744;
begin
  // ssra d0, d0, #64.
  FInsn.OpCode := $5F401400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TAdvSIMDTest.Test745;
begin
  // ucvtf.2s v0, v0, #1.
  FInsn.OpCode := $2F3FE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test746;
begin
  // ucvtf.4s v0, v0, #2.
  FInsn.OpCode := $6F3EE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test747;
begin
  // ucvtf.2d v0, v0, #3.
  FInsn.OpCode := $6F7DE400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test748;
begin
  // uqrshrn.8b v0, v0, #1.
  FInsn.OpCode := $2F0F9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test749;
begin
  // uqrshrn2.16b v0, v0, #2.
  FInsn.OpCode := $6F0E9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test750;
begin
  // uqrshrn.4h v0, v0, #3.
  FInsn.OpCode := $2F1D9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test751;
begin
  // uqrshrn2.8h v0, v0, #4.
  FInsn.OpCode := $6F1C9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test752;
begin
  // uqrshrn.2s v0, v0, #5.
  FInsn.OpCode := $2F3B9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test753;
begin
  // uqrshrn2.4s v0, v0, #6.
  FInsn.OpCode := $6F3A9C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test754;
begin
  // uqshl.8b v0, v0, #1.
  FInsn.OpCode := $2F097400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test755;
begin
  // uqshl.16b v0, v0, #2.
  FInsn.OpCode := $6F0A7400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test756;
begin
  // uqshl.4h v0, v0, #3.
  FInsn.OpCode := $2F137400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test757;
begin
  // uqshl.8h v0, v0, #4.
  FInsn.OpCode := $6F147400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test758;
begin
  // uqshl.2s v0, v0, #5.
  FInsn.OpCode := $2F257400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test759;
begin
  // uqshl.4s v0, v0, #6.
  FInsn.OpCode := $6F267400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test760;
begin
  // uqshl.2d v0, v0, #7.
  FInsn.OpCode := $6F477400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test761;
begin
  // uqshrn.8b v0, v0, #1.
  FInsn.OpCode := $2F0F9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test762;
begin
  // uqshrn2.16b v0, v0, #2.
  FInsn.OpCode := $6F0E9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test763;
begin
  // uqshrn.4h v0, v0, #3.
  FInsn.OpCode := $2F1D9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test764;
begin
  // uqshrn2.8h v0, v0, #4.
  FInsn.OpCode := $6F1C9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test765;
begin
  // uqshrn.2s v0, v0, #5.
  FInsn.OpCode := $2F3B9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test766;
begin
  // uqshrn2.4s v0, v0, #6.
  FInsn.OpCode := $6F3A9400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test767;
begin
  // urshr.8b v0, v0, #1.
  FInsn.OpCode := $2F0F2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test768;
begin
  // urshr.16b v0, v0, #2.
  FInsn.OpCode := $6F0E2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test769;
begin
  // urshr.4h v0, v0, #3.
  FInsn.OpCode := $2F1D2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test770;
begin
  // urshr.8h v0, v0, #4.
  FInsn.OpCode := $6F1C2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test771;
begin
  // urshr.2s v0, v0, #5.
  FInsn.OpCode := $2F3B2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test772;
begin
  // urshr.4s v0, v0, #6.
  FInsn.OpCode := $6F3A2400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test773;
begin
  // urshr.2d v0, v0, #7.
  FInsn.OpCode := $6F792400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test774;
begin
  // ursra.8b v0, v0, #1.
  FInsn.OpCode := $2F0F3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test775;
begin
  // ursra.16b v0, v0, #2.
  FInsn.OpCode := $6F0E3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test776;
begin
  // ursra.4h v0, v0, #3.
  FInsn.OpCode := $2F1D3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test777;
begin
  // ursra.8h v0, v0, #4.
  FInsn.OpCode := $6F1C3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test778;
begin
  // ursra.2s v0, v0, #5.
  FInsn.OpCode := $2F3B3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test779;
begin
  // ursra.4s v0, v0, #6.
  FInsn.OpCode := $6F3A3400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test780;
begin
  // ursra.2d v0, v0, #7.
  FInsn.OpCode := $6F793400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_URSRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test781;
begin
  // ushll.8h v0, v0, #1.
  FInsn.OpCode := $2F09A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test782;
begin
  // ushll2.8h v0, v0, #2.
  FInsn.OpCode := $6F0AA400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test783;
begin
  // ushll.4s v0, v0, #3.
  FInsn.OpCode := $2F13A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test784;
begin
  // ushll2.4s v0, v0, #4.
  FInsn.OpCode := $6F14A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test785;
begin
  // ushll.2d v0, v0, #5.
  FInsn.OpCode := $2F25A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test786;
begin
  // ushll2.2d v0, v0, #6.
  FInsn.OpCode := $6F26A400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test787;
begin
  // ushr.8b v0, v0, #1.
  FInsn.OpCode := $2F0F0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test788;
begin
  // ushr.16b v0, v0, #2.
  FInsn.OpCode := $6F0E0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test789;
begin
  // ushr.4h v0, v0, #3.
  FInsn.OpCode := $2F1D0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test790;
begin
  // ushr.8h v0, v0, #4.
  FInsn.OpCode := $6F1C0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test791;
begin
  // ushr.2s v0, v0, #5.
  FInsn.OpCode := $2F3B0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test792;
begin
  // ushr.4s v0, v0, #6.
  FInsn.OpCode := $6F3A0400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test793;
begin
  // ushr.2d v0, v0, #7.
  FInsn.OpCode := $6F790400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test794;
begin
  // usra.8b v0, v0, #1.
  FInsn.OpCode := $2F0F1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test795;
begin
  // usra.16b v0, v0, #2.
  FInsn.OpCode := $6F0E1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test796;
begin
  // usra.4h v0, v0, #3.
  FInsn.OpCode := $2F1D1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test797;
begin
  // usra.8h v0, v0, #4.
  FInsn.OpCode := $6F1C1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test798;
begin
  // usra.2s v0, v0, #5.
  FInsn.OpCode := $2F3B1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test799;
begin
  // usra.4s v0, v0, #6.
  FInsn.OpCode := $6F3A1400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test800;
begin
  // usra.2d v0, v0, #7.
  FInsn.OpCode := $6F791400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USRA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test801;
begin
  // rshrn.8b v9, v11, #1.
  FInsn.OpCode := $0F0F8D69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test802;
begin
  // rshrn2.16b v8, v9, #2.
  FInsn.OpCode := $4F0E8D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test803;
begin
  // rshrn.4h v7, v8, #3.
  FInsn.OpCode := $0F1D8D07;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test804;
begin
  // rshrn2.8h v6, v7, #4.
  FInsn.OpCode := $4F1C8CE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test805;
begin
  // rshrn.2s v5, v6, #5.
  FInsn.OpCode := $0F3B8CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test806;
begin
  // rshrn2.4s v4, v5, #6.
  FInsn.OpCode := $4F3A8CA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test807;
begin
  // shrn.8b v9, v11, #1.
  FInsn.OpCode := $0F0F8569;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test808;
begin
  // shrn2.16b v8, v9, #2.
  FInsn.OpCode := $4F0E8528;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test809;
begin
  // shrn.4h v7, v8, #3.
  FInsn.OpCode := $0F1D8507;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test810;
begin
  // shrn2.8h v6, v7, #4.
  FInsn.OpCode := $4F1C84E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test811;
begin
  // shrn.2s v5, v6, #5.
  FInsn.OpCode := $0F3B84C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test812;
begin
  // shrn2.4s v4, v5, #6.
  FInsn.OpCode := $4F3A84A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test813;
begin
  // sqrshrn.8b v9, v11, #1.
  FInsn.OpCode := $0F0F9D69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test814;
begin
  // sqrshrn2.16b v8, v9, #2.
  FInsn.OpCode := $4F0E9D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test815;
begin
  // sqrshrn.4h v7, v8, #3.
  FInsn.OpCode := $0F1D9D07;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test816;
begin
  // sqrshrn2.8h v6, v7, #4.
  FInsn.OpCode := $4F1C9CE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test817;
begin
  // sqrshrn.2s v5, v6, #5.
  FInsn.OpCode := $0F3B9CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test818;
begin
  // sqrshrn2.4s v4, v5, #6.
  FInsn.OpCode := $4F3A9CA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test819;
begin
  // sqshrn.8b v9, v11, #1.
  FInsn.OpCode := $0F0F9569;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test820;
begin
  // sqshrn2.16b v8, v9, #2.
  FInsn.OpCode := $4F0E9528;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test821;
begin
  // sqshrn.4h v7, v8, #3.
  FInsn.OpCode := $0F1D9507;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test822;
begin
  // sqshrn2.8h v6, v7, #4.
  FInsn.OpCode := $4F1C94E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test823;
begin
  // sqshrn.2s v5, v6, #5.
  FInsn.OpCode := $0F3B94C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test824;
begin
  // sqshrn2.4s v4, v5, #6.
  FInsn.OpCode := $4F3A94A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test825;
begin
  // sqrshrun.8b v9, v11, #1.
  FInsn.OpCode := $2F0F8D69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test826;
begin
  // sqrshrun2.16b v8, v9, #2.
  FInsn.OpCode := $6F0E8D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test827;
begin
  // sqrshrun.4h v7, v8, #3.
  FInsn.OpCode := $2F1D8D07;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test828;
begin
  // sqrshrun2.8h v6, v7, #4.
  FInsn.OpCode := $6F1C8CE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test829;
begin
  // sqrshrun.2s v5, v6, #5.
  FInsn.OpCode := $2F3B8CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test830;
begin
  // sqrshrun2.4s v4, v5, #6.
  FInsn.OpCode := $6F3A8CA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQRSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test831;
begin
  // sqshrun.8b v9, v11, #1.
  FInsn.OpCode := $2F0F8569;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test832;
begin
  // sqshrun2.16b v8, v9, #2.
  FInsn.OpCode := $6F0E8528;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test833;
begin
  // sqshrun.4h v7, v8, #3.
  FInsn.OpCode := $2F1D8507;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test834;
begin
  // sqshrun2.8h v6, v7, #4.
  FInsn.OpCode := $6F1C84E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test835;
begin
  // sqshrun.2s v5, v6, #5.
  FInsn.OpCode := $2F3B84C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test836;
begin
  // sqshrun2.4s v4, v5, #6.
  FInsn.OpCode := $6F3A84A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQSHRUN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test837;
begin
  // uqrshrn.8b v9, v11, #1.
  FInsn.OpCode := $2F0F9D69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test838;
begin
  // uqrshrn2.16b v8, v9, #2.
  FInsn.OpCode := $6F0E9D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test839;
begin
  // uqrshrn.4h v7, v8, #3.
  FInsn.OpCode := $2F1D9D07;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test840;
begin
  // uqrshrn2.8h v6, v7, #4.
  FInsn.OpCode := $6F1C9CE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test841;
begin
  // uqrshrn.2s v5, v6, #5.
  FInsn.OpCode := $2F3B9CC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test842;
begin
  // uqrshrn2.4s v4, v5, #6.
  FInsn.OpCode := $6F3A9CA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQRSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test843;
begin
  // uqshrn.8b v9, v11, #1.
  FInsn.OpCode := $2F0F9569;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TAdvSIMDTest.Test844;
begin
  // uqshrn2.16b v8, v9, #2.
  FInsn.OpCode := $6F0E9528;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test845;
begin
  // uqshrn.4h v7, v8, #3.
  FInsn.OpCode := $2F1D9507;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test846;
begin
  // uqshrn2.8h v6, v7, #4.
  FInsn.OpCode := $6F1C94E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test847;
begin
  // uqshrn.2s v5, v6, #5.
  FInsn.OpCode := $2F3B94C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test848;
begin
  // uqshrn2.4s v4, v5, #6.
  FInsn.OpCode := $6F3A94A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UQSHRN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test849;
begin
  // sshll2.8h v10, v3, #6.
  FInsn.OpCode := $4F0EA46A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test850;
begin
  // sshll2.4s v11, v4, #5.
  FInsn.OpCode := $4F15A48B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test851;
begin
  // sshll2.2d v12, v5, #4.
  FInsn.OpCode := $4F24A4AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test852;
begin
  // sshll.8h v13, v6, #3.
  FInsn.OpCode := $0F0BA4CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test853;
begin
  // sshll.4s v14, v7, #2.
  FInsn.OpCode := $0F12A4EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test854;
begin
  // sshll.2d v15, v8, #7.
  FInsn.OpCode := $0F27A50F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SSHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test855;
begin
  // ushll2.8h v10, v3, #6.
  FInsn.OpCode := $6F0EA46A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TAdvSIMDTest.Test856;
begin
  // ushll2.4s v11, v4, #5.
  FInsn.OpCode := $6F15A48B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TAdvSIMDTest.Test857;
begin
  // ushll2.2d v12, v5, #4.
  FInsn.OpCode := $6F24A4AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4));
end;

procedure TAdvSIMDTest.Test858;
begin
  // ushll.8h v13, v6, #3.
  FInsn.OpCode := $2F0BA4CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TAdvSIMDTest.Test859;
begin
  // ushll.4s v14, v7, #2.
  FInsn.OpCode := $2F12A4EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(2));
end;

procedure TAdvSIMDTest.Test860;
begin
  // ushll.2d v15, v8, #7.
  FInsn.OpCode := $2F27A50F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USHLL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(7));
end;

procedure TAdvSIMDTest.Test861;
begin
  // pmull.8h v0, v0, v0.
  FInsn.OpCode := $0E20E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test862;
begin
  // pmull2.8h v0, v0, v0.
  FInsn.OpCode := $4E20E000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test863;
begin
  // pmull.1q v2, v3, v4.
  FInsn.OpCode := $0EE4E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V4);
end;

procedure TAdvSIMDTest.Test864;
begin
  // pmull2.1q v2, v3, v4.
  FInsn.OpCode := $4EE4E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V4);
end;

procedure TAdvSIMDTest.Test865;
begin
  // pmull.1q v2, v3, v4.
  FInsn.OpCode := $0EE4E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V4);
end;

procedure TAdvSIMDTest.Test866;
begin
  // pmull2.1q v2, v3, v4.
  FInsn.OpCode := $4EE4E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V4);
end;

procedure TAdvSIMDTest.Test867;
begin
  // faddp.2d d1, v2.
  FInsn.OpCode := $7E70D841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V2);
end;

procedure TAdvSIMDTest.Test868;
begin
  // faddp.2s s3, v4.
  FInsn.OpCode := $7E30D883;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
end;

procedure TAdvSIMDTest.Test869;
begin
  // tbl.16b v2, { v4, v5, v6, v7 }, v1.
  FInsn.OpCode := $4E016082;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test870;
begin
  // tbl.8b v0, { v4, v5, v6, v7 }, v1.
  FInsn.OpCode := $0E016080;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test871;
begin
  // tbl.16b v2, { v5 }, v1.
  FInsn.OpCode := $4E0100A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test872;
begin
  // tbl.8b v0, { v5 }, v1.
  FInsn.OpCode := $0E0100A0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test873;
begin
  // tbl.16b v2, { v5, v6, v7 }, v1.
  FInsn.OpCode := $4E0140A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test874;
begin
  // tbl.8b v0, { v5, v6, v7 }, v1.
  FInsn.OpCode := $0E0140A0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test875;
begin
  // tbl.16b v2, { v6, v7 }, v1.
  FInsn.OpCode := $4E0120C2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test876;
begin
  // tbl.8b v0, { v6, v7 }, v1.
  FInsn.OpCode := $0E0120C0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test877;
begin
  // tbl.16b v2, { v4, v5, v6, v7 }, v1.
  FInsn.OpCode := $4E016082;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test878;
begin
  // tbl.8b v0, { v4, v5, v6, v7 }, v1.
  FInsn.OpCode := $0E016080;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test879;
begin
  // tbl.16b v2, { v5 }, v1.
  FInsn.OpCode := $4E0100A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test880;
begin
  // tbl.8b v0, { v5 }, v1.
  FInsn.OpCode := $0E0100A0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test881;
begin
  // tbl.16b v2, { v5, v6, v7 }, v1.
  FInsn.OpCode := $4E0140A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test882;
begin
  // tbl.8b v0, { v5, v6, v7 }, v1.
  FInsn.OpCode := $0E0140A0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test883;
begin
  // tbl.16b v2, { v6, v7 }, v1.
  FInsn.OpCode := $4E0120C2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test884;
begin
  // tbl.8b v0, { v6, v7 }, v1.
  FInsn.OpCode := $0E0120C0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V1);
end;

procedure TAdvSIMDTest.Test885;
begin
  // sqdmull s0, h0, h0.
  FInsn.OpCode := $5E60D000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_H0);
end;

procedure TAdvSIMDTest.Test886;
begin
  // sqdmull d0, s0, s0.
  FInsn.OpCode := $5EA0D000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test887;
begin
  // frsqrte s0, s0.
  FInsn.OpCode := $7EA1D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TAdvSIMDTest.Test888;
begin
  // frsqrte d0, d0.
  FInsn.OpCode := $7EE1D800;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRSQRTE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TAdvSIMDTest.Test889;
begin
  // mov.16b v0, v0.
  FInsn.OpCode := $4EA01C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test890;
begin
  // mov.8b v0, v0.
  FInsn.OpCode := $0EA01C00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V0);
end;

procedure TAdvSIMDTest.Test891;
begin
  // uadalp.4h v14, v25.
  FInsn.OpCode := $2E206B2E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V25);
end;

procedure TAdvSIMDTest.Test892;
begin
  // uadalp.8h v15, v24.
  FInsn.OpCode := $6E206B0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V24);
end;

procedure TAdvSIMDTest.Test893;
begin
  // uadalp.2s v16, v23.
  FInsn.OpCode := $2E606AF0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V23);
end;

procedure TAdvSIMDTest.Test894;
begin
  // uadalp.4s v17, v22.
  FInsn.OpCode := $6E606AD1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V22);
end;

procedure TAdvSIMDTest.Test895;
begin
  // uadalp.1d v18, v21.
  FInsn.OpCode := $2EA06AB2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V21);
end;

procedure TAdvSIMDTest.Test896;
begin
  // uadalp.2d v19, v20.
  FInsn.OpCode := $6EA06A93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V20);
end;

procedure TAdvSIMDTest.Test897;
begin
  // sadalp.4h v1, v11.
  FInsn.OpCode := $0E206961;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V11);
end;

procedure TAdvSIMDTest.Test898;
begin
  // sadalp.8h v2, v12.
  FInsn.OpCode := $4E206982;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V12);
end;

procedure TAdvSIMDTest.Test899;
begin
  // sadalp.2s v3, v13.
  FInsn.OpCode := $0E6069A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
end;

procedure TAdvSIMDTest.Test900;
begin
  // sadalp.4s v4, v14.
  FInsn.OpCode := $4E6069C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test901;
begin
  // sadalp.1d v5, v15.
  FInsn.OpCode := $0EA069E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V15);
end;

procedure TAdvSIMDTest.Test902;
begin
  // sadalp.2d v6, v16.
  FInsn.OpCode := $4EA06A06;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SADALP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V16);
end;

procedure TAdvSIMDTest.Test903;
begin
  // mvn.8b v1, v4.
  FInsn.OpCode := $2E205881;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V4);
end;

procedure TAdvSIMDTest.Test904;
begin
  // mvn.16b v19, v17.
  FInsn.OpCode := $6E205A33;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V17);
end;

procedure TAdvSIMDTest.Test905;
begin
  // mvn.8b v10, v6.
  FInsn.OpCode := $2E2058CA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V6);
end;

procedure TAdvSIMDTest.Test906;
begin
  // mvn.16b v11, v7.
  FInsn.OpCode := $6E2058EB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MVN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V7);
end;

procedure TAdvSIMDTest.Test907;
begin
  // sqdmull.4s v10, v12, v12.
  FInsn.OpCode := $0E6CD18A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V12);
end;

procedure TAdvSIMDTest.Test908;
begin
  // sqdmull2.4s v10, v13, v13.
  FInsn.OpCode := $4E6DD1AA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V13);
end;

procedure TAdvSIMDTest.Test909;
begin
  // sqdmull.2d v10, v13, v13.
  FInsn.OpCode := $0EADD1AA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V13);
end;

procedure TAdvSIMDTest.Test910;
begin
  // sqdmull2.2d v10, v13, v13.
  FInsn.OpCode := $4EADD1AA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SQDMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V13);
end;

procedure TAdvSIMDTest.Test911;
begin
  // xtn.8b v14, v14.
  FInsn.OpCode := $0E2129CE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test912;
begin
  // xtn2.16b v14, v14.
  FInsn.OpCode := $4E2129CE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test913;
begin
  // xtn.4h v14, v14.
  FInsn.OpCode := $0E6129CE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test914;
begin
  // xtn2.8h v14, v14.
  FInsn.OpCode := $4E6129CE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test915;
begin
  // xtn.2s v14, v14.
  FInsn.OpCode := $0EA129CE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test916;
begin
  // xtn2.4s v14, v14.
  FInsn.OpCode := $4EA129CE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_XTN2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test917;
begin
  // uaddl.8h v9, v13, v14.
  FInsn.OpCode := $2E2E01A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test918;
begin
  // uaddl2.8h v9, v13, v14.
  FInsn.OpCode := $6E2E01A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test919;
begin
  // uaddl.4s v9, v13, v14.
  FInsn.OpCode := $2E6E01A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test920;
begin
  // uaddl2.4s v9, v13, v14.
  FInsn.OpCode := $6E6E01A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test921;
begin
  // uaddl.2d v9, v13, v14.
  FInsn.OpCode := $2EAE01A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test922;
begin
  // uaddl2.2d v9, v13, v14.
  FInsn.OpCode := $6EAE01A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UADDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test923;
begin
  // bit.16b v9, v10, v10.
  FInsn.OpCode := $6EAA1D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V10);
end;

procedure TAdvSIMDTest.Test924;
begin
  // bit.8b v9, v10, v10.
  FInsn.OpCode := $2EAA1D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V10);
end;

procedure TAdvSIMDTest.Test925;
begin
  // pmull.8h v8, v8, v8.
  FInsn.OpCode := $0E28E108;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
end;

procedure TAdvSIMDTest.Test926;
begin
  // pmull2.8h v8, v8, v8.
  FInsn.OpCode := $4E28E108;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
end;

procedure TAdvSIMDTest.Test927;
begin
  // pmull.1q v8, v8, v8.
  FInsn.OpCode := $0EE8E108;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
end;

procedure TAdvSIMDTest.Test928;
begin
  // pmull2.1q v8, v8, v8.
  FInsn.OpCode := $4EE8E108;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_PMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V8);
end;

procedure TAdvSIMDTest.Test929;
begin
  // usubl.8h v9, v13, v14.
  FInsn.OpCode := $2E2E21A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test930;
begin
  // usubl2.8h v9, v13, v14.
  FInsn.OpCode := $6E2E21A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test931;
begin
  // usubl.4s v9, v13, v14.
  FInsn.OpCode := $2E6E21A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test932;
begin
  // usubl2.4s v9, v13, v14.
  FInsn.OpCode := $6E6E21A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test933;
begin
  // usubl.2d v9, v13, v14.
  FInsn.OpCode := $2EAE21A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test934;
begin
  // usubl2.2d v9, v13, v14.
  FInsn.OpCode := $6EAE21A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_USUBL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test935;
begin
  // uabdl.8h v9, v13, v14.
  FInsn.OpCode := $2E2E71A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test936;
begin
  // uabdl2.8h v9, v13, v14.
  FInsn.OpCode := $6E2E71A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test937;
begin
  // uabdl.4s v9, v13, v14.
  FInsn.OpCode := $2E6E71A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test938;
begin
  // uabdl2.4s v9, v13, v14.
  FInsn.OpCode := $6E6E71A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test939;
begin
  // uabdl.2d v9, v13, v14.
  FInsn.OpCode := $2EAE71A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test940;
begin
  // uabdl2.2d v9, v13, v14.
  FInsn.OpCode := $6EAE71A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UABDL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test941;
begin
  // umull.8h v9, v13, v14.
  FInsn.OpCode := $2E2EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test942;
begin
  // umull2.8h v9, v13, v14.
  FInsn.OpCode := $6E2EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test943;
begin
  // umull.4s v9, v13, v14.
  FInsn.OpCode := $2E6EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test944;
begin
  // umull2.4s v9, v13, v14.
  FInsn.OpCode := $6E6EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test945;
begin
  // umull.2d v9, v13, v14.
  FInsn.OpCode := $2EAEC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test946;
begin
  // umull2.2d v9, v13, v14.
  FInsn.OpCode := $6EAEC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test947;
begin
  // smull.8h v9, v13, v14.
  FInsn.OpCode := $0E2EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test948;
begin
  // smull2.8h v9, v13, v14.
  FInsn.OpCode := $4E2EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test949;
begin
  // smull.4s v9, v13, v14.
  FInsn.OpCode := $0E6EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test950;
begin
  // smull2.4s v9, v13, v14.
  FInsn.OpCode := $4E6EC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test951;
begin
  // smull.2d v9, v13, v14.
  FInsn.OpCode := $0EAEC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

procedure TAdvSIMDTest.Test952;
begin
  // smull2.2d v9, v13, v14.
  FInsn.OpCode := $4EAEC1A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL2);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_V14);
end;

initialization
  TDUnitX.RegisterTestFixture(TAdvSIMDTest);

end.
