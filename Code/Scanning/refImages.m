function [ colourThresh ] = refImages( testRGB )
%UTakes in two sets of RGB values and returns a set of colour thresholds
%   Detailed explanation goes here

%declaring vector for reference images (based on values non-cube colour
%values)
refChart = [151,153,167;161,126,142;160,146,151;159,159,161;144,145,152;186,186,196;146,147,152;143,144,153;146,149,161;144,145,155;125,131,142;136,140,151;132,137,148;133,139,149;136,141,150;129,134,144;136,137,129;125,126,128;125,131,146;122,122,120;117,110,101;121,114,102;116,119,126;106,107,116;143,145,148;143,148,165;146,154,183;144,151,175;171,175,192;161,149,135;161,149,137;159,148,135;168,152,133;172,160,144;139,138,131;90,84,70;189,134,46;154,104,40;186,134,26;202,145,66;198,158,91;];


reference1 = [134,17,16;18,71,181;185,88,29;69,156,128;178,211,255;196,172,58]; 
reference2 = [153,9,18;30,54,155;192,72,22;77,127,105;199,163,254;209,141,37;];
reference3 = [152,25,22;39,71,169;192,89,14;82,149,122;202,197,255;210,163,30;];
reference4 = [148,34,17;25,72,172;191,94,16;71,155,118;186,208,255;203,163,30;];
reference5 = [123,21,15;16,64,163;171,86,20;64,150,111;163,192,255;179,155,33;];
reference6 = [166,44,35;38,88,219;229,121,32;87,193,146;216,248,255;243,207,52;];
reference7 = [134,24,20;24,70,172;183,92,30;69,153,120;176,202,255;189,163,44;];
reference8 = [113,18,15;15,63,163;172,87,32;67,152,119;168,197,225;180,159,53;];
reference9 = [125,21,20;19,69,173;179,91,36;70,154,126;175,206,255;189,166,55;];
reference10 = [116,12,13;31,71,167;183,87,49;113,175,175;190,219,255;209,181,131;];
reference11 = [106,19,22;10,61,161;169,86,48;63,153,117;152,191,255;171,156,66;];
reference12 = [115,27,34;25,71,181;181,100,64;77,161,139;171,210,255;184,171,81;];
reference13 = [116,28,33;24,71,178;177,98,62;75,158,137;168,205,255;179,167,76;];
reference14 = [124,25,32;20,72,184;180,94,47;71,159,134;168,208,255;181,168,67;];
reference15 = [123,27,31;9,66,173;183,90,48;59,158,120;158,203,255;182,165,72;];
reference16 = [112,22,26;7,60,162;172,84,44;55,154,112;151,191,255;172,156,68;];
reference17 = [148,31,11;46,77,159;192,110,43;82,154,125;191,214,255;206,171,26;];
reference18 = [132,24,13;38,71,156;180,96,37;72,150,114;170,198,255;184,157,19;];
reference19 = [123,15,17;31,72,175;173,91,41;70,151,125;165,199,255;178,157,34;];
reference20 = [137,20,6;35,72,155;182,96,27;72,150,107;172,197,253;189,158,4;];
reference21 = [132,16,9;42,73,152;176,93,31;78,146,117;176,195,234;187,156,4;];
reference22 = [134,23,10;43,73,149;178,98,50;80,147,122;177,196,233;189,157,31;];
reference23 = [141,23,14;32,75,167;187,97,14;78,157,124;185,212,255;197,174,33;];
reference24 = [122,18,12;28,69,155;169,88,13;70,149,109;176,192,246;180,158,33;];
reference25 = [146,31,21;36,76,171;182,94,12;74,155,121;184,212,255;204,181,51;];
reference26 = [141,26,23;28,73,174;178,91,17;69,152,118;178,210,255;199,177,52;];
reference27 = [135,17,21;22,75,196;182,90,23;69,159,133;171,214,255;190,173,55;];
reference28 = [135,19,25;24,75,196;191,95,28;67,162,134;173,216,255;196,177,57;];
reference29 = [118,17,16;27,72,173;171,92,40;77,160,133;191,214,255;200,180,59;];
reference30 = [158,45,25;32,72,152;203,105,37;72,153,97;193,209,240;226,180,46;];
reference31 = [158,43,19;26,71,151;201,100,30;69,153,93;191,210,243;226,181,45;];
reference32 = [156,41,16;23,69,149;198,97,27;67,151,91;190,207,239;221,177,43;];
reference33 = [156,41,18;27,68,147;200,97,28;70,151,90;196,207,234;227,178,42;];
reference34 = [156,40,19;36,74,155;200,101,24;76,154,105;195,212,250;226,183,38;];
reference35 = [120,16,5;22,57,132;162,95,61;92,140,123;185,203,242;199,177,116;];
reference36 = [74,2,0;5,22,72;122,64,33;62,95,89;131,138,156;141,129,81;];
reference37 = [161,13,0;62,61,77;238,90,1;116,138,43;251,199,124;249,155,0;];
reference38 = [173,10,0;61,61,78;231,101,2;105,138,56;230,188,128;247,157,0;];
reference39 = [158,3,0;46,49,68;216,74,0;87,123,29;224,179,104;245,153,0;];
reference40 = [187,31,0;53,54,71;232,90,0;83,114,41;215,179,119;252,170,0;];
reference41 = [168,47,1;69,77,118;252,127,24;111,143,67;229,223,186;252,191,2;];

%Compare ref values to find closest reference
[Distance,Index] = pdist2(refChart,testRGB,'cityblock','Smallest',1);

%Set colour thresholds to first reference image
if (Index == 1)
    RED = reference1(1,:);
    BLUE = reference1(2,:);
    ORANGE = reference1(3,:);
    GREEN = reference1(4,:);
    WHITE = reference1(5,:);
    YELLOW = reference1(6,:);
end

%Set colour thresholds to second reference image
if (Index == 2)
    RED = reference2(1,:);
    BLUE = reference2(2,:);
    ORANGE = reference2(3,:);
    GREEN = reference2(4,:);
    WHITE = reference2(5,:);
    YELLOW = reference2(6,:);
end

%Set colour thresholds to third reference image
if (Index == 3)
    RED = reference3(1,:);
    BLUE = reference3(2,:);
    ORANGE = reference3(3,:);
    GREEN = reference3(4,:);
    WHITE = reference3(5,:);
    YELLOW = reference3(6,:);
end

%Set colour thresholds to fourth reference image
if (Index == 4)
    RED = reference4(1,:);
    BLUE = reference4(2,:);
    ORANGE = reference4(3,:);
    GREEN = reference4(4,:);
    WHITE = reference4(5,:);
    YELLOW = reference4(6,:);
end

%Set colour thresholds to fifth reference image
if (Index == 5)
    RED = reference5(1,:);
    BLUE = reference5(2,:);
    ORANGE = reference5(3,:);
    GREEN = reference5(4,:);
    WHITE = reference5(5,:);
    YELLOW = reference5(6,:);
end

%Set colour thresholds to sixth reference image
if (Index == 6)
    RED = reference6(1,:);
    BLUE = reference6(2,:);
    ORANGE = reference6(3,:);
    GREEN = reference6(4,:);
    WHITE = reference6(5,:);
    YELLOW = reference6(6,:);
end

%Set colour thresholds to seventh reference image
if (Index == 7)
    RED = reference7(1,:);
    BLUE = reference7(2,:);
    ORANGE = reference7(3,:);
    GREEN = reference7(4,:);
    WHITE = reference7(5,:);
    YELLOW = reference7(6,:);
end

%Set colour thresholds to eighth reference image
if (Index == 8)
    RED = reference8(1,:);
    BLUE = reference8(2,:);
    ORANGE = reference8(3,:);
    GREEN = reference8(4,:);
    WHITE = reference8(5,:);
    YELLOW = reference8(6,:);
end

%Set colour thresholds to ninth reference image
if (Index == 9)
    RED = reference9(1,:);
    BLUE = reference9(2,:);
    ORANGE = reference9(3,:);
    GREEN = reference9(4,:);
    WHITE = reference9(5,:);
    YELLOW = reference9(6,:);
end

%Set colour thresholds to tenth reference image
if (Index == 10)
    RED = reference10(1,:);
    BLUE = reference10(2,:);
    ORANGE = reference10(3,:);
    GREEN = reference10(4,:);
    WHITE = reference10(5,:);
    YELLOW = reference10(6,:);
end

if (Index == 11)
    RED = reference11(1,:);
    BLUE = reference11(2,:);
    ORANGE = reference11(3,:);
    GREEN = reference11(4,:);
    WHITE = reference11(5,:);
    YELLOW = reference11(6,:);
end

if (Index == 12)
    RED = reference12(1,:);
    BLUE = reference12(2,:);
    ORANGE = reference12(3,:);
    GREEN = reference12(4,:);
    WHITE = reference12(5,:);
    YELLOW = reference12(6,:);
end

if (Index == 13)
    RED = reference13(1,:);
    BLUE = reference13(2,:);
    ORANGE = reference13(3,:);
    GREEN = reference13(4,:);
    WHITE = reference13(5,:);
    YELLOW = reference13(6,:);
end

if (Index == 14)
    RED = reference14(1,:);
    BLUE = reference14(2,:);
    ORANGE = reference14(3,:);
    GREEN = reference14(4,:);
    WHITE = reference14(5,:);
    YELLOW = reference14(6,:);
end

if (Index == 15)
    RED = reference15(1,:);
    BLUE = reference15(2,:);
    ORANGE = reference15(3,:);
    GREEN = reference15(4,:);
    WHITE = reference15(5,:);
    YELLOW = reference15(6,:);
end

if (Index == 16)
    RED = reference16(1,:);
    BLUE = reference16(2,:);
    ORANGE = reference16(3,:);
    GREEN = reference16(4,:);
    WHITE = reference16(5,:);
    YELLOW = reference16(6,:);
end

if (Index == 17)
    RED = reference17(1,:);
    BLUE = reference17(2,:);
    ORANGE = reference17(3,:);
    GREEN = reference17(4,:);
    WHITE = reference17(5,:);
    YELLOW = reference17(6,:);
end

if (Index == 18)
    RED = reference18(1,:);
    BLUE = reference18(2,:);
    ORANGE = reference18(3,:);
    GREEN = reference18(4,:);
    WHITE = reference18(5,:);
    YELLOW = reference18(6,:);
end

if (Index == 19)
    RED = reference19(1,:);
    BLUE = reference19(2,:);
    ORANGE = reference19(3,:);
    GREEN = reference19(4,:);
    WHITE = reference19(5,:);
    YELLOW = reference19(6,:);
end

if (Index == 20)
    RED = reference20(1,:);
    BLUE = reference20(2,:);
    ORANGE = reference20(3,:);
    GREEN = reference20(4,:);
    WHITE = reference20(5,:);
    YELLOW = reference20(6,:);
end

if (Index == 21)
    RED = reference21(1,:);
    BLUE = reference21(2,:);
    ORANGE = reference21(3,:);
    GREEN = reference21(4,:);
    WHITE = reference21(5,:);
    YELLOW = reference21(6,:);
end

if (Index == 22)
    RED = reference22(1,:);
    BLUE = reference22(2,:);
    ORANGE = reference22(3,:);
    GREEN = reference22(4,:);
    WHITE = reference22(5,:);
    YELLOW = reference22(6,:);
end

if (Index == 23)
    RED = reference23(1,:);
    BLUE = reference23(2,:);
    ORANGE = reference23(3,:);
    GREEN = reference23(4,:);
    WHITE = reference23(5,:);
    YELLOW = reference23(6,:);
end

if (Index == 24)
    RED = reference24(1,:);
    BLUE = reference24(2,:);
    ORANGE = reference24(3,:);
    GREEN = reference24(4,:);
    WHITE = reference24(5,:);
    YELLOW = reference24(6,:);
end

if (Index == 25)
    RED = reference25(1,:);
    BLUE = reference25(2,:);
    ORANGE = reference25(3,:);
    GREEN = reference25(4,:);
    WHITE = reference25(5,:);
    YELLOW = reference25(6,:);
end

if (Index == 26)
    RED = reference26(1,:);
    BLUE = reference26(2,:);
    ORANGE = reference26(3,:);
    GREEN = reference26(4,:);
    WHITE = reference26(5,:);
    YELLOW = reference26(6,:);
end

if (Index == 27)
    RED = reference27(1,:);
    BLUE = reference27(2,:);
    ORANGE = reference27(3,:);
    GREEN = reference27(4,:);
    WHITE = reference27(5,:);
    YELLOW = reference27(6,:);
end

if (Index == 28)
    RED = reference28(1,:);
    BLUE = reference28(2,:);
    ORANGE = reference28(3,:);
    GREEN = reference28(4,:);
    WHITE = reference28(5,:);
    YELLOW = reference28(6,:);
end

if (Index == 29)
    RED = reference29(1,:);
    BLUE = reference29(2,:);
    ORANGE = reference29(3,:);
    GREEN = reference29(4,:);
    WHITE = reference29(5,:);
    YELLOW = reference29(6,:);
end

if (Index == 30)
    RED = reference30(1,:);
    BLUE = reference30(2,:);
    ORANGE = reference30(3,:);
    GREEN = reference30(4,:);
    WHITE = reference30(5,:);
    YELLOW = reference30(6,:);
end

if (Index == 31)
    RED = reference31(1,:);
    BLUE = reference31(2,:);
    ORANGE = reference31(3,:);
    GREEN = reference31(4,:);
    WHITE = reference31(5,:);
    YELLOW = reference31(6,:);
end

if (Index == 32)
    RED = reference32(1,:);
    BLUE = reference32(2,:);
    ORANGE = reference32(3,:);
    GREEN = reference32(4,:);
    WHITE = reference32(5,:);
    YELLOW = reference32(6,:);
end

if (Index == 33)
    RED = reference33(1,:);
    BLUE = reference33(2,:);
    ORANGE = reference33(3,:);
    GREEN = reference33(4,:);
    WHITE = reference33(5,:);
    YELLOW = reference33(6,:);
end

if (Index == 34)
    RED = reference34(1,:);
    BLUE = reference34(2,:);
    ORANGE = reference34(3,:);
    GREEN = reference34(4,:);
    WHITE = reference34(5,:);
    YELLOW = reference34(6,:);
end

if (Index == 35)
    RED = reference35(1,:);
    BLUE = reference35(2,:);
    ORANGE = reference35(3,:);
    GREEN = reference35(4,:);
    WHITE = reference35(5,:);
    YELLOW = reference35(6,:);
end

if (Index == 36)
    RED = reference36(1,:);
    BLUE = reference36(2,:);
    ORANGE = reference36(3,:);
    GREEN = reference36(4,:);
    WHITE = reference36(5,:);
    YELLOW = reference36(6,:);
end

if (Index == 37)
    RED = reference37(1,:);
    BLUE = reference37(2,:);
    ORANGE = reference37(3,:);
    GREEN = reference37(4,:);
    WHITE = reference37(5,:);
    YELLOW = reference37(6,:);
end

if (Index == 38)
    RED = reference38(1,:);
    BLUE = reference38(2,:);
    ORANGE = reference38(3,:);
    GREEN = reference38(4,:);
    WHITE = reference38(5,:);
    YELLOW = reference38(6,:);
end

if (Index == 39)
    RED = reference39(1,:);
    BLUE = reference39(2,:);
    ORANGE = reference39(3,:);
    GREEN = reference39(4,:);
    WHITE = reference39(5,:);
    YELLOW = reference39(6,:);
end

if (Index == 40)
    RED = reference40(1,:);
    BLUE = reference40(2,:);
    ORANGE = reference40(3,:);
    GREEN = reference40(4,:);
    WHITE = reference40(5,:);
    YELLOW = reference40(6,:);
end

if (Index == 41)
    RED = reference41(1,:);
    BLUE = reference41(2,:);
    ORANGE = reference41(3,:);
    GREEN = reference41(4,:);
    WHITE = reference41(5,:);
    YELLOW = reference41(6,:);
end

colourThresh(1,:) = RED;
colourThresh(2,:) = BLUE;
colourThresh(3,:) = ORANGE;
colourThresh(4,:) = GREEN;
colourThresh(5,:) = WHITE;
colourThresh(6,:) = YELLOW;

end

