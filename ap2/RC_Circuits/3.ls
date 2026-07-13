require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln}
}

t0 = 0s
C = 15.4uF`E`-6F
R = 20.2ohms

t = -R * C * ln 0.5

p t`E`3
