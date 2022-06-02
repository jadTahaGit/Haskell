import Control.Exception
import Control.Monad

readUserFile :: IO String
readUserFile = do
    print "Please enter file to read"
    filename <- getLine
    contents <- try (readFile filename) :: IO (Either SomeException String)
    case contents of
        Left exception -> do 
            print "File not found"
            readUserFile 
        Right wert -> return wert

readMaybe :: String -> Maybe Int   -- Integer geht nicht !! ist nur fuer int
readMaybe string1 = case (reads string1) :: [(Int,String)] of
                [(x,"")] -> Just x
                _        -> Nothing


returnIndex :: [String] -> IO ()
returnIndex fileLines = do
    print "Input number of the line to show"
    userinput <- getLine
    case readMaybe userinput of
        Nothing -> do 
            print "Index must be a whole number"
            returnIndex fileLines
        Just v -> do
            unless (v < length fileLines) 
            do
                print "Index too Large"
                returnIndex fileLines 
            print (fileLines !! v)

main :: IO ()
main = do 
    contents <- readUserFile   -- bitte gib mir...
    returnIndex $ lines contents






-- :t try
-- :t readFile

-- Welche Datei wollen sie einlesen?
-- lies
-- falls die Datei nicht existiert  >> FehlerBehandlung
-- neuer Name
-- zuruckgegeben werden
