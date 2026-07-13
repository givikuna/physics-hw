require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ}
}

I = 3.8A
t = (*) 7.4m 60 #s
ε = 3.0V #emf

q = I * t
ΔE = q * ε # chemical energy

p ΔE