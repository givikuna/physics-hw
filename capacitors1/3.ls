require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say}
}

r = 10.7cm`E`-2m
d = 1.65mm`E`-3m
ΔV = 90.1V

A = (λ --> (* π) expt 2 it) r

C = (ε0 * A) / d
Q = ΔV * C

say "A) #{+C`E`+12}pF"
say "B) #{+Q`E`+9}nC"
