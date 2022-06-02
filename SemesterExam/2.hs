magnitude :: Floating a => [a] -> a
magnitude =   sqrt . sumOfSquares 
                    where sumOfSquares [] = 0
                          sumOfSquares (x:xs) = x + sumOfSquares xs



magnitude' :: Floating a => [a] -> a
magnitude' = sqrt . sumOfSquares 0
            where sumOfSquares akk xs = if null xs
                                    then 0
                                    else sumOfSquares ( ( head xs)^2+ akk ) (tail xs )


magnitude'' :: Floating a => [a] -> a
magnitude'' = foldr . sqrt (\a r -> r + a*a) 0




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