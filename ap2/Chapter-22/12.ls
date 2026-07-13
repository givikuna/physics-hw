require! {
    "../math":{prod,say,elementary-charge,proton-mass,E,hypot,arctan,to-deg,dcos,cos,abs,sqrt}
    "lsse":{expt}
}

e = elementary-charge
mp = proton-mass

Ef = 1.61`E`4NpC
d = (/) 0.829cm 100m

Fe = Ef * e
a = Fe / mp
vo = 0mps
vf = sqrt ((export 2 vo) + (prod 2 0.00829 a))

say "A) #{a}m/s^2"
say "B) #{vf}m/s"
