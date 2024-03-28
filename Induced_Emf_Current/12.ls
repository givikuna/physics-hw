(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos,abs,λ}
})

(t = 1.6s)

(dphidt = λ (x) --> ((8.7 * 2) * x) + 8.4)
(V = dphidt t)

(p V)
