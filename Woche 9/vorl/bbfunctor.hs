data BB a = L | K a (BB a) (BB a) deriving(Show)

instance Functor BB where
    fmap f L = L
    fmap f (K w l r) = K (f w) (fmap f l) (fmap f r)

-- Ein Paar Baume definieren:
b0 = L
b1 = K 1 L L
b2 = K 1 (K 2 L L) L
b3 = K 1 (K 2 L L) (K 3 L L)
b4 = K 1 (K 2 L L) (K 3 (K 4 L L) L)
ba = K 'a' (K 'b' L L) (K 'c' (K 'd' L L) L)


-- ################################
-- ############# GHCI #############
-- ################################
-- sum b0
-- fmap sum b0

-- fmap id b1
-- fmap (+1) b4
-- fmap (*2) b4
-- fmap ((*2).(+1)) b4
-- fmap (*2) (fmap (+1) b4 )
-- import Data.Char   -- for the toUpper funkction
-- fmap toUpper ba


-- Ein Functor wird definiert durch:
-- einen Typkonstruktor m ( wie [], BB oder Maybe)
-- eine Funktion fmap, die Funktionen mit Typ (a ->b) auf (m a -> m b) uebertraegt 

-- bsp:
-- map (\x -> x*x) [1,2,3,4]
-- fmap toUpper ba 
-- fmap not Nothing
-- fmap not (Just True)