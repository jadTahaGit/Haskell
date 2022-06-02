data Student = Student {vorname :: String , nachname :: String, matrikellNr :: Int } deriving(Show)
jad = Student "jad" "taha" 1216
adam = Student "adam" "taha" 1217

-- jad  = Student {vorname = "jad", nachname = "taha", matrikellNr = 1216}
-- adam = Student {vorname = "adam", nachname ="taha", matrikellNr = 1217}

-- Zum Vergleichen
data StudentInfo = StudentInfo String String Int deriving (Show)
jado = StudentInfo "jad" "taha" 444


-- New Funktion from my Own:
checkIfBrother ::  Student -> Student -> Bool
checkIfBrother x x' = (nachname x) == (nachname x') 


-- ghci Befehele
-- jad 
-- jado
-- vorname jad 
-- vorname jado 
-- matrikellNr jad
-- matrikellNr jado

-- vorname jad == vorname adam
-- nachname jad == nachname adam


