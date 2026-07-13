require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ}
}

ε1 = 150V
ε2 = 50V
R1 = 3.0ohms
R2 = 2.0ohms
VP = 150V

I = (Δ ε1, ε2) / (Σ list R1, R2)
# VP = VQ + ε1 - (R2 * I)
VQ = VP - ε1 + (I * R2)

p VQ
