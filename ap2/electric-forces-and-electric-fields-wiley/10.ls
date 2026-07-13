require! {
    "../math":{say,λ,elementary-charge,E,K,abs}
}

q1 = -4.07`E`-7C
l-q1 = 0.0m
q2 = 4.07`E`-7C
l-q2 = (/) 20.4cm 100.0m

l = l-q2 / 2.0

E1 = abs ((9`E`9) * q1) / (l^2)
E2 = abs ((9`E`9) * q2) / (l^2)

Enet = E1 + E2

say "#{Enet}N/C"
