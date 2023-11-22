require! {
    "../math":{say,λ,π,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan}
}

q = (*) -348 elementary-charge
r = (/) 5.20cm 100m
A = 4 * π * (r^2)
σ = q / A

say "#{σ}C/m^2"
