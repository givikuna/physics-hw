(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag,vec,ε0,neg,sum,elementary-charge,list,prod}
    "../syntax":{setq,list-ref,defvar,defconstant}
})

(Φs = 5.5`E`5NmmpC) #Nm^2/C

(q-central = (*) 2.2`E`5 ε0) #C
(q-encl = ((*) -4.4`E`5 ε0) - q-central) #C
(q-encl-total = ((*) 6.6`E`5 ε0) - q-encl - q-central) #C

(say "A) #{(*) 1000000 q-central}C")
(say "B) #{(*) 1000000 q-encl}C")
(say "C) #{(*) 1000000 q-encl-total}C")
