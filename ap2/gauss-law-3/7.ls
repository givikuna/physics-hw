require! {
    '../math':{E,π,ε0,half,p,double,abs,ᐨ,electron-mass,elementary-charge,dtan,neg,sqrt,ǁ}
}

σ = -2.1uCpm2`E`-6Cpm2
Q = 7.4uC`E`-6C

r = ǁ sqrt ǁ ((2 * (9`E`9) * Q * ε0) / σ)

p "A) #{(*) 100 r}cm"
p "B) #{(*) 100 neg r}cm"
p "C) #{(*) 100 r}cm"
