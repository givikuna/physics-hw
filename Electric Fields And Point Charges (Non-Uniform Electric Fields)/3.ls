require! {
    '../math':{say,sqrt,K,E}
}

q = 5microC`E`-6C
Ef = 0.20`E`-3NpC

R = sqrt ((K * q) / (Ef))

say "A) #R"

Fe = (K * (5`E`-6C) * (10`E`-6C)) / ((2 * R)^2)

say "B) #Fe"

Ef2 = (K * (10microC`E`-6C)) / (R^2)

say "C) #Ef2"

ENET = Ef - Ef2

say "D) #ENET"
