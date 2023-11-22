require! {
    "../math":{say,elementary-charge,proton-mass,E,hypot,arctan,to-deg,dcos,cos,abs}
}

mp = proton-mass

q = -2.3`E`-9
Fe = 3.6`E`-6

Ef = abs (Fe / q)
Fe_p = elementary-charge * Ef
Fg = (*) 9.8 mp
ratio = abs (/) Fe_p, Fg

say "A) #{Ef}N/C"
say "B) #{Fe_p}N"
say "C) #{Fg}N"
say "D) #ratio"
