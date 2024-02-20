require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt,abs,vec,mag}
}

q = eᐨ
rs = 4.6mm`E`-3
Vs = 35.5V1p2

slope = (2 * rs) / (3 * Vs)

B = sqrt (((*) 2 me) / (q * expt 2 slope))

p B
