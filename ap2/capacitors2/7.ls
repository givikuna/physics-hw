require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

C = 69pF
A = 0.27m2
k = 6.8

d = (ε0 * A) / (C`E`-12)

p "A) #{d}m"

C = C * k
p "A) #{C}pF"
