--wasLernstDu1.hs
main :: IO()
main = do 
    putStrLn "Was lernst du?"
    sprache <-  getLine
    putStrLn ("Viel Erfolg beim " ++ sprache ++ " lernen!")



-- ./ wasLernstDu1.hs < antworthaskell.txt
-- echo 5ara | runghc wasLernstDu1.hs  