myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl f akk [] = akk
myFoldl f akk (x:xs) = myFoldl f (f akk x) xs


-- myFoldl (+) 1 [1,2,3]
-- foldl (+) 1 [1,2,3]

-- myFoldl (-) 1 [1,2,3]
-- foldl (-) 1 [1,2,3]