require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,Σ,list,recip}
}

Vmax = 130V
C1 = 12.5uF`E`-6F
C2 = 21.5uF`E`-6F
C3 = 27.0uF`E`-6F

V1 = Vmax
V2 = Vmax * (C1 / C2)
V3 = Vmax * (C1 / C3)

Vt = V1 + V2 + V3

say Vt

UE = Σ map (/ 2), [(C1 * V1^2), (V2^2 * C2), (V3^2 * C3)]

say UE
