require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e}
}

emf = 191.0V
V = 1.99V
t = 10.0s

τ = -10.0s / ln(V / emf)

p τ

tf = 19.7s
Vf = emf * expt (-tf / τ), e

p Vf
