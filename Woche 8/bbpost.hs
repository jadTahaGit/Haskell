data BB a = L | K a (BB a) (BB a) deriving(Show)

postCollect :: BB a -> [a]
postCollect L = []
postCollect (K w l r) = postCollect l ++ postCollect r ++ [w] 



-- b1 = K "*" (K "+" (K "2" L L)(K "3" L L)) (K "5" L L)
-- b2 = K "+" (K "2" L L) (K "*" (K "3" L L)(K "5" L L)) 