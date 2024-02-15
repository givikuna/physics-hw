require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt}
}

B = 3.6mT`E`-3T
FB = 3.2`E`-15N

# FB = qvB
# => v = FB / (q * B)

v = FB / (eᐨ * B)

# FB = Fc
# qvB = mv^2/r
# qB = mv/r
# r = mv/qB

r = (me * v) / (eᐨ * B)

T = (2 * π * r) / v

say "A) #{v}m/s"
say "B) #{r}m"
say "C) #{T}s"
