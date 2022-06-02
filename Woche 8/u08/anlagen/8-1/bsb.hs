import Data.List 
-- Binaer Baum definieren
data BB a = L | K a (BB a) (BB a) deriving(Show)

-- Das ist eine moeglichkeit:
--    5 
--  3   7  
-- 1 L  L 9 
--         12

b1 = K 5 (K 3 (K 1 L L) L) (K 7 L (K 9 L L))


-- b) Suchbaum? 
isBinarySearchTree :: Ord a => BB a -> Bool
isBinarySearchTree L = True
isBinarySearchTree (K _ L L) = True
isBinarySearchTree (K w L r) = isBinarySearchTree r &&  w < minValue r
isBinarySearchTree (K w l L) = isBinarySearchTree l &&  w > maxValue l
isBinarySearchTree (K w l r) = isBinarySearchTree r && isBinarySearchTree l && w < minValue r && w > maxValue l
-- Berechne die Max und die Minimum und dan ueberpruefe
maxValue :: Ord a => BB a -> a
maxValue (K w L L) = w
maxValue (K w l L) = max w (maxValue l)
maxValue (K w L r) = max w (maxValue r)
maxValue (K w l r) = max w $ max (maxValue l) (maxValue r)

minValue :: Ord a => BB a -> a
minValue (K w L L) = w
minValue (K w l L) = min w (minValue l)
minValue (K w L r) = min w (minValue r)
minValue (K w l r) = min w $ min (minValue l) (minValue r)

-- Mit Foldable geht es auch:
-- instance Foldable BB where
--     foldr f acc L = acc
--     foldr f acc (K w l r) = foldr f (f w (foldr f acc r)) l
-- minValue tree =  foldr (\acc x -> if x < acc then x else acc) tree
-- maxValue tree = foldr (\acc x -> if x > acc then x else acc ) tree


-- depth: 
depth :: (Num a, Ord a) => BB t -> a
depth L = 0
depth (K _ L L) = 1
depth (K w l L) = 1 + depth l
depth (K w L r) = 1 + depth r
depth (K w l r) = 1+ max (depth l) (depth r)


--insert: 
insert :: Ord a => a -> BB a -> BB a
insert a L = K a L L
insert a (K w l r) 
          | a > w  = K w l (Main.insert a r)
          | otherwise = K w (Main.insert a l) r


-- buildTree
-- buildTree :: Ord a => [a] -> BB a 
-- buildTree list = buildTree' list L
--         where buildTree' [] tree = tree 
--               buildTree' (x:xs) tree = buildTree' xs (insert x tree) 


buildTree'' :: Ord a => [a] -> BB a
buildTree'' list = foldr (\x acc -> Main.insert x acc) L list

-- Baume Vergleichen
-- import Data.List   -- Die muss ganz Oben sein

instance (Eq a, Ord a) => Eq (BB a) where
    (==) a b = isBinarySearchTree a && isBinarySearchTree b 
     -- und noch die gleiche Werte haben
     && equalValues (treeToList a) (treeToList b)

treeToList ::  BB a -> [a]
treeToList L = []
treeToList (K w l r) = treeToList l ++ [w] ++ treeToList r


equalValues [] [] = True
equalValues []  y = False
equalValues (x:xs) ys = x `elem` ys && equalValues xs (delete x ys)

b2 = K 5 (K 3 (K 1 L L) L) (K 7 L (K 9 L (K 10 L L)))
-- Try b1 == b2