succ' :: Integer -> Integer
succ' x = x + 1

pred' :: Integer -> Integer
pred' x = x - 1


-- a)

plus :: Integer -> Integer -> Integer
plus 0 y = y
plus x y = plus (pred' x) (succ' y)

minus :: Integer -> Integer -> Integer
minus x 0 = x 
minus x y = minus (pred' x) (pred' y)

-- b) 

mult :: Integer -> Integer -> Integer
mult 0 _ = 0
mult x y = plus y (mult(pred' x)(y))



-- c)

mod' :: Integer -> Integer -> Integer
-- mod' x y = (x-y) bis x<y => x
mod' x y = if x < y then x
                    else mod' (x `minus` y) y 
-- mod' x y 
--     | x < y = x
--     | otherwise = mod' (x `minus` y) y 