require! {
    "../math":{say,λ,π,elementary-charge,E,K,abs,dcos,dsin,hyp,darctan}
}

q = (*) -348 elementary-charge
r = (/) 4.70cm 100m
V = ((/) 4 3) * π * (r^3)
ρ = q / V

say "#{ρ}C/m"
