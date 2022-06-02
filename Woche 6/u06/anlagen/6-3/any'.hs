
-- 8-2 a) erfuellt ein Element einer Liste Praedikat
any' :: (a -> Bool) -> [a] -> Bool
any' f [] = False
-- any' f (x:xs)
--     | f x == True = True
--     | otherwise = any' f xs
any' f (x:xs) = f x || any' f xs


-- any' (\x -> x==1) []
-- any' (\x -> x==1) [1]
-- any' (\x -> x==1) [2,3,4,5,6]
-- any' (\x -> x==1) [1,2]