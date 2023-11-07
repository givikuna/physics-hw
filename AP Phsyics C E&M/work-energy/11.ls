require! {
    'prelude-ls':{sqrt}
}

m = 0.042kg
v_x_i = 670mps
d_x = 0.15m

change-in-mechanical-energy = -1 * 0.5 * m * (v_x_i^2)

console.log "A) " + change-in-mechanical-energy

a = do ->
    v_i = v_x_i
    v_f = 0mps
    (v_i^2) / (2 * d_x)

F_s = a * m

console.log "B) " + F_s
