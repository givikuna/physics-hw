require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,eᐨ,mα,Qα,me,sqrt,abs,vec,mag}
}

m = 3.92`E`-25kg
q = 3.20`E`-19C
V = 137kV`E`3V
r = 0.927m
theta = 180deg
w = 1.09mm`E`-3m
h = 1.18cm`E`-2m

mph = 0.882mg`E`-6kg
t = 0.905h

M = mph / (t * expt 2 60) #kg/s
N = M / m
i = q * N #A

p "B) #{i}A"

thermal-energy = i * V * (t * 60 * 60) #J

p "C) #{thermal-energy}J"
