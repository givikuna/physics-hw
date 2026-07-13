require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,vec}
}

A = 3.83cm2`E`-4m2
d = 8.80mm`E`-3m
k1 = 13.0
k2 = 12.2

C = expt -1 Σ map ((λ (k) --> (A * ε0 * k) / (half d)) >> recip), [k1, k2]

p "#{C}F"
