ungerade :: (Integral a, Show a) => a -> Bool
ungerade x = x `mod` 2 == 1

alleGerade :: (Integral a, Monad m, Show a) => [a] -> m [a]
alleGerade l   | any ungerade l = error "fail"
alleGerade l   | otherwise      = return l




-- ghci> alleGerade [0..] :: Maybe [Int]
-- *** Exception: fail
-- CallStack (from HasCallStack):
--   error, called at allGeradeGenerisch.hs:5:35 in main:Main


