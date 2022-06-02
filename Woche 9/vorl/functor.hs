class Functor f where
    fmap :: (a-> b) -> f a -> f b

-- ################################
-- ############# GHCI #############
-- ################################
-- map (*0) [1,2,3,4,5,6,7,8,9,10]
-- map (2*) [1,2,3,4,5,6,7,8,9,10]
-- map id [1,2,3,4,5,6,7,8,9,10]

-- map (\x -> x*x) [1,2,3,4,5,6,7,8,9,10]

-- map ((*2).(+1))[1,2,3,4,5,6,7,8,9,10]
-- map ((+1).(*2))[1,2,3,4,5,6,7,8,9,10]

-- sum  [1,2,3,4,5,6,7,8,9,10]
-- map sum  [[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10]]
-- sum (map sum  [[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10]])


-- ######################################
-- ############# Instance ###############
-- ######################################
-- instance Functor [] where   -- [] bezeichnet hier der Listen Konstruktur und nicht die leere Liste
--     fmap = map

-- instance Functor Maybe where
--     fmap f (Just x) = Just (f x)
--     fmap f Nothing = Nothing


-- ######################################
-- ############# Gesetze ################
-- ######################################
-- Functor Gesteze sind:
-- fmap id ist gleich id
-- fmap (p.q) ist gleich (fmap p) . (fmap q)


