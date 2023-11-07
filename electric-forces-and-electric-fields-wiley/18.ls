require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,electron-mass}
}

e = elementary-charge

m = 9.58`E`-26kg
q = (*) 4 e

Fg = (*) 9.8 m
Fe = -Fg
Ef = abs (Fe / q)

say "#{Ef}N/C"
