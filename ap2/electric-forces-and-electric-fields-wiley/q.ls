require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,π,electron-mass}
}

e = elementary-charge

Ef = 1.2`E`7NpC
vi = 1`E`6mps
x = (/) 1.11cm 100m
ax = 0mps2
m = electron-mass

t = x / vi

say "t = #{t}s"

Fe = Ef * e
ay = Fe / m

viy = 0mps
Δy = -1 * (0.5 * ay * t^2)

say "Δy = #{Δy}m"

/*
11
14
15
16
19
21
*/
