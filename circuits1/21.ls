require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ,sqrt,Π}
}

(R1 = 4.16ohms)
(R2 = 12.5ohms)
(ε = 12.5V)
(t = 1.95min * 60spmin)

(R1eff = R1)
(R2eff = (expt 3 R3) / ((*) 3 R2)
(Reff = R1eff + R2eff)

(V1 = ε * (R1eff / Reff))
(V2 = ε * (R2eff / Reff))
(I1 = (V2 / R2eff) / 3)

(p I1)

(Ieff = ε / Reff)
(P = Reff * expt 2 Ieff)
(DE = P * t)

(p DE)
