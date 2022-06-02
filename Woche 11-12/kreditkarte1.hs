buchen :: Int -> Int -> String -> Int -> Either String (Int, Int)
buchen nr   _   _ betrag  | gesperrt nr = Left "Karte gesperrt"
buchen nr pruef _ betrag  | not (passen nr pruef) = Left "Pruef-Fehler"
buchen _   _  land betrag | not (erlaubt land) = Left "Land nicht erlaubt"
buchen nr  _   _   betrag | otherwise = Right (nr, betrag)


gesperrt nr = nr == 123412341234
passen kknr pruef = kknr `mod` 12 == pruef
erlaubt land = land == "Deutschland" 