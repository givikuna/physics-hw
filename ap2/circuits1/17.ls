require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ,sqrt}
}

R1 = 26.0ohms
V = 31.7V

R = expt -1 Σ map (expt -1), list R1, R1, R1, R1
I = V / R

p I