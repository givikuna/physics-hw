(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos,abs,λ}
})

N = 110turns
w = 0.43m
l = 0.384m
B = 2.87T
A = l * w

p N * A * B * 2 * Math.PI * 1440 * (1 / 60)
