require! {
    '../math':{elementary-charge,proton-mass,hyp,sqrt,say,K,g}
}

m = 4 * proton-mass
# mg = Kqq/r^2 => r = sqrt Kqq / mg

r = sqrt((K * elementary-charge^2) / (m * g))

say r
