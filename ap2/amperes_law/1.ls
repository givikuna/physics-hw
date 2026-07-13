(require!{
    "../math":{μ0,p,d,expt}
})

d = 0.22m
J = 15Apm2

integral = 8 * μ0 * J * expt 2 d

p integral
