% not to realize this file as function files
abc = 2;

function Cxu = calcCxu(row, U0, S, T0, Cd)
  Cxu = -1 * 2 * T0 / row / U0 / S / U0;
  Cxu = Cxu - 2 * (Cd);
end

function CLalpha = calcCLalpha (aw, S, at, St, dEps)
  CLalpha = at / aw * St / S * (1 - dEps);
  CLalpha = CLalpha + 1; 
  CLalpha = CLalpha * aw;  
end

function Cmalpha = calcCmalpha(CLa, h, hnw, at, dEps, Ve, Vfus)
  Cmalpha = at * (1 - dEps) * Ve - 2 * Vfus;
  Cmalpha = Cmalpha * (-1) / CLa - hnw + h;
  Cmalpha = Cmalpha * CLa;
end

function Cxa = calcCxa(CL, CLa, e, asp)
  Cxa = CL * (1 - 2 * CLa / (pi * e * asp));
end

function Cza = calcCza(CLa)
  Cza = -1 * CLa;
end

function Cmde = calcCmde(Ve, at)
  Cmde = -1 * Ve * at;
end

function Czde = calcCzde(St, S, at)
  Czde = -1 * St / S * at;
end

function Cmq = calcCmq (Ve, lt, cbar, at)
  Cmq = -2 * Ve * lt / cbar * at;
end

function Czq = calcCzq(Ve, at)
  Czq = -2 * Ve * at;
end

function Cmadot = calcCmadot(Ve, lt, cbar, at, dEps)
  Cmadot = -2 * Ve * lt / cbar * at * dEps;
end

function Czu = calcCzu()
  Czu = 0;
end

function Cmu = calcCmu()
  Cmu = 0;
end
