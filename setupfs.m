% not to realize this file as function files
abc = 1;

function Vt = TailVolume (MArm, Stail, Smain, Mainlong)
  Vt = MArm * Stail / Smain / Mainlong;
end

function Asp = aspect (b, S)
  Asp = b * b / S;
end

function dEps_dAlpha = calcDEpsRate(aw, asp)
  dEps_dAlpha = 2 * aw / pi / asp;  
end
