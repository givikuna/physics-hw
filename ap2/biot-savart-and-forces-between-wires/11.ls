(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan}
})

i = parse-float 3.67A
d1 = parse-float 9.00000m
d2 = parse-float 6.5m

r = sqrt (((d1/2)^2) + (d2^2))
Bnet = ((μ0 * i) / (Math.PI * r)) * dsin darctan (d2 / ((/ 2) d1))

p Bnet
