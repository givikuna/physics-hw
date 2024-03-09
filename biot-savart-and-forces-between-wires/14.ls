(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos}
})

a = 6.12cm`E`-2m
i = 12.2A

F1 = (μ0 * (i^2) * sqrt 10) / (4 * Math.PI * a)

p F1
