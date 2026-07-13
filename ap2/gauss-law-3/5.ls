require! {
    '../math':{E,π,ε0,half,p,double,abs,ᐨ,electron-mass,elementary-charge}
}

e = elementary-charge
eᐨ = e

vs = 3.3`E`5mps
ts = 28.0ps`E`-12s
a = vs |> double |> (/ ts)
Fe = electron-mass * a
Ef = Fe / eᐨ
σ = Ef * 2 * ε0

p "#{σ}C/m^2"
