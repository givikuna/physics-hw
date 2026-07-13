require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,sqrt}
}

q1 = -8.00`E`-19C
q2 = 8.00`E`-19C

x = 3.00m
q1x = -x
q2x = x

y = 8.00m

l = hyp 3.00m 8.00m

θ = darctan((/) 8.00m 3.00m)

E1 = abs ((9`E`9) * q1) / (l^2)
E2 = abs ((9`E`9) * q2) / (l^2)

E1x = E1 * dcos θ
E1y = E1 * dsin θ
E2x = E2 * dcos θ
E2y = E2 * dsin θ

Enetx = (*) 2 E1x
Enety = abs (E1y - E2y)

say "A) #{Enetx}N/C"
say "B) #{Enety}N/C"
