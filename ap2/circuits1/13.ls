require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ}
}

R = 6.3ohms
ε = 2.0V
Rint = 1.2ohms
t = 2.1 * 60 #s

P = (expt 2 ε) / (R + Rint) # power
ΔE = P * t # power * time = energy
transferred-thermal-energy = ΔE

p "A) #{transferred-thermal-energy}J"

I = ε / (R + Rint)
generated-thermal-energy = R * t * expt 2 I

p "B) #{generated-thermal-energy}J"

energy-dissipated-as-thermal-energy = ǁ Δ transferred-thermal-energy, generated-thermal-energy

p "C) #{energy-dissipated-as-thermal-energy}J"