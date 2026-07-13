require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,electron-mass,sqrt}
}

e = elementary-charge

v = 7.34`E`8cmps
v /= 100mps

Ef = 2.03`E`3NpC

q = e

Fe = Ef * q
m = electron-mass

a = -1 * Fe / m
vi = v
vf = 0.0mps
t = abs ((vf - vi) / a)
x = (vi * t) + (0.5 * a * (t^2))

say "A) #{x}m"
say "B) #{t}s"

Δx = (/) 4.97mm 1000m

vf = sqrt(vi^2 + (2 * a * Δx))

frac = 1 - ((vf^2) / (vi^2))

say "C) #{frac}"
