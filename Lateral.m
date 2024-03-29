% not to realize this file as function files
abc = 3;

function Cyb = calcCyb(Sf, S, afin)
  Cyb = -1 * Sf / S * afin;
end

function Clb = calcClb(ramda, a0, gamma, Cl, yeta)
  Clbino = -0.006;
  Clb = a0 * gamma + Cl * tan(yeta);
  Clb = Clb * (-1 / 6) * (1 + 2 * ramda) / (1 + ramda);
  Clb = Clb + Clbino;
end

function Cnb = calcCnb(Vfin, afin, Vfus, cbar, b)
  Cnb = Vfin * afin - 2 * Vfus * cbar / b;  
end

function Cyp = calcCyp()
  Cyp = 0;  
end

function Clp = calcClp(a0, ramda)
  Clp = -1 * a0 / 12 * (1 + 3 * ramda) / (1 + ramda);  
end

function Cnp = calcCnp(ramda, Cla, e, asp, CL)
  Cnp = -1 / 12 * (1 + 3 * ramda) / (1 + ramda);
  Cnp = Cnp * (1 - 2 * Cla / (pi * e * asp))* CL;
end

function Cyr = calcCyr(Sf, S, afin, lf, b)
  Cyr = Sf/ S * afin * 2 * lf / b;
end

function Clr = calcClr(ramda, Cl, zfr, b, lf, Sf, S, afin)
  Clr = 1 / 6 * (1 + 3 * ramda) / (1 + ramda) * Cl;
  Clr = Clr + zfr * Sf / b / S * afin * 2 * lf / b;
end

function Cnr = calcCnr(ramda, CD, Vfin, afin, lf, b)
  Cnr = -1 / 6 * (1 + 3 * ramda) / (1 + ramda) * CD;
  Cnr = Cnr - Vfin * afin * 2 * lf / b;
end

function Cydr = calcCydr(Sf, S, afin)
  Cydr = Sf / S * afin;
end

function Cldr = calcCldr(zfr, b, Sf, S, afin)
  Cldr = zfr / b * Sf / S * afin;
end

function Cndr = calcCndr(Vfin, afin)
  Cndr = -1 * Vfin * afin;
end
