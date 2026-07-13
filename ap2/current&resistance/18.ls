require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,double}
}

C = 37uF`E`-6F
tf = 0.8s
V = λ (t) --> (+) ((+) 6.0 (*) 4.0 t), ((*) -2.0 expt 2 t)

# charge
Q = C * V tf

# current
dVpdt = λ (t) --> (+) 4.0 (*) t, double -2
I = C * dVpdt tf

# power
P = I * V tf

p "A) #{Q}C"
p "B) #{I}A"
p "C) #{P}W"
