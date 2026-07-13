(require!{
    "../math":{μ0,p,d,expt,E,π,me,eᐨ}
})

n = 92 / 0.01
r = 3.14cm`E`-2m
c = 2.998`E`8mps
v = (*) 0.0545 c

i = (me * v) / (n * μ0 * eᐨ * r)
p "#{i}A"
