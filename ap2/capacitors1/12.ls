require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

Veff = 13.1V
C1 = 4.01uF`E`-6F
C2 = 6.15uF`E`-6F
C3 = 3.22uF`E`-6F

Ceq1 = (C2 * C3) / (C2 + C3)

q1 = ((C2 + C3) * Veff * expt 2 C1) / ((C1*C2) + (C1*C3) + (C2*C3))
q2 = (C1*Veff) - q1
q3 = q2

say q1
say q2
say q3
