require! {
    '../math':{E,π,ε0,half,p,double,abs,ᐨ}
}

σ = E 1.68 -22
Ef = abs (σ / double ε0)

p "A) #{abs (*) 2 Ef}N/C"
p "B) 0N/C"
p "C) #{ᐨ (*) 2 Ef}N/C"
