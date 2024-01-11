require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke}
}

a = 43.2mm`E`-3m
b = 47.4mm`E`-3m

C = (a * b) / (Ke * (b - a))

A = ((* C) (b -) a) / ε0

say "A) #{C`E`+12}pF"
say "B) #{A`E`+4}cm^2"
