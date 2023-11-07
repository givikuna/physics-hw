require! {
    '../math':{say,g,K,elementary-charge,dsin,sqrt,E}
}

L = (*) 0.01 120.0cm
m = (*) 0.001 12g
x = (*) 0.01 5.8cm

Fg = m * g

Ty = Fg
# Tx = Fe

# Tsinθ = Fe
# Tcosθ = mg
# Fe = Kq^2 / x^2
# (Tsinθ = Fe) / (Tcosθ = mg) => tanθ = Fe / mg => Fe = mg * tanθ
# => mg * (x / 2L) = Kq^2 / x^2
# => mg * (x^3 / 2L) = Kq^2
# => q = sqrt((Fg * (x^2)) / (K * 2 * L))

q = sqrt((Fg * (x^3)) / (K * 2 * L))

say q * (1`E`9)
