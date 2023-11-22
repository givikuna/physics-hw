require! {
    "../math":{say,elementary-charge,proton-mass}
}

mp = proton-mass
e = elementary-charge

E_A = 49.0NpC #=>
Fe_a = E_A * e

say "A) #{Fe_a}N"

E_B = (/) 49.0NpC 2

say "B) #{E_B}N/C"
