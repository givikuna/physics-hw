(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag}
})

(l = 1.83m)
(A = expt 2 l)
(Ef = 5.51NpC)
(ΦE = mag (vec-mult [Ef, 0] [0 A]))

(say "#{ΦE}Nm^2/C")
