(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag,vec,ε0,neg,sum,elementary-charge,list,prod}
    "../syntax":{setq,list-ref,defvar,defconstant}
})

(l = 3.0m)
(A = expt 2 3)
(x = -l) # @ -i
(Enonconstant = (*) 2.05 x)
(ΦEnet = Enonconstant * A)

(q-encl = ε0 * ΦEnet)

(say "#{q-encl}C")
