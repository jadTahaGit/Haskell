data BB a = L | K a (BB a) (BB a) deriving (Show)
-- Suche in dem Baum
istIn :: Ord a => a -> BB a -> Bool
istIn _ L = False 
istIn x (K w links _ ) | x < w = istIn x links       -- weil links kleiner als w ist aber x auch
istIn x (K w _ _) | x == w = True
istIn x (K w _ rechts) | otherwise = (istIn x rechts)


-- b = K 3 (K 2 (K 1 (K 0 L L) L) L) (K 4 L (K 5 (K 6 L L) L))