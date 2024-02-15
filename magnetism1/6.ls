require!{
    'prelude-ls':{map}
    '../math.ls':{E,p,π,expt,λ,ε0,say,Ke,sum,list,recip,Σ,half,ln,e,elementary-charge,ㅣㅣ,pᕀ,dsin,mp,ㅣeᐨㅣ}
}

θ = 17.9deg
B⃗ = 3.22mT`E`-3
F⃗B = 5.16`E`-17N

v⃗ = F⃗B / (pᕀ * B⃗ * dsin θ)

# FB = q * v * B * sinθ

KE = 0.5 * mp * expt 2 ㅣㅣ v⃗

say "A) |v⃗| = #{v⃗}m/s"
say "B) K = #{KE / ㅣeᐨㅣ}eV"
