data BinaryTree a = L | K a (BinaryTree a) (BinaryTree a) deriving (Show)


-- binaryTree to A List ->>>>
infixCollect :: BinaryTree a -> [a]
infixCollect L = []
infixCollect (K w l r) = infixCollect l ++ [w] ++ infixCollect r



-- ghci> b4 = K 1 (K 2 L L) (K 3 (K 4 L L) L)
-- ghci> b4
-- K 1 (K 2 L L) (K 3 (K 4 L L) L)
-- ghci> infixCollect b4
-- [2,1,4,3]



-- b1 = K '*' (K '+' (K '2' L L) (K '3' L L) ) (K '5' L L)
-- b2 = K '+' (K '2' L L) (K '*' (K '3' L L)(K '5' L L))

-- infixCollect b2  == infixCollect b1
