require! {
    "../math":{say,λ,π,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan}
}

r = 1.92uC`E`-6m
d = 0.877gpcm3 * 1000kgpm3

e = 1.60`E`-19C
Ef = (*) -1 0.838`E`5NpC

V = (4.0 / 3.0) * π * (r^3)

m = d * V

say ((m * 9.8) / Ef) / e
