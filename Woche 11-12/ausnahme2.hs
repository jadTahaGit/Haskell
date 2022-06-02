import Control.Exception ( SomeException, try)

main::IO()
main = do
    erg <- try (return (div 1 0)) :: IO (Either SomeException Int)
    case erg of
        Left ausn  -> putStrLn $ "Eingefangen: " ++ show ausn
        Right wert -> putStrLn $ "Wert: " ++ show wert