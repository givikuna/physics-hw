require! {
    '../math':{say,elementary-charge,K,recip,abs}
}

L = (*) 0.01 8.40cm
q1 = (*) 1 elementary-charge
q2 = (*) -27 elementary-charge
q3 = (*) 4 elementary-charge

# x = ?

F13 = (x) --> ((K * q1 * q3) / (x^2)) |> abs
F23 = (x) --> ((K * q2 * q3) / ((L - x)^2)) |> abs

Fnet3 = (x) --> F13(x) + F23(x)
# => Fnet3 = (x) --> (4 * K * elementary-charge) * (recip(x^2) + ((/) 27 ((L - x)^2)))
# =>
DFnet3 = (x) --> ((*) -2 x^-3) + ((*) 54 (L - x)^-3)
# if DFnet3 = 0 then x = L/4 =>
x = L / 4m

say "A) #{(*) 100 x} cm"

minF = Fnet3 x

say "B) #minF"
