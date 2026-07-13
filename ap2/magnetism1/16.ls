require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt,abs,vec,mag}
}

Bs = recip 3.5T
Ts = 20.9ns`E`-9

mpq = (Ts / Bs) / ((*) 2 Math.PI)

p mpq
