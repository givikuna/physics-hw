(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ,ᐨ,elementary-charge,electron-mass}
})

(l = 32`E`-2m)
(d = 12`E`-2m)
(Ef = 2.5`E`5NpC)

(A = prod 0.32 0.12 π)
(σ = Ef * ε0)
(qᕀ = A * σ)

(p "#{qᕀ}C")
