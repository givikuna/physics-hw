require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

r = 2.15mm`E`-3m
h = 0.833km`E`3m
l = h
r_coating = 0.506mm`E`-3m
ρ_coating = 150ohmmeters
ΔV = 160MV`E`6V

A = π * ((r + r_coating)^2 - r^2)
R = (ρ_coating * l) / A
I = ΔV / R

say I`E`3
