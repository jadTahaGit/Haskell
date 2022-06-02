eleme :: (Eq a) => a -> [a] -> Bool
eleme _ [] = False
eleme e (x:xs) = (e == x) || (eleme e xs)


-- elem e [x:xs] = if (e==x) then True 
--                 else elem e xs



nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)  
    | eleme x xs = nub xs
    | otherwise = x : nub xs