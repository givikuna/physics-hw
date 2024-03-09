(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos}
})

i1 = 4.02`E`-3A
d1 = 2.56`E`-2m
d2 = 5.18`E`-2m
i2 = 7.1`E`-3A

FxpL = (μ0 * i1 * i2 * dcos darctan (d1 / d2)) / (2 * Math.PI * sqrt ((d1^2) + (d2^2)))

p FxpL
