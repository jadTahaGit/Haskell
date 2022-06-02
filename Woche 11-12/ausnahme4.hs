import Control.Monad
import Control.Exception
import System.IO.Error

data MyException = LerntHaskellNicht
                | MagHaskellNicht
                | WeitereAusnahme String

instance Exception MyException

instance Show MyException where
    show LerntHaskellNicht = "Unfassbar: Lernt Haskell nicht!"

    show MagHaskellNicht = "Schwer zu glauben : Mag Haskell nicht!"
    
    show (WeitereAusnahme str) = "WeitereAusnahme: " ++ str 

dialog :: IO [Char]
dialog = do
    putStrLn "Was lernst du?"
    a1 <- getLine
    unless (a1 == "Haskell") $ throw LerntHaskellNicht
    putStrLn "Gefaellt dir Haskell?"
    a2 <- getLine
    unless (a2 == "Sehr") $ throw MagHaskellNicht
    putStrLn "Gut geantwortet !"
    return "42: the answer to life, the universe, and ..."


main :: IO ()
main = do 
    erg <- try (dialog) :: IO (Either SomeException [Char])
    case erg of 
        Left ausn  -> putStrLn $ "Eingefangen: " ++ show ausn
        Right wert -> putStrLn $ "Wert: " ++ wert 