require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln}
}

R = 16100ohms
ε = 12.0V
Vc = 4.75V
t = 1.84us`E`-6s

C = -t / (R * ln (1 - (Vc / ε)))

τ = R * C

p "A) #{τ`E`6us}us"
p "B) #{C`E`9nF}nF"
