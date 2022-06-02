
-- 8-3 b) trennen zweier Listen mit einer Funktion
unzipWith :: (t -> (a,b)) -> [t] -> ([a], [b])
--endRekursiv:
unzipWith f list = unzip f list ([], [])
    where unzip f [] acc 
            = acc
          unzip f (x:xs) (first, second) 
            = unzip f xs (first ++ [fst (f x)] , second ++ [snd (f x)]) 



-- Mein Versuch
-- unzipWith f [] = ([], [])
-- unzipWith f (x:xs) =  if (x == f y z) then ([y],[z]) : unzipWith f xs  


-- GHCI
--  unzipWith id [(0,'g'),(1,'u'),(2,'t')]