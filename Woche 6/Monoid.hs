-- Monoid

class Monoid m where
    mempty :: m
    mappend :: m -> m -> m 
    mconcat :: [m] ->  m 
    -- mconcat = foldr mappend mempty


-- ########################################
-- ######### Gesetze des Monoids ##########
-- ########################################
-- Es ist nur dann sinnvoll, eine Instanz der Typklasse Monoid zu definieren, wenn diese Gesetze erfüllt sind:
-- mempty `mappend` x  liefert x - mempty ist Links-Neutrum   

-- x `mappend` mempty  liefert x - mempty ist Rechts-Neutrum

-- (x `mappend` y) `mappend` y  liefert desselbe 
-- wie 
-- x `mappend` (y `mappend` z) - mappend ist assoziativ


