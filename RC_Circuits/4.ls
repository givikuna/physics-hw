require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln}
}

R = 1740000omhs
C = 1.77uF`E`-6F
ε = 12.0V

τ = R * C

p "A) #{τ}s"

qmax = C * ε

p "B) #{qmax`E`6uF}uF"

q = 12.2uC`E`-6C
t = -τ * ln(1 - (q / qmax))

p "C) #{t}s"
