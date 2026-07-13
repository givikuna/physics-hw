(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag,vec,ε0,neg,sum}
})

(l = 4.2m)
(E-top = vec 0NpC 0NpC -47.0pCk)
(E-bottom = vec 0NpC 0NpC 24.0NpCk)
(A = expt 6 l)
(ΦE-top = (*) (mag E-top), expt 2 l)
(ΦE-bottom = (*) (mag E-bottom), expt 2 l)
(ΦE = neg (+) ΦE-top, ΦE-bottom)
(q = ε0 * ΦE)

(say "#{q`E`9}nC")
