-- myFilter.hs  (filter)

myFilter :: (a -> Bool) -> [a] -> [a]     
myFilter f [] = []
myFilter f (x:xs) | f x = x : myFilter f xs
myFilter f (x:xs) | otherwise = myFilter f xs

-- In GHCI:
-- (\x -> x `mod` 2 == 0) 4 
-- (\x -> x `mod` 2 == 0) [0,1,2,3,4]
-- myFilter (\x -> x `mod` 2 == 0) [0,1,2,3,4]
-- (\x -> x `mod` 2 == 0) [0,1,2,3,4]



-- Unterschied zwischen map und filter
-- map (\x -> x == 1) [1,2,3]
-- [True,False,False]
-- filter (\x -> x == 1) [1,2,3]
-- [1]


--InGhci:
-- import Data.Char
-- filter isLower "asfgawWWWWW"
-- "asfgaw"