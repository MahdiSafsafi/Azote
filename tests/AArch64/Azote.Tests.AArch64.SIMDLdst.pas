// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/arm64-simd-ldst.s
// ===========================================================================================================

unit Azote.Tests.AArch64.SIMDLdst;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TSIMDLdstTest = class(TObject)
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
    procedure Test953;
    procedure Test954;
    procedure Test955;
    procedure Test956;
    procedure Test957;
    procedure Test958;
    procedure Test959;
    procedure Test960;
    procedure Test961;
    procedure Test962;
    procedure Test963;
    procedure Test964;
    procedure Test965;
    procedure Test966;
    procedure Test967;
    procedure Test968;
    procedure Test969;
    procedure Test970;
    procedure Test971;
    procedure Test972;
    procedure Test973;
    procedure Test974;
    procedure Test975;
    procedure Test976;
    procedure Test977;
    procedure Test978;
    procedure Test979;
    procedure Test980;
    procedure Test981;
    procedure Test982;
    procedure Test983;
    procedure Test984;
    procedure Test985;
    procedure Test986;
    procedure Test987;
    procedure Test988;
    procedure Test989;
    procedure Test990;
    procedure Test991;
    procedure Test992;
    procedure Test993;
    procedure Test994;
    procedure Test995;
    procedure Test996;
    procedure Test997;
    procedure Test998;
    procedure Test999;
    procedure Test1000;
    procedure Test1001;
    procedure Test1002;
    procedure Test1003;
    procedure Test1004;
    procedure Test1005;
    procedure Test1006;
    procedure Test1007;
    procedure Test1008;
    procedure Test1009;
    procedure Test1010;
    procedure Test1011;
    procedure Test1012;
    procedure Test1013;
    procedure Test1014;
    procedure Test1015;
    procedure Test1016;
    procedure Test1017;
    procedure Test1018;
    procedure Test1019;
    procedure Test1020;
    procedure Test1021;
    procedure Test1022;
    procedure Test1023;
    procedure Test1024;
    procedure Test1025;
    procedure Test1026;
    procedure Test1027;
    procedure Test1028;
    procedure Test1029;
    procedure Test1030;
    procedure Test1031;
    procedure Test1032;
    procedure Test1033;
    procedure Test1034;
    procedure Test1035;
    procedure Test1036;
    procedure Test1037;
    procedure Test1038;
    procedure Test1039;
    procedure Test1040;
    procedure Test1041;
    procedure Test1042;
  end;

implementation

procedure TSIMDLdstTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TSIMDLdstTest.TearDown;
begin

end;	

procedure TSIMDLdstTest.Test1;
begin
  // ld1.8b { v0 }, [x1].
  FInsn.OpCode := $0C407020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test2;
begin
  // ld1.8b { v0, v1 }, [x1].
  FInsn.OpCode := $0C40A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test3;
begin
  // ld1.8b { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C406020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test4;
begin
  // ld1.8b { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C402020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test5;
begin
  // ld1.8b { v3 }, [x1].
  FInsn.OpCode := $0C407023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test6;
begin
  // ld1.8b { v3, v4 }, [x2].
  FInsn.OpCode := $0C40A043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test7;
begin
  // ld1.8b { v4, v5, v6 }, [x3].
  FInsn.OpCode := $0C406064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test8;
begin
  // ld1.8b { v7, v8, v9, v10 }, [x4].
  FInsn.OpCode := $0C402087;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
end;

procedure TSIMDLdstTest.Test9;
begin
  // ld1.16b { v0 }, [x1].
  FInsn.OpCode := $4C407020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test10;
begin
  // ld1.16b { v0, v1 }, [x1].
  FInsn.OpCode := $4C40A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test11;
begin
  // ld1.16b { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C406020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test12;
begin
  // ld1.16b { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C402020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test13;
begin
  // ld1.4h { v0 }, [x1].
  FInsn.OpCode := $0C407420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test14;
begin
  // ld1.4h { v0, v1 }, [x1].
  FInsn.OpCode := $0C40A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test15;
begin
  // ld1.4h { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C406420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test16;
begin
  // ld1.4h { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C402420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test17;
begin
  // ld1.8h { v0 }, [x1].
  FInsn.OpCode := $4C407420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test18;
begin
  // ld1.8h { v0, v1 }, [x1].
  FInsn.OpCode := $4C40A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test19;
begin
  // ld1.8h { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C406420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test20;
begin
  // ld1.8h { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C402420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test21;
begin
  // ld1.2s { v0 }, [x1].
  FInsn.OpCode := $0C407820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test22;
begin
  // ld1.2s { v0, v1 }, [x1].
  FInsn.OpCode := $0C40A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test23;
begin
  // ld1.2s { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C406820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test24;
begin
  // ld1.2s { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C402820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test25;
begin
  // ld1.4s { v0 }, [x1].
  FInsn.OpCode := $4C407820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test26;
begin
  // ld1.4s { v0, v1 }, [x1].
  FInsn.OpCode := $4C40A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test27;
begin
  // ld1.4s { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C406820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test28;
begin
  // ld1.4s { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C402820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test29;
begin
  // ld1.1d { v0 }, [x1].
  FInsn.OpCode := $0C407C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test30;
begin
  // ld1.1d { v0, v1 }, [x1].
  FInsn.OpCode := $0C40AC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test31;
begin
  // ld1.1d { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C406C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test32;
begin
  // ld1.1d { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C402C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test33;
begin
  // ld1.2d { v0 }, [x1].
  FInsn.OpCode := $4C407C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test34;
begin
  // ld1.2d { v0, v1 }, [x1].
  FInsn.OpCode := $4C40AC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test35;
begin
  // ld1.2d { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C406C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test36;
begin
  // ld1.2d { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C402C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test37;
begin
  // st1.8b { v0 }, [x1].
  FInsn.OpCode := $0C007020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test38;
begin
  // st1.8b { v0, v1 }, [x1].
  FInsn.OpCode := $0C00A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test39;
begin
  // st1.8b { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C006020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test40;
begin
  // st1.8b { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C002020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test41;
begin
  // st1.16b { v0 }, [x1].
  FInsn.OpCode := $4C007020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test42;
begin
  // st1.16b { v0, v1 }, [x1].
  FInsn.OpCode := $4C00A020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test43;
begin
  // st1.16b { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C006020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test44;
begin
  // st1.16b { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C002020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test45;
begin
  // st1.4h { v0 }, [x1].
  FInsn.OpCode := $0C007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test46;
begin
  // st1.4h { v0, v1 }, [x1].
  FInsn.OpCode := $0C00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test47;
begin
  // st1.4h { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test48;
begin
  // st1.4h { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test49;
begin
  // st1.8h { v0 }, [x1].
  FInsn.OpCode := $4C007420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test50;
begin
  // st1.8h { v0, v1 }, [x1].
  FInsn.OpCode := $4C00A420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test51;
begin
  // st1.8h { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C006420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test52;
begin
  // st1.8h { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C002420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test53;
begin
  // st1.2s { v0 }, [x1].
  FInsn.OpCode := $0C007820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test54;
begin
  // st1.2s { v0, v1 }, [x1].
  FInsn.OpCode := $0C00A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test55;
begin
  // st1.2s { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C006820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test56;
begin
  // st1.2s { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C002820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test57;
begin
  // st1.4s { v0 }, [x1].
  FInsn.OpCode := $4C007820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test58;
begin
  // st1.4s { v0, v1 }, [x1].
  FInsn.OpCode := $4C00A820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test59;
begin
  // st1.4s { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C006820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test60;
begin
  // st1.4s { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C002820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test61;
begin
  // st1.1d { v0 }, [x1].
  FInsn.OpCode := $0C007C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test62;
begin
  // st1.1d { v0, v1 }, [x1].
  FInsn.OpCode := $0C00AC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test63;
begin
  // st1.1d { v0, v1, v2 }, [x1].
  FInsn.OpCode := $0C006C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test64;
begin
  // st1.1d { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $0C002C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test65;
begin
  // st1.2d { v0 }, [x1].
  FInsn.OpCode := $4C007C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test66;
begin
  // st1.2d { v0, v1 }, [x1].
  FInsn.OpCode := $4C00AC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test67;
begin
  // st1.2d { v0, v1, v2 }, [x1].
  FInsn.OpCode := $4C006C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test68;
begin
  // st1.2d { v0, v1, v2, v3 }, [x1].
  FInsn.OpCode := $4C002C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test69;
begin
  // st1.2d { v5 }, [x1].
  FInsn.OpCode := $4C007C25;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test70;
begin
  // st1.2d { v7, v8 }, [x10].
  FInsn.OpCode := $4C00AD47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
end;

procedure TSIMDLdstTest.Test71;
begin
  // st1.2d { v11, v12, v13 }, [x1].
  FInsn.OpCode := $4C006C2B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test72;
begin
  // st1.2d { v28, v29, v30, v31 }, [x13].
  FInsn.OpCode := $4C002DBC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X13);
end;

procedure TSIMDLdstTest.Test73;
begin
  // ld2.8b { v4, v5 }, [x19].
  FInsn.OpCode := $0C408264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test74;
begin
  // ld2.16b { v4, v5 }, [x19].
  FInsn.OpCode := $4C408264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test75;
begin
  // ld2.4h { v4, v5 }, [x19].
  FInsn.OpCode := $0C408664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test76;
begin
  // ld2.8h { v4, v5 }, [x19].
  FInsn.OpCode := $4C408664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test77;
begin
  // ld2.2s { v4, v5 }, [x19].
  FInsn.OpCode := $0C408A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test78;
begin
  // ld2.4s { v4, v5 }, [x19].
  FInsn.OpCode := $4C408A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test79;
begin
  // ld2.2d { v4, v5 }, [x19].
  FInsn.OpCode := $4C408E64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test80;
begin
  // st2.8b { v4, v5 }, [x19].
  FInsn.OpCode := $0C008264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test81;
begin
  // st2.16b { v4, v5 }, [x19].
  FInsn.OpCode := $4C008264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test82;
begin
  // st2.4h { v4, v5 }, [x19].
  FInsn.OpCode := $0C008664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test83;
begin
  // st2.8h { v4, v5 }, [x19].
  FInsn.OpCode := $4C008664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test84;
begin
  // st2.2s { v4, v5 }, [x19].
  FInsn.OpCode := $0C008A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test85;
begin
  // st2.4s { v4, v5 }, [x19].
  FInsn.OpCode := $4C008A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test86;
begin
  // st2.2d { v4, v5 }, [x19].
  FInsn.OpCode := $4C008E64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test87;
begin
  // ld3.8b { v4, v5, v6 }, [x19].
  FInsn.OpCode := $0C404264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test88;
begin
  // ld3.16b { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C404264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test89;
begin
  // ld3.4h { v4, v5, v6 }, [x19].
  FInsn.OpCode := $0C404664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test90;
begin
  // ld3.8h { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C404664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test91;
begin
  // ld3.2s { v4, v5, v6 }, [x19].
  FInsn.OpCode := $0C404A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test92;
begin
  // ld3.4s { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C404A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test93;
begin
  // ld3.2d { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C404E64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test94;
begin
  // ld3.8b { v9, v10, v11 }, [x9].
  FInsn.OpCode := $0C404129;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TSIMDLdstTest.Test95;
begin
  // ld3.16b { v14, v15, v16 }, [x19].
  FInsn.OpCode := $4C40426E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test96;
begin
  // ld3.4h { v24, v25, v26 }, [x29].
  FInsn.OpCode := $0C4047B8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V24);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
end;

procedure TSIMDLdstTest.Test97;
begin
  // ld3.8h { v30, v31, v0 }, [x9].
  FInsn.OpCode := $4C40453E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TSIMDLdstTest.Test98;
begin
  // ld3.2s { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C404A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test99;
begin
  // ld3.4s { v4, v5, v6 }, [x29].
  FInsn.OpCode := $4C404BA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
end;

procedure TSIMDLdstTest.Test100;
begin
  // ld3.2d { v7, v8, v9 }, [x9].
  FInsn.OpCode := $4C404D27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TSIMDLdstTest.Test101;
begin
  // st3.8b { v4, v5, v6 }, [x19].
  FInsn.OpCode := $0C004264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test102;
begin
  // st3.16b { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C004264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test103;
begin
  // st3.4h { v4, v5, v6 }, [x19].
  FInsn.OpCode := $0C004664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test104;
begin
  // st3.8h { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C004664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test105;
begin
  // st3.2s { v4, v5, v6 }, [x19].
  FInsn.OpCode := $0C004A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test106;
begin
  // st3.4s { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C004A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test107;
begin
  // st3.2d { v4, v5, v6 }, [x19].
  FInsn.OpCode := $4C004E64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test108;
begin
  // st3.8b { v10, v11, v12 }, [x9].
  FInsn.OpCode := $0C00412A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TSIMDLdstTest.Test109;
begin
  // st3.16b { v14, v15, v16 }, [x19].
  FInsn.OpCode := $4C00426E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test110;
begin
  // st3.4h { v24, v25, v26 }, [x29].
  FInsn.OpCode := $0C0047B8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V24);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
end;

procedure TSIMDLdstTest.Test111;
begin
  // st3.8h { v30, v31, v0 }, [x9].
  FInsn.OpCode := $4C00453E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TSIMDLdstTest.Test112;
begin
  // st3.2s { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C004A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test113;
begin
  // st3.4s { v7, v8, v9 }, [x29].
  FInsn.OpCode := $4C004BA7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
end;

procedure TSIMDLdstTest.Test114;
begin
  // st3.2d { v4, v5, v6 }, [x9].
  FInsn.OpCode := $4C004D24;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TSIMDLdstTest.Test115;
begin
  // ld4.8b { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $0C400264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test116;
begin
  // ld4.16b { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C400264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test117;
begin
  // ld4.4h { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $0C400664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test118;
begin
  // ld4.8h { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C400664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test119;
begin
  // ld4.2s { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $0C400A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test120;
begin
  // ld4.4s { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C400A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test121;
begin
  // ld4.2d { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C400E64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test122;
begin
  // st4.8b { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $0C000264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test123;
begin
  // st4.16b { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C000264;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test124;
begin
  // st4.4h { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $0C000664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test125;
begin
  // st4.8h { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C000664;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test126;
begin
  // st4.2s { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $0C000A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test127;
begin
  // st4.4s { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C000A64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test128;
begin
  // st4.2d { v4, v5, v6, v7 }, [x19].
  FInsn.OpCode := $4C000E64;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test129;
begin
  // ld1.8b { v0 }, [x1], x15.
  FInsn.OpCode := $0CCF7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test130;
begin
  // ld1.8b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCFA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test131;
begin
  // ld1.8b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test132;
begin
  // ld1.8b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test133;
begin
  // ld1.16b { v0 }, [x1], x15.
  FInsn.OpCode := $4CCF7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test134;
begin
  // ld1.16b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCFA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test135;
begin
  // ld1.16b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test136;
begin
  // ld1.16b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test137;
begin
  // ld1.4h { v0 }, [x1], x15.
  FInsn.OpCode := $0CCF7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test138;
begin
  // ld1.4h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCFA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test139;
begin
  // ld1.4h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test140;
begin
  // ld1.4h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test141;
begin
  // ld1.8h { v0 }, [x1], x15.
  FInsn.OpCode := $4CCF7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test142;
begin
  // ld1.8h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCFA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test143;
begin
  // ld1.8h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test144;
begin
  // ld1.8h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test145;
begin
  // ld1.2s { v0 }, [x1], x15.
  FInsn.OpCode := $0CCF7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test146;
begin
  // ld1.2s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCFA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test147;
begin
  // ld1.2s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test148;
begin
  // ld1.2s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test149;
begin
  // ld1.4s { v0 }, [x1], x15.
  FInsn.OpCode := $4CCF7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test150;
begin
  // ld1.4s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCFA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test151;
begin
  // ld1.4s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test152;
begin
  // ld1.4s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test153;
begin
  // ld1.1d { v0 }, [x1], x15.
  FInsn.OpCode := $0CCF7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test154;
begin
  // ld1.1d { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCFAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test155;
begin
  // ld1.1d { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test156;
begin
  // ld1.1d { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test157;
begin
  // ld1.2d { v0 }, [x1], x15.
  FInsn.OpCode := $4CCF7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test158;
begin
  // ld1.2d { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCFAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test159;
begin
  // ld1.2d { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test160;
begin
  // ld1.2d { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test161;
begin
  // st1.8b { v0 }, [x1], x15.
  FInsn.OpCode := $0C8F7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test162;
begin
  // st1.8b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8FA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test163;
begin
  // st1.8b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test164;
begin
  // st1.8b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test165;
begin
  // st1.16b { v0 }, [x1], x15.
  FInsn.OpCode := $4C8F7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test166;
begin
  // st1.16b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8FA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test167;
begin
  // st1.16b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test168;
begin
  // st1.16b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test169;
begin
  // st1.4h { v0 }, [x1], x15.
  FInsn.OpCode := $0C8F7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test170;
begin
  // st1.4h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8FA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test171;
begin
  // st1.4h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test172;
begin
  // st1.4h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test173;
begin
  // st1.8h { v0 }, [x1], x15.
  FInsn.OpCode := $4C8F7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test174;
begin
  // st1.8h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8FA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test175;
begin
  // st1.8h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test176;
begin
  // st1.8h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test177;
begin
  // st1.2s { v0 }, [x1], x15.
  FInsn.OpCode := $0C8F7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test178;
begin
  // st1.2s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8FA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test179;
begin
  // st1.2s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test180;
begin
  // st1.2s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test181;
begin
  // st1.4s { v0 }, [x1], x15.
  FInsn.OpCode := $4C8F7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test182;
begin
  // st1.4s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8FA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test183;
begin
  // st1.4s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test184;
begin
  // st1.4s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test185;
begin
  // st1.1d { v0 }, [x1], x15.
  FInsn.OpCode := $0C8F7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test186;
begin
  // st1.1d { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8FAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test187;
begin
  // st1.1d { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test188;
begin
  // st1.1d { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test189;
begin
  // st1.2d { v0 }, [x1], x15.
  FInsn.OpCode := $4C8F7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test190;
begin
  // st1.2d { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8FAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test191;
begin
  // st1.2d { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test192;
begin
  // st1.2d { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test193;
begin
  // ld1.8b { v0 }, [x1], #8.
  FInsn.OpCode := $0CDF7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test194;
begin
  // ld1.8b { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDFA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test195;
begin
  // ld1.8b { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test196;
begin
  // ld1.8b { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test197;
begin
  // ld1.16b { v0 }, [x1], #16.
  FInsn.OpCode := $4CDF7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test198;
begin
  // ld1.16b { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDFA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test199;
begin
  // ld1.16b { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test200;
begin
  // ld1.16b { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test201;
begin
  // ld1.4h { v0 }, [x1], #8.
  FInsn.OpCode := $0CDF7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test202;
begin
  // ld1.4h { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDFA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test203;
begin
  // ld1.4h { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test204;
begin
  // ld1.4h { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test205;
begin
  // ld1.8h { v0 }, [x1], #16.
  FInsn.OpCode := $4CDF7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test206;
begin
  // ld1.8h { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDFA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test207;
begin
  // ld1.8h { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test208;
begin
  // ld1.8h { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test209;
begin
  // ld1.2s { v0 }, [x1], #8.
  FInsn.OpCode := $0CDF7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test210;
begin
  // ld1.2s { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDFA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test211;
begin
  // ld1.2s { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test212;
begin
  // ld1.2s { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test213;
begin
  // ld1.4s { v0 }, [x1], #16.
  FInsn.OpCode := $4CDF7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test214;
begin
  // ld1.4s { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDFA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test215;
begin
  // ld1.4s { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test216;
begin
  // ld1.4s { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test217;
begin
  // ld1.1d { v0 }, [x1], #8.
  FInsn.OpCode := $0CDF7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test218;
begin
  // ld1.1d { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDFAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test219;
begin
  // ld1.1d { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test220;
begin
  // ld1.1d { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test221;
begin
  // ld1.2d { v0 }, [x1], #16.
  FInsn.OpCode := $4CDF7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test222;
begin
  // ld1.2d { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDFAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test223;
begin
  // ld1.2d { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test224;
begin
  // ld1.2d { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test225;
begin
  // st1.8b { v0 }, [x1], #8.
  FInsn.OpCode := $0C9F7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test226;
begin
  // st1.8b { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9FA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test227;
begin
  // st1.8b { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test228;
begin
  // st1.8b { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test229;
begin
  // st1.16b { v0 }, [x1], #16.
  FInsn.OpCode := $4C9F7020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test230;
begin
  // st1.16b { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9FA020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test231;
begin
  // st1.16b { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F6020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test232;
begin
  // st1.16b { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F2020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test233;
begin
  // st1.4h { v0 }, [x1], #8.
  FInsn.OpCode := $0C9F7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test234;
begin
  // st1.4h { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9FA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test235;
begin
  // st1.4h { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test236;
begin
  // st1.4h { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test237;
begin
  // st1.8h { v0 }, [x1], #16.
  FInsn.OpCode := $4C9F7420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test238;
begin
  // st1.8h { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9FA420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test239;
begin
  // st1.8h { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F6420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test240;
begin
  // st1.8h { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F2420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test241;
begin
  // st1.2s { v0 }, [x1], #8.
  FInsn.OpCode := $0C9F7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test242;
begin
  // st1.2s { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9FA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test243;
begin
  // st1.2s { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test244;
begin
  // st1.2s { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test245;
begin
  // st1.4s { v0 }, [x1], #16.
  FInsn.OpCode := $4C9F7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test246;
begin
  // st1.4s { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9FA820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test247;
begin
  // st1.4s { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F6820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test248;
begin
  // st1.4s { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F2820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test249;
begin
  // st1.1d { v0 }, [x1], #8.
  FInsn.OpCode := $0C9F7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test250;
begin
  // st1.1d { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9FAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test251;
begin
  // st1.1d { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test252;
begin
  // st1.1d { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test253;
begin
  // st1.2d { v0 }, [x1], #16.
  FInsn.OpCode := $4C9F7C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test254;
begin
  // st1.2d { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9FAC20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test255;
begin
  // st1.2d { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F6C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test256;
begin
  // st1.2d { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F2C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test257;
begin
  // ld2.8b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCF8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test258;
begin
  // ld2.16b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCF8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test259;
begin
  // ld2.4h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCF8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test260;
begin
  // ld2.8h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCF8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test261;
begin
  // ld2.2s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0CCF8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test262;
begin
  // ld2.4s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCF8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test263;
begin
  // ld2.2d { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4CCF8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test264;
begin
  // st2.8b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8F8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test265;
begin
  // st2.16b { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8F8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test266;
begin
  // st2.4h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8F8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test267;
begin
  // st2.8h { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8F8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test268;
begin
  // st2.2s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $0C8F8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test269;
begin
  // st2.4s { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8F8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test270;
begin
  // st2.2d { v0, v1 }, [x1], x15.
  FInsn.OpCode := $4C8F8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test271;
begin
  // ld2.8b { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDF8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test272;
begin
  // ld2.16b { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDF8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test273;
begin
  // ld2.4h { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDF8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test274;
begin
  // ld2.8h { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDF8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test275;
begin
  // ld2.2s { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0CDF8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test276;
begin
  // ld2.4s { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDF8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test277;
begin
  // ld2.2d { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4CDF8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test278;
begin
  // st2.8b { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9F8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test279;
begin
  // st2.16b { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9F8020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test280;
begin
  // st2.4h { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9F8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test281;
begin
  // st2.8h { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9F8420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test282;
begin
  // st2.2s { v0, v1 }, [x1], #16.
  FInsn.OpCode := $0C9F8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test283;
begin
  // st2.4s { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9F8820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test284;
begin
  // st2.2d { v0, v1 }, [x1], #32.
  FInsn.OpCode := $4C9F8C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test285;
begin
  // ld3.8b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test286;
begin
  // ld3.16b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test287;
begin
  // ld3.4h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test288;
begin
  // ld3.8h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test289;
begin
  // ld3.2s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0CCF4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test290;
begin
  // ld3.4s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test291;
begin
  // ld3.2d { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4CCF4C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test292;
begin
  // st3.8b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test293;
begin
  // st3.16b { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test294;
begin
  // st3.4h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test295;
begin
  // st3.8h { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test296;
begin
  // st3.2s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $0C8F4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test297;
begin
  // st3.4s { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test298;
begin
  // st3.2d { v0, v1, v2 }, [x1], x15.
  FInsn.OpCode := $4C8F4C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test299;
begin
  // ld3.8b { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test300;
begin
  // ld3.16b { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test301;
begin
  // ld3.4h { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test302;
begin
  // ld3.8h { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test303;
begin
  // ld3.2s { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0CDF4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test304;
begin
  // ld3.4s { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test305;
begin
  // ld3.2d { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4CDF4C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test306;
begin
  // st3.8b { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test307;
begin
  // st3.16b { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F4020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test308;
begin
  // st3.4h { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test309;
begin
  // st3.8h { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F4420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test310;
begin
  // st3.2s { v0, v1, v2 }, [x1], #24.
  FInsn.OpCode := $0C9F4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test311;
begin
  // st3.4s { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F4820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test312;
begin
  // st3.2d { v0, v1, v2 }, [x1], #48.
  FInsn.OpCode := $4C9F4C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test313;
begin
  // ld4.8b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test314;
begin
  // ld4.16b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test315;
begin
  // ld4.4h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test316;
begin
  // ld4.8h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test317;
begin
  // ld4.2s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test318;
begin
  // ld4.4s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test319;
begin
  // ld4.2d { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF0C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test320;
begin
  // st4.8b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test321;
begin
  // st4.16b { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test322;
begin
  // st4.4h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test323;
begin
  // st4.8h { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test324;
begin
  // st4.2s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test325;
begin
  // st4.4s { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test326;
begin
  // st4.2d { v0, v1, v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F0C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test327;
begin
  // ld4.8b { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test328;
begin
  // ld4.16b { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test329;
begin
  // ld4.4h { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test330;
begin
  // ld4.8h { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test331;
begin
  // ld4.2s { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0CDF0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test332;
begin
  // ld4.4s { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test333;
begin
  // ld4.2d { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4CDF0C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test334;
begin
  // st4.8b { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test335;
begin
  // st4.16b { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F0020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test336;
begin
  // st4.4h { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test337;
begin
  // st4.8h { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F0420;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test338;
begin
  // st4.2s { v0, v1, v2, v3 }, [x1], #32.
  FInsn.OpCode := $0C9F0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test339;
begin
  // st4.4s { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F0820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test340;
begin
  // st4.2d { v0, v1, v2, v3 }, [x1], #64.
  FInsn.OpCode := $4C9F0C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test341;
begin
  // ld1r.8b { v4 }, [x2].
  FInsn.OpCode := $0D40C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test342;
begin
  // ld1r.8b { v4 }, [x2], x3.
  FInsn.OpCode := $0DC3C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test343;
begin
  // ld1r.16b { v4 }, [x2].
  FInsn.OpCode := $4D40C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test344;
begin
  // ld1r.16b { v4 }, [x2], x3.
  FInsn.OpCode := $4DC3C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test345;
begin
  // ld1r.4h { v4 }, [x2].
  FInsn.OpCode := $0D40C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test346;
begin
  // ld1r.4h { v4 }, [x2], x3.
  FInsn.OpCode := $0DC3C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test347;
begin
  // ld1r.8h { v4 }, [x2].
  FInsn.OpCode := $4D40C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test348;
begin
  // ld1r.8h { v4 }, [x2], x3.
  FInsn.OpCode := $4DC3C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test349;
begin
  // ld1r.2s { v4 }, [x2].
  FInsn.OpCode := $0D40C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test350;
begin
  // ld1r.2s { v4 }, [x2], x3.
  FInsn.OpCode := $0DC3C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test351;
begin
  // ld1r.4s { v4 }, [x2].
  FInsn.OpCode := $4D40C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test352;
begin
  // ld1r.4s { v4 }, [x2], x3.
  FInsn.OpCode := $4DC3C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test353;
begin
  // ld1r.1d { v4 }, [x2].
  FInsn.OpCode := $0D40CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test354;
begin
  // ld1r.1d { v4 }, [x2], x3.
  FInsn.OpCode := $0DC3CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test355;
begin
  // ld1r.2d { v4 }, [x2].
  FInsn.OpCode := $4D40CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test356;
begin
  // ld1r.2d { v4 }, [x2], x3.
  FInsn.OpCode := $4DC3CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test357;
begin
  // ld1r.8b { v4 }, [x2], #1.
  FInsn.OpCode := $0DDFC044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test358;
begin
  // ld1r.16b { v4 }, [x2], #1.
  FInsn.OpCode := $4DDFC044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test359;
begin
  // ld1r.4h { v4 }, [x2], #2.
  FInsn.OpCode := $0DDFC444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test360;
begin
  // ld1r.8h { v4 }, [x2], #2.
  FInsn.OpCode := $4DDFC444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test361;
begin
  // ld1r.2s { v4 }, [x2], #4.
  FInsn.OpCode := $0DDFC844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test362;
begin
  // ld1r.4s { v4 }, [x2], #4.
  FInsn.OpCode := $4DDFC844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test363;
begin
  // ld1r.1d { v4 }, [x2], #8.
  FInsn.OpCode := $0DDFCC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test364;
begin
  // ld1r.2d { v4 }, [x2], #8.
  FInsn.OpCode := $4DDFCC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test365;
begin
  // ld2r.8b { v4, v5 }, [x2].
  FInsn.OpCode := $0D60C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test366;
begin
  // ld2r.8b { v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test367;
begin
  // ld2r.16b { v4, v5 }, [x2].
  FInsn.OpCode := $4D60C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test368;
begin
  // ld2r.16b { v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3C044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test369;
begin
  // ld2r.4h { v4, v5 }, [x2].
  FInsn.OpCode := $0D60C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test370;
begin
  // ld2r.4h { v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test371;
begin
  // ld2r.8h { v4, v5 }, [x2].
  FInsn.OpCode := $4D60C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test372;
begin
  // ld2r.8h { v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3C444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test373;
begin
  // ld2r.2s { v4, v5 }, [x2].
  FInsn.OpCode := $0D60C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test374;
begin
  // ld2r.2s { v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test375;
begin
  // ld2r.4s { v4, v5 }, [x2].
  FInsn.OpCode := $4D60C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test376;
begin
  // ld2r.4s { v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3C844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test377;
begin
  // ld2r.1d { v4, v5 }, [x2].
  FInsn.OpCode := $0D60CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test378;
begin
  // ld2r.1d { v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test379;
begin
  // ld2r.2d { v4, v5 }, [x2].
  FInsn.OpCode := $4D60CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test380;
begin
  // ld2r.2d { v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3CC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test381;
begin
  // ld2r.8b { v4, v5 }, [x2], #2.
  FInsn.OpCode := $0DFFC044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test382;
begin
  // ld2r.16b { v4, v5 }, [x2], #2.
  FInsn.OpCode := $4DFFC044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test383;
begin
  // ld2r.4h { v4, v5 }, [x2], #4.
  FInsn.OpCode := $0DFFC444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test384;
begin
  // ld2r.8h { v4, v5 }, [x2], #4.
  FInsn.OpCode := $4DFFC444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test385;
begin
  // ld2r.2s { v4, v5 }, [x2], #8.
  FInsn.OpCode := $0DFFC844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test386;
begin
  // ld2r.4s { v4, v5 }, [x2], #8.
  FInsn.OpCode := $4DFFC844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test387;
begin
  // ld2r.1d { v4, v5 }, [x2], #16.
  FInsn.OpCode := $0DFFCC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test388;
begin
  // ld2r.2d { v4, v5 }, [x2], #16.
  FInsn.OpCode := $4DFFCC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test389;
begin
  // ld3r.8b { v4, v5, v6 }, [x2].
  FInsn.OpCode := $0D40E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test390;
begin
  // ld3r.8b { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $0DC3E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test391;
begin
  // ld3r.16b { v4, v5, v6 }, [x2].
  FInsn.OpCode := $4D40E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test392;
begin
  // ld3r.16b { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $4DC3E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test393;
begin
  // ld3r.4h { v4, v5, v6 }, [x2].
  FInsn.OpCode := $0D40E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test394;
begin
  // ld3r.4h { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $0DC3E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test395;
begin
  // ld3r.8h { v4, v5, v6 }, [x2].
  FInsn.OpCode := $4D40E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test396;
begin
  // ld3r.8h { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $4DC3E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test397;
begin
  // ld3r.2s { v4, v5, v6 }, [x2].
  FInsn.OpCode := $0D40E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test398;
begin
  // ld3r.2s { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $0DC3E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test399;
begin
  // ld3r.4s { v4, v5, v6 }, [x2].
  FInsn.OpCode := $4D40E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test400;
begin
  // ld3r.4s { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $4DC3E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test401;
begin
  // ld3r.1d { v4, v5, v6 }, [x2].
  FInsn.OpCode := $0D40EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test402;
begin
  // ld3r.1d { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $0DC3EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test403;
begin
  // ld3r.2d { v4, v5, v6 }, [x2].
  FInsn.OpCode := $4D40EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test404;
begin
  // ld3r.2d { v4, v5, v6 }, [x2], x3.
  FInsn.OpCode := $4DC3EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test405;
begin
  // ld3r.8b { v4, v5, v6 }, [x2], #3.
  FInsn.OpCode := $0DDFE044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test406;
begin
  // ld3r.16b { v4, v5, v6 }, [x2], #3.
  FInsn.OpCode := $4DDFE044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test407;
begin
  // ld3r.4h { v4, v5, v6 }, [x2], #6.
  FInsn.OpCode := $0DDFE444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test408;
begin
  // ld3r.8h { v4, v5, v6 }, [x2], #6.
  FInsn.OpCode := $4DDFE444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test409;
begin
  // ld3r.2s { v4, v5, v6 }, [x2], #12.
  FInsn.OpCode := $0DDFE844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test410;
begin
  // ld3r.4s { v4, v5, v6 }, [x2], #12.
  FInsn.OpCode := $4DDFE844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test411;
begin
  // ld3r.1d { v4, v5, v6 }, [x2], #24.
  FInsn.OpCode := $0DDFEC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test412;
begin
  // ld3r.2d { v4, v5, v6 }, [x2], #24.
  FInsn.OpCode := $4DDFEC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test413;
begin
  // ld4r.8b { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $0D60E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test414;
begin
  // ld4r.8b { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $0DE3E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test415;
begin
  // ld4r.16b { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $4D60E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test416;
begin
  // ld4r.16b { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $4DE3E044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test417;
begin
  // ld4r.4h { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $0D60E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test418;
begin
  // ld4r.4h { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $0DE3E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test419;
begin
  // ld4r.8h { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $4D60E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test420;
begin
  // ld4r.8h { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $4DE3E444;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test421;
begin
  // ld4r.2s { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $0D60E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test422;
begin
  // ld4r.2s { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $0DE3E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test423;
begin
  // ld4r.4s { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $4D60E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test424;
begin
  // ld4r.4s { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $4DE3E844;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test425;
begin
  // ld4r.1d { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $0D60EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test426;
begin
  // ld4r.1d { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $0DE3EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test427;
begin
  // ld4r.2d { v4, v5, v6, v7 }, [x2].
  FInsn.OpCode := $4D60EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test428;
begin
  // ld4r.2d { v4, v5, v6, v7 }, [x2], x3.
  FInsn.OpCode := $4DE3EC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test429;
begin
  // ld4r.8b { v4, v5, v6, v7 }, [x2], #4.
  FInsn.OpCode := $0DFFE044;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test430;
begin
  // ld4r.16b { v5, v6, v7, v8 }, [x2], #4.
  FInsn.OpCode := $4DFFE045;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test431;
begin
  // ld4r.4h { v6, v7, v8, v9 }, [x2], #8.
  FInsn.OpCode := $0DFFE446;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test432;
begin
  // ld4r.8h { v1, v2, v3, v4 }, [x2], #8.
  FInsn.OpCode := $4DFFE441;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test433;
begin
  // ld4r.2s { v2, v3, v4, v5 }, [x2], #16.
  FInsn.OpCode := $0DFFE842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test434;
begin
  // ld4r.4s { v3, v4, v5, v6 }, [x2], #16.
  FInsn.OpCode := $4DFFE843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test435;
begin
  // ld4r.1d { v0, v1, v2, v3 }, [x2], #32.
  FInsn.OpCode := $0DFFEC40;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test436;
begin
  // ld4r.2d { v4, v5, v6, v7 }, [x2], #32.
  FInsn.OpCode := $4DFFEC44;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test437;
begin
  // ld1.b { v4 }[13], [x3].
  FInsn.OpCode := $4D401464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test438;
begin
  // ld1.h { v4 }[2], [x3].
  FInsn.OpCode := $0D405064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test439;
begin
  // ld1.s { v4 }[2], [x3].
  FInsn.OpCode := $4D408064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test440;
begin
  // ld1.d { v4 }[1], [x3].
  FInsn.OpCode := $4D408464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test441;
begin
  // ld1.b { v4 }[13], [x3], x5.
  FInsn.OpCode := $4DC51464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test442;
begin
  // ld1.h { v4 }[2], [x3], x5.
  FInsn.OpCode := $0DC55064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test443;
begin
  // ld1.s { v4 }[2], [x3], x5.
  FInsn.OpCode := $4DC58064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test444;
begin
  // ld1.d { v4 }[1], [x3], x5.
  FInsn.OpCode := $4DC58464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test445;
begin
  // ld1.b { v4 }[13], [x3], #1.
  FInsn.OpCode := $4DDF1464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test446;
begin
  // ld1.h { v4 }[2], [x3], #2.
  FInsn.OpCode := $0DDF5064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test447;
begin
  // ld1.s { v4 }[2], [x3], #4.
  FInsn.OpCode := $4DDF8064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test448;
begin
  // ld1.d { v4 }[1], [x3], #8.
  FInsn.OpCode := $4DDF8464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test449;
begin
  // ld2.b { v4, v5 }[13], [x3].
  FInsn.OpCode := $4D601464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test450;
begin
  // ld2.h { v4, v5 }[2], [x3].
  FInsn.OpCode := $0D605064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test451;
begin
  // ld2.s { v4, v5 }[2], [x3].
  FInsn.OpCode := $4D608064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test452;
begin
  // ld2.d { v4, v5 }[1], [x3].
  FInsn.OpCode := $4D608464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test453;
begin
  // ld2.b { v4, v5 }[13], [x3], x5.
  FInsn.OpCode := $4DE51464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test454;
begin
  // ld2.h { v4, v5 }[2], [x3], x5.
  FInsn.OpCode := $0DE55064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test455;
begin
  // ld2.s { v4, v5 }[2], [x3], x5.
  FInsn.OpCode := $4DE58064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test456;
begin
  // ld2.d { v4, v5 }[1], [x3], x5.
  FInsn.OpCode := $4DE58464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test457;
begin
  // ld2.b { v4, v5 }[13], [x3], #2.
  FInsn.OpCode := $4DFF1464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test458;
begin
  // ld2.h { v4, v5 }[2], [x3], #4.
  FInsn.OpCode := $0DFF5064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test459;
begin
  // ld2.s { v4, v5 }[2], [x3], #8.
  FInsn.OpCode := $4DFF8064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test460;
begin
  // ld2.d { v4, v5 }[1], [x3], #16.
  FInsn.OpCode := $4DFF8464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test461;
begin
  // ld3.b { v4, v5, v6 }[13], [x3].
  FInsn.OpCode := $4D403464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test462;
begin
  // ld3.h { v4, v5, v6 }[2], [x3].
  FInsn.OpCode := $0D407064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test463;
begin
  // ld3.s { v4, v5, v6 }[2], [x3].
  FInsn.OpCode := $4D40A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test464;
begin
  // ld3.d { v4, v5, v6 }[1], [x3].
  FInsn.OpCode := $4D40A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test465;
begin
  // ld3.b { v4, v5, v6 }[13], [x3], x5.
  FInsn.OpCode := $4DC53464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test466;
begin
  // ld3.h { v4, v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $0DC57064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test467;
begin
  // ld3.s { v4, v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $4DC5A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test468;
begin
  // ld3.d { v4, v5, v6 }[1], [x3], x5.
  FInsn.OpCode := $4DC5A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test469;
begin
  // ld3.b { v4, v5, v6 }[13], [x3], #3.
  FInsn.OpCode := $4DDF3464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test470;
begin
  // ld3.h { v4, v5, v6 }[2], [x3], #6.
  FInsn.OpCode := $0DDF7064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test471;
begin
  // ld3.s { v4, v5, v6 }[2], [x3], #12.
  FInsn.OpCode := $4DDFA064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test472;
begin
  // ld3.d { v4, v5, v6 }[1], [x3], #24.
  FInsn.OpCode := $4DDFA464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test473;
begin
  // ld4.b { v4, v5, v6, v7 }[13], [x3].
  FInsn.OpCode := $4D603464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test474;
begin
  // ld4.h { v4, v5, v6, v7 }[2], [x3].
  FInsn.OpCode := $0D607064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test475;
begin
  // ld4.s { v4, v5, v6, v7 }[2], [x3].
  FInsn.OpCode := $4D60A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test476;
begin
  // ld4.d { v4, v5, v6, v7 }[1], [x3].
  FInsn.OpCode := $4D60A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test477;
begin
  // ld4.b { v4, v5, v6, v7 }[13], [x3], x5.
  FInsn.OpCode := $4DE53464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test478;
begin
  // ld4.h { v4, v5, v6, v7 }[2], [x3], x5.
  FInsn.OpCode := $0DE57064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test479;
begin
  // ld4.s { v4, v5, v6, v7 }[2], [x3], x5.
  FInsn.OpCode := $4DE5A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test480;
begin
  // ld4.d { v4, v5, v6, v7 }[1], [x3], x5.
  FInsn.OpCode := $4DE5A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test481;
begin
  // ld4.b { v4, v5, v6, v7 }[13], [x3], #4.
  FInsn.OpCode := $4DFF3464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test482;
begin
  // ld4.h { v4, v5, v6, v7 }[2], [x3], #8.
  FInsn.OpCode := $0DFF7064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test483;
begin
  // ld4.s { v4, v5, v6, v7 }[2], [x3], #16.
  FInsn.OpCode := $4DFFA064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test484;
begin
  // ld4.d { v4, v5, v6, v7 }[1], [x3], #32.
  FInsn.OpCode := $4DFFA464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test485;
begin
  // st1.b { v4 }[13], [x3].
  FInsn.OpCode := $4D001464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test486;
begin
  // st1.h { v4 }[2], [x3].
  FInsn.OpCode := $0D005064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test487;
begin
  // st1.s { v4 }[2], [x3].
  FInsn.OpCode := $4D008064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test488;
begin
  // st1.d { v4 }[1], [x3].
  FInsn.OpCode := $4D008464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test489;
begin
  // st1.b { v4 }[13], [x3], x5.
  FInsn.OpCode := $4D851464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test490;
begin
  // st1.h { v4 }[2], [x3], x5.
  FInsn.OpCode := $0D855064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test491;
begin
  // st1.s { v4 }[2], [x3], x5.
  FInsn.OpCode := $4D858064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test492;
begin
  // st1.d { v4 }[1], [x3], x5.
  FInsn.OpCode := $4D858464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test493;
begin
  // st1.b { v4 }[13], [x3], #1.
  FInsn.OpCode := $4D9F1464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test494;
begin
  // st1.h { v4 }[2], [x3], #2.
  FInsn.OpCode := $0D9F5064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test495;
begin
  // st1.s { v4 }[2], [x3], #4.
  FInsn.OpCode := $4D9F8064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test496;
begin
  // st1.d { v4 }[1], [x3], #8.
  FInsn.OpCode := $4D9F8464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test497;
begin
  // st2.b { v4, v5 }[13], [x3].
  FInsn.OpCode := $4D201464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test498;
begin
  // st2.h { v4, v5 }[2], [x3].
  FInsn.OpCode := $0D205064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test499;
begin
  // st2.s { v4, v5 }[2], [x3].
  FInsn.OpCode := $4D208064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test500;
begin
  // st2.d { v4, v5 }[1], [x3].
  FInsn.OpCode := $4D208464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test501;
begin
  // st2.b { v4, v5 }[13], [x3], x5.
  FInsn.OpCode := $4DA51464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test502;
begin
  // st2.h { v4, v5 }[2], [x3], x5.
  FInsn.OpCode := $0DA55064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test503;
begin
  // st2.s { v4, v5 }[2], [x3], x5.
  FInsn.OpCode := $4DA58064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test504;
begin
  // st2.d { v4, v5 }[1], [x3], x5.
  FInsn.OpCode := $4DA58464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test505;
begin
  // st2.b { v4, v5 }[13], [x3], #2.
  FInsn.OpCode := $4DBF1464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test506;
begin
  // st2.h { v4, v5 }[2], [x3], #4.
  FInsn.OpCode := $0DBF5064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test507;
begin
  // st2.s { v4, v5 }[2], [x3], #8.
  FInsn.OpCode := $4DBF8064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test508;
begin
  // st2.d { v4, v5 }[1], [x3], #16.
  FInsn.OpCode := $4DBF8464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test509;
begin
  // st3.b { v4, v5, v6 }[13], [x3].
  FInsn.OpCode := $4D003464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test510;
begin
  // st3.h { v4, v5, v6 }[2], [x3].
  FInsn.OpCode := $0D007064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test511;
begin
  // st3.s { v4, v5, v6 }[2], [x3].
  FInsn.OpCode := $4D00A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test512;
begin
  // st3.d { v4, v5, v6 }[1], [x3].
  FInsn.OpCode := $4D00A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test513;
begin
  // st3.b { v4, v5, v6 }[13], [x3], x5.
  FInsn.OpCode := $4D853464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test514;
begin
  // st3.h { v4, v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $0D857064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test515;
begin
  // st3.s { v4, v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $4D85A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test516;
begin
  // st3.d { v4, v5, v6 }[1], [x3], x5.
  FInsn.OpCode := $4D85A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test517;
begin
  // st3.b { v4, v5, v6 }[13], [x3], #3.
  FInsn.OpCode := $4D9F3464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test518;
begin
  // st3.h { v4, v5, v6 }[2], [x3], #6.
  FInsn.OpCode := $0D9F7064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test519;
begin
  // st3.s { v4, v5, v6 }[2], [x3], #12.
  FInsn.OpCode := $4D9FA064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test520;
begin
  // st3.d { v4, v5, v6 }[1], [x3], #24.
  FInsn.OpCode := $4D9FA464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test521;
begin
  // st4.b { v4, v5, v6, v7 }[13], [x3].
  FInsn.OpCode := $4D203464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test522;
begin
  // st4.h { v4, v5, v6, v7 }[2], [x3].
  FInsn.OpCode := $0D207064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test523;
begin
  // st4.s { v4, v5, v6, v7 }[2], [x3].
  FInsn.OpCode := $4D20A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test524;
begin
  // st4.d { v4, v5, v6, v7 }[1], [x3].
  FInsn.OpCode := $4D20A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test525;
begin
  // st4.b { v4, v5, v6, v7 }[13], [x3], x5.
  FInsn.OpCode := $4DA53464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test526;
begin
  // st4.h { v4, v5, v6, v7 }[2], [x3], x5.
  FInsn.OpCode := $0DA57064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test527;
begin
  // st4.s { v4, v5, v6, v7 }[2], [x3], x5.
  FInsn.OpCode := $4DA5A064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test528;
begin
  // st4.d { v4, v5, v6, v7 }[1], [x3], x5.
  FInsn.OpCode := $4DA5A464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test529;
begin
  // st4.b { v4, v5, v6, v7 }[13], [x3], #4.
  FInsn.OpCode := $4DBF3464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test530;
begin
  // st4.h { v4, v5, v6, v7 }[2], [x3], #8.
  FInsn.OpCode := $0DBF7064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test531;
begin
  // st4.s { v4, v5, v6, v7 }[2], [x3], #16.
  FInsn.OpCode := $4DBFA064;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test532;
begin
  // st4.d { v4, v5, v6, v7 }[1], [x3], #32.
  FInsn.OpCode := $4DBFA464;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test533;
begin
  // ld1.8b { v1 }, [x1].
  FInsn.OpCode := $0C407021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test534;
begin
  // ld1.8b { v2, v3 }, [x1].
  FInsn.OpCode := $0C40A022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test535;
begin
  // ld1.8b { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C406023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test536;
begin
  // ld1.8b { v4, v5, v6, v7 }, [x1].
  FInsn.OpCode := $0C402024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test537;
begin
  // ld1.16b { v1 }, [x1].
  FInsn.OpCode := $4C407021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test538;
begin
  // ld1.16b { v2, v3 }, [x1].
  FInsn.OpCode := $4C40A022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test539;
begin
  // ld1.16b { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C406023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test540;
begin
  // ld1.16b { v4, v5, v6, v7 }, [x1].
  FInsn.OpCode := $4C402024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test541;
begin
  // ld1.4h { v1 }, [x1].
  FInsn.OpCode := $0C407421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test542;
begin
  // ld1.4h { v2, v3 }, [x1].
  FInsn.OpCode := $0C40A422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test543;
begin
  // ld1.4h { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C406423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test544;
begin
  // ld1.4h { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $0C402427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test545;
begin
  // ld1.8h { v1 }, [x1].
  FInsn.OpCode := $4C407421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test546;
begin
  // ld1.8h { v2, v3 }, [x1].
  FInsn.OpCode := $4C40A422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test547;
begin
  // ld1.8h { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C406423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test548;
begin
  // ld1.8h { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $4C402427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test549;
begin
  // ld1.2s { v1 }, [x1].
  FInsn.OpCode := $0C407821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test550;
begin
  // ld1.2s { v2, v3 }, [x1].
  FInsn.OpCode := $0C40A822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test551;
begin
  // ld1.2s { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C406823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test552;
begin
  // ld1.2s { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $0C402827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test553;
begin
  // ld1.4s { v1 }, [x1].
  FInsn.OpCode := $4C407821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test554;
begin
  // ld1.4s { v2, v3 }, [x1].
  FInsn.OpCode := $4C40A822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test555;
begin
  // ld1.4s { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C406823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test556;
begin
  // ld1.4s { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $4C402827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test557;
begin
  // ld1.1d { v1 }, [x1].
  FInsn.OpCode := $0C407C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test558;
begin
  // ld1.1d { v2, v3 }, [x1].
  FInsn.OpCode := $0C40AC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test559;
begin
  // ld1.1d { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C406C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test560;
begin
  // ld1.1d { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $0C402C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test561;
begin
  // ld1.2d { v1 }, [x1].
  FInsn.OpCode := $4C407C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test562;
begin
  // ld1.2d { v2, v3 }, [x1].
  FInsn.OpCode := $4C40AC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test563;
begin
  // ld1.2d { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C406C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test564;
begin
  // ld1.2d { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $4C402C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test565;
begin
  // st1.8b { v1 }, [x1].
  FInsn.OpCode := $0C007021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test566;
begin
  // st1.8b { v2, v3 }, [x1].
  FInsn.OpCode := $0C00A022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test567;
begin
  // st1.8b { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C006023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test568;
begin
  // st1.8b { v4, v5, v6, v7 }, [x1].
  FInsn.OpCode := $0C002024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test569;
begin
  // st1.16b { v1 }, [x1].
  FInsn.OpCode := $4C007021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test570;
begin
  // st1.16b { v2, v3 }, [x1].
  FInsn.OpCode := $4C00A022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test571;
begin
  // st1.16b { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C006023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test572;
begin
  // st1.16b { v4, v5, v6, v7 }, [x1].
  FInsn.OpCode := $4C002024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test573;
begin
  // st1.4h { v1 }, [x1].
  FInsn.OpCode := $0C007421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test574;
begin
  // st1.4h { v2, v3 }, [x1].
  FInsn.OpCode := $0C00A422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test575;
begin
  // st1.4h { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C006423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test576;
begin
  // st1.4h { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $0C002427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test577;
begin
  // st1.8h { v1 }, [x1].
  FInsn.OpCode := $4C007421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test578;
begin
  // st1.8h { v2, v3 }, [x1].
  FInsn.OpCode := $4C00A422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test579;
begin
  // st1.8h { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C006423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test580;
begin
  // st1.8h { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $4C002427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test581;
begin
  // st1.2s { v1 }, [x1].
  FInsn.OpCode := $0C007821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test582;
begin
  // st1.2s { v2, v3 }, [x1].
  FInsn.OpCode := $0C00A822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test583;
begin
  // st1.2s { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C006823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test584;
begin
  // st1.2s { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $0C002827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test585;
begin
  // st1.4s { v1 }, [x1].
  FInsn.OpCode := $4C007821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test586;
begin
  // st1.4s { v2, v3 }, [x1].
  FInsn.OpCode := $4C00A822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test587;
begin
  // st1.4s { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C006823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test588;
begin
  // st1.4s { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $4C002827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test589;
begin
  // st1.1d { v1 }, [x1].
  FInsn.OpCode := $0C007C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test590;
begin
  // st1.1d { v2, v3 }, [x1].
  FInsn.OpCode := $0C00AC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test591;
begin
  // st1.1d { v3, v4, v5 }, [x1].
  FInsn.OpCode := $0C006C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test592;
begin
  // st1.1d { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $0C002C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test593;
begin
  // st1.2d { v1 }, [x1].
  FInsn.OpCode := $4C007C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test594;
begin
  // st1.2d { v2, v3 }, [x1].
  FInsn.OpCode := $4C00AC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test595;
begin
  // st1.2d { v3, v4, v5 }, [x1].
  FInsn.OpCode := $4C006C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test596;
begin
  // st1.2d { v7, v8, v9, v10 }, [x1].
  FInsn.OpCode := $4C002C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TSIMDLdstTest.Test597;
begin
  // ld2.8b { v3, v4 }, [x19].
  FInsn.OpCode := $0C408263;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test598;
begin
  // ld2.16b { v3, v4 }, [x19].
  FInsn.OpCode := $4C408263;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test599;
begin
  // ld2.4h { v3, v4 }, [x19].
  FInsn.OpCode := $0C408663;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test600;
begin
  // ld2.8h { v3, v4 }, [x19].
  FInsn.OpCode := $4C408663;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test601;
begin
  // ld2.2s { v3, v4 }, [x19].
  FInsn.OpCode := $0C408A63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test602;
begin
  // ld2.4s { v3, v4 }, [x19].
  FInsn.OpCode := $4C408A63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test603;
begin
  // ld2.2d { v3, v4 }, [x19].
  FInsn.OpCode := $4C408E63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test604;
begin
  // st2.8b { v3, v4 }, [x19].
  FInsn.OpCode := $0C008263;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test605;
begin
  // st2.16b { v3, v4 }, [x19].
  FInsn.OpCode := $4C008263;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test606;
begin
  // st2.4h { v3, v4 }, [x19].
  FInsn.OpCode := $0C008663;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test607;
begin
  // st2.8h { v3, v4 }, [x19].
  FInsn.OpCode := $4C008663;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test608;
begin
  // st2.2s { v3, v4 }, [x19].
  FInsn.OpCode := $0C008A63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test609;
begin
  // st2.4s { v3, v4 }, [x19].
  FInsn.OpCode := $4C008A63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test610;
begin
  // st2.2d { v3, v4 }, [x19].
  FInsn.OpCode := $4C008E63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test611;
begin
  // ld3.8b { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C404262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test612;
begin
  // ld3.16b { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C404262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test613;
begin
  // ld3.4h { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C404662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test614;
begin
  // ld3.8h { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C404662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test615;
begin
  // ld3.2s { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C404A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test616;
begin
  // ld3.4s { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C404A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test617;
begin
  // ld3.2d { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C404E62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test618;
begin
  // st3.8b { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C004262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test619;
begin
  // st3.16b { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C004262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test620;
begin
  // st3.4h { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C004662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test621;
begin
  // st3.8h { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C004662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test622;
begin
  // st3.2s { v2, v3, v4 }, [x19].
  FInsn.OpCode := $0C004A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test623;
begin
  // st3.4s { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C004A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test624;
begin
  // st3.2d { v2, v3, v4 }, [x19].
  FInsn.OpCode := $4C004E62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test625;
begin
  // ld4.8b { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $0C400262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test626;
begin
  // ld4.16b { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C400262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test627;
begin
  // ld4.4h { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $0C400662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test628;
begin
  // ld4.8h { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C400662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test629;
begin
  // ld4.2s { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $0C400A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test630;
begin
  // ld4.4s { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C400A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test631;
begin
  // ld4.2d { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C400E62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test632;
begin
  // st4.8b { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $0C000262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test633;
begin
  // st4.16b { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C000262;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test634;
begin
  // st4.4h { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $0C000662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test635;
begin
  // st4.8h { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C000662;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test636;
begin
  // st4.2s { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $0C000A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test637;
begin
  // st4.4s { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C000A62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test638;
begin
  // st4.2d { v2, v3, v4, v5 }, [x19].
  FInsn.OpCode := $4C000E62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
end;

procedure TSIMDLdstTest.Test639;
begin
  // ld1.8b { v1 }, [x1], x15.
  FInsn.OpCode := $0CCF7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test640;
begin
  // ld1.8b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCFA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test641;
begin
  // ld1.8b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test642;
begin
  // ld1.8b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $0CCF2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test643;
begin
  // ld1.16b { v1 }, [x1], x15.
  FInsn.OpCode := $4CCF7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test644;
begin
  // ld1.16b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCFA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test645;
begin
  // ld1.16b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test646;
begin
  // ld1.16b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $4CCF2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test647;
begin
  // ld1.4h { v1 }, [x1], x15.
  FInsn.OpCode := $0CCF7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test648;
begin
  // ld1.4h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCFA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test649;
begin
  // ld1.4h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test650;
begin
  // ld1.4h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0CCF2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test651;
begin
  // ld1.8h { v1 }, [x1], x15.
  FInsn.OpCode := $4CCF7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test652;
begin
  // ld1.8h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCFA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test653;
begin
  // ld1.8h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test654;
begin
  // ld1.8h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4CCF2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test655;
begin
  // ld1.2s { v1 }, [x1], x15.
  FInsn.OpCode := $0CCF7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test656;
begin
  // ld1.2s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCFA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test657;
begin
  // ld1.2s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test658;
begin
  // ld1.2s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0CCF2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test659;
begin
  // ld1.4s { v1 }, [x1], x15.
  FInsn.OpCode := $4CCF7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test660;
begin
  // ld1.4s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCFA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test661;
begin
  // ld1.4s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test662;
begin
  // ld1.4s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4CCF2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test663;
begin
  // ld1.1d { v1 }, [x1], x15.
  FInsn.OpCode := $0CCF7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test664;
begin
  // ld1.1d { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCFAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test665;
begin
  // ld1.1d { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test666;
begin
  // ld1.1d { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0CCF2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test667;
begin
  // ld1.2d { v1 }, [x1], x15.
  FInsn.OpCode := $4CCF7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test668;
begin
  // ld1.2d { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCFAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test669;
begin
  // ld1.2d { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test670;
begin
  // ld1.2d { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4CCF2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test671;
begin
  // st1.8b { v1 }, [x1], x15.
  FInsn.OpCode := $0C8F7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test672;
begin
  // st1.8b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8FA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test673;
begin
  // st1.8b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test674;
begin
  // st1.8b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $0C8F2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test675;
begin
  // st1.16b { v1 }, [x1], x15.
  FInsn.OpCode := $4C8F7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test676;
begin
  // st1.16b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8FA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test677;
begin
  // st1.16b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test678;
begin
  // st1.16b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $4C8F2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test679;
begin
  // st1.4h { v1 }, [x1], x15.
  FInsn.OpCode := $0C8F7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test680;
begin
  // st1.4h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8FA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test681;
begin
  // st1.4h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test682;
begin
  // st1.4h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0C8F2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test683;
begin
  // st1.8h { v1 }, [x1], x15.
  FInsn.OpCode := $4C8F7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test684;
begin
  // st1.8h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8FA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test685;
begin
  // st1.8h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test686;
begin
  // st1.8h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4C8F2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test687;
begin
  // st1.2s { v1 }, [x1], x15.
  FInsn.OpCode := $0C8F7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test688;
begin
  // st1.2s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8FA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test689;
begin
  // st1.2s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test690;
begin
  // st1.2s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0C8F2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test691;
begin
  // st1.4s { v1 }, [x1], x15.
  FInsn.OpCode := $4C8F7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test692;
begin
  // st1.4s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8FA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test693;
begin
  // st1.4s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test694;
begin
  // st1.4s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4C8F2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test695;
begin
  // st1.1d { v1 }, [x1], x15.
  FInsn.OpCode := $0C8F7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test696;
begin
  // st1.1d { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8FAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test697;
begin
  // st1.1d { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test698;
begin
  // st1.1d { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0C8F2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test699;
begin
  // st1.2d { v1 }, [x1], x15.
  FInsn.OpCode := $4C8F7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test700;
begin
  // st1.2d { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8FAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test701;
begin
  // st1.2d { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test702;
begin
  // st1.2d { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4C8F2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test703;
begin
  // ld1.8b { v1 }, [x1], #8.
  FInsn.OpCode := $0CDF7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test704;
begin
  // ld1.8b { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDFA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test705;
begin
  // ld1.8b { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test706;
begin
  // ld1.8b { v4, v5, v6, v7 }, [x1], #32.
  FInsn.OpCode := $0CDF2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test707;
begin
  // ld1.16b { v1 }, [x1], #16.
  FInsn.OpCode := $4CDF7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test708;
begin
  // ld1.16b { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDFA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test709;
begin
  // ld1.16b { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test710;
begin
  // ld1.16b { v4, v5, v6, v7 }, [x1], #64.
  FInsn.OpCode := $4CDF2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test711;
begin
  // ld1.4h { v1 }, [x1], #8.
  FInsn.OpCode := $0CDF7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test712;
begin
  // ld1.4h { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDFA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test713;
begin
  // ld1.4h { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test714;
begin
  // ld1.4h { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0CDF2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test715;
begin
  // ld1.8h { v1 }, [x1], #16.
  FInsn.OpCode := $4CDF7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test716;
begin
  // ld1.8h { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDFA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test717;
begin
  // ld1.8h { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test718;
begin
  // ld1.8h { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4CDF2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test719;
begin
  // ld1.2s { v1 }, [x1], #8.
  FInsn.OpCode := $0CDF7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test720;
begin
  // ld1.2s { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDFA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test721;
begin
  // ld1.2s { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test722;
begin
  // ld1.2s { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0CDF2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test723;
begin
  // ld1.4s { v1 }, [x1], #16.
  FInsn.OpCode := $4CDF7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test724;
begin
  // ld1.4s { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDFA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test725;
begin
  // ld1.4s { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test726;
begin
  // ld1.4s { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4CDF2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test727;
begin
  // ld1.1d { v1 }, [x1], #8.
  FInsn.OpCode := $0CDF7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test728;
begin
  // ld1.1d { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDFAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test729;
begin
  // ld1.1d { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test730;
begin
  // ld1.1d { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0CDF2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test731;
begin
  // ld1.2d { v1 }, [x1], #16.
  FInsn.OpCode := $4CDF7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test732;
begin
  // ld1.2d { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDFAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test733;
begin
  // ld1.2d { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test734;
begin
  // ld1.2d { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4CDF2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test735;
begin
  // st1.8b { v1 }, [x1], #8.
  FInsn.OpCode := $0C9F7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test736;
begin
  // st1.8b { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9FA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test737;
begin
  // st1.8b { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test738;
begin
  // st1.8b { v4, v5, v6, v7 }, [x1], #32.
  FInsn.OpCode := $0C9F2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test739;
begin
  // st1.16b { v1 }, [x1], #16.
  FInsn.OpCode := $4C9F7021;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test740;
begin
  // st1.16b { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9FA022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test741;
begin
  // st1.16b { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F6023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test742;
begin
  // st1.16b { v4, v5, v6, v7 }, [x1], #64.
  FInsn.OpCode := $4C9F2024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test743;
begin
  // st1.4h { v1 }, [x1], #8.
  FInsn.OpCode := $0C9F7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test744;
begin
  // st1.4h { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9FA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test745;
begin
  // st1.4h { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test746;
begin
  // st1.4h { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0C9F2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test747;
begin
  // st1.8h { v1 }, [x1], #16.
  FInsn.OpCode := $4C9F7421;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test748;
begin
  // st1.8h { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9FA422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test749;
begin
  // st1.8h { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F6423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test750;
begin
  // st1.8h { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4C9F2427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test751;
begin
  // st1.2s { v1 }, [x1], #8.
  FInsn.OpCode := $0C9F7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test752;
begin
  // st1.2s { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9FA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test753;
begin
  // st1.2s { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test754;
begin
  // st1.2s { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0C9F2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test755;
begin
  // st1.4s { v1 }, [x1], #16.
  FInsn.OpCode := $4C9F7821;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test756;
begin
  // st1.4s { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9FA822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test757;
begin
  // st1.4s { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F6823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test758;
begin
  // st1.4s { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4C9F2827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test759;
begin
  // st1.1d { v1 }, [x1], #8.
  FInsn.OpCode := $0C9F7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test760;
begin
  // st1.1d { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9FAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test761;
begin
  // st1.1d { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test762;
begin
  // st1.1d { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0C9F2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test763;
begin
  // st1.2d { v1 }, [x1], #16.
  FInsn.OpCode := $4C9F7C21;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test764;
begin
  // st1.2d { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9FAC22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test765;
begin
  // st1.2d { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F6C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test766;
begin
  // st1.2d { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4C9F2C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test767;
begin
  // ld2.8b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test768;
begin
  // ld2.16b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test769;
begin
  // ld2.4h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test770;
begin
  // ld2.8h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test771;
begin
  // ld2.2s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0CCF8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test772;
begin
  // ld2.4s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test773;
begin
  // ld2.2d { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4CCF8C22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test774;
begin
  // st2.8b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test775;
begin
  // st2.16b { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test776;
begin
  // st2.4h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test777;
begin
  // st2.8h { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test778;
begin
  // st2.2s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $0C8F8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test779;
begin
  // st2.4s { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test780;
begin
  // st2.2d { v2, v3 }, [x1], x15.
  FInsn.OpCode := $4C8F8C22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test781;
begin
  // ld2.8b { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDF8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test782;
begin
  // ld2.16b { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDF8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test783;
begin
  // ld2.4h { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDF8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test784;
begin
  // ld2.8h { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDF8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test785;
begin
  // ld2.2s { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0CDF8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test786;
begin
  // ld2.4s { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDF8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test787;
begin
  // ld2.2d { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4CDF8C22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test788;
begin
  // st2.8b { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9F8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test789;
begin
  // st2.16b { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9F8022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test790;
begin
  // st2.4h { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9F8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test791;
begin
  // st2.8h { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9F8422;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test792;
begin
  // st2.2s { v2, v3 }, [x1], #16.
  FInsn.OpCode := $0C9F8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test793;
begin
  // st2.4s { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9F8822;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test794;
begin
  // st2.2d { v2, v3 }, [x1], #32.
  FInsn.OpCode := $4C9F8C22;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test795;
begin
  // ld3.8b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test796;
begin
  // ld3.16b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test797;
begin
  // ld3.4h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test798;
begin
  // ld3.8h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test799;
begin
  // ld3.2s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0CCF4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test800;
begin
  // ld3.4s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test801;
begin
  // ld3.2d { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4CCF4C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test802;
begin
  // st3.8b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test803;
begin
  // st3.16b { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test804;
begin
  // st3.4h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test805;
begin
  // st3.8h { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test806;
begin
  // st3.2s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $0C8F4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test807;
begin
  // st3.4s { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test808;
begin
  // st3.2d { v3, v4, v5 }, [x1], x15.
  FInsn.OpCode := $4C8F4C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test809;
begin
  // ld3.8b { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test810;
begin
  // ld3.16b { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test811;
begin
  // ld3.4h { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test812;
begin
  // ld3.8h { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test813;
begin
  // ld3.2s { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0CDF4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test814;
begin
  // ld3.4s { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test815;
begin
  // ld3.2d { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4CDF4C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test816;
begin
  // st3.8b { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test817;
begin
  // st3.16b { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F4023;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test818;
begin
  // st3.4h { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test819;
begin
  // st3.8h { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F4423;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test820;
begin
  // st3.2s { v3, v4, v5 }, [x1], #24.
  FInsn.OpCode := $0C9F4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test821;
begin
  // st3.4s { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F4823;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test822;
begin
  // st3.2d { v3, v4, v5 }, [x1], #48.
  FInsn.OpCode := $4C9F4C23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(48));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test823;
begin
  // ld4.8b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $0CCF0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test824;
begin
  // ld4.16b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $4CCF0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test825;
begin
  // ld4.4h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0CCF0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test826;
begin
  // ld4.8h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4CCF0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test827;
begin
  // ld4.2s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0CCF0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test828;
begin
  // ld4.4s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4CCF0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test829;
begin
  // ld4.2d { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4CCF0C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test830;
begin
  // st4.8b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $0C8F0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test831;
begin
  // st4.16b { v4, v5, v6, v7 }, [x1], x15.
  FInsn.OpCode := $4C8F0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test832;
begin
  // st4.4h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0C8F0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test833;
begin
  // st4.8h { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4C8F0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test834;
begin
  // st4.2s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $0C8F0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test835;
begin
  // st4.4s { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4C8F0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test836;
begin
  // st4.2d { v7, v8, v9, v10 }, [x1], x15.
  FInsn.OpCode := $4C8F0C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X15);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test837;
begin
  // ld4.8b { v4, v5, v6, v7 }, [x1], #32.
  FInsn.OpCode := $0CDF0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test838;
begin
  // ld4.16b { v4, v5, v6, v7 }, [x1], #64.
  FInsn.OpCode := $4CDF0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test839;
begin
  // ld4.4h { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0CDF0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test840;
begin
  // ld4.8h { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4CDF0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test841;
begin
  // ld4.2s { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0CDF0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test842;
begin
  // ld4.4s { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4CDF0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test843;
begin
  // ld4.2d { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4CDF0C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test844;
begin
  // st4.8b { v4, v5, v6, v7 }, [x1], #32.
  FInsn.OpCode := $0C9F0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test845;
begin
  // st4.16b { v4, v5, v6, v7 }, [x1], #64.
  FInsn.OpCode := $4C9F0024;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test846;
begin
  // st4.4h { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0C9F0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test847;
begin
  // st4.8h { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4C9F0427;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test848;
begin
  // st4.2s { v7, v8, v9, v10 }, [x1], #32.
  FInsn.OpCode := $0C9F0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test849;
begin
  // st4.4s { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4C9F0827;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test850;
begin
  // st4.2d { v7, v8, v9, v10 }, [x1], #64.
  FInsn.OpCode := $4C9F0C27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(64));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test851;
begin
  // ld1r.8b { v12 }, [x2].
  FInsn.OpCode := $0D40C04C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test852;
begin
  // ld1r.8b { v12 }, [x2], x3.
  FInsn.OpCode := $0DC3C04C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test853;
begin
  // ld1r.16b { v12 }, [x2].
  FInsn.OpCode := $4D40C04C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test854;
begin
  // ld1r.16b { v12 }, [x2], x3.
  FInsn.OpCode := $4DC3C04C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test855;
begin
  // ld1r.4h { v12 }, [x2].
  FInsn.OpCode := $0D40C44C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test856;
begin
  // ld1r.4h { v12 }, [x2], x3.
  FInsn.OpCode := $0DC3C44C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test857;
begin
  // ld1r.8h { v12 }, [x2].
  FInsn.OpCode := $4D40C44C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test858;
begin
  // ld1r.8h { v12 }, [x2], x3.
  FInsn.OpCode := $4DC3C44C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test859;
begin
  // ld1r.2s { v12 }, [x2].
  FInsn.OpCode := $0D40C84C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test860;
begin
  // ld1r.2s { v12 }, [x2], x3.
  FInsn.OpCode := $0DC3C84C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test861;
begin
  // ld1r.4s { v12 }, [x2].
  FInsn.OpCode := $4D40C84C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test862;
begin
  // ld1r.4s { v12 }, [x2], x3.
  FInsn.OpCode := $4DC3C84C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test863;
begin
  // ld1r.1d { v12 }, [x2].
  FInsn.OpCode := $0D40CC4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test864;
begin
  // ld1r.1d { v12 }, [x2], x3.
  FInsn.OpCode := $0DC3CC4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test865;
begin
  // ld1r.2d { v12 }, [x2].
  FInsn.OpCode := $4D40CC4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test866;
begin
  // ld1r.2d { v12 }, [x2], x3.
  FInsn.OpCode := $4DC3CC4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test867;
begin
  // ld1r.8b { v12 }, [x2], #1.
  FInsn.OpCode := $0DDFC04C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test868;
begin
  // ld1r.16b { v12 }, [x2], #1.
  FInsn.OpCode := $4DDFC04C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test869;
begin
  // ld1r.4h { v12 }, [x2], #2.
  FInsn.OpCode := $0DDFC44C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test870;
begin
  // ld1r.8h { v12 }, [x2], #2.
  FInsn.OpCode := $4DDFC44C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test871;
begin
  // ld1r.2s { v12 }, [x2], #4.
  FInsn.OpCode := $0DDFC84C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test872;
begin
  // ld1r.4s { v12 }, [x2], #4.
  FInsn.OpCode := $4DDFC84C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test873;
begin
  // ld1r.1d { v12 }, [x2], #8.
  FInsn.OpCode := $0DDFCC4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test874;
begin
  // ld1r.2d { v12 }, [x2], #8.
  FInsn.OpCode := $4DDFCC4C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test875;
begin
  // ld2r.8b { v3, v4 }, [x2].
  FInsn.OpCode := $0D60C043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test876;
begin
  // ld2r.8b { v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DE3C043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test877;
begin
  // ld2r.16b { v3, v4 }, [x2].
  FInsn.OpCode := $4D60C043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test878;
begin
  // ld2r.16b { v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DE3C043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test879;
begin
  // ld2r.4h { v3, v4 }, [x2].
  FInsn.OpCode := $0D60C443;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test880;
begin
  // ld2r.4h { v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DE3C443;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test881;
begin
  // ld2r.8h { v3, v4 }, [x2].
  FInsn.OpCode := $4D60C443;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test882;
begin
  // ld2r.8h { v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DE3C443;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test883;
begin
  // ld2r.2s { v3, v4 }, [x2].
  FInsn.OpCode := $0D60C843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test884;
begin
  // ld2r.2s { v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DE3C843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test885;
begin
  // ld2r.4s { v3, v4 }, [x2].
  FInsn.OpCode := $4D60C843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test886;
begin
  // ld2r.4s { v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DE3C843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test887;
begin
  // ld2r.1d { v3, v4 }, [x2].
  FInsn.OpCode := $0D60CC43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test888;
begin
  // ld2r.1d { v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DE3CC43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test889;
begin
  // ld2r.2d { v3, v4 }, [x2].
  FInsn.OpCode := $4D60CC43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test890;
begin
  // ld2r.2d { v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DE3CC43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test891;
begin
  // ld2r.8b { v3, v4 }, [x2], #2.
  FInsn.OpCode := $0DFFC043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test892;
begin
  // ld2r.16b { v3, v4 }, [x2], #2.
  FInsn.OpCode := $4DFFC043;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test893;
begin
  // ld2r.4h { v3, v4 }, [x2], #4.
  FInsn.OpCode := $0DFFC443;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test894;
begin
  // ld2r.8h { v3, v4 }, [x2], #4.
  FInsn.OpCode := $4DFFC443;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test895;
begin
  // ld2r.2s { v3, v4 }, [x2], #8.
  FInsn.OpCode := $0DFFC843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test896;
begin
  // ld2r.4s { v3, v4 }, [x2], #8.
  FInsn.OpCode := $4DFFC843;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test897;
begin
  // ld2r.1d { v3, v4 }, [x2], #16.
  FInsn.OpCode := $0DFFCC43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test898;
begin
  // ld2r.2d { v3, v4 }, [x2], #16.
  FInsn.OpCode := $4DFFCC43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test899;
begin
  // ld3r.8b { v2, v3, v4 }, [x2].
  FInsn.OpCode := $0D40E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test900;
begin
  // ld3r.8b { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DC3E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test901;
begin
  // ld3r.16b { v2, v3, v4 }, [x2].
  FInsn.OpCode := $4D40E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test902;
begin
  // ld3r.16b { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DC3E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test903;
begin
  // ld3r.4h { v2, v3, v4 }, [x2].
  FInsn.OpCode := $0D40E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test904;
begin
  // ld3r.4h { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DC3E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test905;
begin
  // ld3r.8h { v2, v3, v4 }, [x2].
  FInsn.OpCode := $4D40E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test906;
begin
  // ld3r.8h { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DC3E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test907;
begin
  // ld3r.2s { v2, v3, v4 }, [x2].
  FInsn.OpCode := $0D40E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test908;
begin
  // ld3r.2s { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DC3E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test909;
begin
  // ld3r.4s { v2, v3, v4 }, [x2].
  FInsn.OpCode := $4D40E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test910;
begin
  // ld3r.4s { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DC3E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test911;
begin
  // ld3r.1d { v2, v3, v4 }, [x2].
  FInsn.OpCode := $0D40EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test912;
begin
  // ld3r.1d { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $0DC3EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test913;
begin
  // ld3r.2d { v2, v3, v4 }, [x2].
  FInsn.OpCode := $4D40EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test914;
begin
  // ld3r.2d { v2, v3, v4 }, [x2], x3.
  FInsn.OpCode := $4DC3EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test915;
begin
  // ld3r.8b { v2, v3, v4 }, [x2], #3.
  FInsn.OpCode := $0DDFE042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test916;
begin
  // ld3r.16b { v2, v3, v4 }, [x2], #3.
  FInsn.OpCode := $4DDFE042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test917;
begin
  // ld3r.4h { v2, v3, v4 }, [x2], #6.
  FInsn.OpCode := $0DDFE442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test918;
begin
  // ld3r.8h { v2, v3, v4 }, [x2], #6.
  FInsn.OpCode := $4DDFE442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test919;
begin
  // ld3r.2s { v2, v3, v4 }, [x2], #12.
  FInsn.OpCode := $0DDFE842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test920;
begin
  // ld3r.4s { v2, v3, v4 }, [x2], #12.
  FInsn.OpCode := $4DDFE842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test921;
begin
  // ld3r.1d { v2, v3, v4 }, [x2], #24.
  FInsn.OpCode := $0DDFEC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test922;
begin
  // ld3r.2d { v2, v3, v4 }, [x2], #24.
  FInsn.OpCode := $4DDFEC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test923;
begin
  // ld4r.8b { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $0D60E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test924;
begin
  // ld4r.8b { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test925;
begin
  // ld4r.16b { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $4D60E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test926;
begin
  // ld4r.16b { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3E042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test927;
begin
  // ld4r.4h { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $0D60E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test928;
begin
  // ld4r.4h { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test929;
begin
  // ld4r.8h { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $4D60E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test930;
begin
  // ld4r.8h { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3E442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test931;
begin
  // ld4r.2s { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $0D60E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test932;
begin
  // ld4r.2s { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test933;
begin
  // ld4r.4s { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $4D60E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test934;
begin
  // ld4r.4s { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3E842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test935;
begin
  // ld4r.1d { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $0D60EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test936;
begin
  // ld4r.1d { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $0DE3EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test937;
begin
  // ld4r.2d { v2, v3, v4, v5 }, [x2].
  FInsn.OpCode := $4D60EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TSIMDLdstTest.Test938;
begin
  // ld4r.2d { v2, v3, v4, v5 }, [x2], x3.
  FInsn.OpCode := $4DE3EC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test939;
begin
  // ld4r.8b { v2, v3, v4, v5 }, [x2], #4.
  FInsn.OpCode := $0DFFE042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test940;
begin
  // ld4r.16b { v2, v3, v4, v5 }, [x2], #4.
  FInsn.OpCode := $4DFFE042;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test941;
begin
  // ld4r.4h { v2, v3, v4, v5 }, [x2], #8.
  FInsn.OpCode := $0DFFE442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test942;
begin
  // ld4r.8h { v2, v3, v4, v5 }, [x2], #8.
  FInsn.OpCode := $4DFFE442;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test943;
begin
  // ld4r.2s { v2, v3, v4, v5 }, [x2], #16.
  FInsn.OpCode := $0DFFE842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test944;
begin
  // ld4r.4s { v2, v3, v4, v5 }, [x2], #16.
  FInsn.OpCode := $4DFFE842;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test945;
begin
  // ld4r.1d { v2, v3, v4, v5 }, [x2], #32.
  FInsn.OpCode := $0DFFEC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test946;
begin
  // ld4r.2d { v2, v3, v4, v5 }, [x2], #32.
  FInsn.OpCode := $4DFFEC42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4R);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test947;
begin
  // ld1.b { v6 }[13], [x3].
  FInsn.OpCode := $4D401466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test948;
begin
  // ld1.h { v6 }[2], [x3].
  FInsn.OpCode := $0D405066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test949;
begin
  // ld1.s { v6 }[2], [x3].
  FInsn.OpCode := $4D408066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test950;
begin
  // ld1.d { v6 }[1], [x3].
  FInsn.OpCode := $4D408466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test951;
begin
  // ld1.b { v6 }[13], [x3], x5.
  FInsn.OpCode := $4DC51466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test952;
begin
  // ld1.h { v6 }[2], [x3], x5.
  FInsn.OpCode := $0DC55066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test953;
begin
  // ld1.s { v6 }[2], [x3], x5.
  FInsn.OpCode := $4DC58066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test954;
begin
  // ld1.d { v6 }[1], [x3], x5.
  FInsn.OpCode := $4DC58466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test955;
begin
  // ld1.b { v6 }[13], [x3], #1.
  FInsn.OpCode := $4DDF1466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test956;
begin
  // ld1.h { v6 }[2], [x3], #2.
  FInsn.OpCode := $0DDF5066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test957;
begin
  // ld1.s { v6 }[2], [x3], #4.
  FInsn.OpCode := $4DDF8066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test958;
begin
  // ld1.d { v6 }[1], [x3], #8.
  FInsn.OpCode := $4DDF8466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test959;
begin
  // ld2.b { v5, v6 }[13], [x3].
  FInsn.OpCode := $4D601465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test960;
begin
  // ld2.h { v5, v6 }[2], [x3].
  FInsn.OpCode := $0D605065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test961;
begin
  // ld2.s { v5, v6 }[2], [x3].
  FInsn.OpCode := $4D608065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test962;
begin
  // ld2.d { v5, v6 }[1], [x3].
  FInsn.OpCode := $4D608465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test963;
begin
  // ld2.b { v5, v6 }[13], [x3], x5.
  FInsn.OpCode := $4DE51465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test964;
begin
  // ld2.h { v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $0DE55065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test965;
begin
  // ld2.s { v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $4DE58065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test966;
begin
  // ld2.d { v5, v6 }[1], [x3], x5.
  FInsn.OpCode := $4DE58465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test967;
begin
  // ld2.b { v5, v6 }[13], [x3], #2.
  FInsn.OpCode := $4DFF1465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test968;
begin
  // ld2.h { v5, v6 }[2], [x3], #4.
  FInsn.OpCode := $0DFF5065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test969;
begin
  // ld2.s { v5, v6 }[2], [x3], #8.
  FInsn.OpCode := $4DFF8065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test970;
begin
  // ld2.d { v5, v6 }[1], [x3], #16.
  FInsn.OpCode := $4DFF8465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test971;
begin
  // ld3.b { v7, v8, v9 }[13], [x3].
  FInsn.OpCode := $4D403467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test972;
begin
  // ld3.h { v7, v8, v9 }[2], [x3].
  FInsn.OpCode := $0D407067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test973;
begin
  // ld3.s { v7, v8, v9 }[2], [x3].
  FInsn.OpCode := $4D40A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test974;
begin
  // ld3.d { v7, v8, v9 }[1], [x3].
  FInsn.OpCode := $4D40A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test975;
begin
  // ld3.b { v7, v8, v9 }[13], [x3], x5.
  FInsn.OpCode := $4DC53467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test976;
begin
  // ld3.h { v7, v8, v9 }[2], [x3], x5.
  FInsn.OpCode := $0DC57067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test977;
begin
  // ld3.s { v7, v8, v9 }[2], [x3], x5.
  FInsn.OpCode := $4DC5A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test978;
begin
  // ld3.d { v7, v8, v9 }[1], [x3], x5.
  FInsn.OpCode := $4DC5A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test979;
begin
  // ld3.b { v7, v8, v9 }[13], [x3], #3.
  FInsn.OpCode := $4DDF3467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test980;
begin
  // ld3.h { v7, v8, v9 }[2], [x3], #6.
  FInsn.OpCode := $0DDF7067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test981;
begin
  // ld3.s { v7, v8, v9 }[2], [x3], #12.
  FInsn.OpCode := $4DDFA067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test982;
begin
  // ld3.d { v7, v8, v9 }[1], [x3], #24.
  FInsn.OpCode := $4DDFA467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test983;
begin
  // ld4.b { v7, v8, v9, v10 }[13], [x3].
  FInsn.OpCode := $4D603467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test984;
begin
  // ld4.h { v7, v8, v9, v10 }[2], [x3].
  FInsn.OpCode := $0D607067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test985;
begin
  // ld4.s { v7, v8, v9, v10 }[2], [x3].
  FInsn.OpCode := $4D60A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test986;
begin
  // ld4.d { v7, v8, v9, v10 }[1], [x3].
  FInsn.OpCode := $4D60A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test987;
begin
  // ld4.b { v7, v8, v9, v10 }[13], [x3], x5.
  FInsn.OpCode := $4DE53467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test988;
begin
  // ld4.h { v7, v8, v9, v10 }[2], [x3], x5.
  FInsn.OpCode := $0DE57067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test989;
begin
  // ld4.s { v7, v8, v9, v10 }[2], [x3], x5.
  FInsn.OpCode := $4DE5A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test990;
begin
  // ld4.d { v7, v8, v9, v10 }[1], [x3], x5.
  FInsn.OpCode := $4DE5A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test991;
begin
  // ld4.b { v7, v8, v9, v10 }[13], [x3], #4.
  FInsn.OpCode := $4DFF3467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test992;
begin
  // ld4.h { v7, v8, v9, v10 }[2], [x3], #8.
  FInsn.OpCode := $0DFF7067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test993;
begin
  // ld4.s { v7, v8, v9, v10 }[2], [x3], #16.
  FInsn.OpCode := $4DFFA067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test994;
begin
  // ld4.d { v7, v8, v9, v10 }[1], [x3], #32.
  FInsn.OpCode := $4DFFA467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LD4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test995;
begin
  // st1.b { v6 }[13], [x3].
  FInsn.OpCode := $4D001466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test996;
begin
  // st1.h { v6 }[2], [x3].
  FInsn.OpCode := $0D005066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test997;
begin
  // st1.s { v6 }[2], [x3].
  FInsn.OpCode := $4D008066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test998;
begin
  // st1.d { v6 }[1], [x3].
  FInsn.OpCode := $4D008466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test999;
begin
  // st1.b { v6 }[13], [x3], x5.
  FInsn.OpCode := $4D851466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1000;
begin
  // st1.h { v6 }[2], [x3], x5.
  FInsn.OpCode := $0D855066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1001;
begin
  // st1.s { v6 }[2], [x3], x5.
  FInsn.OpCode := $4D858066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1002;
begin
  // st1.d { v6 }[1], [x3], x5.
  FInsn.OpCode := $4D858466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1003;
begin
  // st1.b { v6 }[13], [x3], #1.
  FInsn.OpCode := $4D9F1466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1004;
begin
  // st1.h { v6 }[2], [x3], #2.
  FInsn.OpCode := $0D9F5066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1005;
begin
  // st1.s { v6 }[2], [x3], #4.
  FInsn.OpCode := $4D9F8066;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1006;
begin
  // st1.d { v6 }[1], [x3], #8.
  FInsn.OpCode := $4D9F8466;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST1);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(1));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V6);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1007;
begin
  // st2.b { v5, v6 }[13], [x3].
  FInsn.OpCode := $4D201465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1008;
begin
  // st2.h { v5, v6 }[2], [x3].
  FInsn.OpCode := $0D205065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1009;
begin
  // st2.s { v5, v6 }[2], [x3].
  FInsn.OpCode := $4D208065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1010;
begin
  // st2.d { v5, v6 }[1], [x3].
  FInsn.OpCode := $4D208465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1011;
begin
  // st2.b { v5, v6 }[13], [x3], x5.
  FInsn.OpCode := $4DA51465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1012;
begin
  // st2.h { v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $0DA55065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1013;
begin
  // st2.s { v5, v6 }[2], [x3], x5.
  FInsn.OpCode := $4DA58065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1014;
begin
  // st2.d { v5, v6 }[1], [x3], x5.
  FInsn.OpCode := $4DA58465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1015;
begin
  // st2.b { v5, v6 }[13], [x3], #2.
  FInsn.OpCode := $4DBF1465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1016;
begin
  // st2.h { v5, v6 }[2], [x3], #4.
  FInsn.OpCode := $0DBF5065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1017;
begin
  // st2.s { v5, v6 }[2], [x3], #8.
  FInsn.OpCode := $4DBF8065;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1018;
begin
  // st2.d { v5, v6 }[1], [x3], #16.
  FInsn.OpCode := $4DBF8465;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST2);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(2));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V5);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1019;
begin
  // st3.b { v7, v8, v9 }[13], [x3].
  FInsn.OpCode := $4D003467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1020;
begin
  // st3.h { v7, v8, v9 }[2], [x3].
  FInsn.OpCode := $0D007067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1021;
begin
  // st3.s { v7, v8, v9 }[2], [x3].
  FInsn.OpCode := $4D00A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1022;
begin
  // st3.d { v7, v8, v9 }[1], [x3].
  FInsn.OpCode := $4D00A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1023;
begin
  // st3.b { v7, v8, v9 }[13], [x3], x5.
  FInsn.OpCode := $4D853467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1024;
begin
  // st3.h { v7, v8, v9 }[2], [x3], x5.
  FInsn.OpCode := $0D857067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1025;
begin
  // st3.s { v7, v8, v9 }[2], [x3], x5.
  FInsn.OpCode := $4D85A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1026;
begin
  // st3.d { v7, v8, v9 }[1], [x3], x5.
  FInsn.OpCode := $4D85A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1027;
begin
  // st3.b { v7, v8, v9 }[13], [x3], #3.
  FInsn.OpCode := $4D9F3467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(3));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1028;
begin
  // st3.h { v7, v8, v9 }[2], [x3], #6.
  FInsn.OpCode := $0D9F7067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(6));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1029;
begin
  // st3.s { v7, v8, v9 }[2], [x3], #12.
  FInsn.OpCode := $4D9FA067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(12));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1030;
begin
  // st3.d { v7, v8, v9 }[1], [x3], #24.
  FInsn.OpCode := $4D9FA467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST3);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(3));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(24));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1031;
begin
  // st4.b { v7, v8, v9, v10 }[13], [x3].
  FInsn.OpCode := $4D203467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1032;
begin
  // st4.h { v7, v8, v9, v10 }[2], [x3].
  FInsn.OpCode := $0D207067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1033;
begin
  // st4.s { v7, v8, v9, v10 }[2], [x3].
  FInsn.OpCode := $4D20A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1034;
begin
  // st4.d { v7, v8, v9, v10 }[1], [x3].
  FInsn.OpCode := $4D20A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
end;

procedure TSIMDLdstTest.Test1035;
begin
  // st4.b { v7, v8, v9, v10 }[13], [x3], x5.
  FInsn.OpCode := $4DA53467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1036;
begin
  // st4.h { v7, v8, v9, v10 }[2], [x3], x5.
  FInsn.OpCode := $0DA57067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1037;
begin
  // st4.s { v7, v8, v9, v10 }[2], [x3], x5.
  FInsn.OpCode := $4DA5A067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1038;
begin
  // st4.d { v7, v8, v9, v10 }[1], [x3], x5.
  FInsn.OpCode := $4DA5A467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1039;
begin
  // st4.b { v7, v8, v9, v10 }[13], [x3], #4.
  FInsn.OpCode := $4DBF3467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(13));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1040;
begin
  // st4.h { v7, v8, v9, v10 }[2], [x3], #8.
  FInsn.OpCode := $0DBF7067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1041;
begin
  // st4.s { v7, v8, v9, v10 }[2], [x3], #16.
  FInsn.OpCode := $4DBFA067;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(2));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TSIMDLdstTest.Test1042;
begin
  // st4.d { v7, v8, v9, v10 }[1], [x3], #32.
  FInsn.OpCode := $4DBFA467;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ST4);
  Assert.AreEqual(FInsn.Operands[0].List.Count, Integer(4));
  Assert.AreEqual(FInsn.Operands[0].List.Base, REG_V7);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

initialization
  TDUnitX.RegisterTestFixture(TSIMDLdstTest);

end.
