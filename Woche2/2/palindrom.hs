main:: IO()
main = do
    z <- getLine
    if null z               --beendet die Rekursion
        then return ()      -- Do-Nothing-Expresion
        else do
            if istPalindrom z
                then putStrLn "ist ein Palindrom"
                else putStrLn "ist kein Palindrom"
            main --  Rekursive Call

istPalindrom w = w == reverse w