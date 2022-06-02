primes (x:xs) = x:primes[y | y <- xs, mod y x /= 0]    

--(x:xs) ist Parameter von Typ Liste!


-- primes [2,3..]
--take 20 (primes [2,3..])