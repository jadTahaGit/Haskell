--vordefiniert 
-- class Functor f => Applicative f where
--     --Lift a value
--     pure :: a -> f a
--     -- Sequential application
--     (<*>) :: f (a -> b) -> f a -> f b


-- ######################################
-- ############# Gesetze ################
-- ######################################
-- Applivative Gesteze sind:
-- pure f <*> x ist gleich fmap f x
-- pure id <*> v ist gleich v                               --identity                
-- pure (.) <*> u <*> v <*> w ist gleich u <*> (v <*> w)    -compostion
-- pure f <*> pure x ist gleich pure (f x)                  -Homomorphism
-- u <*> pure y ist gleich pure ($ y) <*> u                 --interchange



-- -- vordefiniert 
-- instance Applicative [] where
--     pure x = [x]
--     fs <*> xs = [f x | f <- fs, x <- xs]


-- -- vordefiniert 
-- instance Applicative Maybe where
--     pure = Just
--     Nothing <*> _ = Nothing
--     (Just f) <*> something = fmap f something


-- -- GHCI
-- (fmap (*)) [1,2,3] <*> [0,2] 
-- (fmap (*)) (Just 2) <*> Just 3
-- (fmap compare) (Just 1) <*> (Just 2) 



-- vordefiniert 
instance Applicative ((->) r) where
    pure x = (\_ -> x)
    f <*> g = \x ->f x (g x)

-- vordefiniert 
instance Applicative IO where
    pure = return
    a <*> b = do 
        f <- a
        x <- b
        return (f x)