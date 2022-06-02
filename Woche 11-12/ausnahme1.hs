import Control.Monad (unless)
import Control.Exception ( SomeException, try)

dialog :: IO [Char]
dialog = do
    putStrLn "Was lernst du?"
    a1 <- getLine
    unless (a1 == "Haskell") $ fail "Ausnahme 1"
    putStrLn "Gefaellt dir Haskell?"
    a2 <- getLine
    unless (a2 == "Sehr") $ fail "Ausnahme 2"
    putStrLn "Gut geantwortet !"
    return "42: the answer to life, the universe, and ..."

main :: IO ()
main = do 
    erg <- try (dialog) :: IO (Either SomeException [Char])
    case erg of 
        Left ausn  -> putStrLn $ "Eingefangen: " ++ show ausn
        Right wert -> putStrLn $ "Wert: " ++ wert 