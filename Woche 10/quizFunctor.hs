--Was gibt der Ausdruck zurueck?
-- map (\x -> 2*x) [0,1,2]  


class Functor f where
    fmap :: (a -> b) -> f a -> f b 

instance Functor [] where
    fmap = map

-- Was ist der Typ von map (\x -> 2*x)?
-- A. [a] -> [a]
-- B. Integral a => [a] -> [a]
-- C. Num a => [a] -> [a]              --richtig
-- D. Der Typ ist nicht Korrekt und hat folglich keinen Typ

