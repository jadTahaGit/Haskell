data Tag = Mo | Di | Mi | Do | Fr | Sa | So deriving (Show)
nummer :: Tag -> Int
nummer Mo = 1
nummer Di = 2


--Ghci:
-- Mo
-- Mi
-- nummer Mo
-- nummer Mi  -- Fehlermeldung

-- Ein Patterb muss linear sein
data BB a = L | Knt a (BB a) (BB a)
suche x (Knt w _ _) | x == w = True
-- statt
-- suche x (Knt x _ _) = True

-- GHCI
-- suche 1 (Knt 1 L L)