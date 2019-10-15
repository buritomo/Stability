#関数定義
input.m;
Lateral.m;
Longitudinal.m;

## 機体基本データ入力
speed = 7.6;
Math = 93.7;
span = 29.5;
cbar = 0.955;
Tzero = 25.4;
S = 27.48375;
CL = 1.045;
CD = 0.020;
Asp = aspect(span, S);

Le = 4.3;
Se = 2.406;
Ve = TailVolume(Le, Se, S, cbar);
Lv = 5.25;
Sv = 2.239;
Vv = TailVolume(Lv, Sv. S. span);

CogX = 1.3691;
CogY = 0;
CogZ = -0.8047;

Ibxx = 1030;
Ibyy = 92.21;
Ibzz = 1035;
Ibxz = -16.03;

row = 1.165;