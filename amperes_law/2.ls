(require!{
    "../math":{μ0,p,d,expt,E,π}
})

a = 1.58`E`-2m
i = 39.6A

ra = 0
Ba = 0
p "A) #{Ba}T"

rb = 0.58`E`-2m
Bb = (μ0 * i * rb) / (2 * π * expt 2 a)
p "B) #{Bb}T"

rc = 1.58`E`-2m
Bc = (μ0 * i) / (2 * π * rc)
p "C) #{Bc}T"

rd = 2.42`E`-2m
Bd = (μ0 * i * rd) / (2 * π * expt 2 a)
p "D) #{Bd}T"
