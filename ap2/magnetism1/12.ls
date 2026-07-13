require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt,abs,vec,mag}
}

q = abs eᐨ
m = 9.99`E`-27kg
V = 10_000V
B = 1.1T

Ef = B * sqrt ((2 * q * V) / m)

p Ef
