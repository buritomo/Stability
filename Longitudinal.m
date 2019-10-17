% not to realize this file as function files
abc = 2;

function Cxu = calcCxu(row, U0, S, T0, Cd)
  Cxu = -1 * 2 * T0 / row / U0 / S / U0;
  Cxu = Cxu - 2 * (Cd);
endfunction

function CLalpha = calcCLalpha (aw, S, at, St, dEps)
  CLalpha = at / aw * St / S * (1 - dEps);
  CLalpha = CLalpha + 1; 
  CLalpha = CLalpha * aw;  
endfunction

function Cmalpha = calcCmalpha(CLa, h, hnw, at, dEps, Ve, Vfus)
  Cmalpha = at * (1 - dEps) * Ve - 2 * Vfus;
  Cmalpha = Cmalpha * (-1) / CLa + h;
  Cmalpha = Cmalpha * CLa;
endfunction

function Cxa = calcCxa(CL, CLa, e, asp)
  Cxa = CL * (1 - 2 * CLa / (pi * e * asp));
endfunction

function Cza = calcCza(CLa)
  Cza = -1 * CLa;
endfunction

function Cmde = calcCmde(Ve, at)
  Cmde = -1 * Ve * at;
endfunction

function Czde = calcCzde(St, S, at)
  Czde = -1 * St / S * at;
endfunction

function Cmq = calcCmq (Ve, lt, cbar, at)
  Cmq = -2 * Ve * lt / cbar * at;
endfunction

function Czq = calcCzq(Ve, at)
  Czq = -2 * Ve * at;
endfunction

function Cmadot = calcCmadot(Ve, lt, cbar, at, dEps)
  Cmadot = -2 * Ve * lt / cbar * at * dEps;
endfunction

function Czu = calcCzu()
  Czu = 0;
endfunction

function Cmu = calcCmu()
  Cmu = 0;
endfunction
