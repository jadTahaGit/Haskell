import Data.Char   -- Damit ich toLower und toUpper verwenden kann
myMap :: (a -> b) -> [a] -> [b]
myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs

-- In GHCI:
-- succ 1      
-- succ [0, 1, 2]                            
-- myMap succ [0, 1, 2]    

-- myMap length  ["ab", "cde", "fghij"]
-- map length  ["ab", "cde", "fghij"]


-- toUpper 'a'
-- toUpper "asda"
-- myMap toUpper "abcd"
-- map toUpper "abcd"


-- Nun koennen wir doch die toLower und toUpper an listen verwenden!
-- myMap toUpper " " 
-- myMap toUpper "adasf"      -- macht alles in UpperCase
-- myMap (\x -> " ") "adasd"  -- macht alles leeres Zeichen
-- myMap (\x -> "a") "adasd"  --- macht alles a 
-- map (\x -> x == 1) [1,2,3]  -- [True, False, False] :)