(require!{
    "prelude-ls":{map}
    "../math":{μ0,p,d,expt,E,π,me,eᐨ,Σ,sqrt,vec,expt,dsin,darctan,dcos,abs,λ}
})

B = 0.0132
d = 0.00103m
L = 0.581m
p = 1.69`E`-8ohmmeter # resistivity

emf = 0.0132 * ((L^2) / (4 * Math.PI))
R = (p * L) / ((Math.PI * (d^2)) / 4)

P = (emf^2) / R

console.log P
