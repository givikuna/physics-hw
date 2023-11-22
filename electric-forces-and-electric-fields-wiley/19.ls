require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,electron-mass}
}

e = elementary-charge

vx = 1.6`E`5mps
vy = 3.9`E`3mps

Efy = 120NpC
q = e

Fey = Efy * q
m = electron-mass
a = -Fey / m

say "A) (#{a}m/s^2)ĵ"

Δx = (/) 2.4cm 100m
t = abs (Δx / vx)
vyf = vy + a * t

say "B) (1.6e5m/s)î + (#{vyf}m/s)ĵ"
