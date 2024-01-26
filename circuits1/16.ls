require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double,Δ,ǁ,sqrt}
}

Reff_series = 13.5ohms
Reff_parallel = 2.57ohms

p "A) #{(3 * (45 - sqrt 483)) / 20}"
p "B) #{(3 * (45 + sqrt 483)) / 20}"