(require!{
    "../math":{μ0,p,d,expt,E,π}
})

l = 106`E`-2m
r = 2.53cm`E`-2m
N = 1680turns
i = 3.23A

n = N / l
B = n * μ0 * i

p "#{B}T"
