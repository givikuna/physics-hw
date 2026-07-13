require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip,Σ}
}

V = 17.0V
k1 = 1
k2 = 2.80
A = 3.20`E`-3m2
d = 1.10mm`E`-3m

Q = Σ map (λ --> (A * it * ε0 * V) / d), [k1, k2]

p "#{Q}C"
