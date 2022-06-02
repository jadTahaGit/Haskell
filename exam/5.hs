data BB a = L | K (BB a) a (BB a)  deriving(Show)
 
-- g = (\x xs -> concat ["(", show x, xs, ")"] )


baum = K (K L 2 L) 1 (K (K L 4 L) 3 L)


-- foldrBB

-- "(2(1(4(3))))"



foldrBB :: (a -> b -> b) -> b -> BB a -> b
foldrBB f b L = b
foldrBB f b (K l a r) = 
    foldrBB f (f a (foldrBB f b r)) l


instance Foldable BB where
    foldr = foldrBB 

summiere :: Foldable t => t Int -> Int
summiere = foldr (+) 0
sumBB :: Int
sumBB = let b = K (K L 2 L) 1 (K (K L 4 L) 3 L) in summiere b
