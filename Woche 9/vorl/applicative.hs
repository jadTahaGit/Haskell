fmap (*) :: (Functor f, Num a) => f a -> f (a-> a)


-- was liefert: 
-- (fmap (*)) [1,2,3] [0,2] 
-- (fmap (*)) (Just 2) (Just 3)

(<*>) :: Applicative f => f (a -> b) -> f a -> f b

(fmap (*)) [1,2,3] <*> [0,2]
(fmap (*)) (Just 2) <*> Just 3 

-- (fmap compare ) (Just 1) (Just 2)  
-- (fmap compare) (Just 1) <*> (Just 2)



-- ist [(1*), (2*), (3*)] eine Funktion? 
-- ist fmap (*) [1,2,3] gleich [(1*), (2*), (3*)] ?


-- [(1*), (2*), (3*)]  [] --> Error

-- ([(1*), (2*), (3*)]) <*> []       --> []
-- ([(1*), (2*), (3*)]) <*> [1,2,3]  --> [1,2,3,2,4,6,3,6,9]



-- (fmap (2*)) (Just 2)

-- (fmap (*)) (Just 2) 
-- (fmap (*)) (Just 2) <*> Just 1
-- Just (2*) 
-- Just (2*) <*> Just 1

-- Gleiche Funktionen
-- (fmap compare ) (Just 1)
-- Just (compare  1)

-- (fmap compare ) (Just 1) <*> Just 0
-- Just (compare  1) <*> Just 0


-- pure 1
-- pure 1 :: Maybe Int   -- ist Just 1 
-- pure 1 :: [Int]     -- ist [1]
-- pure 'a' :: IO(Char) -- ist eine IO Aktion, die ein Char "traegt"
-- pure "bcd" :: IO(String) -- ist eine IO Aktion, die ein String "traegt".


-- pure (+) <*> pure 1 <*> Just 1     -- pure (+) hier ist Just (+)
-- pure (+) <*> Nothing <*> Just 1  -- und hat den Typ (Num a) => Maybe (a-> a-> a)
-- Nothing <*> Just 1

-- gleich Funktionen:
-- pure f <*> x    -- f = (1*) zum probieren
-- fmap f x

-- pure f <*> [1,2,3]
-- fmap f [1,2,3]

