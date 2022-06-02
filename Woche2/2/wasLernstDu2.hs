import Control.Monad.Cont

main :: IO()
main = do
    putStrLn "Was lernst du?"
    sprache <- getLine
    when (sprache == "Haskell") $ do { putStrLn "Gute Wahl!" }
    putStrLn("Viel Erfolg beim " ++ sprache ++ " lernen :)")
     
-- To make the libray adn compile the .hs file
-- ghc --make wasLernstDu2.hs