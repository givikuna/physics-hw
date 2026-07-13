(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt}
})

(d = 1.7m)
(σ = 8.3uCpm2)
(σ = σ`E`-6)
(A = prod 4 π, expt 2 half d)
(Q = ᕀ (*) σ, A)

(ϕE = Q / ε0)

(p "A) #{Q}C")
(p "B) #{ϕE}Nm^2/C")
