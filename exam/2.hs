-- iprod :: Num a => [a] -> [a] -> a
-- iprod xs [] = 0
-- iprod [] ys = 0
-- iprod (x:xs) (y:ys) = x * y + iprod xs ys



-- iprod' :: Num a => [a] -> [a] -> a
-- iprod' xs ys = ip xs ys 0
--     where ip xs ys akk =
--         if null xs || null ys
--             then akk
--             else ip (tail xs) (tail ys) akk + (head xs)*(head ys )



-- iprod '' :: Num a => [a] -> [a] -> a
-- iprod '' = \xs ys ->   foldr     (\(a, b) r -> r +  a * b )
-- 0 (zip a b)


-- iprod :: Num a => [a] -> [a] -> a
-- iprod xs [] = 0
-- iprod [] ys = 0
-- iprod (x:xs) (y:ys) = x*y + iprod xs ys


iprod ' :: Num a => [a] -> [a] -> a
iprod ' xs ys = ip xs ys 0
        where ip xs ys akk = 
                if null xs || null ys
                then akk
                else ip (tail xs) (tail ys ) akk +(head xs)*(head ys)

iprod'' :: Num a => [a] -> [a] -> a
iprod'' = \xs ys -> foldr (\(a, b) r -> r + a*b)
                0 (zip xs ys)

