u1 :: (Eq p, Num p) => p -> p
u1 0 = 1
u1 n = n * u1 (n+1)
