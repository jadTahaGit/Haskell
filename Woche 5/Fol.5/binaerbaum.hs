data BinTree a = L | Knt a (BinTree a) (BinTree a) deriving (Show)

jadsBinTree :: BinTree Char
--            d
--     b             f
-- a      c       e     g
--                    _    j

jadsBinTree = Knt 'd' (Knt 'b' (Knt 'a' L L)(Knt 'c' L L)) (Knt 'f' (Knt 'e' L L) (Knt 'g' L (Knt 'j' L L)))

--The Rule is always Root the left leaves then right leaves
--            j
--     a             a
-- d      T            
--       a   h               


my2ndTree = Knt 'j' (Knt 'a' (Knt 'd' L L) (Knt 'T' (Knt 'a' L L) ( Knt 'h' L L))) (Knt 'a' L L)
