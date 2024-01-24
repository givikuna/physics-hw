require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ}
}

Reff = 3.18ohms
R1 = 12.20ohms

R2 = (Reff * R1) / (R1 - Reff)

p R2