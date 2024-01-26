require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ,sqrt,Π}
}

(R1 = 4.16ohms)
(R2 = 12.5ohms)
(ε = 12.5V)
(t = 1.95min * 60spmin)

(I1_mag = ǁ ε / R2)

p I1_mag

(Reff = R1 + expt -1 ((recip R2) + expt -1 ((*) 2 recip R2)))
(Ieff = ǁ ε / R2)
(P = Reff * (expt 2 Ieff))
(DE = P * t)

(p DE)
