require! {
    '../math':{E,π,ε0,half,p,double,abs,ᐨ,electron-mass,elementary-charge,dtan}
}

m = E 1.1 -6kg
q = E 2.1 -8C
θ = 39deg

σ = (2 * m * 9.8 * ε0 * dtan θ) / q

p "#{σ}C/m^2"
