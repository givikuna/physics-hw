(require! {
    "../math":{say,E,dcos,expt,abs}
})

(x = 3.7mm`E`-3m)
(Ef = 2600NpC)
(θ = (-) 180deg 35deg)
(ΦE = (Ef * (expt 2 x) * dcos θ) |> abs)

(say "#{ΦE}Nm^2/C")
