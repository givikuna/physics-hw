(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos}
})

a = 6.12cm`E`-2m
i = 12.2A

r = a * sqrt 2
B_each = (μ0 * i) / (2 * Math.PI * r)
FB_each = B_each * i * dsin 90deg

FNET = (*) 4 FB_each

FNETpl = FNET / r

p FNET
p FNETpl
