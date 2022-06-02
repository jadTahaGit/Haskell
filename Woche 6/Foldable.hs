-- Monoide ermöglichen, Daten zu ”falten“, d.h. aggregieren. 
-- Dafür sind aber Funktionen nötig.
-- Die Typ-Klasse Foldable wird fur Monoide verwendet, die ¨ Funktionen foldr (falten vom rechts her ) 
-- und foldl (falten vom links her) besitzen.


--In GHCI:
-- import qualified Data.Foldable as F
-- :t foldr
-- :t F.foldr

-- foldr (+) 0 [1,2,3]
-- F.foldr (+) 0 [1,2,3]


-- F.foldl (||) False (Just True)
-- F.foldl (&&) True (Just True)

-- F.foldl (+) 2 (Just 40)
-- F.foldl (*) 2 (Just 40)