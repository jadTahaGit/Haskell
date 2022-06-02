Eine Monade isr ein Applicatice Functor mit:
einem Typ Konstruktor m (wie IO oder Maybe)
einem Operator (>>=), bind, mit Typ m a-> (a -> m b) -> m b
einer Funktion return (anderet Name fuer pure) mit Typ a -> m a
einer Funktion fail mit Typ String -> m a (Fuer das PAttern Matching und die Fehlerbehandlung) 
so dass duie Gesetze erfuellt sind:

Monade Gesetze:
1. return ist REchtseinheit von (>>=):
    m >>= return ist gleich m
2. return ist Linkseinheit von (>>=):
    return x >>= f ist gleich f x
3. (>>=) ist linksassoziativ:
    (m >>= f) >>= g ist gleich m >>= (\x -> f x >>= g)

--vordefeniert 
class Monade m where
    return ::  a -> m a
    (>>=)  :: m a -> (a -> m b) -> m b
    (>>)   :: m a -> m b -> m b
    m >> n = m >>= \ _ -> n
    fail :: String -> m a


class Applicative m => Monade m where
    (>>=)  :: m a -> (a -> m b) -> m b
    (>>)   :: m a -> m b -> m b
    m >> n = m >>= \ _ -> n
    fail :: String -> m a


print("Wie heisst du?");
name := getLine;
print("Hello " ++ name ++ "!")

Wie kan man solcher imparativer Pseudo-Code funktional darstellen?


getLine :: IO String
IO String: Typ der IO Aktionen, die Strings zurueckgeben
Iop a: Typ Der IO-Aktionen, die Werte vom Typ a zurueckgeben


sq(sq(print"Wie heisst du?", getLine), print("Hello " ++ name ++ "!"))

(((print "Wie heisst du?") sq getLine) sq (print("Hello" ++ name "!")))
---------------------------------------
(print "Wie heisst du?") sq
getLine sq
(print ("Hello " ++ name ++ "!")) 
--------------------------------------
(print "Wie heisst du?") sq
getLine sq
(\name -> print ("Hello " ++ name ++ "!")) 
--------------------------------------
(print "Wie heisst du?") >>  -- then, der keinen Wert weiterreicht.
getLine >>=                  -- bind, der einen Wert weiterreicht.
(\name -> print ("Hello " ++ name ++ "!"))
--------------------------------------
Die Sequenz muss einen Wert und einen Typ haben
print :: String -> IO()
getLine :: IO String
(>>)  :: IO () -> ( () -> IO () ) -> IO ()
(>>=) :: IO () ->    IO String    -> IO String
--------------------------------------
Verallgimeinerung:
(>>) :: IO a -> IO b -> IO b
(>>=) :: IO a -> (a-> IO b) -> IO b
--------------------------------------
(>>) kann wie folgt aus (>>=) definiert werden
m >> n = (m >>= \_ -> n)
--------------------------------------
So wird in der Tat (>>) aus (>>=) definiert:
−− vordefiniert
class Monad m where
    return :: a-> m a
    (>>=)  :: m a -> (a -> m b) -> m b
    (>>)   :: m a -> m b -> m b 
    m >> n = m >>= \_ -> n
    fail :: String -> m a
--------------------------------------
Mit ”syntaktischem Zucker“:
    do
      print ”Wie heisst du?”
      name <− getLine
      print (”Hello ” ++ name ++ ”!”)

<- getLine holt ein String aus der Aktion getLine heraus.
<- ist nur innerhalb eines do-Blockes m¨oglich.
Das Ergebnis eines do-Blockes ist eine Monade.
return und <- sind symmetrisch miteinander:
return "bcd" bringt das String "bcd" in eine Aktion hinein.
--------------------------------------
Es ist nicht m¨oglich, Werte aus einem monadischen Kontext zu
extrahieren. Dies ergibt sich aus der Typdefinition fur Monaden: ¨
1) return bringt einen ”normalen“ Wert in einen monadischen Kontext ein.
2) (>>=) verkettet zwei Monaden, das Ergebnis ist wieder eine Monade.
3) Variablen, die innerhalb einer Monade definiert werden, sind nur innerhalb dieser Monade gultig. ¨
4) Das Ergebnis einer jeden in einer Monade ausgefuhrte ¨Funktion kann nur durch bind (>>=)
                 an eine andere Monade weitergegeben werden.
5) Funktionen in Haskell sind rein (engl. pure), und k¨onnen nur Seiteneffekte haben, wenn sie als Ruckgabewert eine Monade liefern.
   Diese Seiteneffekte sind auf die Monade beschr¨ankt, von ”aussen“ sind diese nicht wahrnehmbar.
--------------------------------------