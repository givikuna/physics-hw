require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,electron-mass}
}

e = elementary-charge

vi = (*) 57kmps 1000mps
Ef = 48NpC
m = electron-mass

a = (*) -1 ((Ef * e) / m)

t = 1.2ns`E`-9s

vf = vi + (a * t)
x = (vi * t) + (0.5 * a * (t^2))

say "A) #{vf / 1000kmps}km/s"
say "B) #{x * 1000000}um"
