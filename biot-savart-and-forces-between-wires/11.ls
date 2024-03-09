(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan}
})

i = 3.67A
d1 = parse-float 9.00000m
d2 = 6.5m

θ = darctan ((d1 / 2) / d2)
B2 = (μ0 * i) / (2 * π * sqrt (d2^2) + expt 2 (d1 / 2))
φ = 90deg - θ

Bnet = (μ0 * i) / (π * sqrt ((d2^2) + ((d1 / 2)^2)))

p Bnet
