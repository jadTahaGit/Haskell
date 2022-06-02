instance Monad (Either a) where
    return = Right
    Right b >>= f = f b
    Left a  >>= _ = Left a 

-- Right "Hello" >>= \x -> return (x ++ "!")
-- Right 10 >>= \x -> return (x + 1) 
-- Left "Fehler" >>= \x -> return (x+1)