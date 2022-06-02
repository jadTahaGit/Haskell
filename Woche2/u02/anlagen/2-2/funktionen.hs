

-- Aufgabe 2-2 a --
alleGleich :: Eq a => a -> a -> a -> Bool
alleGleich a b c = (a == b && b == c) 
        

-- Aufgabe 2-2 b --
ungerade :: Integral a => a -> Bool
ungerade zahl = zahl `mod` 2 == 1


-- Aufgabe 2-2 c --
gerade :: Integral a => a -> Bool
gerade x = x `mod` 2 == 0




