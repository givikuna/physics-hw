require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt}
}

V1 = 1.25kV`E`3V
V2 = 80.6V
d = 20.0mm`E`-3

# B = E/v => B = V2/(d * sqrt (2V1e/me))
# =>
Bj = V2 / (d * sqrt ((2 * V1 * eᐨ) / me))

p "(0i + 0j + #{-Bj`E`3}k)mT"
