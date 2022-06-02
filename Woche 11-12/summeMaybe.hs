summe :: Maybe Int -> Maybe Int -> Maybe Int
summe m1 m2 = do
     n1 <- m1
     n2 <- m2
     return (n1 + n2)   



-- ghci> summe (Just 1) (Just 2)
-- Just 3
-- ghci> summe (Just 1) Nothing
-- Nothing
-- ghci>  



-- ghci> Left "Pruef-Fehler"
-- Left "Pruef-Fehler"
-- ghci> :t Left  "Pruef-Fehler"
-- Left  "Pruef-Fehler" :: Either String b
-- ghci>