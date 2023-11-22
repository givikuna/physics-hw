(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag,vec,ε0,neg,sum,elementary-charge,list,prod}
    "../syntax":{setq,list-ref,defvar,defconstant}
})

(e = elementary-charge)

(Ef1 = 1`E`3NpC)
(Ef2 = 681NpC)

(dimensions = list 2.5m 2.4m 2.6m)
(h = list-ref 0 dimensions)
(l = list-ref 1 dimensions)
(w = list-ref 2 dimensions)

(A = (2 * l * w) + (2 * w * h) + (2 * l * h))
(ΦE = Ef2 * A)
(q-encl = neg (*) ε0, ΦE)

(V = (prod h, l, w))
(P = ((/) q-encl, V))

(say "A) #{P}C/m^3")

(excess-electrons = abs (/) P, e)

(say "B) #{excess-electrons} electrons/m^3")
