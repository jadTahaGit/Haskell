data BB a = L | K a (BB a) (BB a) deriving(Show)

breit :: BB a -> [a]
breit baum = hb [baum]
            where hb :: [BB a] -> [a]
                  hb [] = []
                  hb (L : list) = hb list
                  hb (K w l r: list) = w:hb(list ++ [l,r])


