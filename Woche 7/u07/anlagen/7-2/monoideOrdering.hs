-- Hiermit definiere ich allgemeinere Funktionen die mir helfen, (Compare) effectiver zu verwenden!
instance Monoid Ordering where   -- Monoid ist Typklasse -- Ordering ist Typ
    -- In Monoide mussern immer mempty und mappend definiert werden:
    mempty =  EQ --muss das neutrale Elment sein! Hier ist EQ das neutrale Elment aus EQ LT GT

    -- mappend ist die Main-Operation wie (+) in der Monoide
    mappend EQ x = x        --Hier haben wir verschiedene Faelle
    mappend x EQ = x        -- LT `mappend` EQ = LT  und  GT `mappend` EQ = GT

    mappend LT _ = LT      -- LT `mappend` _ = LT wo _ kann {EQ, LT, GT} sein 
    mappend GT _ = GT      -- GT `mappend` _ = GT wo _ kann {EQ, LT, GT} sein 

    -- revCompare weil die Ordnung Z,Y,...A ist
    -- revCompare :: String -> String -> Ordering    --Ohne Monid
    revCompare :: (Monoid Ordering) => String -> String -> Ordering  
    revCompare [] [] = EQ
    revCompare []  (_:_) = LT
    revCompare (_:_)  [] = GT
    -- -- Without the Monoid
    -- revCompare (x:xs) (y:ys) = case flip compare x y of -- flip compare x y --> compare y x --> GT or LT or Eq 
    --                                 EQ -> revCompare xs ys              --   --> if GT or LT --> give the value
    --                                 other -> other         --   --> if EQ --> See the next elemnt (Rekursion)   
    
    -- With Monoid:
    revCompare (x:xs) (y:ys) = (flip compare x y) `mappend` (revCompare xs ys)