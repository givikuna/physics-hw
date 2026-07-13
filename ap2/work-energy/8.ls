require! {
    'prelude-ls':{}
}

g = 9.8mps

m = 0.073kg
h_i = 0.93m
v_i = 8.0mps
h_f = 1.4m
v_f = 6.7mps

get-potential-energy = (h) --> g * m * h
get-kinetic-energy = (v) --> 0.5 * m * (v^2)

U_i = get-potential-energy h_i
U_f = get-potential-energy h_f

K_i = get-kinetic-energy v_i
K_f = get-kinetic-energy v_f

E_i = U_i + K_i
E_f = U_f + K_f

delta_E = E_i - E_f

console.log delta_E
