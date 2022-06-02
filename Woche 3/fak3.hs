fak :: Integer -> Maybe Integer
fak n | n < 0 = Nothing
fak n | n == 0 = Just 1
fak n | otherwise = let Just m = fak (n-1)
                     in Just (n*m)
