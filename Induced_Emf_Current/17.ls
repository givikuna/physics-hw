(require!{
    "prelude-ls":{map,foldl1}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos,abs,λ}
})

(L = 0.15m)
(R = 12ohms)
(m = 0.077kg)
(B = ((Math.abs) 1.3T))

(vt = (m * 9.8 * R) / (foldl1 (*), (map (expt 2), [B, L])))

(p vt)
