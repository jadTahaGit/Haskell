-- a) Implementierung Typklasse Monoid fuer Ordering
instance Monoid Ordering where
    mempty = Eq
    
    mappend Eq x = x
    mappend x Eq = x
    mappend LT _  = LT
    mappend GT _  = GT