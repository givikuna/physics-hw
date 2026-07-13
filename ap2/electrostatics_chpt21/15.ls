require! {
    '../math':{say,elementary-charge,K,E,electrostatic-force,gravitational-force,G}
}

m = 9.11`E`-31

ele = -elementary-charge
pos = elementary-charge

say abs (K * ele * pos) / (G * m * m)

say (elementary-charge^2) * K #* ()
