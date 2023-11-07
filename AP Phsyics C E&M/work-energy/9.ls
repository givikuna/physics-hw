require! {
    'prelude-ls':{sqrt}
}

g = 9.8mps

m = 2.4kg
h_i = 2.6m

get-potential-energy = (h) --> g * m * h
get-kinetic-energy = (v) --> 0.5 * m * (v^2)

console.log "A) " + get-potential-energy h_i

h_f = 0m
F_noncon = 0N

get-final-speed = (v_o, a, delta_y) --> sqrt(((parseFloat v_o)^2) + (2 * parseFloat(a) * parseFloat(delta_y)))

v_i = 0m
v_f = get-final-speed v_i, g, (h_i - h_f)

K_f = get-kinetic-energy v_f

console.log "B) " + K_f # this should be the same because the energy is conserved, no non-conservative forces are acting on the sloth

console.log "C) " + v_f
