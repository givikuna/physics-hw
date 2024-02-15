require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt}
}

r = 0.0579m
B = 1.07T

# Fc = FB
# mv^2/r = qvB
# mv/r = qB
# mv = qBr
# v = qBr/m

v = (Qα * B * r) / mα

T = (2 * π * mα) / (Qα * B)

K = 0.5 * mα * expt 2 v

ΔV = K / Qα

p "A) #{v}m/s"
p "B) #{T}s"
p "C) #{K / eᐨ}eV"
p "D) #{ΔV}V"
