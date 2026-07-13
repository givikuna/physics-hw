require! {
    '../math':{say,K,elementary-charge,E,λ,proton-mass,neutron-mass}
}

L = 13.0`E`-15
Th-q = (*) 90.0protons elementary-charge
He-q = (*) 2.0protons elementary-charge # there's also 2 neutrons but they don't matter bc zero charge, they're netural

# Fe = λ (q1) -> λ (q2) -> λ (r) -> (K * q1 * q2) / (r^2)
# Fe = Fe(Th-q)(He-q)(L)

Fe = (K * Th-q * He-q) / (L^2)

say "A) #Fe N"

# Fnet = ma => a = Fnet / m
# Fet = Fe
# m = 2mp + 2me

m = ((*) 2 proton-mass) + ((*) 2 neutron-mass)

Fnet = Fe

a = Fnet / m

say "B) #a m/s^2"
