instance Monad Maybe where
    return x      =  Just x
    Nothing >>= f = Nothing
    Just x  >>= f = f x
    -- fail _        = Nothing

-- Just "Hello" >>= \x -> return (x ++ "!")
-- Just 10 >>= \x -> return (x + 1)
-- Nothing >>= \x -> return (x + 1)