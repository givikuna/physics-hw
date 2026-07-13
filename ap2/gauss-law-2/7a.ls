(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ,ᐨ,elementary-charge,electron-mass}
})

(l = 59`E`-2m)
(d = 14`E`-2m)
(Ef = 2.5`E`5NpC)

(A = prod 0.59 0.14 π)
(σ = Ef * ε0)
(qᕀ = A * σ)

(p "#{qᕀ}C")
