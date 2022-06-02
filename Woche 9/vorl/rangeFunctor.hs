-- --vordefiniert:
-- instance Functor ((->) r) where
--     fmap = (.)


--  :t fmap (*2) (+1)
--  fmap (*2) (+1) 10    
-- (*2) `fmap` (+1) $ 10   
-- (*2).(+1) $ 10       


 
-- :t fmap (*2)
-- replicate 2 "abc"
-- replicate 3 42
-- :t fmap (replicate 2)
-- fmap (*2) :: (Functor f, Num b) => f b -> f b
-- fmap (replicate 2) :: Functor f => f a -> f [a]

fmap (replicate 2) (Just "abc")
fmap (replicate 2) ["abc", "de"]
:t fmap (replicate 2) (*3)
fmap (replicate 4) (*3) 2
