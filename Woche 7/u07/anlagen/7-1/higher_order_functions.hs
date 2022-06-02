import Data.Char -- toUpper for part b

-- scanl f z [x1, x2, ...] == [z, z `f` x1, (z `f` x1) `f` x2, ...]
-- last (scanl f z xs) == foldl f z xs

-- scanr f z [x1, x2, ..., xn] ==
--     [x1 `f` (x2 `f` (... `f` (xn `f` z))),
--             x2 `f` (... `f` (xn `f` z)),
--             ...
--                             xn `f` z, 
--                                    z          ]

-- head (scanr f z xs ) == foldr f z xs

-- a)
length' :: Num c => [a] -> c
length' xs = sum (map (\x -> 1) xs) 
-- length' = sum . (map(\x-> 1))
-- (.) :: (b-> c) -> (a -> b) -> a -> c


-- b)
-- capitalizedInitials :: String -> String
capitalizedInitials :: String -> String
capitalizedInitials string = map (\x -> toUpper (x !! 0)) (words string)
capitalizedInitials' :: String -> String
capitalizedInitials' = map (\x -> toUpper (x !! 0))  . words 

-- c)
-- map'
map' :: (a->b) -> [a] -> [b]
map' f = foldr (\x acc -> f x: acc) []


-- d)
-- filter'
filter' :: (a->Bool) -> [a] -> [a]
filter' f xs = foldr (\x acc -> if f x then x:acc else acc ) [] xs


-- e)
takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile f xs = foldr (\x acc -> if f x then x:acc else []) [] xs
