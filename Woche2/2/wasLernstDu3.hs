main :: IO()
main = do
    putStrLn "Was lernst du?"
    sprache <- getLine
    if sprache == "Haskell" 
        then putStrLn "Gute Wahl!"
        else putStrLn "Denk daran, auch Haskell zu lernen!"
    putStrLn("Viel Erfolg beim " ++ sprache ++ " lernen :)")
     
-- To make the libray adn compile the .hs file
-- ghc --make wasLernstDu3.hs