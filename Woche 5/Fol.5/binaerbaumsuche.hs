data BB a = L | Knt a (BB a) (BB a) deriving (Show) 

suche :: (Eq a) => a -> BB a -> Bool
suche x (Knt w _ _) | x == w = True
suche x (Knt _ links rechts) | otherwise = (suche x links) || (suche x rechts)
suche _ _ | otherwise = False


jadBB :: BB (Int)
jadBB = Knt 1 L L 

jadBB2 :: BB [Char] 
jadBB2 = Knt "jad" (Knt "taha" (Knt "Love" L L) L ) (Knt "eeee" L L )

adPaare :: (Num a, Num b) => (a, b) -> (a,b) -> (a,b)
adPaare (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

hd (h:_) = h

tl(_:t) = t

--GHCI 
-- adPaare(1,2)(1,1)
-- hd [1,212,123,12]
-- tl [1,212,123,12]

