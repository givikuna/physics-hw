require! {
    '../math':{E,g,say}
}

m = (/) 0.08g 1000kg
q = 3microC`E`-6C

Fg = m * g

Fe = Fg

Em = Fe / q

say "#Em"
