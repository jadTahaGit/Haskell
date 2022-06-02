import System.Environment
import Data.List()

main :: IO()
main = do
    progName <- getProgName
    args <- getArgs 
    putStrLn "Programm-Name"
    putStrLn progName
    putStrLn "Programm-Argumente"
    mapM_ putStrLn args