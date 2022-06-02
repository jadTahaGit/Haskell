-- nurUppercase s = [c | c <-s , c `elem` ['A' .. 'Z']]
-- :t nurUppercase
-- f x y z = x + 2*y + 3*z
-- :t f


-- f :: Num a => a -> a -> a-> a
-- f x y z = x + 2*y + 3*z
-- f (2) (1) (2/3)
-- f 1 1 1

f :: Num a => a -> a -> a -> a 
f x y z = x + 2*y + 3*z
g:: (Int,Int,Int) -> Int
g (x,y,z) = x + 2*y +3*z
-- f (2) (1) (2/3)
-- f 1 1 1
-- g(2,1,1)
-- g(1,2,4)