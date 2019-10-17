abc = 2;

function Vt = TailVolume (MArm, Stail, Smain, Mainlong)
  Vt = MArm * Stail / Smain / Mainlong;
endfunction

function Asp = aspect (b, S);
  Asp = b * b / S;
endfunction

function dEps_dAlpha = calcDEpsRate(aw, asp)
  dEps_dAlpha = 2 * aw / pi / asp;  
endfunction
