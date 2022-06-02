main = do
    vorname  <- return "Adam"
    nachname <- return "Taha"
    putStrLn(vorname ++ " " ++ nachname)