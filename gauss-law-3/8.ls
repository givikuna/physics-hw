require! {
    '../math':{E,π,ε0,half,p,double,abs,ᐨ,electron-mass,elementary-charge,dtan,neg,sqrt,ǁ}
}

e = elementary-charge

σ = -2`E`-6Cpm2
Ko = 3.2`E`-17J
Δx = abs ((Ko * ε0) / (σ * e))

p Δx
