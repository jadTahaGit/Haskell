{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}

class Eq a => BinBaum b a where 
    --  istLn oder istNichtLn muss definiert werden
    -- beide duerfen definiert werden
    istLn, istNichtLn :: a -> b a -> Bool 
    istLn      wert baum = not (istNichtLn wert baum)
    istNichtLn wert baum  = not (istLn      wert baum)

data BBKM a = L | MK a (BBKM a) (BBKM a) deriving (Show)

instance Eq a => BinBaum BBKm a where 
    istLn x (MK w _ _)
    istLn x (MK _ links rechts) | otherwise = 
                            (istln x links) || (istln x rechts)
    istLn _ _                   | otherwise False


-- #############################
-- ######### In GHCI: ##########
-- #############################
-- :info Num