require! {
    '../math':{E,π,ε0,half,p}
}

L = E 31.0cm -2m
λ1 = E 6.3uC -6C
λ2 = E -3.7uC -6C

Enet = 0N

x = ((λ1 - λ2) / (λ1 + λ2)) * (half L)

p "#{(*) 100 x}cm"
