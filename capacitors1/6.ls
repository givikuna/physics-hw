require!{
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke}
}

C1 = 9.1uF
C2 = 4.73uF
C3 = 5.24uF

Ceq = C3 + ((C1 * C2) / (C1 + C2))

say "#{Ceq}uF"
