-- 9-1a ComplexNumber
newtype ComplexNumber = C (Double, Double) --x + i*y

instance Monoid ComplexNumber where
    mempty = C (0,0)

    mappend (C (r1,i1)) (C (r2,i2)) =  C (r1+r2, i1+i2)

instance Semigroup ComplexNumber where
    x <> y = x `mappend` y

instance Show ComplexNumber where
    show (C (r,i)) = show r ++ 
          (if i>= 0 then " + " else " - ") ++ 
             show (abs i) ++ " i"   


-- instance Semigroup ComplexNumber where
--     (<>) = mappend 

-- instance EQ ComplexNumber where
--     (==) a b = (fst a == fst b) && (snd a == snd b)


-- instance Show ComplexNumber where

-- c1 = x + i*y    