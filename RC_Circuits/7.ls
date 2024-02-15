require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln}
}

R1 = R2 = R3 = 1.07Megaohms`E`6ohms
ε = 4.5kV`E`3V

Req = R1 + expt -1 (Σ map (1 /), [R2, R3])
i1 = ε / Req
i2 = i1 / 2
i3 = i1 / 2

V2_at_0 = i2 * R2
V2_at_inf = 0

p (ε / (R1 + R1))`E`3
p (ε / (R1 + R1)) * R2
