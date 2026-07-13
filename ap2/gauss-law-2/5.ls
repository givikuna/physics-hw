(require! {
    "../math":{E,ᕀ,half,π,p,prod,ε0,expt,ǁ,ᐨ}
})

(Q = ᕀ 10.0`E`-6C)
(q = ᕀ 3.0`E`-6C)
# 0 = qw + 1 => qw = -q
(ᐨqw = ᐨ q)
# Q = qw + qs => qs = Q - qw
(qs = Q - ᐨqw)

(p "A) #{ᐨqw}C")
(p "B) #{qs}C")
