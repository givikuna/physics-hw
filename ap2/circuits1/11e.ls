require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ}
}

ε = 12V # emf
R = 0.079ohms
I = 27A

Pr = R * expt 2 I

p Pr