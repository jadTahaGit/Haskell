import System.IO

main :: IO()
main = do
    inhalt <- readFile "quelle.txt"
    writeFile "ziel.txt" inhalt