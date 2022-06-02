Functor Funktionen entstehen auch durch Currying:

fmap (* 2) :: (Functor f, Num a) => f a -> f a

(fmap (* 2))(pure 1) :: (Num a, Applicative f) => f a 

:t pure (*2)
pure (*2) :: (Applicative f, Num a) => f (a-> a)

:t fmap (*2)
fmap (*2) :: (Functor f, Num a) => f a -> f a

durch Currying spricht man vom Heben oder lifting der Funktion zur einer Functor-Funktion.


Auswerten von Funktionen in einem Functor erfolgt durch die ...<*>..mit gehobenen Wert
:t pure (*2) <*> pure 1 
pure (*2) <*> pure 1 :: (Applicative f, Num b) => f b


Auswerten von gehobenen Funktionen erfolgt durch reguelaere Applikation vom gehobenen Werten:
:t (fmap (*2)) (pure 1)
(fmap (*2)) (pure 1) :: (Num b, Applicative f) => f b


