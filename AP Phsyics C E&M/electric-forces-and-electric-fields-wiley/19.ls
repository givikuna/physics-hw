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
a = Fey / m

say "#{a}m/s^2"
