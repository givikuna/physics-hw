require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ}
}

V = 12V # emf
R = 0.079ohms
I = 27A

ΔV = V + (I * R)
Pr = R * expt 2 I
Pemf = I * V

p Pemf