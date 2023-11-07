require! {
    '../math':{say,K,electric-field,sqrt,E,hyp,K,dcos}
}

q = 6uC`E`-6C
l = (/) 12cm 100m

E1 = electric-field q, l
E3 = E1
E2 = electric-field q, hyp l, l

Enet = E2 + hyp E1, E3

say "#{Enet}N/C"

# second option

Ex = E1 + E2 * dcos 45deg
Ey = E3 + E2 * dcos 45deg

Enet2 = hyp Ex, Ey

say "#{Enet2}N/C"
