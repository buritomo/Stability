function Vt = TailVolume (MArm, Stail, Smain, Mainlong)
    Vt = MArm * Stail / Smain / Mainlong;
endfunction

function Asp = aspect (b, S);
    Asp = b * b / S;
endfunction