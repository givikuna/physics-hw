require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ}
}

I = 0.94mA`E`-3A
ε1 = 1.7V
ε2 = 4.5V
r1 = 3.9ohms
r2 = r1

# I = (ε2 - ε1) / (r1 + r2 + R)
R = ((ε2 - ε1) / I) - r1 - r2

p "A) #{R}Ω"

P = R * expt 2 I

p "B) #{P}W"