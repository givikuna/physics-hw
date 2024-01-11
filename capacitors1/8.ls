require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

C1 = 12.0uF`E`-6F
C2 = C1

ΔV1 = 10V
ΔV2 = (/) 10V 2

Q1 = ΔV1 * C1
Q2 = ΔV2 * C2

say "A) #{Q1`E`6}uC"
say "B) #{Q2`E`6}uC"
