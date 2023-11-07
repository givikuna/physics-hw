require! {
    "../math":{say,λ,π,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan}
}

q = (*) -348 elementary-charge
r = (/) 6.60cm 100m
say r
θ = 50deg

l = 2.0 * π * (θ / 360.0deg) * r

λ = q / l

say "#{λ}C/m"
