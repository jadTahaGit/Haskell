myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f akk [] = akk
myFoldr f akk (x:xs) = f x (myFoldr f akk xs)


-- foldr   (+) 1 [1,2,3]
-- myFoldr (-) 1 [1,2,3]