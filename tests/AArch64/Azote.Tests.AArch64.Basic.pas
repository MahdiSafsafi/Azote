// ===========================================================================================================
//                                   Automatically generated test.
// Source: https://github.com/Microsoft/llvm/tree/master/test/MC/AArch64/basic-a64-instructions.s
// ===========================================================================================================

unit Azote.Tests.AArch64.Basic;

{$M+}

interface

uses
  DUnitX.TestFramework,
  Azote.Disassembler.AArch64;

type
  [TestFixture]
  TBasicTest = class(TObject)
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
    procedure Test1043;
    procedure Test1044;
    procedure Test1045;
    procedure Test1046;
    procedure Test1047;
    procedure Test1048;
    procedure Test1049;
    procedure Test1050;
    procedure Test1051;
    procedure Test1052;
    procedure Test1053;
    procedure Test1054;
    procedure Test1055;
    procedure Test1056;
    procedure Test1057;
    procedure Test1058;
    procedure Test1059;
    procedure Test1060;
    procedure Test1061;
    procedure Test1062;
    procedure Test1063;
    procedure Test1064;
    procedure Test1065;
    procedure Test1066;
    procedure Test1067;
    procedure Test1068;
    procedure Test1069;
    procedure Test1070;
    procedure Test1071;
    procedure Test1072;
    procedure Test1073;
    procedure Test1074;
    procedure Test1075;
    procedure Test1076;
    procedure Test1077;
    procedure Test1078;
    procedure Test1079;
    procedure Test1080;
    procedure Test1081;
    procedure Test1082;
    procedure Test1083;
    procedure Test1084;
    procedure Test1085;
    procedure Test1086;
    procedure Test1087;
    procedure Test1088;
    procedure Test1089;
    procedure Test1090;
    procedure Test1091;
    procedure Test1092;
    procedure Test1093;
    procedure Test1094;
    procedure Test1095;
    procedure Test1096;
    procedure Test1097;
    procedure Test1098;
    procedure Test1099;
    procedure Test1100;
    procedure Test1101;
    procedure Test1102;
    procedure Test1103;
    procedure Test1104;
    procedure Test1105;
    procedure Test1106;
    procedure Test1107;
    procedure Test1108;
    procedure Test1109;
    procedure Test1110;
    procedure Test1111;
    procedure Test1112;
    procedure Test1113;
    procedure Test1114;
    procedure Test1115;
    procedure Test1116;
    procedure Test1117;
    procedure Test1118;
    procedure Test1119;
    procedure Test1120;
    procedure Test1121;
    procedure Test1122;
    procedure Test1123;
    procedure Test1124;
    procedure Test1125;
    procedure Test1126;
    procedure Test1127;
    procedure Test1128;
    procedure Test1129;
    procedure Test1130;
    procedure Test1131;
    procedure Test1132;
    procedure Test1133;
    procedure Test1134;
    procedure Test1135;
    procedure Test1136;
    procedure Test1137;
    procedure Test1138;
    procedure Test1139;
    procedure Test1140;
    procedure Test1141;
    procedure Test1142;
    procedure Test1143;
    procedure Test1144;
    procedure Test1145;
    procedure Test1146;
    procedure Test1147;
    procedure Test1148;
    procedure Test1149;
    procedure Test1150;
    procedure Test1151;
    procedure Test1152;
    procedure Test1153;
    procedure Test1154;
    procedure Test1155;
    procedure Test1156;
    procedure Test1157;
    procedure Test1158;
    procedure Test1159;
    procedure Test1160;
    procedure Test1161;
    procedure Test1162;
    procedure Test1163;
    procedure Test1164;
    procedure Test1165;
    procedure Test1166;
    procedure Test1167;
    procedure Test1168;
    procedure Test1169;
    procedure Test1170;
    procedure Test1171;
    procedure Test1172;
    procedure Test1173;
    procedure Test1174;
    procedure Test1175;
    procedure Test1176;
    procedure Test1177;
    procedure Test1178;
    procedure Test1179;
    procedure Test1180;
    procedure Test1181;
    procedure Test1182;
    procedure Test1183;
    procedure Test1184;
    procedure Test1185;
    procedure Test1186;
    procedure Test1187;
    procedure Test1188;
    procedure Test1189;
    procedure Test1190;
    procedure Test1191;
    procedure Test1192;
    procedure Test1193;
    procedure Test1194;
    procedure Test1195;
    procedure Test1196;
    procedure Test1197;
    procedure Test1198;
    procedure Test1199;
    procedure Test1200;
    procedure Test1201;
    procedure Test1202;
    procedure Test1203;
    procedure Test1204;
    procedure Test1205;
    procedure Test1206;
    procedure Test1207;
    procedure Test1208;
    procedure Test1209;
    procedure Test1210;
    procedure Test1211;
    procedure Test1212;
    procedure Test1213;
    procedure Test1214;
    procedure Test1215;
    procedure Test1216;
    procedure Test1217;
    procedure Test1218;
    procedure Test1219;
    procedure Test1220;
    procedure Test1221;
    procedure Test1222;
    procedure Test1223;
    procedure Test1224;
    procedure Test1225;
    procedure Test1226;
    procedure Test1227;
    procedure Test1228;
    procedure Test1229;
  end;

implementation

procedure TBasicTest.Setup;
begin
  FillChar(FInsn, SizeOf(TA64Instruction), #00);
end;

procedure TBasicTest.TearDown;
begin

end;	

procedure TBasicTest.Test1;
begin
  // add x2, x4, w5, uxtb.
  FInsn.OpCode := $8B250082;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TBasicTest.Test2;
begin
  // add x20, sp, w19, uxth.
  FInsn.OpCode := $8B3323F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TBasicTest.Test3;
begin
  // add x12, x1, w20, uxtw.
  FInsn.OpCode := $8B34402C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test4;
begin
  // add x20, x3, x13, uxtx.
  FInsn.OpCode := $8B2D6074;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test5;
begin
  // add x17, x25, w20, sxtb.
  FInsn.OpCode := $8B348331;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TBasicTest.Test6;
begin
  // add x18, x13, w19, sxth.
  FInsn.OpCode := $8B33A1B2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test7;
begin
  // add sp, x2, w3, sxtw.
  FInsn.OpCode := $8B23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TBasicTest.Test8;
begin
  // add x3, x5, x9, sxtx.
  FInsn.OpCode := $8B29E0A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TBasicTest.Test9;
begin
  // add w2, w5, w7, uxtb.
  FInsn.OpCode := $0B2700A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TBasicTest.Test10;
begin
  // add w21, w15, w17, uxth.
  FInsn.OpCode := $0B3121F5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TBasicTest.Test11;
begin
  // add w30, w29, wzr, uxtw.
  FInsn.OpCode := $0B3F43BE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test12;
begin
  // add w19, w17, w1, uxtx.
  FInsn.OpCode := $0B216233;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test13;
begin
  // add w2, w5, w1, sxtb.
  FInsn.OpCode := $0B2180A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TBasicTest.Test14;
begin
  // add w26, w17, w19, sxth.
  FInsn.OpCode := $0B33A23A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test15;
begin
  // add w0, w2, w3, sxtw.
  FInsn.OpCode := $0B23C040;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TBasicTest.Test16;
begin
  // add w2, w3, w5, sxtx.
  FInsn.OpCode := $0B25E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TBasicTest.Test17;
begin
  // add x2, x3, w5, sxtb.
  FInsn.OpCode := $8B258062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TBasicTest.Test18;
begin
  // add x7, x11, w13, uxth #4.
  FInsn.OpCode := $8B2D3167;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TBasicTest.Test19;
begin
  // add w17, w19, w23, uxtw #2.
  FInsn.OpCode := $0B374A71;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test20;
begin
  // add w29, w23, w17, uxtx #1.
  FInsn.OpCode := $0B3166FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test21;
begin
  // sub x2, x4, w5, uxtb #2.
  FInsn.OpCode := $CB250882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test22;
begin
  // sub x20, sp, w19, uxth #4.
  FInsn.OpCode := $CB3333F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TBasicTest.Test23;
begin
  // sub x12, x1, w20, uxtw.
  FInsn.OpCode := $CB34402C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test24;
begin
  // sub x20, x3, x13, uxtx.
  FInsn.OpCode := $CB2D6074;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test25;
begin
  // sub x17, x25, w20, sxtb.
  FInsn.OpCode := $CB348331;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TBasicTest.Test26;
begin
  // sub x18, x13, w19, sxth.
  FInsn.OpCode := $CB33A1B2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test27;
begin
  // sub sp, x2, w3, sxtw.
  FInsn.OpCode := $CB23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TBasicTest.Test28;
begin
  // sub x3, x5, x9, sxtx.
  FInsn.OpCode := $CB29E0A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TBasicTest.Test29;
begin
  // sub w2, w5, w7, uxtb.
  FInsn.OpCode := $4B2700A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TBasicTest.Test30;
begin
  // sub w21, w15, w17, uxth.
  FInsn.OpCode := $4B3121F5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TBasicTest.Test31;
begin
  // sub w30, w29, wzr, uxtw.
  FInsn.OpCode := $4B3F43BE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test32;
begin
  // sub w19, w17, w1, uxtx.
  FInsn.OpCode := $4B216233;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test33;
begin
  // sub w2, w5, w1, sxtb.
  FInsn.OpCode := $4B2180A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
end;

procedure TBasicTest.Test34;
begin
  // sub w26, wsp, w19, sxth.
  FInsn.OpCode := $4B33A3FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test35;
begin
  // sub wsp, w2, w3, sxtw.
  FInsn.OpCode := $4B23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtw);
end;

procedure TBasicTest.Test36;
begin
  // sub w2, w3, w5, sxtx.
  FInsn.OpCode := $4B25E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TBasicTest.Test37;
begin
  // adds x2, x4, w5, uxtb #2.
  FInsn.OpCode := $AB250882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test38;
begin
  // adds x20, sp, w19, uxth #4.
  FInsn.OpCode := $AB3333F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TBasicTest.Test39;
begin
  // adds x12, x1, w20, uxtw.
  FInsn.OpCode := $AB34402C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test40;
begin
  // adds x20, x3, x13, uxtx.
  FInsn.OpCode := $AB2D6074;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test41;
begin
  // adds x18, sp, w19, sxth.
  FInsn.OpCode := $AB33A3F2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test42;
begin
  // adds x3, x5, x9, sxtx #2.
  FInsn.OpCode := $AB29E8A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test43;
begin
  // adds w2, w5, w7, uxtb.
  FInsn.OpCode := $2B2700A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TBasicTest.Test44;
begin
  // adds w21, w15, w17, uxth.
  FInsn.OpCode := $2B3121F5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TBasicTest.Test45;
begin
  // adds w30, w29, wzr, uxtw.
  FInsn.OpCode := $2B3F43BE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test46;
begin
  // adds w19, w17, w1, uxtx.
  FInsn.OpCode := $2B216233;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test47;
begin
  // adds w2, w5, w1, sxtb #1.
  FInsn.OpCode := $2B2184A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test48;
begin
  // adds w26, wsp, w19, sxth.
  FInsn.OpCode := $2B33A3FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test49;
begin
  // cmn w2, w3, sxtw.
  FInsn.OpCode := $2B23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test50;
begin
  // adds w2, w3, w5, sxtx.
  FInsn.OpCode := $2B25E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TBasicTest.Test51;
begin
  // subs x2, x4, w5, uxtb #2.
  FInsn.OpCode := $EB250882;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test52;
begin
  // subs x20, sp, w19, uxth #4.
  FInsn.OpCode := $EB3333F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TBasicTest.Test53;
begin
  // subs x12, x1, w20, uxtw.
  FInsn.OpCode := $EB34402C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test54;
begin
  // subs x20, x3, x13, uxtx.
  FInsn.OpCode := $EB2D6074;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test55;
begin
  // subs x18, sp, w19, sxth.
  FInsn.OpCode := $EB33A3F2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test56;
begin
  // subs x3, x5, x9, sxtx #2.
  FInsn.OpCode := $EB29E8A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test57;
begin
  // subs w2, w5, w7, uxtb.
  FInsn.OpCode := $6B2700A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtb);
end;

procedure TBasicTest.Test58;
begin
  // subs w21, w15, w17, uxth.
  FInsn.OpCode := $6B3121F5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxth);
end;

procedure TBasicTest.Test59;
begin
  // subs w30, w29, wzr, uxtw.
  FInsn.OpCode := $6B3F43BE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtw);
end;

procedure TBasicTest.Test60;
begin
  // subs w19, w17, w1, uxtx.
  FInsn.OpCode := $6B216233;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfUxtx);
end;

procedure TBasicTest.Test61;
begin
  // subs w2, w5, w1, sxtb #1.
  FInsn.OpCode := $6B2184A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtb);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test62;
begin
  // subs w26, wsp, w19, sxth.
  FInsn.OpCode := $6B33A3FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxth);
end;

procedure TBasicTest.Test63;
begin
  // subs w2, w3, w5, sxtx.
  FInsn.OpCode := $6B25E062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfSxtx);
end;

procedure TBasicTest.Test64;
begin
  // cmp x4, w5, uxtb #2.
  FInsn.OpCode := $EB25089F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test65;
begin
  // cmp sp, w19, uxth #4.
  FInsn.OpCode := $EB3333FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test66;
begin
  // cmp x1, w20, uxtw.
  FInsn.OpCode := $EB34403F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test67;
begin
  // cmp x3, x13, uxtx.
  FInsn.OpCode := $EB2D607F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtx);
end;

procedure TBasicTest.Test68;
begin
  // cmp x25, w20, sxtb #3.
  FInsn.OpCode := $EB348F3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test69;
begin
  // cmp sp, w19, sxth.
  FInsn.OpCode := $EB33A3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxth);
end;

procedure TBasicTest.Test70;
begin
  // cmp x2, w3, sxtw.
  FInsn.OpCode := $EB23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test71;
begin
  // cmp x5, x9, sxtx #2.
  FInsn.OpCode := $EB29E8BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test72;
begin
  // cmp w5, w7, uxtb.
  FInsn.OpCode := $6B2700BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtb);
end;

procedure TBasicTest.Test73;
begin
  // cmp w15, w17, uxth.
  FInsn.OpCode := $6B3121FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxth);
end;

procedure TBasicTest.Test74;
begin
  // cmp w29, wzr, uxtw.
  FInsn.OpCode := $6B3F43BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test75;
begin
  // cmp w17, w1, uxtx.
  FInsn.OpCode := $6B21623F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtx);
end;

procedure TBasicTest.Test76;
begin
  // cmp w5, w1, sxtb #1.
  FInsn.OpCode := $6B2184BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test77;
begin
  // cmp wsp, w19, sxth.
  FInsn.OpCode := $6B33A3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxth);
end;

procedure TBasicTest.Test78;
begin
  // cmp w2, w3, sxtw.
  FInsn.OpCode := $6B23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test79;
begin
  // cmp w3, w5, sxtx.
  FInsn.OpCode := $6B25E07F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test80;
begin
  // cmn x4, w5, uxtb #2.
  FInsn.OpCode := $AB25089F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test81;
begin
  // cmn sp, w19, uxth #4.
  FInsn.OpCode := $AB3333FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxth);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test82;
begin
  // cmn x1, w20, uxtw.
  FInsn.OpCode := $AB34403F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test83;
begin
  // cmn x3, x13, uxtx.
  FInsn.OpCode := $AB2D607F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtx);
end;

procedure TBasicTest.Test84;
begin
  // cmn x25, w20, sxtb #3.
  FInsn.OpCode := $AB348F3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test85;
begin
  // cmn sp, w19, sxth.
  FInsn.OpCode := $AB33A3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxth);
end;

procedure TBasicTest.Test86;
begin
  // cmn x2, w3, sxtw.
  FInsn.OpCode := $AB23C05F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test87;
begin
  // cmn x5, x9, sxtx #2.
  FInsn.OpCode := $AB29E8BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test88;
begin
  // cmp x20, w29, uxtb #3.
  FInsn.OpCode := $EB3D0E9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtb);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test89;
begin
  // cmp x12, x13, uxtx #4.
  FInsn.OpCode := $EB2D719F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test90;
begin
  // cmp wsp, w1, uxtb.
  FInsn.OpCode := $6B2103FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtb);
end;

procedure TBasicTest.Test91;
begin
  // sub sp, x3, x7, lsl #4.
  FInsn.OpCode := $CB27707F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TBasicTest.Test92;
begin
  // add w2, wsp, w3, lsl #1.
  FInsn.OpCode := $0B2347E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test93;
begin
  // cmp wsp, w9.
  FInsn.OpCode := $6B2943FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TBasicTest.Test94;
begin
  // cmn wsp, w3, lsl #4.
  FInsn.OpCode := $2B2353FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test95;
begin
  // subs x3, sp, x9, lsl #2.
  FInsn.OpCode := $EB296BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(2));
end;

procedure TBasicTest.Test96;
begin
  // add w4, w5, #0.
  FInsn.OpCode := $110000A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test97;
begin
  // add w2, w3, #4095.
  FInsn.OpCode := $113FFC62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4095));
end;

procedure TBasicTest.Test98;
begin
  // add w30, w29, #1, lsl #12.
  FInsn.OpCode := $114007BE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TBasicTest.Test99;
begin
  // add w13, w5, #4095, lsl #12.
  FInsn.OpCode := $117FFCAD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4095));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TBasicTest.Test100;
begin
  // add x5, x7, #1638.
  FInsn.OpCode := $911998E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1638));
end;

procedure TBasicTest.Test101;
begin
  // add w20, wsp, #801.
  FInsn.OpCode := $110C87F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(801));
end;

procedure TBasicTest.Test102;
begin
  // add wsp, wsp, #1104.
  FInsn.OpCode := $111143FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1104));
end;

procedure TBasicTest.Test103;
begin
  // add wsp, w30, #4084.
  FInsn.OpCode := $113FD3DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4084));
end;

procedure TBasicTest.Test104;
begin
  // add x0, x24, #291.
  FInsn.OpCode := $91048F00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(291));
end;

procedure TBasicTest.Test105;
begin
  // add x3, x24, #4095, lsl #12.
  FInsn.OpCode := $917FFF03;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4095));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TBasicTest.Test106;
begin
  // add x8, sp, #1074.
  FInsn.OpCode := $9110CBE8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1074));
end;

procedure TBasicTest.Test107;
begin
  // add sp, x29, #3816.
  FInsn.OpCode := $913BA3BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3816));
end;

procedure TBasicTest.Test108;
begin
  // sub w0, wsp, #4077.
  FInsn.OpCode := $513FB7E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(4077));
end;

procedure TBasicTest.Test109;
begin
  // sub w4, w20, #546, lsl #12.
  FInsn.OpCode := $51488A84;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(546));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TBasicTest.Test110;
begin
  // sub sp, sp, #288.
  FInsn.OpCode := $D10483FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(288));
end;

procedure TBasicTest.Test111;
begin
  // sub wsp, w19, #16.
  FInsn.OpCode := $5100427F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(16));
end;

procedure TBasicTest.Test112;
begin
  // adds w13, w23, #291, lsl #12.
  FInsn.OpCode := $31448EED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(291));
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TBasicTest.Test113;
begin
  // adds w20, wsp, #0.
  FInsn.OpCode := $310003F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test114;
begin
  // subs x4, sp, #3822.
  FInsn.OpCode := $F13BBBE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3822));
end;

procedure TBasicTest.Test115;
begin
  // cmn w3, #291, lsl #12.
  FInsn.OpCode := $31448C7F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(291));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test116;
begin
  // cmn wsp, #1365.
  FInsn.OpCode := $311557FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1365));
end;

procedure TBasicTest.Test117;
begin
  // cmn sp, #1092, lsl #12.
  FInsn.OpCode := $B15113FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1092));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test118;
begin
  // cmp x4, #300, lsl #12.
  FInsn.OpCode := $F144B09F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(300));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test119;
begin
  // cmp wsp, #500.
  FInsn.OpCode := $7107D3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(500));
end;

procedure TBasicTest.Test120;
begin
  // cmp sp, #200.
  FInsn.OpCode := $F10323FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(200));
end;

procedure TBasicTest.Test121;
begin
  // mov sp, x30.
  FInsn.OpCode := $910003DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
end;

procedure TBasicTest.Test122;
begin
  // mov wsp, w20.
  FInsn.OpCode := $1100029F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
end;

procedure TBasicTest.Test123;
begin
  // mov x11, sp.
  FInsn.OpCode := $910003EB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_SP);
end;

procedure TBasicTest.Test124;
begin
  // mov w24, wsp.
  FInsn.OpCode := $110003F8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WSP);
end;

procedure TBasicTest.Test125;
begin
  // add w3, w5, w7.
  FInsn.OpCode := $0B0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
end;

procedure TBasicTest.Test126;
begin
  // add wzr, w3, w5.
  FInsn.OpCode := $0B05007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
end;

procedure TBasicTest.Test127;
begin
  // add w20, wzr, w4.
  FInsn.OpCode := $0B0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test128;
begin
  // add w4, w6, wzr.
  FInsn.OpCode := $0B1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test129;
begin
  // add w11, w13, w15.
  FInsn.OpCode := $0B0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W15);
end;

procedure TBasicTest.Test130;
begin
  // add w9, w3, wzr, lsl #10.
  FInsn.OpCode := $0B1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test131;
begin
  // add w17, w29, w20, lsl #31.
  FInsn.OpCode := $0B147FB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test132;
begin
  // add w17, w29, w20, lsl #29.
  FInsn.OpCode := $0B1477B1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(29));
end;

procedure TBasicTest.Test133;
begin
  // add w21, w22, w23, lsr #0.
  FInsn.OpCode := $0B5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test134;
begin
  // add w24, w25, w26, lsr #18.
  FInsn.OpCode := $0B5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test135;
begin
  // add w27, w28, w29, lsr #31.
  FInsn.OpCode := $0B5D7F9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test136;
begin
  // add w27, w28, w29, lsr #29.
  FInsn.OpCode := $0B5D779B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(29));
end;

procedure TBasicTest.Test137;
begin
  // add w2, w3, w4, asr #0.
  FInsn.OpCode := $0B840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test138;
begin
  // add w5, w6, w7, asr #21.
  FInsn.OpCode := $0B8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test139;
begin
  // add w8, w9, w10, asr #31.
  FInsn.OpCode := $0B8A7D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test140;
begin
  // add w8, w9, w10, asr #29.
  FInsn.OpCode := $0B8A7528;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(29));
end;

procedure TBasicTest.Test141;
begin
  // add x3, x5, x7.
  FInsn.OpCode := $8B0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
end;

procedure TBasicTest.Test142;
begin
  // add xzr, x3, x5.
  FInsn.OpCode := $8B05007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X5);
end;

procedure TBasicTest.Test143;
begin
  // add x20, xzr, x4.
  FInsn.OpCode := $8B0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test144;
begin
  // add x4, x6, xzr.
  FInsn.OpCode := $8B1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test145;
begin
  // add x11, x13, x15.
  FInsn.OpCode := $8B0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X15);
end;

procedure TBasicTest.Test146;
begin
  // add x9, x3, xzr, lsl #10.
  FInsn.OpCode := $8B1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test147;
begin
  // add x17, x29, x20, lsl #63.
  FInsn.OpCode := $8B14FFB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test148;
begin
  // add x17, x29, x20, lsl #58.
  FInsn.OpCode := $8B14EBB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(58));
end;

procedure TBasicTest.Test149;
begin
  // add x21, x22, x23, lsr #0.
  FInsn.OpCode := $8B5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test150;
begin
  // add x24, x25, x26, lsr #18.
  FInsn.OpCode := $8B5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test151;
begin
  // add x27, x28, x29, lsr #63.
  FInsn.OpCode := $8B5DFF9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test152;
begin
  // add x17, x29, x20, lsr #58.
  FInsn.OpCode := $8B54EBB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(58));
end;

procedure TBasicTest.Test153;
begin
  // add x2, x3, x4, asr #0.
  FInsn.OpCode := $8B840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test154;
begin
  // add x5, x6, x7, asr #21.
  FInsn.OpCode := $8B8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test155;
begin
  // add x8, x9, x10, asr #63.
  FInsn.OpCode := $8B8AFD28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test156;
begin
  // add x17, x29, x20, asr #58.
  FInsn.OpCode := $8B94EBB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(58));
end;

procedure TBasicTest.Test157;
begin
  // adds w3, w5, w7.
  FInsn.OpCode := $2B0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
end;

procedure TBasicTest.Test158;
begin
  // adds w20, wzr, w4.
  FInsn.OpCode := $2B0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test159;
begin
  // adds w4, w6, wzr.
  FInsn.OpCode := $2B1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test160;
begin
  // adds w11, w13, w15.
  FInsn.OpCode := $2B0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W15);
end;

procedure TBasicTest.Test161;
begin
  // adds w9, w3, wzr, lsl #10.
  FInsn.OpCode := $2B1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test162;
begin
  // adds w17, w29, w20, lsl #31.
  FInsn.OpCode := $2B147FB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test163;
begin
  // adds w21, w22, w23, lsr #0.
  FInsn.OpCode := $2B5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test164;
begin
  // adds w24, w25, w26, lsr #18.
  FInsn.OpCode := $2B5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test165;
begin
  // adds w27, w28, w29, lsr #31.
  FInsn.OpCode := $2B5D7F9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test166;
begin
  // adds w2, w3, w4, asr #0.
  FInsn.OpCode := $2B840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test167;
begin
  // adds w5, w6, w7, asr #21.
  FInsn.OpCode := $2B8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test168;
begin
  // adds w8, w9, w10, asr #31.
  FInsn.OpCode := $2B8A7D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test169;
begin
  // adds x3, x5, x7.
  FInsn.OpCode := $AB0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
end;

procedure TBasicTest.Test170;
begin
  // adds x20, xzr, x4.
  FInsn.OpCode := $AB0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test171;
begin
  // adds x4, x6, xzr.
  FInsn.OpCode := $AB1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test172;
begin
  // adds x11, x13, x15.
  FInsn.OpCode := $AB0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X15);
end;

procedure TBasicTest.Test173;
begin
  // adds x9, x3, xzr, lsl #10.
  FInsn.OpCode := $AB1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test174;
begin
  // adds x17, x29, x20, lsl #63.
  FInsn.OpCode := $AB14FFB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test175;
begin
  // adds x21, x22, x23, lsr #0.
  FInsn.OpCode := $AB5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test176;
begin
  // adds x24, x25, x26, lsr #18.
  FInsn.OpCode := $AB5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test177;
begin
  // adds x27, x28, x29, lsr #63.
  FInsn.OpCode := $AB5DFF9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test178;
begin
  // adds x2, x3, x4, asr #0.
  FInsn.OpCode := $AB840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test179;
begin
  // adds x5, x6, x7, asr #21.
  FInsn.OpCode := $AB8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test180;
begin
  // adds x8, x9, x10, asr #63.
  FInsn.OpCode := $AB8AFD28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test181;
begin
  // sub w3, w5, w7.
  FInsn.OpCode := $4B0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
end;

procedure TBasicTest.Test182;
begin
  // sub wzr, w3, w5.
  FInsn.OpCode := $4B05007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
end;

procedure TBasicTest.Test183;
begin
  // neg w20, w4.
  FInsn.OpCode := $4B0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
end;

procedure TBasicTest.Test184;
begin
  // sub w4, w6, wzr.
  FInsn.OpCode := $4B1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test185;
begin
  // sub w11, w13, w15.
  FInsn.OpCode := $4B0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W15);
end;

procedure TBasicTest.Test186;
begin
  // sub w9, w3, wzr, lsl #10.
  FInsn.OpCode := $4B1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test187;
begin
  // sub w17, w29, w20, lsl #31.
  FInsn.OpCode := $4B147FB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test188;
begin
  // sub w21, w22, w23, lsr #0.
  FInsn.OpCode := $4B5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test189;
begin
  // sub w24, w25, w26, lsr #18.
  FInsn.OpCode := $4B5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test190;
begin
  // sub w27, w28, w29, lsr #31.
  FInsn.OpCode := $4B5D7F9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test191;
begin
  // sub w2, w3, w4, asr #0.
  FInsn.OpCode := $4B840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test192;
begin
  // sub w5, w6, w7, asr #21.
  FInsn.OpCode := $4B8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test193;
begin
  // sub w8, w9, w10, asr #31.
  FInsn.OpCode := $4B8A7D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test194;
begin
  // sub x3, x5, x7.
  FInsn.OpCode := $CB0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
end;

procedure TBasicTest.Test195;
begin
  // sub xzr, x3, x5.
  FInsn.OpCode := $CB05007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X5);
end;

procedure TBasicTest.Test196;
begin
  // neg x20, x4.
  FInsn.OpCode := $CB0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
end;

procedure TBasicTest.Test197;
begin
  // sub x4, x6, xzr.
  FInsn.OpCode := $CB1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test198;
begin
  // sub x11, x13, x15.
  FInsn.OpCode := $CB0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X15);
end;

procedure TBasicTest.Test199;
begin
  // sub x9, x3, xzr, lsl #10.
  FInsn.OpCode := $CB1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test200;
begin
  // sub x17, x29, x20, lsl #63.
  FInsn.OpCode := $CB14FFB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test201;
begin
  // sub x21, x22, x23, lsr #0.
  FInsn.OpCode := $CB5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test202;
begin
  // sub x24, x25, x26, lsr #18.
  FInsn.OpCode := $CB5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test203;
begin
  // sub x27, x28, x29, lsr #63.
  FInsn.OpCode := $CB5DFF9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test204;
begin
  // sub x2, x3, x4, asr #0.
  FInsn.OpCode := $CB840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test205;
begin
  // sub x5, x6, x7, asr #21.
  FInsn.OpCode := $CB8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test206;
begin
  // sub x8, x9, x10, asr #63.
  FInsn.OpCode := $CB8AFD28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test207;
begin
  // subs w3, w5, w7.
  FInsn.OpCode := $6B0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
end;

procedure TBasicTest.Test208;
begin
  // negs w20, w4.
  FInsn.OpCode := $6B0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
end;

procedure TBasicTest.Test209;
begin
  // subs w4, w6, wzr.
  FInsn.OpCode := $6B1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test210;
begin
  // subs w11, w13, w15.
  FInsn.OpCode := $6B0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W15);
end;

procedure TBasicTest.Test211;
begin
  // subs w9, w3, wzr, lsl #10.
  FInsn.OpCode := $6B1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test212;
begin
  // subs w17, w29, w20, lsl #31.
  FInsn.OpCode := $6B147FB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test213;
begin
  // subs w21, w22, w23, lsr #0.
  FInsn.OpCode := $6B5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test214;
begin
  // subs w24, w25, w26, lsr #18.
  FInsn.OpCode := $6B5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test215;
begin
  // subs w27, w28, w29, lsr #31.
  FInsn.OpCode := $6B5D7F9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test216;
begin
  // subs w2, w3, w4, asr #0.
  FInsn.OpCode := $6B840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test217;
begin
  // subs w5, w6, w7, asr #21.
  FInsn.OpCode := $6B8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test218;
begin
  // subs w8, w9, w10, asr #31.
  FInsn.OpCode := $6B8A7D28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test219;
begin
  // subs x3, x5, x7.
  FInsn.OpCode := $EB0700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
end;

procedure TBasicTest.Test220;
begin
  // negs x20, x4.
  FInsn.OpCode := $EB0403F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
end;

procedure TBasicTest.Test221;
begin
  // subs x4, x6, xzr.
  FInsn.OpCode := $EB1F00C4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test222;
begin
  // subs x11, x13, x15.
  FInsn.OpCode := $EB0F01AB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X15);
end;

procedure TBasicTest.Test223;
begin
  // subs x9, x3, xzr, lsl #10.
  FInsn.OpCode := $EB1F2869;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(10));
end;

procedure TBasicTest.Test224;
begin
  // subs x17, x29, x20, lsl #63.
  FInsn.OpCode := $EB14FFB1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test225;
begin
  // subs x21, x22, x23, lsr #0.
  FInsn.OpCode := $EB5702D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test226;
begin
  // subs x24, x25, x26, lsr #18.
  FInsn.OpCode := $EB5A4B38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(18));
end;

procedure TBasicTest.Test227;
begin
  // subs x27, x28, x29, lsr #63.
  FInsn.OpCode := $EB5DFF9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test228;
begin
  // subs x2, x3, x4, asr #0.
  FInsn.OpCode := $EB840062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test229;
begin
  // subs x5, x6, x7, asr #21.
  FInsn.OpCode := $EB8754C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(21));
end;

procedure TBasicTest.Test230;
begin
  // subs x8, x9, x10, asr #63.
  FInsn.OpCode := $EB8AFD28;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SUBS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test231;
begin
  // cmn w0, w3.
  FInsn.OpCode := $2B03001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TBasicTest.Test232;
begin
  // cmn wzr, w4.
  FInsn.OpCode := $2B0403FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
end;

procedure TBasicTest.Test233;
begin
  // cmn w5, wzr.
  FInsn.OpCode := $2B1F00BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test234;
begin
  // cmn wsp, w6.
  FInsn.OpCode := $2B2643FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
end;

procedure TBasicTest.Test235;
begin
  // cmn w6, w7.
  FInsn.OpCode := $2B0700DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
end;

procedure TBasicTest.Test236;
begin
  // cmn w8, w9, lsl #15.
  FInsn.OpCode := $2B093D1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(15));
end;

procedure TBasicTest.Test237;
begin
  // cmn w10, w11, lsl #31.
  FInsn.OpCode := $2B0B7D5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test238;
begin
  // cmn w12, w13, lsr #0.
  FInsn.OpCode := $2B4D019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test239;
begin
  // cmn w14, w15, lsr #21.
  FInsn.OpCode := $2B4F55DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(21));
end;

procedure TBasicTest.Test240;
begin
  // cmn w16, w17, lsr #31.
  FInsn.OpCode := $2B517E1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test241;
begin
  // cmn w18, w19, asr #0.
  FInsn.OpCode := $2B93025F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test242;
begin
  // cmn w20, w21, asr #22.
  FInsn.OpCode := $2B955A9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(22));
end;

procedure TBasicTest.Test243;
begin
  // cmn w22, w23, asr #31.
  FInsn.OpCode := $2B977EDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test244;
begin
  // cmn x0, x3.
  FInsn.OpCode := $AB03001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
end;

procedure TBasicTest.Test245;
begin
  // cmn xzr, x4.
  FInsn.OpCode := $AB0403FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
end;

procedure TBasicTest.Test246;
begin
  // cmn x5, xzr.
  FInsn.OpCode := $AB1F00BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test247;
begin
  // cmn sp, x6.
  FInsn.OpCode := $AB2663FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
end;

procedure TBasicTest.Test248;
begin
  // cmn x6, x7.
  FInsn.OpCode := $AB0700DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
end;

procedure TBasicTest.Test249;
begin
  // cmn x8, x9, lsl #15.
  FInsn.OpCode := $AB093D1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(15));
end;

procedure TBasicTest.Test250;
begin
  // cmn x10, x11, lsl #63.
  FInsn.OpCode := $AB0BFD5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(63));
end;

procedure TBasicTest.Test251;
begin
  // cmn x12, x13, lsr #0.
  FInsn.OpCode := $AB4D019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test252;
begin
  // cmn x14, x15, lsr #41.
  FInsn.OpCode := $AB4FA5DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(41));
end;

procedure TBasicTest.Test253;
begin
  // cmn x16, x17, lsr #63.
  FInsn.OpCode := $AB51FE1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(63));
end;

procedure TBasicTest.Test254;
begin
  // cmn x18, x19, asr #0.
  FInsn.OpCode := $AB93025F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test255;
begin
  // cmn x20, x21, asr #55.
  FInsn.OpCode := $AB95DE9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(55));
end;

procedure TBasicTest.Test256;
begin
  // cmn x22, x23, asr #63.
  FInsn.OpCode := $AB97FEDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(63));
end;

procedure TBasicTest.Test257;
begin
  // cmp w0, w3.
  FInsn.OpCode := $6B03001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TBasicTest.Test258;
begin
  // cmp wzr, w4.
  FInsn.OpCode := $6B0403FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
end;

procedure TBasicTest.Test259;
begin
  // cmp w5, wzr.
  FInsn.OpCode := $6B1F00BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test260;
begin
  // cmp wsp, w6.
  FInsn.OpCode := $6B2643FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
end;

procedure TBasicTest.Test261;
begin
  // cmp w6, w7.
  FInsn.OpCode := $6B0700DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
end;

procedure TBasicTest.Test262;
begin
  // cmp w8, w9, lsl #15.
  FInsn.OpCode := $6B093D1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(15));
end;

procedure TBasicTest.Test263;
begin
  // cmp w10, w11, lsl #31.
  FInsn.OpCode := $6B0B7D5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test264;
begin
  // cmp w12, w13, lsr #0.
  FInsn.OpCode := $6B4D019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test265;
begin
  // cmp w14, w15, lsr #21.
  FInsn.OpCode := $6B4F55DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(21));
end;

procedure TBasicTest.Test266;
begin
  // cmp w16, w17, lsr #31.
  FInsn.OpCode := $6B517E1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test267;
begin
  // cmp w18, w19, asr #0.
  FInsn.OpCode := $6B93025F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test268;
begin
  // cmp w20, w21, asr #22.
  FInsn.OpCode := $6B955A9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(22));
end;

procedure TBasicTest.Test269;
begin
  // cmp w22, w23, asr #31.
  FInsn.OpCode := $6B977EDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test270;
begin
  // cmp x0, x3.
  FInsn.OpCode := $EB03001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
end;

procedure TBasicTest.Test271;
begin
  // cmp xzr, x4.
  FInsn.OpCode := $EB0403FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
end;

procedure TBasicTest.Test272;
begin
  // cmp x5, xzr.
  FInsn.OpCode := $EB1F00BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test273;
begin
  // cmp sp, x6.
  FInsn.OpCode := $EB2663FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
end;

procedure TBasicTest.Test274;
begin
  // cmp x6, x7.
  FInsn.OpCode := $EB0700DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X7);
end;

procedure TBasicTest.Test275;
begin
  // cmp x8, x9, lsl #15.
  FInsn.OpCode := $EB093D1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(15));
end;

procedure TBasicTest.Test276;
begin
  // cmp x10, x11, lsl #63.
  FInsn.OpCode := $EB0BFD5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(63));
end;

procedure TBasicTest.Test277;
begin
  // cmp x12, x13, lsr #0.
  FInsn.OpCode := $EB4D019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test278;
begin
  // cmp x14, x15, lsr #41.
  FInsn.OpCode := $EB4FA5DF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(41));
end;

procedure TBasicTest.Test279;
begin
  // cmp x16, x17, lsr #63.
  FInsn.OpCode := $EB51FE1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(63));
end;

procedure TBasicTest.Test280;
begin
  // cmp x18, x19, asr #0.
  FInsn.OpCode := $EB93025F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test281;
begin
  // cmp x20, x21, asr #55.
  FInsn.OpCode := $EB95DE9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(55));
end;

procedure TBasicTest.Test282;
begin
  // cmp x22, x23, asr #63.
  FInsn.OpCode := $EB97FEDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(63));
end;

procedure TBasicTest.Test283;
begin
  // neg w29, w30.
  FInsn.OpCode := $4B1E03FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
end;

procedure TBasicTest.Test284;
begin
  // neg w30, wzr.
  FInsn.OpCode := $4B1F03FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test285;
begin
  // neg wzr, w0.
  FInsn.OpCode := $4B0003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
end;

procedure TBasicTest.Test286;
begin
  // neg w28, w27.
  FInsn.OpCode := $4B1B03FC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W27);
end;

procedure TBasicTest.Test287;
begin
  // neg w26, w25, lsl #29.
  FInsn.OpCode := $4B1977FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(29));
end;

procedure TBasicTest.Test288;
begin
  // neg w24, w23, lsl #31.
  FInsn.OpCode := $4B177FF8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test289;
begin
  // neg w22, w21, lsr #0.
  FInsn.OpCode := $4B5503F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test290;
begin
  // neg w20, w19, lsr #1.
  FInsn.OpCode := $4B5307F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test291;
begin
  // neg w18, w17, lsr #31.
  FInsn.OpCode := $4B517FF2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test292;
begin
  // neg w16, w15, asr #0.
  FInsn.OpCode := $4B8F03F0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test293;
begin
  // neg w14, w13, asr #12.
  FInsn.OpCode := $4B8D33EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test294;
begin
  // neg w12, w11, asr #31.
  FInsn.OpCode := $4B8B7FEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test295;
begin
  // neg x29, x30.
  FInsn.OpCode := $CB1E03FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
end;

procedure TBasicTest.Test296;
begin
  // neg x30, xzr.
  FInsn.OpCode := $CB1F03FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test297;
begin
  // neg xzr, x0.
  FInsn.OpCode := $CB0003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
end;

procedure TBasicTest.Test298;
begin
  // neg x28, x27.
  FInsn.OpCode := $CB1B03FC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
end;

procedure TBasicTest.Test299;
begin
  // neg x26, x25, lsl #29.
  FInsn.OpCode := $CB1977FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(29));
end;

procedure TBasicTest.Test300;
begin
  // neg x24, x23, lsl #31.
  FInsn.OpCode := $CB177FF8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test301;
begin
  // neg x22, x21, lsr #0.
  FInsn.OpCode := $CB5503F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test302;
begin
  // neg x20, x19, lsr #1.
  FInsn.OpCode := $CB5307F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test303;
begin
  // neg x18, x17, lsr #31.
  FInsn.OpCode := $CB517FF2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test304;
begin
  // neg x16, x15, asr #0.
  FInsn.OpCode := $CB8F03F0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test305;
begin
  // neg x14, x13, asr #12.
  FInsn.OpCode := $CB8D33EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test306;
begin
  // neg x12, x11, asr #31.
  FInsn.OpCode := $CB8B7FEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test307;
begin
  // negs w29, w30.
  FInsn.OpCode := $6B1E03FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
end;

procedure TBasicTest.Test308;
begin
  // negs w30, wzr.
  FInsn.OpCode := $6B1F03FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test309;
begin
  // cmp wzr, w0.
  FInsn.OpCode := $6B0003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
end;

procedure TBasicTest.Test310;
begin
  // negs w28, w27.
  FInsn.OpCode := $6B1B03FC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W27);
end;

procedure TBasicTest.Test311;
begin
  // negs w26, w25, lsl #29.
  FInsn.OpCode := $6B1977FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(29));
end;

procedure TBasicTest.Test312;
begin
  // negs w24, w23, lsl #31.
  FInsn.OpCode := $6B177FF8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test313;
begin
  // negs w22, w21, lsr #0.
  FInsn.OpCode := $6B5503F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test314;
begin
  // negs w20, w19, lsr #1.
  FInsn.OpCode := $6B5307F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test315;
begin
  // negs w18, w17, lsr #31.
  FInsn.OpCode := $6B517FF2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test316;
begin
  // negs w16, w15, asr #0.
  FInsn.OpCode := $6B8F03F0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test317;
begin
  // negs w14, w13, asr #12.
  FInsn.OpCode := $6B8D33EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test318;
begin
  // negs w12, w11, asr #31.
  FInsn.OpCode := $6B8B7FEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test319;
begin
  // negs x29, x30.
  FInsn.OpCode := $EB1E03FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
end;

procedure TBasicTest.Test320;
begin
  // negs x30, xzr.
  FInsn.OpCode := $EB1F03FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test321;
begin
  // cmp xzr, x0.
  FInsn.OpCode := $EB0003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
end;

procedure TBasicTest.Test322;
begin
  // negs x28, x27.
  FInsn.OpCode := $EB1B03FC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
end;

procedure TBasicTest.Test323;
begin
  // negs x26, x25, lsl #29.
  FInsn.OpCode := $EB1977FA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(29));
end;

procedure TBasicTest.Test324;
begin
  // negs x24, x23, lsl #31.
  FInsn.OpCode := $EB177FF8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test325;
begin
  // negs x22, x21, lsr #0.
  FInsn.OpCode := $EB5503F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test326;
begin
  // negs x20, x19, lsr #1.
  FInsn.OpCode := $EB5307F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test327;
begin
  // negs x18, x17, lsr #31.
  FInsn.OpCode := $EB517FF2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test328;
begin
  // negs x16, x15, asr #0.
  FInsn.OpCode := $EB8F03F0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test329;
begin
  // negs x14, x13, asr #12.
  FInsn.OpCode := $EB8D33EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(12));
end;

procedure TBasicTest.Test330;
begin
  // negs x12, x11, asr #31.
  FInsn.OpCode := $EB8B7FEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NEGS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test331;
begin
  // adc w29, w27, w25.
  FInsn.OpCode := $1A19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test332;
begin
  // adc wzr, w3, w4.
  FInsn.OpCode := $1A04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test333;
begin
  // adc w9, wzr, w10.
  FInsn.OpCode := $1A0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
end;

procedure TBasicTest.Test334;
begin
  // adc w20, w0, wzr.
  FInsn.OpCode := $1A1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test335;
begin
  // adc x29, x27, x25.
  FInsn.OpCode := $9A19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X25);
end;

procedure TBasicTest.Test336;
begin
  // adc xzr, x3, x4.
  FInsn.OpCode := $9A04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test337;
begin
  // adc x9, xzr, x10.
  FInsn.OpCode := $9A0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
end;

procedure TBasicTest.Test338;
begin
  // adc x20, x0, xzr.
  FInsn.OpCode := $9A1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test339;
begin
  // adcs w29, w27, w25.
  FInsn.OpCode := $3A19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test340;
begin
  // adcs wzr, w3, w4.
  FInsn.OpCode := $3A04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test341;
begin
  // adcs w9, wzr, w10.
  FInsn.OpCode := $3A0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
end;

procedure TBasicTest.Test342;
begin
  // adcs w20, w0, wzr.
  FInsn.OpCode := $3A1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test343;
begin
  // adcs x29, x27, x25.
  FInsn.OpCode := $BA19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X25);
end;

procedure TBasicTest.Test344;
begin
  // adcs xzr, x3, x4.
  FInsn.OpCode := $BA04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test345;
begin
  // adcs x9, xzr, x10.
  FInsn.OpCode := $BA0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
end;

procedure TBasicTest.Test346;
begin
  // adcs x20, x0, xzr.
  FInsn.OpCode := $BA1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test347;
begin
  // sbc w29, w27, w25.
  FInsn.OpCode := $5A19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test348;
begin
  // sbc wzr, w3, w4.
  FInsn.OpCode := $5A04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test349;
begin
  // ngc w9, w10.
  FInsn.OpCode := $5A0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
end;

procedure TBasicTest.Test350;
begin
  // sbc w20, w0, wzr.
  FInsn.OpCode := $5A1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test351;
begin
  // sbc x29, x27, x25.
  FInsn.OpCode := $DA19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X25);
end;

procedure TBasicTest.Test352;
begin
  // sbc xzr, x3, x4.
  FInsn.OpCode := $DA04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test353;
begin
  // ngc x9, x10.
  FInsn.OpCode := $DA0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
end;

procedure TBasicTest.Test354;
begin
  // sbc x20, x0, xzr.
  FInsn.OpCode := $DA1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test355;
begin
  // sbcs w29, w27, w25.
  FInsn.OpCode := $7A19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test356;
begin
  // sbcs wzr, w3, w4.
  FInsn.OpCode := $7A04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test357;
begin
  // ngcs w9, w10.
  FInsn.OpCode := $7A0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
end;

procedure TBasicTest.Test358;
begin
  // sbcs w20, w0, wzr.
  FInsn.OpCode := $7A1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test359;
begin
  // sbcs x29, x27, x25.
  FInsn.OpCode := $FA19037D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X25);
end;

procedure TBasicTest.Test360;
begin
  // sbcs xzr, x3, x4.
  FInsn.OpCode := $FA04007F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test361;
begin
  // ngcs x9, x10.
  FInsn.OpCode := $FA0A03E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
end;

procedure TBasicTest.Test362;
begin
  // sbcs x20, x0, xzr.
  FInsn.OpCode := $FA1F0014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test363;
begin
  // ngc w3, w12.
  FInsn.OpCode := $5A0C03E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
end;

procedure TBasicTest.Test364;
begin
  // ngc wzr, w9.
  FInsn.OpCode := $5A0903FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TBasicTest.Test365;
begin
  // ngc w23, wzr.
  FInsn.OpCode := $5A1F03F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test366;
begin
  // ngc x29, x30.
  FInsn.OpCode := $DA1E03FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
end;

procedure TBasicTest.Test367;
begin
  // ngc xzr, x0.
  FInsn.OpCode := $DA0003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
end;

procedure TBasicTest.Test368;
begin
  // ngc x0, xzr.
  FInsn.OpCode := $DA1F03E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test369;
begin
  // ngcs w3, w12.
  FInsn.OpCode := $7A0C03E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
end;

procedure TBasicTest.Test370;
begin
  // ngcs wzr, w9.
  FInsn.OpCode := $7A0903FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
end;

procedure TBasicTest.Test371;
begin
  // ngcs w23, wzr.
  FInsn.OpCode := $7A1F03F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test372;
begin
  // ngcs x29, x30.
  FInsn.OpCode := $FA1E03FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
end;

procedure TBasicTest.Test373;
begin
  // ngcs xzr, x0.
  FInsn.OpCode := $FA0003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
end;

procedure TBasicTest.Test374;
begin
  // ngcs x0, xzr.
  FInsn.OpCode := $FA1F03E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NGCS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test375;
begin
  // sbfx x1, x2, #3, #2.
  FInsn.OpCode := $93431041;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(2));
end;

procedure TBasicTest.Test376;
begin
  // asr x3, x4, #63.
  FInsn.OpCode := $937FFC83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test377;
begin
  // asr wzr, wzr, #31.
  FInsn.OpCode := $131F7FFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test378;
begin
  // sbfx w12, w9, #0, #1.
  FInsn.OpCode := $1300012C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test379;
begin
  // ubfiz x4, x5, #52, #11.
  FInsn.OpCode := $D34C28A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(52));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test380;
begin
  // ubfx xzr, x4, #0, #1.
  FInsn.OpCode := $D340009F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test381;
begin
  // ubfiz x4, xzr, #1, #6.
  FInsn.OpCode := $D37F17E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(6));
end;

procedure TBasicTest.Test382;
begin
  // lsr x5, x6, #12.
  FInsn.OpCode := $D34CFCC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(12));
end;

procedure TBasicTest.Test383;
begin
  // bfi x4, x5, #52, #11.
  FInsn.OpCode := $B34C28A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(52));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test384;
begin
  // bfxil xzr, x4, #0, #1.
  FInsn.OpCode := $B340009F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test385;
begin
  // bfc x4, #1, #6.
  FInsn.OpCode := $B37F17E4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(1));
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(6));
end;

procedure TBasicTest.Test386;
begin
  // bfxil x5, x6, #12, #52.
  FInsn.OpCode := $B34CFCC5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(12));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(52));
end;

procedure TBasicTest.Test387;
begin
  // sxtb w1, w2.
  FInsn.OpCode := $13001C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SXTB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TBasicTest.Test388;
begin
  // sxtb xzr, w3.
  FInsn.OpCode := $93401C7F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SXTB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TBasicTest.Test389;
begin
  // sxth w9, w10.
  FInsn.OpCode := $13003D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SXTH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
end;

procedure TBasicTest.Test390;
begin
  // sxth x0, w1.
  FInsn.OpCode := $93403C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SXTH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
end;

procedure TBasicTest.Test391;
begin
  // sxtw x3, w30.
  FInsn.OpCode := $93407FC3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SXTW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
end;

procedure TBasicTest.Test392;
begin
  // uxtb w1, w2.
  FInsn.OpCode := $53001C41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UXTB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TBasicTest.Test393;
begin
  // uxth w9, w10.
  FInsn.OpCode := $53003D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UXTH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
end;

procedure TBasicTest.Test394;
begin
  // asr w3, w2, #0.
  FInsn.OpCode := $13007C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test395;
begin
  // asr w9, w10, #31.
  FInsn.OpCode := $131F7D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test396;
begin
  // asr x20, x21, #63.
  FInsn.OpCode := $937FFEB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test397;
begin
  // asr w1, wzr, #3.
  FInsn.OpCode := $13037FE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TBasicTest.Test398;
begin
  // lsr w3, w2, #0.
  FInsn.OpCode := $53007C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test399;
begin
  // lsr w9, w10, #31.
  FInsn.OpCode := $531F7D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test400;
begin
  // lsr x20, x21, #63.
  FInsn.OpCode := $D37FFEB4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test401;
begin
  // lsr wzr, wzr, #3.
  FInsn.OpCode := $53037FFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TBasicTest.Test402;
begin
  // lsr w3, w2, #0.
  FInsn.OpCode := $53007C43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test403;
begin
  // lsl w9, w10, #31.
  FInsn.OpCode := $53010149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test404;
begin
  // lsl x20, x21, #63.
  FInsn.OpCode := $D34102B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test405;
begin
  // lsl w1, wzr, #3.
  FInsn.OpCode := $531D73E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(3));
end;

procedure TBasicTest.Test406;
begin
  // sbfx w9, w10, #0, #1.
  FInsn.OpCode := $13000149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test407;
begin
  // sbfiz x2, x3, #63, #1.
  FInsn.OpCode := $93410062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test408;
begin
  // asr x19, x20, #0.
  FInsn.OpCode := $9340FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test409;
begin
  // sbfiz x9, x10, #5, #59.
  FInsn.OpCode := $937BE949;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(59));
end;

procedure TBasicTest.Test410;
begin
  // asr w9, w10, #0.
  FInsn.OpCode := $13007D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test411;
begin
  // sbfiz w11, w12, #31, #1.
  FInsn.OpCode := $1301018B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test412;
begin
  // sbfiz w13, w14, #29, #3.
  FInsn.OpCode := $130309CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(29));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(3));
end;

procedure TBasicTest.Test413;
begin
  // sbfiz xzr, xzr, #10, #11.
  FInsn.OpCode := $93762BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(10));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test414;
begin
  // sbfx w9, w10, #0, #1.
  FInsn.OpCode := $13000149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test415;
begin
  // asr x2, x3, #63.
  FInsn.OpCode := $937FFC62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test416;
begin
  // asr x19, x20, #0.
  FInsn.OpCode := $9340FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test417;
begin
  // asr x9, x10, #5.
  FInsn.OpCode := $9345FD49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TBasicTest.Test418;
begin
  // asr w9, w10, #0.
  FInsn.OpCode := $13007D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test419;
begin
  // asr w11, w12, #31.
  FInsn.OpCode := $131F7D8B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test420;
begin
  // asr w13, w14, #29.
  FInsn.OpCode := $131D7DCD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(29));
end;

procedure TBasicTest.Test421;
begin
  // sbfx xzr, xzr, #10, #11.
  FInsn.OpCode := $934A53FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(10));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test422;
begin
  // bfxil w9, w10, #0, #1.
  FInsn.OpCode := $33000149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test423;
begin
  // bfi x2, x3, #63, #1.
  FInsn.OpCode := $B3410062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test424;
begin
  // bfxil x19, x20, #0, #64.
  FInsn.OpCode := $B340FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test425;
begin
  // bfi x9, x10, #5, #59.
  FInsn.OpCode := $B37BE949;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(59));
end;

procedure TBasicTest.Test426;
begin
  // bfxil w9, w10, #0, #32.
  FInsn.OpCode := $33007D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test427;
begin
  // bfi w11, w12, #31, #1.
  FInsn.OpCode := $3301018B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test428;
begin
  // bfi w13, w14, #29, #3.
  FInsn.OpCode := $330309CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(29));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(3));
end;

procedure TBasicTest.Test429;
begin
  // bfc xzr, #10, #11.
  FInsn.OpCode := $B3762BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(10));
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test430;
begin
  // bfxil w9, w10, #0, #1.
  FInsn.OpCode := $33000149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test431;
begin
  // bfxil x2, x3, #63, #1.
  FInsn.OpCode := $B37FFC62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test432;
begin
  // bfxil x19, x20, #0, #64.
  FInsn.OpCode := $B340FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test433;
begin
  // bfxil x9, x10, #5, #59.
  FInsn.OpCode := $B345FD49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(59));
end;

procedure TBasicTest.Test434;
begin
  // bfxil w9, w10, #0, #32.
  FInsn.OpCode := $33007D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test435;
begin
  // bfxil w11, w12, #31, #1.
  FInsn.OpCode := $331F7D8B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test436;
begin
  // bfxil w13, w14, #29, #3.
  FInsn.OpCode := $331D7DCD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(29));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(3));
end;

procedure TBasicTest.Test437;
begin
  // bfxil xzr, xzr, #10, #11.
  FInsn.OpCode := $B34A53FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFXIL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(10));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test438;
begin
  // ubfx w9, w10, #0, #1.
  FInsn.OpCode := $53000149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test439;
begin
  // lsl x2, x3, #63.
  FInsn.OpCode := $D3410062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test440;
begin
  // lsr x19, x20, #0.
  FInsn.OpCode := $D340FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test441;
begin
  // lsl x9, x10, #5.
  FInsn.OpCode := $D37BE949;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TBasicTest.Test442;
begin
  // lsr w9, w10, #0.
  FInsn.OpCode := $53007D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test443;
begin
  // lsl w11, w12, #31.
  FInsn.OpCode := $5301018B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test444;
begin
  // lsl w13, w14, #29.
  FInsn.OpCode := $530309CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(29));
end;

procedure TBasicTest.Test445;
begin
  // ubfiz xzr, xzr, #10, #11.
  FInsn.OpCode := $D3762BFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFIZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(10));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test446;
begin
  // ubfx w9, w10, #0, #1.
  FInsn.OpCode := $53000149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test447;
begin
  // lsr x2, x3, #63.
  FInsn.OpCode := $D37FFC62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test448;
begin
  // lsr x19, x20, #0.
  FInsn.OpCode := $D340FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test449;
begin
  // lsr x9, x10, #5.
  FInsn.OpCode := $D345FD49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(5));
end;

procedure TBasicTest.Test450;
begin
  // lsr w9, w10, #0.
  FInsn.OpCode := $53007D49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test451;
begin
  // lsr w11, w12, #31.
  FInsn.OpCode := $531F7D8B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test452;
begin
  // lsr w13, w14, #29.
  FInsn.OpCode := $531D7DCD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(29));
end;

procedure TBasicTest.Test453;
begin
  // ubfx xzr, xzr, #10, #11.
  FInsn.OpCode := $D34A53FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UBFX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(10));
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(11));
end;

procedure TBasicTest.Test454;
begin
  // bfc wzr, #31, #1.
  FInsn.OpCode := $330103FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(31));
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test455;
begin
  // bfc x0, #5, #9.
  FInsn.OpCode := $B37B23E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(5));
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(9));
end;

procedure TBasicTest.Test456;
begin
  // bfc xzr, #63, #1.
  FInsn.OpCode := $B34103FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BFC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(63));
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test457;
begin
  // cbz w5, #0.
  FInsn.OpCode := $34000005;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CBZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(0));
end;

procedure TBasicTest.Test458;
begin
  // cbnz x3, #-4.
  FInsn.OpCode := $B5FFFFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CBNZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-4));
end;

procedure TBasicTest.Test459;
begin
  // cbz w20, #1048572.
  FInsn.OpCode := $347FFFF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CBZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(1048572));
end;

procedure TBasicTest.Test460;
begin
  // cbnz xzr, #-1048576.
  FInsn.OpCode := $B580001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CBNZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-1048576));
end;

procedure TBasicTest.Test461;
begin
  // b.eq #0.
  FInsn.OpCode := $54000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(0));
end;

procedure TBasicTest.Test462;
begin
  // b.lt #-4.
  FInsn.OpCode := $54FFFFEB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(-4));
end;

procedure TBasicTest.Test463;
begin
  // b.lo #1048572.
  FInsn.OpCode := $547FFFE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(1048572));
end;

procedure TBasicTest.Test464;
begin
  // rbit w0, w7.
  FInsn.OpCode := $5AC000E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RBIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
end;

procedure TBasicTest.Test465;
begin
  // rbit x18, x3.
  FInsn.OpCode := $DAC00072;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RBIT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
end;

procedure TBasicTest.Test466;
begin
  // rev16 w17, w1.
  FInsn.OpCode := $5AC00431;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV16);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
end;

procedure TBasicTest.Test467;
begin
  // rev16 x5, x2.
  FInsn.OpCode := $DAC00445;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV16);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TBasicTest.Test468;
begin
  // rev w18, w0.
  FInsn.OpCode := $5AC00812;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
end;

procedure TBasicTest.Test469;
begin
  // rev32 x20, x1.
  FInsn.OpCode := $DAC00834;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X1);
end;

procedure TBasicTest.Test470;
begin
  // rev32 x20, xzr.
  FInsn.OpCode := $DAC00BF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV32);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test471;
begin
  // rev x22, x2.
  FInsn.OpCode := $DAC00C56;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
end;

procedure TBasicTest.Test472;
begin
  // rev x18, xzr.
  FInsn.OpCode := $DAC00FF2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test473;
begin
  // rev w7, wzr.
  FInsn.OpCode := $5AC00BE7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test474;
begin
  // clz w24, w3.
  FInsn.OpCode := $5AC01078;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TBasicTest.Test475;
begin
  // clz x26, x4.
  FInsn.OpCode := $DAC0109A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
end;

procedure TBasicTest.Test476;
begin
  // cls w3, w5.
  FInsn.OpCode := $5AC014A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TBasicTest.Test477;
begin
  // cls x20, x5.
  FInsn.OpCode := $DAC014B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
end;

procedure TBasicTest.Test478;
begin
  // clz w24, wzr.
  FInsn.OpCode := $5AC013F8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
end;

procedure TBasicTest.Test479;
begin
  // rev x22, xzr.
  FInsn.OpCode := $DAC00FF6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test480;
begin
  // rev x13, x12.
  FInsn.OpCode := $DAC00D8D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_REV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X12);
end;

procedure TBasicTest.Test481;
begin
  // crc32b w5, w7, w20.
  FInsn.OpCode := $1AD440E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32B);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
end;

procedure TBasicTest.Test482;
begin
  // crc32h w28, wzr, w30.
  FInsn.OpCode := $1ADE47FC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32H);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W30);
end;

procedure TBasicTest.Test483;
begin
  // crc32w w0, w1, w2.
  FInsn.OpCode := $1AC24820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32W);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
end;

procedure TBasicTest.Test484;
begin
  // crc32x w7, w9, x20.
  FInsn.OpCode := $9AD44D27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32X);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
end;

procedure TBasicTest.Test485;
begin
  // crc32cb w9, w5, w4.
  FInsn.OpCode := $1AC450A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32CB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
end;

procedure TBasicTest.Test486;
begin
  // crc32ch w13, w17, w25.
  FInsn.OpCode := $1AD9562D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32CH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test487;
begin
  // crc32cw wzr, w3, w5.
  FInsn.OpCode := $1AC5587F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32CW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
end;

procedure TBasicTest.Test488;
begin
  // crc32cx w18, w16, xzr.
  FInsn.OpCode := $9ADF5E12;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CRC32CX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test489;
begin
  // udiv w0, w7, w10.
  FInsn.OpCode := $1ACA08E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
end;

procedure TBasicTest.Test490;
begin
  // udiv x9, x22, x4.
  FInsn.OpCode := $9AC40AC9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
end;

procedure TBasicTest.Test491;
begin
  // sdiv w12, w21, w0.
  FInsn.OpCode := $1AC00EAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W0);
end;

procedure TBasicTest.Test492;
begin
  // sdiv x13, x2, x1.
  FInsn.OpCode := $9AC10C4D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X1);
end;

procedure TBasicTest.Test493;
begin
  // lsl w11, w12, w13.
  FInsn.OpCode := $1ACD218B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W13);
end;

procedure TBasicTest.Test494;
begin
  // lsl x14, x15, x16.
  FInsn.OpCode := $9AD021EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X16);
end;

procedure TBasicTest.Test495;
begin
  // lsr w17, w18, w19.
  FInsn.OpCode := $1AD32651;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
end;

procedure TBasicTest.Test496;
begin
  // lsr x20, x21, x22.
  FInsn.OpCode := $9AD626B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X22);
end;

procedure TBasicTest.Test497;
begin
  // asr w23, w24, w25.
  FInsn.OpCode := $1AD92B17;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test498;
begin
  // asr x26, x27, x28.
  FInsn.OpCode := $9ADC2B7A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X28);
end;

procedure TBasicTest.Test499;
begin
  // ror w0, w1, w2.
  FInsn.OpCode := $1AC22C20;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
end;

procedure TBasicTest.Test500;
begin
  // ror x3, x4, x5.
  FInsn.OpCode := $9AC52C83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X5);
end;

procedure TBasicTest.Test501;
begin
  // lsl w6, w7, w8.
  FInsn.OpCode := $1AC820E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W8);
end;

procedure TBasicTest.Test502;
begin
  // lsl x9, x10, x11.
  FInsn.OpCode := $9ACB2149;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X11);
end;

procedure TBasicTest.Test503;
begin
  // lsr w12, w13, w14.
  FInsn.OpCode := $1ACE25AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
end;

procedure TBasicTest.Test504;
begin
  // lsr x15, x16, x17.
  FInsn.OpCode := $9AD1260F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LSR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X17);
end;

procedure TBasicTest.Test505;
begin
  // asr w18, w19, w20.
  FInsn.OpCode := $1AD42A72;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
end;

procedure TBasicTest.Test506;
begin
  // asr x21, x22, x23.
  FInsn.OpCode := $9AD72AD5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ASR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X23);
end;

procedure TBasicTest.Test507;
begin
  // ror w24, w25, w26.
  FInsn.OpCode := $1ADA2F38;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W26);
end;

procedure TBasicTest.Test508;
begin
  // ror x27, x28, x29.
  FInsn.OpCode := $9ADD2F9B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X29);
end;

procedure TBasicTest.Test509;
begin
  // madd w1, w3, w7, w4.
  FInsn.OpCode := $1B071061;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W4);
end;

procedure TBasicTest.Test510;
begin
  // madd wzr, w0, w9, w11.
  FInsn.OpCode := $1B092C1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W11);
end;

procedure TBasicTest.Test511;
begin
  // madd w13, wzr, w4, w4.
  FInsn.OpCode := $1B0413ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W4);
end;

procedure TBasicTest.Test512;
begin
  // madd w19, w30, wzr, w29.
  FInsn.OpCode := $1B1F77D3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W29);
end;

procedure TBasicTest.Test513;
begin
  // mul w4, w5, w6.
  FInsn.OpCode := $1B067CA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
end;

procedure TBasicTest.Test514;
begin
  // madd x1, x3, x7, x4.
  FInsn.OpCode := $9B071061;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TBasicTest.Test515;
begin
  // madd xzr, x0, x9, x11.
  FInsn.OpCode := $9B092C1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X11);
end;

procedure TBasicTest.Test516;
begin
  // madd x13, xzr, x4, x4.
  FInsn.OpCode := $9B0413ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TBasicTest.Test517;
begin
  // madd x19, x30, xzr, x29.
  FInsn.OpCode := $9B1F77D3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X29);
end;

procedure TBasicTest.Test518;
begin
  // mul x4, x5, x6.
  FInsn.OpCode := $9B067CA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
end;

procedure TBasicTest.Test519;
begin
  // msub w1, w3, w7, w4.
  FInsn.OpCode := $1B079061;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W4);
end;

procedure TBasicTest.Test520;
begin
  // msub wzr, w0, w9, w11.
  FInsn.OpCode := $1B09AC1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W11);
end;

procedure TBasicTest.Test521;
begin
  // msub w13, wzr, w4, w4.
  FInsn.OpCode := $1B0493ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W4);
end;

procedure TBasicTest.Test522;
begin
  // msub w19, w30, wzr, w29.
  FInsn.OpCode := $1B1FF7D3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_W29);
end;

procedure TBasicTest.Test523;
begin
  // mneg w4, w5, w6.
  FInsn.OpCode := $1B06FCA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W6);
end;

procedure TBasicTest.Test524;
begin
  // msub x1, x3, x7, x4.
  FInsn.OpCode := $9B079061;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TBasicTest.Test525;
begin
  // msub xzr, x0, x9, x11.
  FInsn.OpCode := $9B09AC1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X11);
end;

procedure TBasicTest.Test526;
begin
  // msub x13, xzr, x4, x4.
  FInsn.OpCode := $9B0493ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X4);
end;

procedure TBasicTest.Test527;
begin
  // msub x19, x30, xzr, x29.
  FInsn.OpCode := $9B1FF7D3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X29);
end;

procedure TBasicTest.Test528;
begin
  // mneg x4, x5, x6.
  FInsn.OpCode := $9B06FCA4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X6);
end;

procedure TBasicTest.Test529;
begin
  // smaddl x3, w5, w2, x9.
  FInsn.OpCode := $9B2224A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X9);
end;

procedure TBasicTest.Test530;
begin
  // smaddl xzr, w10, w11, x12.
  FInsn.OpCode := $9B2B315F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X12);
end;

procedure TBasicTest.Test531;
begin
  // smaddl x13, wzr, w14, x15.
  FInsn.OpCode := $9B2E3FED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X15);
end;

procedure TBasicTest.Test532;
begin
  // smaddl x16, w17, wzr, x18.
  FInsn.OpCode := $9B3F4A30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X18);
end;

procedure TBasicTest.Test533;
begin
  // smull x19, w20, w21.
  FInsn.OpCode := $9B357E93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W21);
end;

procedure TBasicTest.Test534;
begin
  // smsubl x3, w5, w2, x9.
  FInsn.OpCode := $9B22A4A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X9);
end;

procedure TBasicTest.Test535;
begin
  // smsubl xzr, w10, w11, x12.
  FInsn.OpCode := $9B2BB15F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X12);
end;

procedure TBasicTest.Test536;
begin
  // smsubl x13, wzr, w14, x15.
  FInsn.OpCode := $9B2EBFED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X15);
end;

procedure TBasicTest.Test537;
begin
  // smsubl x16, w17, wzr, x18.
  FInsn.OpCode := $9B3FCA30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X18);
end;

procedure TBasicTest.Test538;
begin
  // smnegl x19, w20, w21.
  FInsn.OpCode := $9B35FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMNEGL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W21);
end;

procedure TBasicTest.Test539;
begin
  // umaddl x3, w5, w2, x9.
  FInsn.OpCode := $9BA224A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X9);
end;

procedure TBasicTest.Test540;
begin
  // umaddl xzr, w10, w11, x12.
  FInsn.OpCode := $9BAB315F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X12);
end;

procedure TBasicTest.Test541;
begin
  // umaddl x13, wzr, w14, x15.
  FInsn.OpCode := $9BAE3FED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X15);
end;

procedure TBasicTest.Test542;
begin
  // umaddl x16, w17, wzr, x18.
  FInsn.OpCode := $9BBF4A30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMADDL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X18);
end;

procedure TBasicTest.Test543;
begin
  // umull x19, w20, w21.
  FInsn.OpCode := $9BB57E93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W21);
end;

procedure TBasicTest.Test544;
begin
  // umsubl x3, w5, w2, x9.
  FInsn.OpCode := $9BA2A4A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X9);
end;

procedure TBasicTest.Test545;
begin
  // umsubl xzr, w10, w11, x12.
  FInsn.OpCode := $9BABB15F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X12);
end;

procedure TBasicTest.Test546;
begin
  // umsubl x13, wzr, w14, x15.
  FInsn.OpCode := $9BAEBFED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X15);
end;

procedure TBasicTest.Test547;
begin
  // umsubl x16, w17, wzr, x18.
  FInsn.OpCode := $9BBFCA30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMSUBL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_X18);
end;

procedure TBasicTest.Test548;
begin
  // umnegl x19, w20, w21.
  FInsn.OpCode := $9BB5FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMNEGL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W21);
end;

procedure TBasicTest.Test549;
begin
  // smulh x30, x29, x28.
  FInsn.OpCode := $9B5C7FBE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X28);
end;

procedure TBasicTest.Test550;
begin
  // smulh xzr, x27, x26.
  FInsn.OpCode := $9B5A7F7F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
end;

procedure TBasicTest.Test551;
begin
  // smulh x25, xzr, x24.
  FInsn.OpCode := $9B587FF9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X24);
end;

procedure TBasicTest.Test552;
begin
  // smulh x23, x22, xzr.
  FInsn.OpCode := $9B5F7ED7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test553;
begin
  // umulh x30, x29, x28.
  FInsn.OpCode := $9BDC7FBE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X28);
end;

procedure TBasicTest.Test554;
begin
  // umulh xzr, x27, x26.
  FInsn.OpCode := $9BDA7F7F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
end;

procedure TBasicTest.Test555;
begin
  // umulh x25, xzr, x24.
  FInsn.OpCode := $9BD87FF9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X24);
end;

procedure TBasicTest.Test556;
begin
  // umulh x23, x22, xzr.
  FInsn.OpCode := $9BDF7ED7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test557;
begin
  // mul w3, w4, w5.
  FInsn.OpCode := $1B057C83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W5);
end;

procedure TBasicTest.Test558;
begin
  // mul wzr, w6, w7.
  FInsn.OpCode := $1B077CDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
end;

procedure TBasicTest.Test559;
begin
  // mul w8, wzr, w9.
  FInsn.OpCode := $1B097FE8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W9);
end;

procedure TBasicTest.Test560;
begin
  // mul w10, w11, wzr.
  FInsn.OpCode := $1B1F7D6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test561;
begin
  // mul x12, x13, x14.
  FInsn.OpCode := $9B0E7DAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
end;

procedure TBasicTest.Test562;
begin
  // mul xzr, x15, x16.
  FInsn.OpCode := $9B107DFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X16);
end;

procedure TBasicTest.Test563;
begin
  // mul x17, xzr, x18.
  FInsn.OpCode := $9B127FF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X18);
end;

procedure TBasicTest.Test564;
begin
  // mul x19, x20, xzr.
  FInsn.OpCode := $9B1F7E93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
end;

procedure TBasicTest.Test565;
begin
  // mneg w21, w22, w23.
  FInsn.OpCode := $1B17FED5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
end;

procedure TBasicTest.Test566;
begin
  // mneg wzr, w24, w25.
  FInsn.OpCode := $1B19FF1F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W24);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W25);
end;

procedure TBasicTest.Test567;
begin
  // mneg w26, wzr, w27.
  FInsn.OpCode := $1B1BFFFA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W27);
end;

procedure TBasicTest.Test568;
begin
  // mneg w28, w29, wzr.
  FInsn.OpCode := $1B1FFFBC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
end;

procedure TBasicTest.Test569;
begin
  // smull x11, w13, w17.
  FInsn.OpCode := $9B317DAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
end;

procedure TBasicTest.Test570;
begin
  // umull x11, w13, w17.
  FInsn.OpCode := $9BB17DAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMULL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
end;

procedure TBasicTest.Test571;
begin
  // smnegl x11, w13, w17.
  FInsn.OpCode := $9B31FDAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMNEGL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
end;

procedure TBasicTest.Test572;
begin
  // umnegl x11, w13, w17.
  FInsn.OpCode := $9BB1FDAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UMNEGL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
end;

procedure TBasicTest.Test573;
begin
  // svc #0.
  FInsn.OpCode := $D4000001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SVC);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test574;
begin
  // svc #65535.
  FInsn.OpCode := $D41FFFE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SVC);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(65535));
end;

procedure TBasicTest.Test575;
begin
  // hvc #1.
  FInsn.OpCode := $D4000022;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_HVC);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test576;
begin
  // smc #12000.
  FInsn.OpCode := $D405DC03;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SMC);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(12000));
end;

procedure TBasicTest.Test577;
begin
  // brk #12.
  FInsn.OpCode := $D4200180;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BRK);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(12));
end;

procedure TBasicTest.Test578;
begin
  // hlt #123.
  FInsn.OpCode := $D4400F60;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_HLT);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(123));
end;

procedure TBasicTest.Test579;
begin
  // dcps1 #42.
  FInsn.OpCode := $D4A00541;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS1);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(42));
end;

procedure TBasicTest.Test580;
begin
  // dcps2 #9.
  FInsn.OpCode := $D4A00122;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS2);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(9));
end;

procedure TBasicTest.Test581;
begin
  // dcps3 #1000.
  FInsn.OpCode := $D4A07D03;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS3);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(1000));
end;

procedure TBasicTest.Test582;
begin
  // dcps1.
  FInsn.OpCode := $D4A00001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS1);
end;

procedure TBasicTest.Test583;
begin
  // dcps2.
  FInsn.OpCode := $D4A00002;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS2);
end;

procedure TBasicTest.Test584;
begin
  // dcps3.
  FInsn.OpCode := $D4A00003;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DCPS3);
end;

procedure TBasicTest.Test585;
begin
  // extr w3, w5, w7, #0.
  FInsn.OpCode := $138700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EXTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test586;
begin
  // extr w11, w13, w17, #31.
  FInsn.OpCode := $13917DAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EXTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test587;
begin
  // extr x3, x5, x7, #15.
  FInsn.OpCode := $93C73CA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EXTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(15));
end;

procedure TBasicTest.Test588;
begin
  // extr x11, x13, x17, #63.
  FInsn.OpCode := $93D1FDAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EXTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[3].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test589;
begin
  // ror x19, x23, #24.
  FInsn.OpCode := $93D762F3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(24));
end;

procedure TBasicTest.Test590;
begin
  // ror x29, xzr, #63.
  FInsn.OpCode := $93DFFFFD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(63));
end;

procedure TBasicTest.Test591;
begin
  // ror w9, w13, #31.
  FInsn.OpCode := $138D7DA9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ROR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(31));
end;

procedure TBasicTest.Test592;
begin
  // fcmp s3, s5.
  FInsn.OpCode := $1E252060;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
end;

procedure TBasicTest.Test593;
begin
  // fcmp s31, #0.0.
  FInsn.OpCode := $1E2023E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TBasicTest.Test594;
begin
  // fcmpe s29, s30.
  FInsn.OpCode := $1E3E23B0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S30);
end;

procedure TBasicTest.Test595;
begin
  // fcmpe s15, #0.0.
  FInsn.OpCode := $1E2021F8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S15);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TBasicTest.Test596;
begin
  // fcmp d4, d12.
  FInsn.OpCode := $1E6C2080;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
end;

procedure TBasicTest.Test597;
begin
  // fcmp d23, #0.0.
  FInsn.OpCode := $1E6022E8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TBasicTest.Test598;
begin
  // fcmpe d26, d22.
  FInsn.OpCode := $1E762350;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D22);
end;

procedure TBasicTest.Test599;
begin
  // fcmpe d29, #0.0.
  FInsn.OpCode := $1E6023B8;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCMPE);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D29);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.0));
end;

procedure TBasicTest.Test600;
begin
  // fmov s0, s1.
  FInsn.OpCode := $1E204020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S1);
end;

procedure TBasicTest.Test601;
begin
  // fabs s2, s3.
  FInsn.OpCode := $1E20C062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TBasicTest.Test602;
begin
  // fneg s4, s5.
  FInsn.OpCode := $1E2140A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
end;

procedure TBasicTest.Test603;
begin
  // fsqrt s6, s7.
  FInsn.OpCode := $1E21C0E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S7);
end;

procedure TBasicTest.Test604;
begin
  // fcvt d8, s9.
  FInsn.OpCode := $1E22C128;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S9);
end;

procedure TBasicTest.Test605;
begin
  // fcvt h10, s11.
  FInsn.OpCode := $1E23C16A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
end;

procedure TBasicTest.Test606;
begin
  // frintn s12, s13.
  FInsn.OpCode := $1E2441AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TBasicTest.Test607;
begin
  // frintp s14, s15.
  FInsn.OpCode := $1E24C1EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S15);
end;

procedure TBasicTest.Test608;
begin
  // frintm s16, s17.
  FInsn.OpCode := $1E254230;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S17);
end;

procedure TBasicTest.Test609;
begin
  // frintz s18, s19.
  FInsn.OpCode := $1E25C272;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S19);
end;

procedure TBasicTest.Test610;
begin
  // frinta s20, s21.
  FInsn.OpCode := $1E2642B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S21);
end;

procedure TBasicTest.Test611;
begin
  // frintx s22, s23.
  FInsn.OpCode := $1E2742F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S23);
end;

procedure TBasicTest.Test612;
begin
  // frinti s24, s25.
  FInsn.OpCode := $1E27C338;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S25);
end;

procedure TBasicTest.Test613;
begin
  // fmov d0, d1.
  FInsn.OpCode := $1E604020;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D1);
end;

procedure TBasicTest.Test614;
begin
  // fabs d2, d3.
  FInsn.OpCode := $1E60C062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FABS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
end;

procedure TBasicTest.Test615;
begin
  // fneg d4, d5.
  FInsn.OpCode := $1E6140A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNEG);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
end;

procedure TBasicTest.Test616;
begin
  // fsqrt d6, d7.
  FInsn.OpCode := $1E61C0E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSQRT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D7);
end;

procedure TBasicTest.Test617;
begin
  // fcvt s8, d9.
  FInsn.OpCode := $1E624128;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D9);
end;

procedure TBasicTest.Test618;
begin
  // fcvt h10, d11.
  FInsn.OpCode := $1E63C16A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
end;

procedure TBasicTest.Test619;
begin
  // frintn d12, d13.
  FInsn.OpCode := $1E6441AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
end;

procedure TBasicTest.Test620;
begin
  // frintp d14, d15.
  FInsn.OpCode := $1E64C1EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D15);
end;

procedure TBasicTest.Test621;
begin
  // frintm d16, d17.
  FInsn.OpCode := $1E654230;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D17);
end;

procedure TBasicTest.Test622;
begin
  // frintz d18, d19.
  FInsn.OpCode := $1E65C272;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D19);
end;

procedure TBasicTest.Test623;
begin
  // frinta d20, d21.
  FInsn.OpCode := $1E6642B4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTA);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D21);
end;

procedure TBasicTest.Test624;
begin
  // frintx d22, d23.
  FInsn.OpCode := $1E6742F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D23);
end;

procedure TBasicTest.Test625;
begin
  // frinti d24, d25.
  FInsn.OpCode := $1E67C338;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FRINTI);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D25);
end;

procedure TBasicTest.Test626;
begin
  // fcvt s26, h27.
  FInsn.OpCode := $1EE2437A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H27);
end;

procedure TBasicTest.Test627;
begin
  // fcvt d28, h29.
  FInsn.OpCode := $1EE2C3BC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVT);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D28);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_H29);
end;

procedure TBasicTest.Test628;
begin
  // fmul s20, s19, s17.
  FInsn.OpCode := $1E310A74;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S19);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S17);
end;

procedure TBasicTest.Test629;
begin
  // fdiv s1, s2, s3.
  FInsn.OpCode := $1E231841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S3);
end;

procedure TBasicTest.Test630;
begin
  // fadd s4, s5, s6.
  FInsn.OpCode := $1E2628A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S6);
end;

procedure TBasicTest.Test631;
begin
  // fsub s7, s8, s9.
  FInsn.OpCode := $1E293907;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S9);
end;

procedure TBasicTest.Test632;
begin
  // fmax s10, s11, s12.
  FInsn.OpCode := $1E2C496A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S12);
end;

procedure TBasicTest.Test633;
begin
  // fmin s13, s14, s15.
  FInsn.OpCode := $1E2F59CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S15);
end;

procedure TBasicTest.Test634;
begin
  // fmaxnm s16, s17, s18.
  FInsn.OpCode := $1E326A30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S18);
end;

procedure TBasicTest.Test635;
begin
  // fminnm s19, s20, s21.
  FInsn.OpCode := $1E357A93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S21);
end;

procedure TBasicTest.Test636;
begin
  // fnmul s22, s23, s24.
  FInsn.OpCode := $1E388AF6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S24);
end;

procedure TBasicTest.Test637;
begin
  // fmul d20, d19, d17.
  FInsn.OpCode := $1E710A74;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D19);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D17);
end;

procedure TBasicTest.Test638;
begin
  // fdiv d1, d2, d3.
  FInsn.OpCode := $1E631841;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FDIV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D3);
end;

procedure TBasicTest.Test639;
begin
  // fadd d4, d5, d6.
  FInsn.OpCode := $1E6628A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D6);
end;

procedure TBasicTest.Test640;
begin
  // fsub d7, d8, d9.
  FInsn.OpCode := $1E693907;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D8);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D9);
end;

procedure TBasicTest.Test641;
begin
  // fmax d10, d11, d12.
  FInsn.OpCode := $1E6C496A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAX);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D12);
end;

procedure TBasicTest.Test642;
begin
  // fmin d13, d14, d15.
  FInsn.OpCode := $1E6F59CD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMIN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D15);
end;

procedure TBasicTest.Test643;
begin
  // fmaxnm d16, d17, d18.
  FInsn.OpCode := $1E726A30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMAXNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D18);
end;

procedure TBasicTest.Test644;
begin
  // fminnm d19, d20, d21.
  FInsn.OpCode := $1E757A93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMINNM);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D21);
end;

procedure TBasicTest.Test645;
begin
  // fnmul d22, d23, d24.
  FInsn.OpCode := $1E788AF6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMUL);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D24);
end;

procedure TBasicTest.Test646;
begin
  // fmadd s3, s5, s6, s31.
  FInsn.OpCode := $1F067CA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S31);
end;

procedure TBasicTest.Test647;
begin
  // fmadd d3, d13, d0, d23.
  FInsn.OpCode := $1F405DA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D23);
end;

procedure TBasicTest.Test648;
begin
  // fmsub s3, s5, s6, s31.
  FInsn.OpCode := $1F06FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S31);
end;

procedure TBasicTest.Test649;
begin
  // fmsub d3, d13, d0, d23.
  FInsn.OpCode := $1F40DDA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D23);
end;

procedure TBasicTest.Test650;
begin
  // fnmadd s3, s5, s6, s31.
  FInsn.OpCode := $1F267CA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S31);
end;

procedure TBasicTest.Test651;
begin
  // fnmadd d3, d13, d0, d23.
  FInsn.OpCode := $1F605DA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMADD);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D23);
end;

procedure TBasicTest.Test652;
begin
  // fnmsub s3, s5, s6, s31.
  FInsn.OpCode := $1F26FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_S6);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_S31);
end;

procedure TBasicTest.Test653;
begin
  // fnmsub d3, d13, d0, d23.
  FInsn.OpCode := $1F60DDA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FNMSUB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[3].Register, REG_D23);
end;

procedure TBasicTest.Test654;
begin
  // fcvtzs w3, s5, #1.
  FInsn.OpCode := $1E18FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test655;
begin
  // fcvtzs wzr, s20, #13.
  FInsn.OpCode := $1E18CE9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(13));
end;

procedure TBasicTest.Test656;
begin
  // fcvtzs w19, s0, #32.
  FInsn.OpCode := $1E188013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test657;
begin
  // fcvtzs x3, s5, #1.
  FInsn.OpCode := $9E18FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test658;
begin
  // fcvtzs x12, s30, #45.
  FInsn.OpCode := $9E184FCC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S30);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(45));
end;

procedure TBasicTest.Test659;
begin
  // fcvtzs x19, s0, #64.
  FInsn.OpCode := $9E180013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test660;
begin
  // fcvtzs w3, d5, #1.
  FInsn.OpCode := $1E58FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test661;
begin
  // fcvtzs wzr, d20, #13.
  FInsn.OpCode := $1E58CE9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(13));
end;

procedure TBasicTest.Test662;
begin
  // fcvtzs w19, d0, #32.
  FInsn.OpCode := $1E588013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test663;
begin
  // fcvtzs x3, d5, #1.
  FInsn.OpCode := $9E58FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test664;
begin
  // fcvtzs x12, d30, #45.
  FInsn.OpCode := $9E584FCC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D30);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(45));
end;

procedure TBasicTest.Test665;
begin
  // fcvtzs x19, d0, #64.
  FInsn.OpCode := $9E580013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test666;
begin
  // fcvtzu w3, s5, #1.
  FInsn.OpCode := $1E19FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test667;
begin
  // fcvtzu wzr, s20, #13.
  FInsn.OpCode := $1E19CE9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(13));
end;

procedure TBasicTest.Test668;
begin
  // fcvtzu w19, s0, #32.
  FInsn.OpCode := $1E198013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test669;
begin
  // fcvtzu x3, s5, #1.
  FInsn.OpCode := $9E19FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test670;
begin
  // fcvtzu x12, s30, #45.
  FInsn.OpCode := $9E194FCC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S30);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(45));
end;

procedure TBasicTest.Test671;
begin
  // fcvtzu x19, s0, #64.
  FInsn.OpCode := $9E190013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test672;
begin
  // fcvtzu w3, d5, #1.
  FInsn.OpCode := $1E59FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test673;
begin
  // fcvtzu wzr, d20, #13.
  FInsn.OpCode := $1E59CE9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(13));
end;

procedure TBasicTest.Test674;
begin
  // fcvtzu w19, d0, #32.
  FInsn.OpCode := $1E598013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test675;
begin
  // fcvtzu x3, d5, #1.
  FInsn.OpCode := $9E59FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test676;
begin
  // fcvtzu x12, d30, #45.
  FInsn.OpCode := $9E594FCC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D30);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(45));
end;

procedure TBasicTest.Test677;
begin
  // fcvtzu x19, d0, #64.
  FInsn.OpCode := $9E590013;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test678;
begin
  // scvtf s23, w19, #1.
  FInsn.OpCode := $1E02FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test679;
begin
  // scvtf s31, wzr, #20.
  FInsn.OpCode := $1E02B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test680;
begin
  // scvtf s14, w0, #32.
  FInsn.OpCode := $1E02800E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test681;
begin
  // scvtf s23, x19, #1.
  FInsn.OpCode := $9E02FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test682;
begin
  // scvtf s31, xzr, #20.
  FInsn.OpCode := $9E02B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test683;
begin
  // scvtf s14, x0, #64.
  FInsn.OpCode := $9E02000E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test684;
begin
  // scvtf d23, w19, #1.
  FInsn.OpCode := $1E42FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test685;
begin
  // scvtf d31, wzr, #20.
  FInsn.OpCode := $1E42B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test686;
begin
  // scvtf d14, w0, #32.
  FInsn.OpCode := $1E42800E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test687;
begin
  // scvtf d23, x19, #1.
  FInsn.OpCode := $9E42FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test688;
begin
  // scvtf d31, xzr, #20.
  FInsn.OpCode := $9E42B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test689;
begin
  // scvtf d14, x0, #64.
  FInsn.OpCode := $9E42000E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test690;
begin
  // ucvtf s23, w19, #1.
  FInsn.OpCode := $1E03FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test691;
begin
  // ucvtf s31, wzr, #20.
  FInsn.OpCode := $1E03B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test692;
begin
  // ucvtf s14, w0, #32.
  FInsn.OpCode := $1E03800E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test693;
begin
  // ucvtf s23, x19, #1.
  FInsn.OpCode := $9E03FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test694;
begin
  // ucvtf s31, xzr, #20.
  FInsn.OpCode := $9E03B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test695;
begin
  // ucvtf s14, x0, #64.
  FInsn.OpCode := $9E03000E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test696;
begin
  // ucvtf d23, w19, #1.
  FInsn.OpCode := $1E43FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test697;
begin
  // ucvtf d31, wzr, #20.
  FInsn.OpCode := $1E43B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test698;
begin
  // ucvtf d14, w0, #32.
  FInsn.OpCode := $1E43800E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(32));
end;

procedure TBasicTest.Test699;
begin
  // ucvtf d23, x19, #1.
  FInsn.OpCode := $9E43FE77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(1));
end;

procedure TBasicTest.Test700;
begin
  // ucvtf d31, xzr, #20.
  FInsn.OpCode := $9E43B3FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D31);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(20));
end;

procedure TBasicTest.Test701;
begin
  // ucvtf d14, x0, #64.
  FInsn.OpCode := $9E43000E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64(64));
end;

procedure TBasicTest.Test702;
begin
  // fcvtns w3, s31.
  FInsn.OpCode := $1E2003E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S31);
end;

procedure TBasicTest.Test703;
begin
  // fcvtns xzr, s12.
  FInsn.OpCode := $9E20019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S12);
end;

procedure TBasicTest.Test704;
begin
  // fcvtnu wzr, s12.
  FInsn.OpCode := $1E21019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S12);
end;

procedure TBasicTest.Test705;
begin
  // fcvtnu x0, s0.
  FInsn.OpCode := $9E210000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TBasicTest.Test706;
begin
  // fcvtps wzr, s9.
  FInsn.OpCode := $1E28013F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S9);
end;

procedure TBasicTest.Test707;
begin
  // fcvtps x12, s20.
  FInsn.OpCode := $9E28028C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S20);
end;

procedure TBasicTest.Test708;
begin
  // fcvtpu w30, s23.
  FInsn.OpCode := $1E2902FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S23);
end;

procedure TBasicTest.Test709;
begin
  // fcvtpu x29, s3.
  FInsn.OpCode := $9E29007D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TBasicTest.Test710;
begin
  // fcvtms w2, s3.
  FInsn.OpCode := $1E300062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S3);
end;

procedure TBasicTest.Test711;
begin
  // fcvtms x4, s5.
  FInsn.OpCode := $9E3000A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S5);
end;

procedure TBasicTest.Test712;
begin
  // fcvtmu w6, s7.
  FInsn.OpCode := $1E3100E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S7);
end;

procedure TBasicTest.Test713;
begin
  // fcvtmu x8, s9.
  FInsn.OpCode := $9E310128;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S9);
end;

procedure TBasicTest.Test714;
begin
  // fcvtzs w10, s11.
  FInsn.OpCode := $1E38016A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S11);
end;

procedure TBasicTest.Test715;
begin
  // fcvtzs x12, s13.
  FInsn.OpCode := $9E3801AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S13);
end;

procedure TBasicTest.Test716;
begin
  // fcvtzu w14, s15.
  FInsn.OpCode := $1E3901EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S15);
end;

procedure TBasicTest.Test717;
begin
  // fcvtzu x15, s16.
  FInsn.OpCode := $9E39020F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S16);
end;

procedure TBasicTest.Test718;
begin
  // scvtf s17, w18.
  FInsn.OpCode := $1E220251;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W18);
end;

procedure TBasicTest.Test719;
begin
  // scvtf s19, x20.
  FInsn.OpCode := $9E220293;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
end;

procedure TBasicTest.Test720;
begin
  // ucvtf s21, w22.
  FInsn.OpCode := $1E2302D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
end;

procedure TBasicTest.Test721;
begin
  // scvtf s23, x24.
  FInsn.OpCode := $9E220317;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X24);
end;

procedure TBasicTest.Test722;
begin
  // fcvtas w25, s26.
  FInsn.OpCode := $1E240359;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S26);
end;

procedure TBasicTest.Test723;
begin
  // fcvtas x27, s28.
  FInsn.OpCode := $9E24039B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S28);
end;

procedure TBasicTest.Test724;
begin
  // fcvtau w29, s30.
  FInsn.OpCode := $1E2503DD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S30);
end;

procedure TBasicTest.Test725;
begin
  // fcvtau xzr, s0.
  FInsn.OpCode := $9E25001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S0);
end;

procedure TBasicTest.Test726;
begin
  // fcvtns w3, d31.
  FInsn.OpCode := $1E6003E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D31);
end;

procedure TBasicTest.Test727;
begin
  // fcvtns xzr, d12.
  FInsn.OpCode := $9E60019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
end;

procedure TBasicTest.Test728;
begin
  // fcvtnu wzr, d12.
  FInsn.OpCode := $1E61019F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D12);
end;

procedure TBasicTest.Test729;
begin
  // fcvtnu x0, d0.
  FInsn.OpCode := $9E610000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTNU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TBasicTest.Test730;
begin
  // fcvtps wzr, d9.
  FInsn.OpCode := $1E68013F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D9);
end;

procedure TBasicTest.Test731;
begin
  // fcvtps x12, d20.
  FInsn.OpCode := $9E68028C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D20);
end;

procedure TBasicTest.Test732;
begin
  // fcvtpu w30, d23.
  FInsn.OpCode := $1E6902FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D23);
end;

procedure TBasicTest.Test733;
begin
  // fcvtpu x29, d3.
  FInsn.OpCode := $9E69007D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTPU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
end;

procedure TBasicTest.Test734;
begin
  // fcvtms w2, d3.
  FInsn.OpCode := $1E700062;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
end;

procedure TBasicTest.Test735;
begin
  // fcvtms x4, d5.
  FInsn.OpCode := $9E7000A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
end;

procedure TBasicTest.Test736;
begin
  // fcvtmu w6, d7.
  FInsn.OpCode := $1E7100E6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D7);
end;

procedure TBasicTest.Test737;
begin
  // fcvtmu x8, d9.
  FInsn.OpCode := $9E710128;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTMU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D9);
end;

procedure TBasicTest.Test738;
begin
  // fcvtzs w10, d11.
  FInsn.OpCode := $1E78016A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
end;

procedure TBasicTest.Test739;
begin
  // fcvtzs x12, d13.
  FInsn.OpCode := $9E7801AC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D13);
end;

procedure TBasicTest.Test740;
begin
  // fcvtzu w14, d15.
  FInsn.OpCode := $1E7901EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D15);
end;

procedure TBasicTest.Test741;
begin
  // fcvtzu x15, d16.
  FInsn.OpCode := $9E79020F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTZU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D16);
end;

procedure TBasicTest.Test742;
begin
  // scvtf d17, w18.
  FInsn.OpCode := $1E620251;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W18);
end;

procedure TBasicTest.Test743;
begin
  // scvtf d19, x20.
  FInsn.OpCode := $9E620293;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
end;

procedure TBasicTest.Test744;
begin
  // ucvtf d21, w22.
  FInsn.OpCode := $1E6302D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
end;

procedure TBasicTest.Test745;
begin
  // ucvtf d23, x24.
  FInsn.OpCode := $9E630317;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_UCVTF);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X24);
end;

procedure TBasicTest.Test746;
begin
  // fcvtas w25, d26.
  FInsn.OpCode := $1E640359;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D26);
end;

procedure TBasicTest.Test747;
begin
  // fcvtas x27, d28.
  FInsn.OpCode := $9E64039B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D28);
end;

procedure TBasicTest.Test748;
begin
  // fcvtau w29, d30.
  FInsn.OpCode := $1E6503DD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D30);
end;

procedure TBasicTest.Test749;
begin
  // fcvtau xzr, d0.
  FInsn.OpCode := $9E65001F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FCVTAU);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D0);
end;

procedure TBasicTest.Test750;
begin
  // fmov w3, s9.
  FInsn.OpCode := $1E260123;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S9);
end;

procedure TBasicTest.Test751;
begin
  // fmov s9, w3.
  FInsn.OpCode := $1E270069;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
end;

procedure TBasicTest.Test752;
begin
  // fmov x20, d31.
  FInsn.OpCode := $9E6603F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D31);
end;

procedure TBasicTest.Test753;
begin
  // fmov d1, x15.
  FInsn.OpCode := $9E6701E1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
end;

procedure TBasicTest.Test754;
begin
  // fmov x3, v12.d[1].
  FInsn.OpCode := $9EAE0183;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_V12);
  Assert.AreEqual(FInsn.Operands[1].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[1].Index, Integer(1));
end;

procedure TBasicTest.Test755;
begin
  // fmov v1.d[1], x19.
  FInsn.OpCode := $9EAF0261;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V1);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
end;

procedure TBasicTest.Test756;
begin
  // fmov v3.d[1], xzr.
  FInsn.OpCode := $9EAF03E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_V3);
  Assert.AreEqual(FInsn.Operands[0].Arrangement, T_D);
  Assert.AreEqual(FInsn.Operands[0].Index, Integer(1));
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test757;
begin
  // fmov s2, #0.12500000.
  FInsn.OpCode := $1E281002;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(0.12500000));
end;

procedure TBasicTest.Test758;
begin
  // fmov s3, #1.00000000.
  FInsn.OpCode := $1E2E1003;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S3);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(1.00000000));
end;

procedure TBasicTest.Test759;
begin
  // fmov d30, #16.00000000.
  FInsn.OpCode := $1E66101E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_FMOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D30);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsFP, Double(16.00000000));
end;

procedure TBasicTest.Test760;
begin
  // ldr w0, #1048572.
  FInsn.OpCode := $187FFFE0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(1048572));
end;

procedure TBasicTest.Test761;
begin
  // ldr x10, #-1048576.
  FInsn.OpCode := $5880000A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-1048576));
end;

procedure TBasicTest.Test762;
begin
  // stxrb w1, w2, [x3].
  FInsn.OpCode := $08017C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
end;

procedure TBasicTest.Test763;
begin
  // stxrh w2, w3, [x4].
  FInsn.OpCode := $48027C83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X4);
end;

procedure TBasicTest.Test764;
begin
  // stxr wzr, w4, [sp].
  FInsn.OpCode := $881F7FE4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test765;
begin
  // stxr w5, x6, [x7].
  FInsn.OpCode := $C8057CE6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X7);
end;

procedure TBasicTest.Test766;
begin
  // ldxrb w7, [x9].
  FInsn.OpCode := $085F7D27;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
end;

procedure TBasicTest.Test767;
begin
  // ldxrh wzr, [x10].
  FInsn.OpCode := $485F7D5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
end;

procedure TBasicTest.Test768;
begin
  // ldxr w9, [sp].
  FInsn.OpCode := $885F7FE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test769;
begin
  // ldxr x10, [x11].
  FInsn.OpCode := $C85F7D6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X11);
end;

procedure TBasicTest.Test770;
begin
  // stxp w11, w12, w13, [x14].
  FInsn.OpCode := $882B35CC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X14);
end;

procedure TBasicTest.Test771;
begin
  // stxp wzr, x23, x14, [x15].
  FInsn.OpCode := $C83F39F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X15);
end;

procedure TBasicTest.Test772;
begin
  // ldxp w12, wzr, [sp].
  FInsn.OpCode := $887F7FEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test773;
begin
  // ldxp x13, x14, [x15].
  FInsn.OpCode := $C87F39ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X15);
end;

procedure TBasicTest.Test774;
begin
  // stlxrb w14, w15, [x16].
  FInsn.OpCode := $080EFE0F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X16);
end;

procedure TBasicTest.Test775;
begin
  // stlxrh w15, w16, [x17].
  FInsn.OpCode := $480FFE30;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X17);
end;

procedure TBasicTest.Test776;
begin
  // stlxr wzr, w17, [sp].
  FInsn.OpCode := $881FFFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test777;
begin
  // stlxr w18, x19, [x20].
  FInsn.OpCode := $C812FE93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X20);
end;

procedure TBasicTest.Test778;
begin
  // ldaxrb w19, [x21].
  FInsn.OpCode := $085FFEB3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
end;

procedure TBasicTest.Test779;
begin
  // ldaxrh w20, [sp].
  FInsn.OpCode := $485FFFF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test780;
begin
  // ldaxr wzr, [x22].
  FInsn.OpCode := $885FFEDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X22);
end;

procedure TBasicTest.Test781;
begin
  // ldaxr x21, [x23].
  FInsn.OpCode := $C85FFEF5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
end;

procedure TBasicTest.Test782;
begin
  // stlxp wzr, w22, w23, [x24].
  FInsn.OpCode := $883FDF16;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X24);
end;

procedure TBasicTest.Test783;
begin
  // stlxp w25, x26, x27, [sp].
  FInsn.OpCode := $C839EFFA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W25);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X26);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test784;
begin
  // ldaxp w26, wzr, [sp].
  FInsn.OpCode := $887FFFFA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test785;
begin
  // ldaxp x27, x28, [x30].
  FInsn.OpCode := $C87FF3DB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X30);
end;

procedure TBasicTest.Test786;
begin
  // stlrb w27, [sp].
  FInsn.OpCode := $089FFFFB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test787;
begin
  // stlrh w28, [x0].
  FInsn.OpCode := $489FFC1C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TBasicTest.Test788;
begin
  // stlr wzr, [x1].
  FInsn.OpCode := $889FFC3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TBasicTest.Test789;
begin
  // stlr x30, [x2].
  FInsn.OpCode := $C89FFC5E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TBasicTest.Test790;
begin
  // ldarb w29, [sp].
  FInsn.OpCode := $08DFFFFD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDARB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test791;
begin
  // ldarh w30, [x0].
  FInsn.OpCode := $48DFFC1E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDARH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TBasicTest.Test792;
begin
  // ldar wzr, [x1].
  FInsn.OpCode := $88DFFC3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
end;

procedure TBasicTest.Test793;
begin
  // ldar x1, [x2].
  FInsn.OpCode := $C8DFFC41;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDAR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TBasicTest.Test794;
begin
  // stlxp wzr, w22, w23, [x24].
  FInsn.OpCode := $883FDF16;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STLXP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[3].Memory.Base, REG_X24);
end;

procedure TBasicTest.Test795;
begin
  // sturb w9, [sp].
  FInsn.OpCode := $380003E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test796;
begin
  // sturh wzr, [x12, #255].
  FInsn.OpCode := $780FF19F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test797;
begin
  // stur w16, [x0, #-256].
  FInsn.OpCode := $B8100010;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test798;
begin
  // stur x28, [x14, #1].
  FInsn.OpCode := $F80011DC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TBasicTest.Test799;
begin
  // ldurb w1, [x20, #255].
  FInsn.OpCode := $384FF281;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test800;
begin
  // ldurh w20, [x1, #255].
  FInsn.OpCode := $784FF034;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test801;
begin
  // ldur w12, [sp, #255].
  FInsn.OpCode := $B84FF3EC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test802;
begin
  // ldur xzr, [x12, #255].
  FInsn.OpCode := $F84FF19F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test803;
begin
  // ldursb x9, [x7, #-256].
  FInsn.OpCode := $389000E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test804;
begin
  // ldursh x17, [x19, #-256].
  FInsn.OpCode := $78900271;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test805;
begin
  // ldursw x20, [x15, #-256].
  FInsn.OpCode := $B89001F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test806;
begin
  // ldursw x13, [x2].
  FInsn.OpCode := $B880004D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TBasicTest.Test807;
begin
  // ldursb w19, [x1, #-256].
  FInsn.OpCode := $38D00033;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test808;
begin
  // ldursh w15, [x21, #-256].
  FInsn.OpCode := $78D002AF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDURSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test809;
begin
  // stur b0, [sp, #1].
  FInsn.OpCode := $3C0013E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TBasicTest.Test810;
begin
  // stur h12, [x12, #-1].
  FInsn.OpCode := $7C1FF18C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TBasicTest.Test811;
begin
  // stur s15, [x0, #255].
  FInsn.OpCode := $BC0FF00F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test812;
begin
  // stur d31, [x5, #25].
  FInsn.OpCode := $FC0190BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(25));
end;

procedure TBasicTest.Test813;
begin
  // stur q9, [x5].
  FInsn.OpCode := $3C8000A9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X5);
end;

procedure TBasicTest.Test814;
begin
  // ldur b3, [sp].
  FInsn.OpCode := $3C4003E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test815;
begin
  // ldur h5, [x4, #-256].
  FInsn.OpCode := $7C500085;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test816;
begin
  // ldur s7, [x12, #-1].
  FInsn.OpCode := $BC5FF187;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-1));
end;

procedure TBasicTest.Test817;
begin
  // ldur d11, [x19, #4].
  FInsn.OpCode := $FC40426B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TBasicTest.Test818;
begin
  // ldur q13, [x1, #2].
  FInsn.OpCode := $3CC0202D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDUR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TBasicTest.Test819;
begin
  // ldr x0, [x0].
  FInsn.OpCode := $F9400000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
end;

procedure TBasicTest.Test820;
begin
  // ldr x4, [x29].
  FInsn.OpCode := $F94003A4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
end;

procedure TBasicTest.Test821;
begin
  // ldr x30, [x12, #32760].
  FInsn.OpCode := $F97FFD9E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32760));
end;

procedure TBasicTest.Test822;
begin
  // ldr x20, [sp, #8].
  FInsn.OpCode := $F94007F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8));
end;

procedure TBasicTest.Test823;
begin
  // ldr xzr, [sp].
  FInsn.OpCode := $F94003FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test824;
begin
  // ldr w2, [sp].
  FInsn.OpCode := $B94003E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test825;
begin
  // ldr w17, [sp, #16380].
  FInsn.OpCode := $B97FFFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16380));
end;

procedure TBasicTest.Test826;
begin
  // ldr w13, [x2, #4].
  FInsn.OpCode := $B940044D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TBasicTest.Test827;
begin
  // ldrsw x2, [x5, #4].
  FInsn.OpCode := $B98004A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4));
end;

procedure TBasicTest.Test828;
begin
  // ldrsw x23, [sp, #16380].
  FInsn.OpCode := $B9BFFFF7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16380));
end;

procedure TBasicTest.Test829;
begin
  // ldrh w2, [x4].
  FInsn.OpCode := $79400082;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
end;

procedure TBasicTest.Test830;
begin
  // ldrsh w23, [x6, #8190].
  FInsn.OpCode := $79FFFCD7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8190));
end;

procedure TBasicTest.Test831;
begin
  // ldrsh wzr, [sp, #2].
  FInsn.OpCode := $79C007FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TBasicTest.Test832;
begin
  // ldrsh x29, [x2, #2].
  FInsn.OpCode := $7980045D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(2));
end;

procedure TBasicTest.Test833;
begin
  // ldrb w26, [x3, #121].
  FInsn.OpCode := $3941E47A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W26);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(121));
end;

procedure TBasicTest.Test834;
begin
  // ldrb w12, [x2].
  FInsn.OpCode := $3940004C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TBasicTest.Test835;
begin
  // ldrsb w27, [sp, #4095].
  FInsn.OpCode := $39FFFFFB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4095));
end;

procedure TBasicTest.Test836;
begin
  // ldrsb xzr, [x15].
  FInsn.OpCode := $398001FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
end;

procedure TBasicTest.Test837;
begin
  // str x30, [sp].
  FInsn.OpCode := $F90003FE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test838;
begin
  // str w20, [x4, #16380].
  FInsn.OpCode := $B93FFC94;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16380));
end;

procedure TBasicTest.Test839;
begin
  // strh w20, [x10, #14].
  FInsn.OpCode := $79001D54;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(14));
end;

procedure TBasicTest.Test840;
begin
  // strh w17, [sp, #8190].
  FInsn.OpCode := $793FFFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8190));
end;

procedure TBasicTest.Test841;
begin
  // strb w23, [x3, #4095].
  FInsn.OpCode := $393FFC77;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4095));
end;

procedure TBasicTest.Test842;
begin
  // strb wzr, [x2].
  FInsn.OpCode := $3900005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
end;

procedure TBasicTest.Test843;
begin
  // ldr b31, [sp, #4095].
  FInsn.OpCode := $3D7FFFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B31);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(4095));
end;

procedure TBasicTest.Test844;
begin
  // ldr h20, [x2, #8190].
  FInsn.OpCode := $7D7FFC54;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(8190));
end;

procedure TBasicTest.Test845;
begin
  // ldr s10, [x19, #16380].
  FInsn.OpCode := $BD7FFE6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(16380));
end;

procedure TBasicTest.Test846;
begin
  // ldr d3, [x10, #32760].
  FInsn.OpCode := $FD7FFD43;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(32760));
end;

procedure TBasicTest.Test847;
begin
  // str q12, [sp, #65520].
  FInsn.OpCode := $3DBFFFEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(65520));
end;

procedure TBasicTest.Test848;
begin
  // ldrb w3, [sp, x5].
  FInsn.OpCode := $38656BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
end;

procedure TBasicTest.Test849;
begin
  // ldrb w9, [x27, x6, lsl #0].
  FInsn.OpCode := $38667B69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test850;
begin
  // ldrsb w10, [x30, x7].
  FInsn.OpCode := $38E76BCA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
end;

procedure TBasicTest.Test851;
begin
  // ldrb w11, [x29, x3, sxtx].
  FInsn.OpCode := $3863EBAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test852;
begin
  // strb w12, [x28, xzr, sxtx #0].
  FInsn.OpCode := $383FFB8C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test853;
begin
  // ldrb w14, [x26, w6, uxtw].
  FInsn.OpCode := $38664B4E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test854;
begin
  // ldrsb w15, [x25, w7, uxtw #0].
  FInsn.OpCode := $38E75B2F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test855;
begin
  // ldrb w17, [x23, w9, sxtw].
  FInsn.OpCode := $3869CAF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test856;
begin
  // ldrsb x18, [x22, w10, sxtw #0].
  FInsn.OpCode := $38AADAD2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test857;
begin
  // ldrsh w3, [sp, x5].
  FInsn.OpCode := $78E56BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
end;

procedure TBasicTest.Test858;
begin
  // ldrsh w9, [x27, x6].
  FInsn.OpCode := $78E66B69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
end;

procedure TBasicTest.Test859;
begin
  // ldrh w10, [x30, x7, lsl #1].
  FInsn.OpCode := $78677BCA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test860;
begin
  // strh w11, [x29, x3, sxtx].
  FInsn.OpCode := $7823EBAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test861;
begin
  // ldrh w12, [x28, xzr, sxtx].
  FInsn.OpCode := $787FEB8C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test862;
begin
  // ldrsh x13, [x27, x5, sxtx #1].
  FInsn.OpCode := $78A5FB6D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test863;
begin
  // ldrh w14, [x26, w6, uxtw].
  FInsn.OpCode := $78664B4E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test864;
begin
  // ldrh w15, [x25, w7, uxtw].
  FInsn.OpCode := $78674B2F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test865;
begin
  // ldrsh w16, [x24, w8, uxtw #1].
  FInsn.OpCode := $78E85B10;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test866;
begin
  // ldrh w17, [x23, w9, sxtw].
  FInsn.OpCode := $7869CAF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test867;
begin
  // ldrh w18, [x22, w10, sxtw].
  FInsn.OpCode := $786ACAD2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test868;
begin
  // strh w19, [x21, wzr, sxtw #1].
  FInsn.OpCode := $783FDAB3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(1));
end;

procedure TBasicTest.Test869;
begin
  // ldr w3, [sp, x5].
  FInsn.OpCode := $B8656BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
end;

procedure TBasicTest.Test870;
begin
  // ldr s9, [x27, x6].
  FInsn.OpCode := $BC666B69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
end;

procedure TBasicTest.Test871;
begin
  // ldr w10, [x30, x7, lsl #2].
  FInsn.OpCode := $B8677BCA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test872;
begin
  // ldr w11, [x29, x3, sxtx].
  FInsn.OpCode := $B863EBAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test873;
begin
  // str s12, [x28, xzr, sxtx].
  FInsn.OpCode := $BC3FEB8C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test874;
begin
  // str w13, [x27, x5, sxtx #2].
  FInsn.OpCode := $B825FB6D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test875;
begin
  // str w14, [x26, w6, uxtw].
  FInsn.OpCode := $B8264B4E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test876;
begin
  // ldr w15, [x25, w7, uxtw].
  FInsn.OpCode := $B8674B2F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test877;
begin
  // ldr w16, [x24, w8, uxtw #2].
  FInsn.OpCode := $B8685B10;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test878;
begin
  // ldrsw x17, [x23, w9, sxtw].
  FInsn.OpCode := $B8A9CAF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test879;
begin
  // ldr w18, [x22, w10, sxtw].
  FInsn.OpCode := $B86ACAD2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W18);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test880;
begin
  // ldrsw x19, [x21, wzr, sxtw #2].
  FInsn.OpCode := $B8BFDAB3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(2));
end;

procedure TBasicTest.Test881;
begin
  // ldr x3, [sp, x5].
  FInsn.OpCode := $F8656BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
end;

procedure TBasicTest.Test882;
begin
  // str x9, [x27, x6].
  FInsn.OpCode := $F8266B69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
end;

procedure TBasicTest.Test883;
begin
  // ldr d10, [x30, x7, lsl #3].
  FInsn.OpCode := $FC677BCA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test884;
begin
  // str x11, [x29, x3, sxtx].
  FInsn.OpCode := $F823EBAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test885;
begin
  // ldr x12, [x28, xzr, sxtx].
  FInsn.OpCode := $F87FEB8C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test886;
begin
  // ldr x13, [x27, x5, sxtx #3].
  FInsn.OpCode := $F865FB6D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test887;
begin
  // ldr x15, [x25, w7, uxtw].
  FInsn.OpCode := $F8674B2F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test888;
begin
  // ldr x16, [x24, w8, uxtw #3].
  FInsn.OpCode := $F8685B10;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test889;
begin
  // ldr x17, [x23, w9, sxtw].
  FInsn.OpCode := $F869CAF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test890;
begin
  // ldr x18, [x22, w10, sxtw].
  FInsn.OpCode := $F86ACAD2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X18);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test891;
begin
  // str d19, [x21, wzr, sxtw #3].
  FInsn.OpCode := $FC3FDAB3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(3));
end;

procedure TBasicTest.Test892;
begin
  // ldr q3, [sp, x5].
  FInsn.OpCode := $3CE56BE3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
end;

procedure TBasicTest.Test893;
begin
  // ldr q9, [x27, x6].
  FInsn.OpCode := $3CE66B69;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X6);
end;

procedure TBasicTest.Test894;
begin
  // ldr q10, [x30, x7, lsl #4].
  FInsn.OpCode := $3CE77BCA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test895;
begin
  // str q11, [x29, x3, sxtx].
  FInsn.OpCode := $3CA3EBAB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q11);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X29);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test896;
begin
  // str q12, [x28, xzr, sxtx].
  FInsn.OpCode := $3CBFEB8C;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
end;

procedure TBasicTest.Test897;
begin
  // str q13, [x27, x5, sxtx #4].
  FInsn.OpCode := $3CA5FB6D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X27);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtx);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test898;
begin
  // ldr q14, [x26, w6, uxtw].
  FInsn.OpCode := $3CE64B4E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X26);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W6);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test899;
begin
  // ldr q15, [x25, w7, uxtw].
  FInsn.OpCode := $3CE74B2F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
end;

procedure TBasicTest.Test900;
begin
  // ldr q16, [x24, w8, uxtw #4].
  FInsn.OpCode := $3CE85B10;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q16);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W8);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfUxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test901;
begin
  // ldr q17, [x23, w9, sxtw].
  FInsn.OpCode := $3CE9CAF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test902;
begin
  // str q18, [x22, w10, sxtw].
  FInsn.OpCode := $3CAACAD2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q18);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
end;

procedure TBasicTest.Test903;
begin
  // ldr q19, [x21, wzr, sxtw #4].
  FInsn.OpCode := $3CFFDAB3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsReg, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfSxtw);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(4));
end;

procedure TBasicTest.Test904;
begin
  // strb w9, [x2], #255.
  FInsn.OpCode := $380FF449;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test905;
begin
  // strb w10, [x3], #1.
  FInsn.OpCode := $3800146A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test906;
begin
  // strb w10, [x3], #-256.
  FInsn.OpCode := $3810046A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test907;
begin
  // strh w9, [x2], #255.
  FInsn.OpCode := $780FF449;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test908;
begin
  // strh w9, [x2], #1.
  FInsn.OpCode := $78001449;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test909;
begin
  // strh w10, [x3], #-256.
  FInsn.OpCode := $7810046A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test910;
begin
  // str w19, [sp], #255.
  FInsn.OpCode := $B80FF7F3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test911;
begin
  // str w20, [x30], #1.
  FInsn.OpCode := $B80017D4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test912;
begin
  // str w21, [x12], #-256.
  FInsn.OpCode := $B8100595;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test913;
begin
  // str xzr, [x9], #255.
  FInsn.OpCode := $F80FF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test914;
begin
  // str x2, [x3], #1.
  FInsn.OpCode := $F8001462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test915;
begin
  // str x19, [x12], #-256.
  FInsn.OpCode := $F8100593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test916;
begin
  // ldrb w9, [x2], #255.
  FInsn.OpCode := $384FF449;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test917;
begin
  // ldrb w10, [x3], #1.
  FInsn.OpCode := $3840146A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test918;
begin
  // ldrb w10, [x3], #-256.
  FInsn.OpCode := $3850046A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test919;
begin
  // ldrh w9, [x2], #255.
  FInsn.OpCode := $784FF449;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test920;
begin
  // ldrh w9, [x2], #1.
  FInsn.OpCode := $78401449;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test921;
begin
  // ldrh w10, [x3], #-256.
  FInsn.OpCode := $7850046A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test922;
begin
  // ldr w19, [sp], #255.
  FInsn.OpCode := $B84FF7F3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test923;
begin
  // ldr w20, [x30], #1.
  FInsn.OpCode := $B84017D4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test924;
begin
  // ldr w21, [x12], #-256.
  FInsn.OpCode := $B8500595;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test925;
begin
  // ldr xzr, [x9], #255.
  FInsn.OpCode := $F84FF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test926;
begin
  // ldr x2, [x3], #1.
  FInsn.OpCode := $F8401462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test927;
begin
  // ldr x19, [x12], #-256.
  FInsn.OpCode := $F8500593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test928;
begin
  // ldrsb xzr, [x9], #255.
  FInsn.OpCode := $388FF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test929;
begin
  // ldrsb x2, [x3], #1.
  FInsn.OpCode := $38801462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test930;
begin
  // ldrsb x19, [x12], #-256.
  FInsn.OpCode := $38900593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test931;
begin
  // ldrsh xzr, [x9], #255.
  FInsn.OpCode := $788FF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test932;
begin
  // ldrsh x2, [x3], #1.
  FInsn.OpCode := $78801462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test933;
begin
  // ldrsh x19, [x12], #-256.
  FInsn.OpCode := $78900593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test934;
begin
  // ldrsw xzr, [x9], #255.
  FInsn.OpCode := $B88FF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test935;
begin
  // ldrsw x2, [x3], #1.
  FInsn.OpCode := $B8801462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test936;
begin
  // ldrsw x19, [x12], #-256.
  FInsn.OpCode := $B8900593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test937;
begin
  // ldrsb wzr, [x9], #255.
  FInsn.OpCode := $38CFF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test938;
begin
  // ldrsb w2, [x3], #1.
  FInsn.OpCode := $38C01462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test939;
begin
  // ldrsb w19, [x12], #-256.
  FInsn.OpCode := $38D00593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test940;
begin
  // ldrsh wzr, [x9], #255.
  FInsn.OpCode := $78CFF53F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test941;
begin
  // ldrsh w2, [x3], #1.
  FInsn.OpCode := $78C01462;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test942;
begin
  // ldrsh w19, [x12], #-256.
  FInsn.OpCode := $78D00593;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test943;
begin
  // str b0, [x0], #255.
  FInsn.OpCode := $3C0FF400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test944;
begin
  // str b3, [x3], #1.
  FInsn.OpCode := $3C001463;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test945;
begin
  // str b5, [sp], #-256.
  FInsn.OpCode := $3C1007E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test946;
begin
  // str h10, [x10], #255.
  FInsn.OpCode := $7C0FF54A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test947;
begin
  // str h13, [x23], #1.
  FInsn.OpCode := $7C0016ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test948;
begin
  // str h15, [sp], #-256.
  FInsn.OpCode := $7C1007EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test949;
begin
  // str s20, [x20], #255.
  FInsn.OpCode := $BC0FF694;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test950;
begin
  // str s23, [x23], #1.
  FInsn.OpCode := $BC0016F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test951;
begin
  // str s25, [x0], #-256.
  FInsn.OpCode := $BC100419;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test952;
begin
  // str d20, [x20], #255.
  FInsn.OpCode := $FC0FF694;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test953;
begin
  // str d23, [x23], #1.
  FInsn.OpCode := $FC0016F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test954;
begin
  // str d25, [x0], #-256.
  FInsn.OpCode := $FC100419;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test955;
begin
  // ldr b0, [x0], #255.
  FInsn.OpCode := $3C4FF400;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test956;
begin
  // ldr b3, [x3], #1.
  FInsn.OpCode := $3C401463;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test957;
begin
  // ldr b5, [sp], #-256.
  FInsn.OpCode := $3C5007E5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test958;
begin
  // ldr h10, [x10], #255.
  FInsn.OpCode := $7C4FF54A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test959;
begin
  // ldr h13, [x23], #1.
  FInsn.OpCode := $7C4016ED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test960;
begin
  // ldr h15, [sp], #-256.
  FInsn.OpCode := $7C5007EF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test961;
begin
  // ldr s20, [x20], #255.
  FInsn.OpCode := $BC4FF694;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test962;
begin
  // ldr s23, [x23], #1.
  FInsn.OpCode := $BC4016F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test963;
begin
  // ldr s25, [x0], #-256.
  FInsn.OpCode := $BC500419;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test964;
begin
  // ldr d20, [x20], #255.
  FInsn.OpCode := $FC4FF694;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test965;
begin
  // ldr d23, [x23], #1.
  FInsn.OpCode := $FC4016F7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test966;
begin
  // ldr d25, [x0], #-256.
  FInsn.OpCode := $FC500419;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test967;
begin
  // ldr q20, [x1], #255.
  FInsn.OpCode := $3CCFF434;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test968;
begin
  // ldr q23, [x9], #1.
  FInsn.OpCode := $3CC01537;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test969;
begin
  // ldr q25, [x20], #-256.
  FInsn.OpCode := $3CD00699;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test970;
begin
  // str q10, [x1], #255.
  FInsn.OpCode := $3C8FF42A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test971;
begin
  // str q22, [sp], #1.
  FInsn.OpCode := $3C8017F6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test972;
begin
  // str q21, [x20], #-256.
  FInsn.OpCode := $3C900695;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test973;
begin
  // ldr x3, [x4, #0]!.
  FInsn.OpCode := $F8400C83;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(0));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test974;
begin
  // ldr xzr, [sp, #0]!.
  FInsn.OpCode := $F8400FFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(0));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test975;
begin
  // strb w9, [x2, #255]!.
  FInsn.OpCode := $380FFC49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test976;
begin
  // strb w10, [x3, #1]!.
  FInsn.OpCode := $38001C6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test977;
begin
  // strb w10, [x3, #-256]!.
  FInsn.OpCode := $38100C6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test978;
begin
  // strh w9, [x2, #255]!.
  FInsn.OpCode := $780FFC49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test979;
begin
  // strh w9, [x2, #1]!.
  FInsn.OpCode := $78001C49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test980;
begin
  // strh w10, [x3, #-256]!.
  FInsn.OpCode := $78100C6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test981;
begin
  // str w19, [sp, #255]!.
  FInsn.OpCode := $B80FFFF3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test982;
begin
  // str w20, [x30, #1]!.
  FInsn.OpCode := $B8001FD4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test983;
begin
  // str w21, [x12, #-256]!.
  FInsn.OpCode := $B8100D95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test984;
begin
  // str xzr, [x9, #255]!.
  FInsn.OpCode := $F80FFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test985;
begin
  // str x2, [x3, #1]!.
  FInsn.OpCode := $F8001C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test986;
begin
  // str x19, [x12, #-256]!.
  FInsn.OpCode := $F8100D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test987;
begin
  // ldrb w9, [x2, #255]!.
  FInsn.OpCode := $384FFC49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test988;
begin
  // ldrb w10, [x3, #1]!.
  FInsn.OpCode := $38401C6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test989;
begin
  // ldrb w10, [x3, #-256]!.
  FInsn.OpCode := $38500C6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test990;
begin
  // ldrh w9, [x2, #255]!.
  FInsn.OpCode := $784FFC49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test991;
begin
  // ldrh w9, [x2, #1]!.
  FInsn.OpCode := $78401C49;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test992;
begin
  // ldrh w10, [x3, #-256]!.
  FInsn.OpCode := $78500C6A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test993;
begin
  // ldr w19, [sp, #255]!.
  FInsn.OpCode := $B84FFFF3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test994;
begin
  // ldr w20, [x30, #1]!.
  FInsn.OpCode := $B8401FD4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test995;
begin
  // ldr w21, [x12, #-256]!.
  FInsn.OpCode := $B8500D95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test996;
begin
  // ldr xzr, [x9, #255]!.
  FInsn.OpCode := $F84FFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test997;
begin
  // ldr x2, [x3, #1]!.
  FInsn.OpCode := $F8401C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test998;
begin
  // ldr x19, [x12, #-256]!.
  FInsn.OpCode := $F8500D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test999;
begin
  // ldrsb xzr, [x9, #255]!.
  FInsn.OpCode := $388FFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1000;
begin
  // ldrsb x2, [x3, #1]!.
  FInsn.OpCode := $38801C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1001;
begin
  // ldrsb x19, [x12, #-256]!.
  FInsn.OpCode := $38900D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1002;
begin
  // ldrsh xzr, [x9, #255]!.
  FInsn.OpCode := $788FFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1003;
begin
  // ldrsh x2, [x3, #1]!.
  FInsn.OpCode := $78801C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1004;
begin
  // ldrsh x19, [x12, #-256]!.
  FInsn.OpCode := $78900D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1005;
begin
  // ldrsw xzr, [x9, #255]!.
  FInsn.OpCode := $B88FFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1006;
begin
  // ldrsw x2, [x3, #1]!.
  FInsn.OpCode := $B8801C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1007;
begin
  // ldrsw x19, [x12, #-256]!.
  FInsn.OpCode := $B8900D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1008;
begin
  // ldrsb wzr, [x9, #255]!.
  FInsn.OpCode := $38CFFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1009;
begin
  // ldrsb w2, [x3, #1]!.
  FInsn.OpCode := $38C01C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1010;
begin
  // ldrsb w19, [x12, #-256]!.
  FInsn.OpCode := $38D00D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1011;
begin
  // ldrsh wzr, [x9, #255]!.
  FInsn.OpCode := $78CFFD3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1012;
begin
  // ldrsh w2, [x3, #1]!.
  FInsn.OpCode := $78C01C62;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1013;
begin
  // ldrsh w19, [x12, #-256]!.
  FInsn.OpCode := $78D00D93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1014;
begin
  // str b0, [x0, #255]!.
  FInsn.OpCode := $3C0FFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1015;
begin
  // str b3, [x3, #1]!.
  FInsn.OpCode := $3C001C63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1016;
begin
  // str b5, [sp, #-256]!.
  FInsn.OpCode := $3C100FE5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1017;
begin
  // str h10, [x10, #255]!.
  FInsn.OpCode := $7C0FFD4A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1018;
begin
  // str h13, [x23, #1]!.
  FInsn.OpCode := $7C001EED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1019;
begin
  // str h15, [sp, #-256]!.
  FInsn.OpCode := $7C100FEF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1020;
begin
  // str s20, [x20, #255]!.
  FInsn.OpCode := $BC0FFE94;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1021;
begin
  // str s23, [x23, #1]!.
  FInsn.OpCode := $BC001EF7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1022;
begin
  // str s25, [x0, #-256]!.
  FInsn.OpCode := $BC100C19;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1023;
begin
  // str d20, [x20, #255]!.
  FInsn.OpCode := $FC0FFE94;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1024;
begin
  // str d23, [x23, #1]!.
  FInsn.OpCode := $FC001EF7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1025;
begin
  // str d25, [x0, #-256]!.
  FInsn.OpCode := $FC100C19;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1026;
begin
  // ldr b0, [x0, #255]!.
  FInsn.OpCode := $3C4FFC00;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1027;
begin
  // ldr b3, [x3, #1]!.
  FInsn.OpCode := $3C401C63;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1028;
begin
  // ldr b5, [sp, #-256]!.
  FInsn.OpCode := $3C500FE5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_B5);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1029;
begin
  // ldr h10, [x10, #255]!.
  FInsn.OpCode := $7C4FFD4A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1030;
begin
  // ldr h13, [x23, #1]!.
  FInsn.OpCode := $7C401EED;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H13);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1031;
begin
  // ldr h15, [sp, #-256]!.
  FInsn.OpCode := $7C500FEF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_H15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1032;
begin
  // ldr s20, [x20, #255]!.
  FInsn.OpCode := $BC4FFE94;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1033;
begin
  // ldr s23, [x23, #1]!.
  FInsn.OpCode := $BC401EF7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1034;
begin
  // ldr s25, [x0, #-256]!.
  FInsn.OpCode := $BC500C19;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1035;
begin
  // ldr d20, [x20, #255]!.
  FInsn.OpCode := $FC4FFE94;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1036;
begin
  // ldr d23, [x23, #1]!.
  FInsn.OpCode := $FC401EF7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1037;
begin
  // ldr d25, [x0, #-256]!.
  FInsn.OpCode := $FC500C19;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1038;
begin
  // ldr q20, [x1, #255]!.
  FInsn.OpCode := $3CCFFC34;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1039;
begin
  // ldr q23, [x9, #1]!.
  FInsn.OpCode := $3CC01D37;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1040;
begin
  // ldr q25, [x20, #-256]!.
  FInsn.OpCode := $3CD00E99;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q25);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1041;
begin
  // str q10, [x1, #255]!.
  FInsn.OpCode := $3C8FFC2A;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q10);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1042;
begin
  // str q22, [sp, #1]!.
  FInsn.OpCode := $3C801FF6;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q22);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1043;
begin
  // str q21, [x20, #-256]!.
  FInsn.OpCode := $3C900E95;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[1].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1044;
begin
  // sttrb w9, [sp].
  FInsn.OpCode := $38000BE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test1045;
begin
  // sttrh wzr, [x12, #255].
  FInsn.OpCode := $780FF99F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test1046;
begin
  // sttr w16, [x0, #-256].
  FInsn.OpCode := $B8100810;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X0);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1047;
begin
  // sttr x28, [x14, #1].
  FInsn.OpCode := $F80019DC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X28);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(1));
end;

procedure TBasicTest.Test1048;
begin
  // ldtrb w1, [x20, #255].
  FInsn.OpCode := $384FFA81;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test1049;
begin
  // ldtrh w20, [x1, #255].
  FInsn.OpCode := $784FF834;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test1050;
begin
  // ldtr w12, [sp, #255].
  FInsn.OpCode := $B84FFBEC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test1051;
begin
  // ldtr xzr, [x12, #255].
  FInsn.OpCode := $F84FF99F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(255));
end;

procedure TBasicTest.Test1052;
begin
  // ldtrsb x9, [x7, #-256].
  FInsn.OpCode := $389008E9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1053;
begin
  // ldtrsh x17, [x19, #-256].
  FInsn.OpCode := $78900A71;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1054;
begin
  // ldtrsw x20, [x15, #-256].
  FInsn.OpCode := $B89009F4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1055;
begin
  // ldtrsb w19, [x1, #-256].
  FInsn.OpCode := $38D00833;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSB);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1056;
begin
  // ldtrsh w15, [x21, #-256].
  FInsn.OpCode := $78D00AAF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDTRSH);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[1].Memory.Base, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1057;
begin
  // ldp w3, w5, [sp].
  FInsn.OpCode := $294017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test1058;
begin
  // stp wzr, w9, [sp, #252].
  FInsn.OpCode := $291FA7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
end;

procedure TBasicTest.Test1059;
begin
  // ldp w2, wzr, [sp, #-256].
  FInsn.OpCode := $29607FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1060;
begin
  // ldp w9, w10, [sp, #4].
  FInsn.OpCode := $2940ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
end;

procedure TBasicTest.Test1061;
begin
  // ldpsw x9, x10, [sp, #4].
  FInsn.OpCode := $6940ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
end;

procedure TBasicTest.Test1062;
begin
  // ldpsw x9, x10, [x2, #-256].
  FInsn.OpCode := $69602849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1063;
begin
  // ldpsw x20, x30, [sp, #252].
  FInsn.OpCode := $695FFBF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
end;

procedure TBasicTest.Test1064;
begin
  // ldp x21, x29, [x2, #504].
  FInsn.OpCode := $A95FF455;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
end;

procedure TBasicTest.Test1065;
begin
  // ldp x22, x23, [x3, #-512].
  FInsn.OpCode := $A9605C76;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
end;

procedure TBasicTest.Test1066;
begin
  // ldp x24, x25, [x4, #8].
  FInsn.OpCode := $A940E498;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(8));
end;

procedure TBasicTest.Test1067;
begin
  // ldp s29, s28, [sp, #252].
  FInsn.OpCode := $2D5FF3FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S28);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
end;

procedure TBasicTest.Test1068;
begin
  // stp s27, s26, [sp, #-256].
  FInsn.OpCode := $2D206BFB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S26);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1069;
begin
  // ldp s1, s2, [x3, #44].
  FInsn.OpCode := $2D458861;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(44));
end;

procedure TBasicTest.Test1070;
begin
  // stp d3, d5, [x9, #504].
  FInsn.OpCode := $6D1F9523;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
end;

procedure TBasicTest.Test1071;
begin
  // stp d7, d11, [x10, #-512].
  FInsn.OpCode := $6D202D47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
end;

procedure TBasicTest.Test1072;
begin
  // ldp d2, d3, [x30, #-8].
  FInsn.OpCode := $6D7F8FC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-8));
end;

procedure TBasicTest.Test1073;
begin
  // stp q3, q5, [sp].
  FInsn.OpCode := $AD0017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test1074;
begin
  // stp q17, q19, [sp, #1008].
  FInsn.OpCode := $AD1FCFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q19);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(1008));
end;

procedure TBasicTest.Test1075;
begin
  // ldp q23, q29, [x1, #-1024].
  FInsn.OpCode := $AD607437;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-1024));
end;

procedure TBasicTest.Test1076;
begin
  // ldp w3, w5, [sp], #0.
  FInsn.OpCode := $28C017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(0));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1077;
begin
  // stp wzr, w9, [sp], #252.
  FInsn.OpCode := $289FA7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1078;
begin
  // ldp w2, wzr, [sp], #-256.
  FInsn.OpCode := $28E07FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1079;
begin
  // ldp w9, w10, [sp], #4.
  FInsn.OpCode := $28C0ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1080;
begin
  // ldpsw x9, x10, [sp], #4.
  FInsn.OpCode := $68C0ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1081;
begin
  // ldpsw x9, x10, [x2], #-256.
  FInsn.OpCode := $68E02849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1082;
begin
  // ldpsw x20, x30, [sp], #252.
  FInsn.OpCode := $68DFFBF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1083;
begin
  // ldp x21, x29, [x2], #504.
  FInsn.OpCode := $A8DFF455;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1084;
begin
  // ldp x22, x23, [x3], #-512.
  FInsn.OpCode := $A8E05C76;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1085;
begin
  // ldp x24, x25, [x4], #8.
  FInsn.OpCode := $A8C0E498;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(8));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1086;
begin
  // ldp s29, s28, [sp], #252.
  FInsn.OpCode := $2CDFF3FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S28);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1087;
begin
  // stp s27, s26, [sp], #-256.
  FInsn.OpCode := $2CA06BFB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S26);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1088;
begin
  // ldp s1, s2, [x3], #44.
  FInsn.OpCode := $2CC58861;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(44));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1089;
begin
  // stp d3, d5, [x9], #504.
  FInsn.OpCode := $6C9F9523;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1090;
begin
  // stp d7, d11, [x10], #-512.
  FInsn.OpCode := $6CA02D47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1091;
begin
  // ldp d2, d3, [x30], #-8.
  FInsn.OpCode := $6CFF8FC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1092;
begin
  // stp q3, q5, [sp], #0.
  FInsn.OpCode := $AC8017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(0));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1093;
begin
  // stp q17, q19, [sp], #1008.
  FInsn.OpCode := $AC9FCFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q19);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(1008));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1094;
begin
  // ldp q23, q29, [x1], #-1024.
  FInsn.OpCode := $ACE07437;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-1024));
  if(not(mfPostIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPostIndex not in Flags.');
end;

procedure TBasicTest.Test1095;
begin
  // ldp w3, w5, [sp, #0]!.
  FInsn.OpCode := $29C017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(0));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1096;
begin
  // stp wzr, w9, [sp, #252]!.
  FInsn.OpCode := $299FA7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1097;
begin
  // ldp w2, wzr, [sp, #-256]!.
  FInsn.OpCode := $29E07FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1098;
begin
  // ldp w9, w10, [sp, #4]!.
  FInsn.OpCode := $29C0ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1099;
begin
  // ldpsw x9, x10, [sp, #4]!.
  FInsn.OpCode := $69C0ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1100;
begin
  // ldpsw x9, x10, [x2, #-256]!.
  FInsn.OpCode := $69E02849;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1101;
begin
  // ldpsw x20, x30, [sp, #252]!.
  FInsn.OpCode := $69DFFBF4;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDPSW);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1102;
begin
  // ldp x21, x29, [x2, #504]!.
  FInsn.OpCode := $A9DFF455;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1103;
begin
  // ldp x22, x23, [x3, #-512]!.
  FInsn.OpCode := $A9E05C76;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1104;
begin
  // ldp x24, x25, [x4, #8]!.
  FInsn.OpCode := $A9C0E498;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(8));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1105;
begin
  // ldp s29, s28, [sp, #252]!.
  FInsn.OpCode := $2DDFF3FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S28);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1106;
begin
  // stp s27, s26, [sp, #-256]!.
  FInsn.OpCode := $2DA06BFB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S26);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1107;
begin
  // ldp s1, s2, [x3, #44]!.
  FInsn.OpCode := $2DC58861;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(44));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1108;
begin
  // stp d3, d5, [x9, #504]!.
  FInsn.OpCode := $6D9F9523;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1109;
begin
  // stp d7, d11, [x10, #-512]!.
  FInsn.OpCode := $6DA02D47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1110;
begin
  // ldp d2, d3, [x30, #-8]!.
  FInsn.OpCode := $6DFF8FC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-8));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1111;
begin
  // stp q3, q5, [sp, #0]!.
  FInsn.OpCode := $AD8017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(0));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1112;
begin
  // stp q17, q19, [sp, #1008]!.
  FInsn.OpCode := $AD9FCFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q19);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(1008));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1113;
begin
  // ldp q23, q29, [x1, #-1024]!.
  FInsn.OpCode := $ADE07437;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-1024));
  if(not(mfPreIndex in FInsn.Operands[2].Memory.Flags))then
    Assert.Fail('mfPreIndex not in Flags.');
end;

procedure TBasicTest.Test1114;
begin
  // ldnp w3, w5, [sp].
  FInsn.OpCode := $284017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test1115;
begin
  // stnp wzr, w9, [sp, #252].
  FInsn.OpCode := $281FA7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
end;

procedure TBasicTest.Test1116;
begin
  // ldnp w2, wzr, [sp, #-256].
  FInsn.OpCode := $28607FE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1117;
begin
  // ldnp w9, w10, [sp, #4].
  FInsn.OpCode := $2840ABE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(4));
end;

procedure TBasicTest.Test1118;
begin
  // ldnp x21, x29, [x2, #504].
  FInsn.OpCode := $A85FF455;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
end;

procedure TBasicTest.Test1119;
begin
  // ldnp x22, x23, [x3, #-512].
  FInsn.OpCode := $A8605C76;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X23);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
end;

procedure TBasicTest.Test1120;
begin
  // ldnp x24, x25, [x4, #8].
  FInsn.OpCode := $A840E498;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X24);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X25);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(8));
end;

procedure TBasicTest.Test1121;
begin
  // ldnp s29, s28, [sp, #252].
  FInsn.OpCode := $2C5FF3FD;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S29);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S28);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(252));
end;

procedure TBasicTest.Test1122;
begin
  // stnp s27, s26, [sp, #-256].
  FInsn.OpCode := $2C206BFB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S27);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S26);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-256));
end;

procedure TBasicTest.Test1123;
begin
  // ldnp s1, s2, [x3, #44].
  FInsn.OpCode := $2C458861;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_S1);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_S2);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(44));
end;

procedure TBasicTest.Test1124;
begin
  // stnp d3, d5, [x9, #504].
  FInsn.OpCode := $6C1F9523;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(504));
end;

procedure TBasicTest.Test1125;
begin
  // stnp d7, d11, [x10, #-512].
  FInsn.OpCode := $6C202D47;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D11);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-512));
end;

procedure TBasicTest.Test1126;
begin
  // ldnp d2, d3, [x30, #-8].
  FInsn.OpCode := $6C7F8FC2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_D2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_D3);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X30);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-8));
end;

procedure TBasicTest.Test1127;
begin
  // stnp q3, q5, [sp].
  FInsn.OpCode := $AC0017E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q5);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
end;

procedure TBasicTest.Test1128;
begin
  // stnp q17, q19, [sp, #1008].
  FInsn.OpCode := $AC1FCFF1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_STNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q17);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q19);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_SP);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(1008));
end;

procedure TBasicTest.Test1129;
begin
  // ldnp q23, q29, [x1, #-1024].
  FInsn.OpCode := $AC607437;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_LDNP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_Q23);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_Q29);
  Assert.AreEqual(FInsn.Operands[2].Memory.Base, REG_X1);
  Assert.AreEqual(FInsn.Operands[2].Memory.Offset.AsImm, Int32(-1024));
end;

procedure TBasicTest.Test1130;
begin
  // orr w3, w9, #0xffff0000.
  FInsn.OpCode := $32103D23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($ffff0000));
end;

procedure TBasicTest.Test1131;
begin
  // orr wsp, w10, #0xe00000ff.
  FInsn.OpCode := $3203295F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($e00000ff));
end;

procedure TBasicTest.Test1132;
begin
  // orr w9, w10, #0x3ff.
  FInsn.OpCode := $32002549;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($3ff));
end;

procedure TBasicTest.Test1133;
begin
  // and w14, w15, #0x80008000.
  FInsn.OpCode := $120181EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($80008000));
end;

procedure TBasicTest.Test1134;
begin
  // and w12, w13, #0xffc3ffc3.
  FInsn.OpCode := $120AADAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($ffc3ffc3));
end;

procedure TBasicTest.Test1135;
begin
  // and w11, wzr, #0x30003.
  FInsn.OpCode := $120087EB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($30003));
end;

procedure TBasicTest.Test1136;
begin
  // eor w3, w6, #0xe0e0e0e0.
  FInsn.OpCode := $5203C8C3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($e0e0e0e0));
end;

procedure TBasicTest.Test1137;
begin
  // eor wsp, wzr, #0x3030303.
  FInsn.OpCode := $5200C7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WSP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($3030303));
end;

procedure TBasicTest.Test1138;
begin
  // eor w16, w17, #0x81818181.
  FInsn.OpCode := $5201C630;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($81818181));
end;

procedure TBasicTest.Test1139;
begin
  // ands w19, w20, #0x33333333.
  FInsn.OpCode := $7200E693;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($33333333));
end;

procedure TBasicTest.Test1140;
begin
  // ands w21, w22, #0x99999999.
  FInsn.OpCode := $7201E6D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W22);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($99999999));
end;

procedure TBasicTest.Test1141;
begin
  // eor x3, x5, #0xffffffffc000000.
  FInsn.OpCode := $D26684A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($ffffffffc000000));
end;

procedure TBasicTest.Test1142;
begin
  // and x9, x10, #0x7fffffffffff.
  FInsn.OpCode := $9240B949;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($7fffffffffff));
end;

procedure TBasicTest.Test1143;
begin
  // orr x11, x12, #0x8000000000000fff.
  FInsn.OpCode := $B241318B;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($8000000000000fff));
end;

procedure TBasicTest.Test1144;
begin
  // orr x3, x9, #0xffff0000ffff0000.
  FInsn.OpCode := $B2103D23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($ffff0000ffff0000));
end;

procedure TBasicTest.Test1145;
begin
  // orr sp, x10, #0xe00000ffe00000ff.
  FInsn.OpCode := $B203295F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($e00000ffe00000ff));
end;

procedure TBasicTest.Test1146;
begin
  // orr x9, x10, #0x3ff000003ff.
  FInsn.OpCode := $B2002549;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($3ff000003ff));
end;

procedure TBasicTest.Test1147;
begin
  // and x14, x15, #0x8000800080008000.
  FInsn.OpCode := $920181EE;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X15);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($8000800080008000));
end;

procedure TBasicTest.Test1148;
begin
  // and x12, x13, #0xffc3ffc3ffc3ffc3.
  FInsn.OpCode := $920AADAC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($ffc3ffc3ffc3ffc3));
end;

procedure TBasicTest.Test1149;
begin
  // and x11, xzr, #0x3000300030003.
  FInsn.OpCode := $920087EB;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X11);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($3000300030003));
end;

procedure TBasicTest.Test1150;
begin
  // eor x3, x6, #0xe0e0e0e0e0e0e0e0.
  FInsn.OpCode := $D203C8C3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($e0e0e0e0e0e0e0e0));
end;

procedure TBasicTest.Test1151;
begin
  // eor sp, xzr, #0x303030303030303.
  FInsn.OpCode := $D200C7FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_SP);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($303030303030303));
end;

procedure TBasicTest.Test1152;
begin
  // eor x16, x17, #0x8181818181818181.
  FInsn.OpCode := $D201C630;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X17);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($8181818181818181));
end;

procedure TBasicTest.Test1153;
begin
  // ands x19, x20, #0x3333333333333333.
  FInsn.OpCode := $F200E693;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($3333333333333333));
end;

procedure TBasicTest.Test1154;
begin
  // ands x21, x22, #0x9999999999999999.
  FInsn.OpCode := $F201E6D5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X21);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X22);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($9999999999999999));
end;

procedure TBasicTest.Test1155;
begin
  // mov x10, #-6148914691236517206.
  FInsn.OpCode := $B201F3EA;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(-6148914691236517206));
end;

procedure TBasicTest.Test1156;
begin
  // and w2, w3, #0xfffffffd.
  FInsn.OpCode := $121E7862;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($fffffffd));
end;

procedure TBasicTest.Test1157;
begin
  // orr w0, w1, #0xfffffffd.
  FInsn.OpCode := $321E7820;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($fffffffd));
end;

procedure TBasicTest.Test1158;
begin
  // eor w16, w17, #0xfffffff9.
  FInsn.OpCode := $521D7630;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_EOR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($fffffff9));
end;

procedure TBasicTest.Test1159;
begin
  // ands w19, w20, #0xfffffff0.
  FInsn.OpCode := $721C6E93;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Immediate.AsInt, Int64($fffffff0));
end;

procedure TBasicTest.Test1160;
begin
  // and w12, w23, w21.
  FInsn.OpCode := $0A1502EC;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W12);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W23);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W21);
end;

procedure TBasicTest.Test1161;
begin
  // and w16, w15, w1, lsl #1.
  FInsn.OpCode := $0A0105F0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W16);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W15);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test1162;
begin
  // and w9, w4, w10, lsl #31.
  FInsn.OpCode := $0A0A7C89;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test1163;
begin
  // and w3, w30, w11.
  FInsn.OpCode := $0A0B03C3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W11);
end;

procedure TBasicTest.Test1164;
begin
  // and x3, x5, x7, lsl #63.
  FInsn.OpCode := $8A07FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test1165;
begin
  // and x5, x14, x19, asr #4.
  FInsn.OpCode := $8A9311C5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(4));
end;

procedure TBasicTest.Test1166;
begin
  // and w3, w17, w19, ror #31.
  FInsn.OpCode := $0AD37E23;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W17);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W19);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test1167;
begin
  // and w0, w2, wzr, lsr #17.
  FInsn.OpCode := $0A5F4440;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(17));
end;

procedure TBasicTest.Test1168;
begin
  // and w3, w30, w11, asr #0.
  FInsn.OpCode := $0A8B03C3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W30);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W11);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test1169;
begin
  // and xzr, x4, x26.
  FInsn.OpCode := $8A1A009F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X4);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X26);
end;

procedure TBasicTest.Test1170;
begin
  // and w3, wzr, w20, ror #0.
  FInsn.OpCode := $0AD403E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test1171;
begin
  // and x7, x20, xzr, asr #63.
  FInsn.OpCode := $8A9FFE87;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_AND);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test1172;
begin
  // bic x13, x20, x14, lsl #47.
  FInsn.OpCode := $8A2EBE8D;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X13);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X14);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(47));
end;

procedure TBasicTest.Test1173;
begin
  // bic w2, w7, w9.
  FInsn.OpCode := $0A2900E2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BIC);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W9);
end;

procedure TBasicTest.Test1174;
begin
  // orr w2, w7, w0, asr #31.
  FInsn.OpCode := $2A807CE2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W0);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(31));
end;

procedure TBasicTest.Test1175;
begin
  // orr x8, x9, x10, lsl #12.
  FInsn.OpCode := $AA0A3128;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X8);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X10);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(12));
end;

procedure TBasicTest.Test1176;
begin
  // orn x3, x5, x7, asr #0.
  FInsn.OpCode := $AAA700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X7);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(0));
end;

procedure TBasicTest.Test1177;
begin
  // orn w2, w5, w29.
  FInsn.OpCode := $2A3D00A2;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ORN);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W29);
end;

procedure TBasicTest.Test1178;
begin
  // ands w7, wzr, w9, lsl #1.
  FInsn.OpCode := $6A0907E7;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W9);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test1179;
begin
  // ands x3, x5, x20, ror #63.
  FInsn.OpCode := $EAD4FCA3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ANDS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfRor);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(63));
end;

procedure TBasicTest.Test1180;
begin
  // bics w3, w5, w7.
  FInsn.OpCode := $6A2700A3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_W7);
end;

procedure TBasicTest.Test1181;
begin
  // bics x3, xzr, x3, lsl #1.
  FInsn.OpCode := $EA2307E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BICS);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[2].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[2].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[2].Amount, Integer(1));
end;

procedure TBasicTest.Test1182;
begin
  // tst w3, w7, lsl #31.
  FInsn.OpCode := $6A077C7F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W7);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(31));
end;

procedure TBasicTest.Test1183;
begin
  // tst x2, x20, asr #0.
  FInsn.OpCode := $EA94005F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_TST);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfAsr);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(0));
end;

procedure TBasicTest.Test1184;
begin
  // mov x3, x6.
  FInsn.OpCode := $AA0603E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_X6);
end;

procedure TBasicTest.Test1185;
begin
  // mov x3, xzr.
  FInsn.OpCode := $AA1F03E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_XZR);
end;

procedure TBasicTest.Test1186;
begin
  // mov wzr, w2.
  FInsn.OpCode := $2A0203FF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_WZR);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W2);
end;

procedure TBasicTest.Test1187;
begin
  // mov w3, w5.
  FInsn.OpCode := $2A0503E3;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W3);
  Assert.AreEqual(FInsn.Operands[1].Register, REG_W5);
end;

procedure TBasicTest.Test1188;
begin
  // mov w1, #65535.
  FInsn.OpCode := $529FFFE1;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W1);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(65535));
end;

procedure TBasicTest.Test1189;
begin
  // movz w2, #0, lsl #16.
  FInsn.OpCode := $52A00002;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVZ);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(0));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(16));
end;

procedure TBasicTest.Test1190;
begin
  // mov w2, #-1235.
  FInsn.OpCode := $12809A42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_W2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(-1235));
end;

procedure TBasicTest.Test1191;
begin
  // mov x2, #5299989643264.
  FInsn.OpCode := $D2C09A42;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOV);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(5299989643264));
end;

procedure TBasicTest.Test1192;
begin
  // movk xzr, #4321, lsl #48.
  FInsn.OpCode := $F2E21C3F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_MOVK);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
  Assert.AreEqual(FInsn.Operands[1].Immediate.AsInt, Int64(4321));
  Assert.AreEqual(FInsn.Operands[1].Shifter, sfLsl);
  Assert.AreEqual(FInsn.Operands[1].Amount, Integer(48));
end;

procedure TBasicTest.Test1193;
begin
  // adrp x30, #4096.
  FInsn.OpCode := $B000001E;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADRP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X30);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(4096));
end;

procedure TBasicTest.Test1194;
begin
  // adr x20, #0.
  FInsn.OpCode := $10000014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(0));
end;

procedure TBasicTest.Test1195;
begin
  // adr x9, #-1.
  FInsn.OpCode := $70FFFFE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-1));
end;

procedure TBasicTest.Test1196;
begin
  // adr x5, #1048575.
  FInsn.OpCode := $707FFFE5;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X5);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(1048575));
end;

procedure TBasicTest.Test1197;
begin
  // adr x9, #1048575.
  FInsn.OpCode := $707FFFE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(1048575));
end;

procedure TBasicTest.Test1198;
begin
  // adr x2, #-1048576.
  FInsn.OpCode := $10800002;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X2);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-1048576));
end;

procedure TBasicTest.Test1199;
begin
  // adrp x9, #4294963200.
  FInsn.OpCode := $F07FFFE9;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADRP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X9);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(4294963200));
end;

procedure TBasicTest.Test1200;
begin
  // adrp x20, #-4294967296.
  FInsn.OpCode := $90800014;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ADRP);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
  Assert.AreEqual(FInsn.Operands[1].RelOffset, Int64(-4294967296));
end;

procedure TBasicTest.Test1201;
begin
  // nop.
  FInsn.OpCode := $D503201F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NOP);
end;

procedure TBasicTest.Test1202;
begin
  // hint #127.
  FInsn.OpCode := $D5032FFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_HINT);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(127));
end;

procedure TBasicTest.Test1203;
begin
  // nop.
  FInsn.OpCode := $D503201F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_NOP);
end;

procedure TBasicTest.Test1204;
begin
  // yield.
  FInsn.OpCode := $D503203F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_YIELD);
end;

procedure TBasicTest.Test1205;
begin
  // wfe.
  FInsn.OpCode := $D503205F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_WFE);
end;

procedure TBasicTest.Test1206;
begin
  // wfi.
  FInsn.OpCode := $D503207F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_WFI);
end;

procedure TBasicTest.Test1207;
begin
  // sev.
  FInsn.OpCode := $D503209F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SEV);
end;

procedure TBasicTest.Test1208;
begin
  // sevl.
  FInsn.OpCode := $D50320BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_SEVL);
end;

procedure TBasicTest.Test1209;
begin
  // clrex.
  FInsn.OpCode := $D5033F5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLREX);
end;

procedure TBasicTest.Test1210;
begin
  // clrex #0.
  FInsn.OpCode := $D503305F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLREX);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test1211;
begin
  // clrex #7.
  FInsn.OpCode := $D503375F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLREX);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(7));
end;

procedure TBasicTest.Test1212;
begin
  // clrex.
  FInsn.OpCode := $D5033F5F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_CLREX);
end;

procedure TBasicTest.Test1213;
begin
  // dsb #0.
  FInsn.OpCode := $D503309F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DSB);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test1214;
begin
  // dsb #12.
  FInsn.OpCode := $D5033C9F;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DSB);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(12));
end;

procedure TBasicTest.Test1215;
begin
  // dmb #0.
  FInsn.OpCode := $D50330BF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DMB);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(0));
end;

procedure TBasicTest.Test1216;
begin
  // dmb #12.
  FInsn.OpCode := $D5033CBF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DMB);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(12));
end;

procedure TBasicTest.Test1217;
begin
  // isb.
  FInsn.OpCode := $D5033FDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ISB);
end;

procedure TBasicTest.Test1218;
begin
  // isb.
  FInsn.OpCode := $D5033FDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ISB);
end;

procedure TBasicTest.Test1219;
begin
  // isb #12.
  FInsn.OpCode := $D5033CDF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ISB);
  Assert.AreEqual(FInsn.Operands[0].Immediate.AsInt, Int64(12));
end;

procedure TBasicTest.Test1220;
begin
  // b #4.
  FInsn.OpCode := $14000001;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(4));
end;

procedure TBasicTest.Test1221;
begin
  // bl #0.
  FInsn.OpCode := $94000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BL);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(0));
end;

procedure TBasicTest.Test1222;
begin
  // b #134217724.
  FInsn.OpCode := $15FFFFFF;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_B);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(134217724));
end;

procedure TBasicTest.Test1223;
begin
  // bl #-134217728.
  FInsn.OpCode := $96000000;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BL);
  Assert.AreEqual(FInsn.Operands[0].RelOffset, Int64(-134217728));
end;

procedure TBasicTest.Test1224;
begin
  // br x20.
  FInsn.OpCode := $D61F0280;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X20);
end;

procedure TBasicTest.Test1225;
begin
  // blr xzr.
  FInsn.OpCode := $D63F03E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_BLR);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_XZR);
end;

procedure TBasicTest.Test1226;
begin
  // ret x10.
  FInsn.OpCode := $D65F0140;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RET);
  Assert.AreEqual(FInsn.Operands[0].Register, REG_X10);
end;

procedure TBasicTest.Test1227;
begin
  // ret.
  FInsn.OpCode := $D65F03C0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_RET);
end;

procedure TBasicTest.Test1228;
begin
  // eret.
  FInsn.OpCode := $D69F03E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_ERET);
end;

procedure TBasicTest.Test1229;
begin
  // drps.
  FInsn.OpCode := $D6BF03E0;
  DecodeInstruction(FInsn);
  Assert.AreEqual(FInsn.IID, INSN_DRPS);
end;

initialization
  TDUnitX.RegisterTestFixture(TBasicTest);

end.
