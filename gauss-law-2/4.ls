(require! {
    "../math":{E,ᕀ,double,half,π,p,prod,ε0,expt,ǁ,ᐨ,elementary-charge,electron-mass}
})


(Φs = 5.5`E`5Nm2pC)
(qcentral = ᐨ(ε0 * (Φs + (Φs * 0.8))))
(qa = (ε0 * (Φs * 0.8) - qcentral))
(qb = ᐨ(ε0 * (Φs * 0.4)) - qa - qcentral)

(p "A) #{qcentral}C")
(p "B) #{qa}C")
(p "C) #{qb}C")
