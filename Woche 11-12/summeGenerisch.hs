summe :: (Monad m, Num b) => m b -> m b -> m b
summe e1 e2 = do
    n1 <- e1
    n2 <- e2
    return (n1 + n2)