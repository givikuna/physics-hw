require! {
    "../math":{prod,say,elementary-charge,proton-mass,E,hypot,arctan,to-deg,dcos,cos,abs,sqrt,electron-mass}
    "lsse":{expt}
    "prelude-ls":{recip}
}

d = (/) 2.7cm 100m
t = 4.6`E`-8s
vo = 0mps
me = electron-mass
e = elementary-charge

Δx = d
a = prod 2 (Δx - (prod 0 t)), recip (t^2)
vf = sqrt (2 * a * Δx)
Fnet = me * a
Fe = Fnet #=>
Ef = Fe / e

say "A) #{vf}m/s"
say "B) #{Ef}N/C"
