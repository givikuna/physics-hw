require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt,abs,vec,mag}
}

q = eᐨ
vs = 110

Ef = abs ((-2`E`-19) / q)
B = Ef / half vs

p "A) #{Ef}V/m"
p "B) <0i, 0j, #{B}k> T"
