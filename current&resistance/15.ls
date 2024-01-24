require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half}
}

ΔV = 120V
R = 11ohm

P = (* expt -1 R) expt 2 ΔV # power

# Cost = Power * Time * Rate
t = 4.0h
Rate = 0.05USDpkWh`E`3USDpWh

Cost = (P / 60) * t * Rate

p "a) #{P}W"
p "b) ¢#{Cost * 100}"
