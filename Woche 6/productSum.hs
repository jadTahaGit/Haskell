
class Monoid m where
    mempty :: m
    mappend :: m -> m -> m 
    mconcat :: [m] ->  m 
    mconcat = foldr Main.mappend Main.mempty

newtype Sum a = Sum {getSum :: a}
        deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Main.Monoid (Sum a) where
    mempty = Sum 0 
    Sum x `mappend` Sum y = Sum (x+y)

instance Main.Monoid [a] where
    mempty = []
    mappend = (++)
    
-- In GHIC
-- getSum $ Sum 1 `Main.mappend` Sum 2    
-- getSum $ Sum 1 `Main.mappend` Main.mempty  
-- getSum $ Main.mconcat [Sum 0, Sum 1, Sum 2, Sum 3]  


-- [1,2] `Main.mappend` [3,4,5] 
-- [1, 2] `Main.mappend` Main.mempty
-- Main.mconcat [[1,2], [3,4,5], [6]]


-- ##########
-- #################################################
-- ######### Maybe zu Fehler Behandlung ############
-- #################################################
-- ##########
instance Main.Monoid a => Main.Monoid (Maybe a) where
    mempty = Nothing
    Nothing `mappend` m = m
    m `mappend` Nothing = m
    Just m1 `mappend` Just m2 = Just (m1 `Main.mappend` m2)

-- Just  "abc" `Main.mappend` Nothing
-- Just  "abc" `Main.mappend` Main.mempty
-- Just  "" `Main.mappend` Main.mempty
-- Main.mconcat [Just "abc", Nothing, Just "def"]
