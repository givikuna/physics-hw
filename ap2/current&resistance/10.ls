require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

ΔV = 3.0V
I = 5.3A
A = 1.5mm2`E`-6m2
l = 0.99m

R = ΔV / I
ρ = (R * A) / l
σ = expt -1 ρ

p σ