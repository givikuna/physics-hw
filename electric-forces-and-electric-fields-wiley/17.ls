require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,electron-mass}
}

e = elementary-charge
Ef = 1.83`E`4NpC
q = e

Fe = Ef * q
m = electron-mass

a = Fe / m

say "#{a}m/s^2"
