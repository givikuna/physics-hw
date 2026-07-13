(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ,ᐨ,elementary-charge,electron-mass}
})

(eᐨ = elementary-charge)
(m = electron-mass)

(r = 9.0cm`E`-2m)
(λ = 6.8uCpm`E`-6C)
# ma = eE = (eλ) / (2πε0r) =>
# a = (eλ) / (2πε0rm)
(a = (eᐨ * λ) / (2 * π * ε0 * r * m))

(p "#{a}m/s^2")
