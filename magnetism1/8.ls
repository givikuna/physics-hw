require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,ㅣeᐨㅣ,mα,Qα}
}

v = 750mps
B = 0.056T
θ = 56deg

F = Qα * v * B * dsin θ

a = F / mα

say "A) #{F}N"
say "B) #{a}m/s^2"
say "C) remains unchanged"
