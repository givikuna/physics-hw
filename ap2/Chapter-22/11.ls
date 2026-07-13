require! {
    "../math":{say,elementary-charge,proton-mass,E,hypot,arctan,to-deg,dcos,cos,abs}
}

e = elementary-charge

Ef = 3.26`E`6NpC

Fe_e = Ef * e

say "A) #{Fe_e}N"

Fe_ion = -Fe_e
mag = abs

mag_Fe_ion = mag Fe_ion

say "B) #{mag_Fe_ion}N"
