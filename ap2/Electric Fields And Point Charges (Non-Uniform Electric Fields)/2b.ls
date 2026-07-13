require! {
    '../math':{K,abs,electric-field,sqrt,E,λ,dsin,dcos,say}
}

hyp = λ (a) --> λ (b) --> sqrt ((a^2) + (b^2))

Pa = (/) 6cm 100m
Pb = (/) 8cm 100m

P = [Pa, Pb]

q = 6`E`-9C

θ = 53deg

Em = abs electric-field q, ((hyp Pa) Pb)

Ex = Em * dcos θ
Ey = Em * dsin θ

#=>

Evec = "#{Ex}î + #{Ey}ĵ"

say "B) #Evec"
