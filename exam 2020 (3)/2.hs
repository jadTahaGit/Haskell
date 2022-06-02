produkt :: Integral a => a -> a
produkt n |  n <= 1     = 1
          | otherwise = n * produkt (n-1)


produkt' :: Integral a => a -> a
produkt' n = prod n 1
        where prod n akk = if n == 1 
                           then akk
                           else prod (n-1) (akk*n)   -- akk = akk * n

produkt'' :: Integral a => a -> a
produkt'' = \n -> let prod = \n akk -> if n == 1
                                       then akk
                                       else prod (n -1) akk * n
                    in prod n 1


