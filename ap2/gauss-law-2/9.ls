(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ,ᐨ,elementary-charge,electron-mass}
})

(Ef = 3.4`E`4NpC)
(r = 2.8m)

(λ = Ef * r * 2 * ε0 * π)

(p "#{λ}N/m")
