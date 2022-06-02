data BB a = L | K a (BB a) (BB a) deriving (Show)

fmapBB f L = L
fmapBB f (K w l r) = K (f w) (fmapBB f l) (fmapBB f r)

-- fmapBB (\x-> 2*x) hat den Typ  ( Num a => BB a -> BB a)


(<*>) :: Applicative f => f (a -> b) -> f a -> f b
-- (fmap (*)) [1,2,3] <*> [0,2]
-- (fmap (*)) (Just 2) <*> (Just 3)


-- Functors : Listen, Binaerbaeume, Maybe, (->) r.

-- ghci> :t fmap (*)
-- fmap (*) :: (Functor f, Num a) => f a -> f (a -> a)

-- pure wandelt einen normalen Wert in einen Functor Wert um
-- pure 1 :: Maybe Int
-- pure 1 :: [Int]
-- pure 'a' :: IO(Char) 
-- pure "bcd" :: IO(String)
-- pure (+) :: (Num a, Applicative f) => f (a -> a -> a)

-- pure (+) <*> pure 1 <*> Just 1
-- pure (+) <*> Nothing <*> Just 1
-- pure (+) ist hier Just (+) und hat den Typ (Num a) => Maybe (a -> a -> a)

-- ff <*> pure x 
-- f <*> fw ist das selbe wie fmap f fw
-- pure f <*> pure x ist das selbe wie pure (f x)