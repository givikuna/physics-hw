require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

r = 0.099m
Iin = 1.0000051A
Iout = 1.0A
ΔV = 1400V

Δt = (ΔV * r) / (Ke * (Iin - Iout))

p Δt