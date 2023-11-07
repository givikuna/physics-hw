require! {
    'prelude-ls':{map,fold1}
}

m = 5.0kg
F_s = 6.00N
x_i = 0m
x_f = 8.0m

rect-area = (l, w) --> 1.0 * l * w
tri-area = (l, w) --> 0.5 * l * w

pos-area = (rect-area 6 2) + (tri-area 6 2)
neg-area = (rect-area 3 2) + (tri-area 3 2)

A = pos-area - neg-area

console.log A
