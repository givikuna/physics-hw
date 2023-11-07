require! {
    '../math':{E,electrostatic-force,elementary-charge,abs,say,floor}
}

r = 1.17cm
q = -6.86`E`-16C

Fe = electrostatic-force q, q, (*) 0.01 r

say "A) #Fe N"

excess-electrons = abs floor (q / elementary-charge)

say "B) #excess-electrons"
