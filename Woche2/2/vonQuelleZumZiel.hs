import System.IO

main :: IO()
main = do 
    leseGriff <- openFile "quelle.txt" ReadMode 
    inhalt <- hGetContents leseGriff
    schreibGriff <- openFile "ziel.txt" WriteMode  --WriteMode AppendMode
    hPutStr schreibGriff inhalt
    hClose leseGriff
    hClose schreibGriff


