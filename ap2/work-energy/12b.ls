require! {
    'prelude-ls':{sqrt}
}

# constants
g = 9.8mpss

m = 60.0kg
v_i = 0mps
y_f = 4.1m
Fg = m * g
Ff = 490.0N

a = g - (parseFloat(Ff) / parseFloat m)

v_f = sqrt((v_i^2) + (2 * a * y_f))

console.log v_f
