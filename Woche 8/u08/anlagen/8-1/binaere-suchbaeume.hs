
-- 8-1 Binärbaum
data BB a = L | K a (BB a) (BB a) deriving (Show)

b1 = K 5 (K 1 L (K 9 L L)) (K 7 L (K 12 (K 3 L L) L))
b2 = K 5 (K 3 (K 1 L L) L) (K 9 (K 7 L L) (K 12 L L))

b3 = K 5 (K 12 (K 1 L L) L) (K 9 (K 7 L L) (K 1 L L))
b4 = K 5 (K 3 (K 1 L L) L) (K 9 (K 2 L L) (K 12 L L))



        --       5
        --      / \
        --     3   9
        --    /|   |\
        --   1    7 12
        --               


-- 8-1 a) Liste [5, 7, 12, 3, 1, 9] als Suchbaum darstellen




-- 8-1 b) ist ein binärer Suchbaum
isBinarySearchTree :: Ord a => BB a -> Bool
-- isBinarySearchTree L = True                 
-- isBinarySearchTree (K w left right) = if w < left || w > right then False 
--                                else isBinarySearchTree left  && isBinarySearchTree right

-- Transform the Tree to List:
treeToList :: BB a -> [a]
treeToList L = []
treeToList (K w l r) = treeToList l ++ [w] ++ treeToList r
-- [1, 3, 5, 7, 9 , 12]

-- check if it's in order  
checkOrdering :: Ord a => [a] -> Bool
checkOrdering [] = True
checkOrdering (fst:snd:rest) | fst < snd = checkOrdering rest | otherwise = False 

isBinarySearchTree = checkOrdering . treeToList 


-- 8-1 c) Tiefe eines Suchbaums
depth :: (Num a, Ord a) => BB t -> a
depth L  = 0
depth (K w L L) = 1
depth (K _ l r) = 1 + max (depth l) (depth r)




-- 8-1 d) Element in binären Suchbaum einfügen
insert :: Ord a => a -> BB a -> BB a
insert a L = K a L L
insert a (K w l r)
                 | a > w = K w L (insert a r)
                 | otherwise = K w (insert a l) r



-- 8-1 e) aus einer Liste von Werten einen binären Suchbaum erstellen
buildTree :: Ord a => [a] -> BB a
buildTree list = buildTree' list L
                where buildTree' [] tree = tree
                      buildTree' (x:xs) tree = buildTree' xs (insert x tree)

buildTree'' list  = foldr (\x acc -> insert x acc) L list



-- -- 8-1 f) zwei binäre Suchbäume vergleichen


vergleichen :: Eq a =>  [a] ->  [a] -> Bool
vergleichen [] [] = True
vergleichen [] y =  False
vergleichen x [] =  False
vergleichen (x:xs) ys = x `elem` ys && vergleichen xs (delete x ys)