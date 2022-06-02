fak :: Integer -> Maybe Integer
fak n | n < 0 = Nothing
      | n == 0 = Just 1
      | otherwise = let Just m = fak (n-1)
                    in Just (n*m)