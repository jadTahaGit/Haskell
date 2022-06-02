data BB a = L | K a (BB a) (BB a) deriving (Show)

prefixCollect:: BB a -> [a]
prefixCollect L = []
prefixCollect (K w links rechts) = [w] ++ prefixCollect links ++ prefixCollect rechts





-- b1 = K "*" (K "+" (K "2" L L)(K "3" L L)) (K "5" L L)
-- b2 = K "+" (K "2" L L) (K "*" (K "3" L L)(K "5" L L)) 

-- prefixCollect b1 == prefixCollect b2
