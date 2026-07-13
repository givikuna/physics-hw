(require! {
    "../math":{say,E,dcos,expt,abs,vector-multiplication,vec-mult,mag,vec,ε0,neg,sum,elementary-charge}
})

(e = elementary-charge)

(ΦE = 4 * e * (9`E`9))

(say "#{ΦE}Nm^2/C")
