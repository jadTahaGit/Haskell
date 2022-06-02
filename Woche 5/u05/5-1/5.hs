quadrat = \x -> x*x
summe_quadrate = \x y -> quadrat x + quadrat y
nullj x = 0
f n = if nullj (quadrat n) /= n then summe_quadrate (n-2) (n-1) else n