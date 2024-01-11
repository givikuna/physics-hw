require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

V = 300V
C1 = 1.6uF`E`-6F
C2 = 3.3uF`E`-6F

UE = 0.5 * (C1 + C2) * expt 2 V

say UE
