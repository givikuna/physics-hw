(require!{
    "../math":{μ0,p,d,expt,E,π,me,eᐨ}
})

d1 = parse-float 0.75`E`-2m
i1 = parse-float 8.0A
d2 = parse-float 1.5`E`-2m

r2 = d2
r1 = d1 + d2

i2 = i1 * r2 / r1

p i2
