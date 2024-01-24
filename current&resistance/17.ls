require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

Ax = 2.0`E`-6m2
l = 3.4m
I = 2.20A
t = (*) 60.0 20.0 #seconds
ρ = 1.69`E`-8ohmmeters

ㅣJ⃗ㅣ = I / Ax
ㅣE⃗ㅣ = ρ * ㅣJ⃗ㅣ

p "A) #{ㅣE⃗ㅣ}V/m"

R = (ρ * l) / Ax
P = R * expt 2 I
EE = P * t

p "B) #{EE}J"
