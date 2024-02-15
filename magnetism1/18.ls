require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,ㅣeᐨㅣ,mα,Qα,me,sqrt}
}

Energy = (0.901keV`E`3) * ㅣeᐨㅣ #J
r = 0.21m

# K = 0.5 * m * v
# v = sqrt 2K/m
v = sqrt (((*) 2 Energy) / me)

# r = (me * v) / (q * B)
# =>
B = (me * v) / (ㅣeᐨㅣ * r)

f = v / (2 * π * r)

T = recip f

say "A) #{v}m/s"
say "B) #{B}T"
say "C) #{f}Hz"
say "D) #{T}s"
