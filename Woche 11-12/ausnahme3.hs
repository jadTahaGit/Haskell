import Control.Monad
import Control.Exception
import System.IO.Error

main :: IO ()
main = do 
    ergebnis <- try(evaluate(1 `div` 0))
                                    :: IO (Either Some Exception Int)
    case ergebnis of
        Left ausn -> putStrLn $ "Eingefangen: " ++ show ausn
        Right wert -> putStrLn $ "Wert: " ++ show wert
                    
