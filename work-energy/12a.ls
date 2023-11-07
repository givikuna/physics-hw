require! {
    'prelude-ls':{sqrt}
}

# constants
g = 9.8mpss

m = 60kg
v_i = 0mps
y_f = 4.1m
Fg = m * g

a = g

v_f = sqrt((v_i^2) + (2 * g * y_f))

console.log v_f
