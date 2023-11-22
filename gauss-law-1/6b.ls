(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag}
})

(l = 1.83m)
(A = expt 2 l)
(Ef = -2.78NpC)
(ΦE = (*) -1 mag vec-mult [0 Ef] [0 A])

(say "#{ΦE}Nm^2/C")
