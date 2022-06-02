-- a) Datentyp
data Triple a = Triple a a a  -- | L 

instance (Show a) => Show (Triple a) where
    -- show L = "()"
    show (Triple a b c) = "(" ++ show a ++ "," ++ show b ++ "," ++ show c ++ ")"

-- b) Zugriff auf die einzelnen Triple-Komponenten
tfst :: Triple a -> a
tfst (Triple a _ _) = a

tsnd :: Triple a -> a
tsnd (Triple _ b _) = b

ttrd :: Triple a -> a
ttrd (Triple _ _ c) = c

-- c) Konvertierung
tripleFromList :: [a] -> Triple a
tripleFromList (x:y:z:_) = Triple x y z

-- tripleFromList x  = Triple (head x) (head (tail x)) (head (tail (tail x)))
--                 -- | length x < 3 = L 
--                 -- | otherwise =Triple (head x) (head (tail x)) (head (tail (tail x)))    

-- GHCI:
-- tripleFromList []
-- tripleFromList [1,2]
-- tripleFromList ['a','a','a']

tripleToList :: Triple a -> [a]
tripleToList x = [tfst x, tsnd x, ttrd x]    

-- d) Kreuzprodukt für Triple
x :: Num a => Triple a -> Triple a -> Triple a
x (Triple a b c) (Triple d e f) = Triple (b*f-c*e) (c*d-a*f) (a*e-b*d)


-- ghci> a = Triple 1 1 1 
-- ghci> b = Triple 1 1 2 
-- ghci> a `x` b
-- (1,-1,0)


-- e) Multiplikation mit Skalar
scaMult :: (Functor f, Num b) => b -> f b -> f b
-- scaMult factor triple = fmap (factor *) triple
scaMult factor  = fmap (factor *) 

instance Functor Triple where
    fmap f (Triple a b c) = Triple (f a) (f b) (f c)

-- ghci> scaMult 2 (Triple 1 1 1) 
-- (2,2,2)

-- f) Skalarprodukt und Vektoraddition/-subtraktion
o :: Num a => Triple a -> Triple a -> a
o triple1 triple2 = sum (tripleToList(fmap (*) triple1 <*> triple2))

tripleAdd :: (Applicative f, Num b) => f b -> f b -> f b
tripleAdd triple1 triple2 = fmap (+) triple1 <*> triple2

tripleSub :: (Applicative f, Num b) => f b -> f b -> f b
tripleSub triple1 triple2 = fmap (-) triple1 <*> triple2

instance Applicative Triple where
    pure x = Triple x x x 
    (Triple f g h) <*> (Triple x y z) = Triple (f x) (g y) (h z)

-- g) Länge eines Triples
tlength :: Floating a => Triple a -> a
tlength triple = sqrt (o triple triple)      --sqrt ist square root