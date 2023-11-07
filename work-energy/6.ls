require! {
    'prelude-ls':{cos,pi}
}

m = 33.0kg
F = 120.0N
theta = 11.0deg
d = 1.3m

get-work = (distance, force) --> distance * force

deg-to-rad = (deg) -->
    deg
        |> parseFloat
        |> (* pi)
        |> (/ 180.0deg)

F_x = F * cos deg-to-rad theta

W_F = get-work d, F_x

console.log W_F
