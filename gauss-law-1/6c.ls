require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag}
}

l = 1.83m
A = expt 2 l
Ex = -3.35NpCi
Ez = 3.35NpCk

Ev = [Ex, 0j Ez]
Av = [0 l^2 0]
ΦE = mag vec-mult Ev, Av

say "#{ΦE}Nm^2/C"
