
-- 8-1 a) Datentypen fuer Farbe, Wert und Karte
data Suit = Club | Heart | Spade | Diamond 
            deriving(Show, Enum, Eq)                  --show ist zum String printen | Eq ist fuer == | Enum ist fuer succ pred 
                                                      -- bsp. succ Club = Heart & pred Diamond = Spade

data Value = Two | Three | Four | Five | Six | Seven | Eight | Nine
             | Ten | Jack | Queen | King | Ace
             deriving(Show, Enum, Eq, Ord)

data Card = Card Suit Value 
            deriving(Show)                      -- 8-1 b) Standard Typklassen fuer Farbe, Wert und Karte
                                                    --DEriving dinge
instance Eq Card where                           -- 8-1 c) Implementierung der Typklassen Eq und Ord      
    -- Card1 == Card2 =
        (Card s1 v1) == (Card s2 v2) = (s1 == s2) && (v1 == v2)
    -- Alternativ:
    --  card1 == card2 = EQ == compare card1 card2   

instance Ord Card where
    compare (Card Heart v1) (Card Heart v2) = compare v1 v2    -- Die Rheinfolge ist wichtig
    compare (Card Heart _) (Card _ _) = GT
    compare (Card _ _) (Card Heart _) = LT
    compare (Card _ v1) (Card _ v2) = compare v1 v2  


-- 8-1 d) Funktion die komplettes Kartendeck zurueckgibt
deck :: [Card]
deck = [Card suit value| suit <- [Club .. Diamond], value <- [Two .. Ace]]   -- Dank Enum koennen wir [Two .. Ace] verwenden




--Try The Programm in GHCI:
--  a = Card Club Two
--  b = Card Club Two
--  a == b 

-- a = Card Club Ten
-- b = Card Heart Two
-- a > b 