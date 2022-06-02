--Der Datentyp ML
data ML a = E | L a (ML a) deriving Show

--Implementierung von myList [1,2,3,4]
myList :: ML Int
myList = L 1 restderListe
restderListe = L 2 restderListe2
restderListe2 = L 3 restderListe3
restderListe3 = L 4 E

myList' :: ML Int
myList' = L 1 (L 2 (L 3 (L 4 E)))


myList'' :: ML Int
myList'' = 1 `L` ( 2 `L` (3 `L` (4 `L` E)))

standardListe = 1 : 2 : 3 : 4 : []

--Implementierung von myHead
myHead :: ML a -> a
myHead E = error "Leere Liste"
myHead (L head _) = head

--Implementierung von myTail
myTail :: ML a -> ML a
myTail E = error "leere Liste"
myTail (L _ tail) = tail


--Implementierung von myAdd
myAdd :: Num a => ML a -> ML a -> ML a
myAdd E _ = E      --terminierungsfaelle
myAdd _ E = E
myAdd (L x xs) (L y ys) = L (x + y) (myAdd xs ys)  --patternmatching  (Das ist hier rekursiv || Es gibt endrekursiv in der lezte Uebung)

--Implementierung von myAppend
myAppend :: ML a -> ML a -> ML a
myAppend E _ = E      --terminierungsfaelle
myAppend _ E = E
myAppend (L x xs) (L y ys) = L x (myAppend xs (L y ys))

--Implementierung von toString
toString :: Show a => ML a -> String
toString E = ""
toString (L val E) = show(val)
toString (L val rest) = show(val) ++ "," ++ toString rest

