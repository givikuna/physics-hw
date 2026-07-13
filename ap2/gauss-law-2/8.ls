(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ,ᐨ,elementary-charge,electron-mass}
})

(R = 5.83cm`E`-2m)
(λ = 9.41`E`-8Cpm)

(E1 = λ / (2 * π * ε0 * 0.0316))
(E2 = λ / (2 * π * ε0 * 0.106))

(p "A) #{E1}N/C")
(p "B) #{E2}N/C")
