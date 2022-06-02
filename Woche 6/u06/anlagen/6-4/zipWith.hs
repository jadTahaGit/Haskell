-- Funktion deren Parameter sind die Elemente von den 2 Listen
-- 8-3 a) verschmelzen zweier Listen mit einer Funktion
zipWith' :: (a-> b -> c) -> [a] -> [b] -> [c]
zipWith' f _ [] = []
zipWith' f [] _ = []
zipWith' f (x:xs) (y:ys) = (f x y) : (zipWith' f xs ys) 


-- zipWith' (+) [1,2] [1]
-- zipWith' (-) [1,2] [1]
-- zipWith' (*) [1,2] [1]
--  zipWith' (\x -> x) [] []
--  zipWith' (<) [1] [2] 
-- zipWith' (/) [1..] [1,3,4,5,6,8]  