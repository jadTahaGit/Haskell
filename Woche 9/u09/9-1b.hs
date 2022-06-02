-- 9-1b.hs RGB
newtype RGB = RGB (Integer, Integer, Integer) deriving Show

instance Monoid RGB where
    mempty = RGB (0,0,0) 

    mappend (RGB(r1,g1,b1)) (RGB(r2,g2,b2)) = RGB(if r1+r2<255 then r1 + r2 else 255,
                                                    if g1+g2<255 then g1 + g2 else 255,
                                                    if b1+b2> 255 then b1 + b2 else 255)

    -- mappend (RGB(r1,g1,b1)) (RGB(r2,g2,b2)) = (RGB(min (r1+r2) 255, min (g1+g2) 255, min (b1+b2) 255))

instance Semigroup RGB where
    (<>) = mappend

-- Die Substriktion ist nicht assoziativ