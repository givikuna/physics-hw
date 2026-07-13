require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

Vtot = 13.1V
C1 = 1.39uF`E`-6F
C2 = 2.13uF`E`-6F
C3 = 3.28uF`E`-6F
C4 = 4.34uF`E`-6F

Ceff1 = (C1 + C3) / (C1 * C3)
Ceff2 = (C2 + C4) / (C2 * C4)
Ceff = Ceff1 + Ceff2
Qeff = Ceff * Vtot
Qeff1 = Ceff * (Ceff1 / Ceff)
Qeff2 = Ceff * (Ceff2 / Ceff)

say Qeff1
say Qeff2
