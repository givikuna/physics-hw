require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

C1 = 14.0uF
C2 = 6.41uF
C3 = 5.33uF

Ceff = expt -1 ((recip (C1 + C2)) + (recip (C3)))

say Ceff
