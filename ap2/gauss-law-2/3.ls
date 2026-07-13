(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ}
})

(d = 0.99m)
(Q = 3.0`E`-6C)

(σ = (Q /) prod 4 π, expt 2 half d)
(Ef = ǁ (/) σ, ε0)

(p "A) #{σ}C/m^2")
(p "B) #{Ef}N/C")
