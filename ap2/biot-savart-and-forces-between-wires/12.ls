(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan}
})

q = E (parse-float 8), -19C
v = 6.02`E`3mps
i = 228`E`-3A
d = 0.0293m

B = (μ0 * i) / (2 * π * d)
F = q * v * B

p F
