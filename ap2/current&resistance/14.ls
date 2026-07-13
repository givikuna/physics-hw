require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

ΔV = 140V
I = 12.7A
EE = 62.6kJ`E`3J
Etotal = (*) 3 EE

P = I * ΔV
t = Etotal / P

p "#{t}s"
