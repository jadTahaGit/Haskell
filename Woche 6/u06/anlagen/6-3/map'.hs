
-- 8-2 c) map mit foldr
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x: acc) [] xs 

-- foldr (-) 0 [1,2,3] == 1 - (2- (3 - 0))

-- map (1+) [1,2,3] == 1+1 : (1+2 : (1+3: []))

-- map (+1) [1,2,3] == foldr (\x acc -> 1+x : acc) [] [1,2,3]
