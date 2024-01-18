require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

A = 6.81cm2`E`-4m2
d = 6.90mm`E`-3m
k1 = 9.80
k2 = 14.9

C = Σ map (λ --> (ε0 * it * half A) / d), list k1, k2

p "#{C}F"
