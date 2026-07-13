require! {
    "../math":{say,λ,elementary-charge,E,K}
}

proton-count = 90protons
q = (*) 90protons elementary-charge
radius = 7.11fm`E`-15m

Ef = ((9`E`9) * q) / (radius^2)

say "#{Ef}N/C"
