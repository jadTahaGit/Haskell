-- a) Datentyp List
data List a = L | C a (List a) deriving(Show)

list0 = L
list1 = C 1 L
list2 = C 1 (C 2 L)
list3 = C 1 (C 2 (C 3 L))
listA = C 'a' (C 'b' (C 'c' (C 'd' (C 'e' L))))

instance Functor List where
    fmap f L = L
    fmap f (C x xs) =  C (f x) (fmap f xs)

-- b) Funktion scale:
scale :: (Functor f, Num b) => b -> f b -> f b
-- scale factor list22 = fmap (factor *) list22  
scale factor = fmap (factor *)   


-- GHCI:
-- Scale 3 list3

-- c) lzipWith:
-- zipWith (+) [1,2,1,1,1] [2,2,123,12,12]

instance Applicative List where
    -- pure x = (C x L)  jedoch haben wir eine Problem hier mit der Identitaets Eigenschaft
    pure x = C x (pure x)

--   (<*>) :: f (a -> b) -> f a -> f b
--   fs <*> xs = [f x | f <- fs, x <- xs]     -- [f on x, ... ,f on xs, g on x, ... g on xs] aber hier wollen wir [f on x y, ... f xs ys] 
    L <*> _ = L
    _ <*> L = L
    C f fs <*> C x xs = C (f x) (fs <*> xs)

    
      
lzipWith :: (a->b->c) -> List a -> List b -> List c
lzipWith f xs ys = fmap f xs <*> ys

-- zipWith f [] _ = []    
-- zipWith f _ [] = []
-- zipWith f (x:xs) (y:ys) = f x y : go xs ys