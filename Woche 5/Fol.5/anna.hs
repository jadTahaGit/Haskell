data StudentInfo = Student String String Int deriving (Show)
anna = Student "Anna" "Schmidt" 1234

-- Andere Beispiele
data Goals = Goal String String Int deriving (Show)
guteNote = Goal "du kannst es" "Definiere dein Warum" 2021 


data DozententInfo = Dozent String String Int deriving (Show)
lydia = Dozent "lydia" "Schmidt" 313



--Typsynonyme machen Typdefinition verstaendlicher: 
data StudentInfo2 = Student2 Vor Nach MatrikellNr deriving (Show)
type Vor = String
type Nach = String
type MatrikellNr = Int
annaKarnina = Student2 "Anna" "Schmidt" 1234




-- Die Andere Schreibweise:

-- data Jad = Mensch Vorname Nachname Ziele Geburtstdatum   -- Ohne deriving (Show) kann man nicht ausdruecken
data Jad = Mensch Vorname Nachname Ziele Geburtstdatum deriving(Show)
type Vorname = String
type Nachname = String
-- type Ziele = [Char]
type Ziele = [String]   --ich will eine Liste von Zielen eingeben koennen
type Geburtstdatum = Int


sarah = Mensch "Sarah" "Ezz" ["Conference Interpreter", "Piano Spieler"] 13042000
adam = Mensch "Adam" " " [ ] 0