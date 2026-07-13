require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt,abs,vec,mag}
}

B = 1.92mT`E`-3T
v = 2050mps
Ef = 3.59Vpm
q = abs pᕀ

aFnet = q * (Ef + (abs (v * B)))

bFnet = q * (-Ef + (abs (v * B)))

cFnet = q * sqrt Σ map (expt 2), vec Ef, 0j abs (v * B)

p "A) #{aFnet}N"
p "B) #{bFnet}N"
p "C) #{cFnet}N"
