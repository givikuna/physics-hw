require! {
    '../math':{say,K,speed-of-light,electric-field,E,λ,dsin,dcos}
}

q = -1.0nC`E`-9

r = 0.60m

Ef = electric-field q, r

say "A) #Ef"

θ = 45deg # arbitrary???

Ex = Ef * dcos θ
Ey = Ef * dsin θ

#=>

Evec = "#{Ex}î + #{Ey}ĵ"

say "B) #Evec"
