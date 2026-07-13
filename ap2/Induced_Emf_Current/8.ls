(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos,abs}
})

N = 95turns
r1 = 0.031m
R = 4.0ohms
n = 29000turnspermeter
r2 = 0.04m / 2
i_o = 1.3A
i_f = 0A
deltat = 0.019seconds

A = Math.PI * expt 2 r2
emf = (-N * A * μ0 * n * i_o) / deltat
i_induced = (abs emf) / R

p i_induced
