% define functions
input;
Lateral;
Longitudinal;

%% define constants
speed = 7.6;
Math = 93.7;
span = 29.5;
cbar = 0.955;
Tzero = 25.4;
S = 27.48375;
CL = 1.035;
CD = 0.021;
T0 = 25.4;
aw = 6.026;
a0 = 6.133;
Asp = aspect(span, S);
e = 0.95;
dEps = calcDEpsRate(aw, Asp);
ramda = 0.563;
gamma = 9.03 * pi / 180;
yeta = -0.171 * pi / 180;

Cog_Z = -0.78;

Le = 4.3;
Se = 2.406;
Ve = TailVolume(Le, Se, S, cbar);
ae = 5.844;

Lv = 5.25;
Sv = 2.239;
Vv = TailVolume(Lv, Sv, S, span);
av = 5.844;
zfr = 0.875 - Cog_Z;

Vfus = 0.5;

h = 0.25; %air center: 25%M.A.C.
hnw = 0.36;  %Cog:36%M.A.C.

row = 1.165;

ans = zeros(32, 1);

% calcurate Lengitudinal part

CLa = calcCLalpha (aw, S, ae, Se, dEps);

ans(1, 1) = calcCxu(row, speed, S, T0, CD);
ans(2, 1) = calcCzu();
ans(3, 1) = calcCmu();
ans(4, 1) = calcCxa(CL, CLa, e, Asp);
ans(5, 1) = calcCza(CLa);
ans(6, 1) = CLa;
ans(7, 1) = calcCmalpha(CLa, h, hnw, ae, dEps, Ve, Vfus); 
ans(8, 1) = calcCmadot(Ve, Le, cbar, ae, dEps);
ans(9, 1) = calcCzq(Ve, ae);
ans(10,1) = calcCmq(Ve, Le, cbar, ae);
ans(11,1) = calcCzde(Se, S, ae);
ans(12,1) = calcCmde(Se, S, ae);
ans(13,1) = 0;%make a space

% calcurate Lateral part
ans(14,1) = calcCyb(Sv, S, av);
ans(15,1) = calcClb(ramda, a0, gamma, CL, yeta);
ans(16,1) = calcCnb(Vv, av, Vfus, cbar, span);
ans(17,1) = calcCnb(Vv, av, Vfus, cbar, span);
ans(18,1) = calcCyp();
ans(19,1) = calcClp(a0, ramda);
ans(20,1) = calcCnp(ramda, CLa, e, Asp, CL);
ans(21,1) = calcCyr(Sv, S, av, Lv, span);
ans(22,1) = calcClr(ramda, CL, zfr, span, Lv, S, av);
ans(23,1) = calcCnr(ramda, CD, Vv, av, Lv, span);
ans(24,1) = calcCydr(Sv, S, av);
ans(25,1) = calcCldr(zfr, span, Sv, S, av);
ans(26,1) = calcCndr(Vv, av);

% export results
csvwrite('results.csv', ans);
