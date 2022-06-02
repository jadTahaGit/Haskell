--vordefiniert
-- instance Functor Maybe where
--     fmap _ Nothing = Nothing
--     fmap f (Just x) = Just f x



-- ################################
-- ############# GHCI #############
-- ################################
-- fmap (*2) (Just 3)
-- fmap (*2) Nothing

-- import Data.Char
-- fmap toUpper (Just 'a')


-- fmap id Nothing 
-- fmap id (Just 3)

-- fmap ((*2).(+1)) (Just 2)
-- fmap (*2) (fmap (+1)(Just 2))