require! {
    "../math":{say,λ,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan,π}
}

Q = 2.12uC`E`-6C
R = (/) 8.53cm 100m

# θ

λ1 = λ Q, (((/) 1.0 4.0) * 2.0 * π * R)
λ1 = ((*) 2.0 Q) / (π * R)
λ2 = (*) 2 λ1
λ3 = (*) 3 λ1

Enet = (4 * (9`E`9) * Q) / (π * (R^2)) * dsin 45deg # look at notebook work to understand

say "A) #{Enet}N/C"
