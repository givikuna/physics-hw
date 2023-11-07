require! {
    '../math':{E,electrostatic-force,dcos,negate,abs,say,K,sqrt}
}

a = 2.01`E`-2m
q1 = 2.44`E`-15C
q4 = q1

F14 = electrostatic-force q1, q4, (sqrt((*) 2 (a^2))) #N
F14x = (F14 * dcos 45deg)
F24 = -F14x #N

q = F24 * (a^2) / (K * q1)

say "A) #{q}C"

say "B) No"
