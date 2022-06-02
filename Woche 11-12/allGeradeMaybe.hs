import Debug.Trace

ungerade :: (Integral a, Show a) => a -> Bool
ungerade x | trace (show x) False = undefined
ungerade x | otherwise = x `mod` 2 == 1

alleGerade :: (Integral a, Show a) => [a] -> Maybe [a]
alleGerade l   | any ungerade l = Nothing
alleGerade l   | otherwise      = Just l



-- ghci> alleGerade [0..]
-- 0
-- 1      
-- Nothing
-- ghci> alleGerade [0,2,4,6,8]
-- 0
-- 2
-- 4
-- 6
-- 8
-- Just [0,2,4,6,8]
-- ghci>