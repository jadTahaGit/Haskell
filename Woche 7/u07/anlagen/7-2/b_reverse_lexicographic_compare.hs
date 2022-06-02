-- b) 

revCompare :: String -> String -> Ordering
revCompare []     []     = EQ
revCompare []     (_:_)  = LT
revCompare (_:_)  []     = GT
revCompare (x:xs) (y:ys) = case flip compare x y of
                                 EQ    -> revCompare xs ys
                                 other -> other 


-- ab hier Ihre Loesung unter Verwendung der Monoid-Eigenschaft von Ordering

-- revCompare' :: String -> String -> Ordering
-- TODO