
-- 7-4 laenge einer liste --
length' []     = 0
length' (x:xs) = 1 + length' xs
