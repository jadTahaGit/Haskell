-- 8-2 b) erfuellen alle Elemente einer Liste Praedikat

all' :: (a -> Bool) -> [a] -> Bool
all' f [] = True
-- all' f (x:xs) = f x && all' f xs   -- eine andere Schreibweise
all' f (x:xs)
      | f x == True = all' f xs
      | otherwise = False