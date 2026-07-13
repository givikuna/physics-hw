require! {
    "../math":{say,elementary-charge,proton-mass,E,hypot,arctan,to-deg,dcos,cos}
}

q = 6.40`E`-19
x = 5.00m
y = 6.00m
h = hypot 5 6

Enety = 0NpC

Ef = ((9`E`9) * q) / (h^2)
Ex = Ef * cos arctan (y / x)
Enetx = (*) 2 Ex

say "A) #{Enetx}N/C"

say "B) #{Enety}N/C"
