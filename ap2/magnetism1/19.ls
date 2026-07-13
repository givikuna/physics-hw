require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,ㅣeᐨㅣ,mα,Qα,me,sqrt}
}

Energy = 106.0eV * ㅣeᐨㅣ #J
B = 44.0`E`-6T

# f = Bq / 2pim

f = (B * ㅣeᐨㅣ) / (2 * π * me)

say "A) #{f}Hz"

# Fc = FB
# mv^2/r = qvB
# mv/r = qB
# r = mv/qB

v = sqrt (((*) 2 Energy) / me)
r = (me * v) / (B * ㅣeᐨㅣ)

say "B) #{r}m"
