data Expr = Num Double
            | Add Expr Expr
            | Sub Expr Expr deriving Show

d1 = Add (Num 2) (Num 3)
d2 = Sub (Num 3) (Num 2)


eval :: Expr -> Maybe Double
eval (Num a) = if a<0 then Nothing else Just a
eval (Add a b) = case eval a of
            Nothing -> Nothing
            Just a' -> case eval b of
                    Nothing -> Nothing
                    Just b' -> Just (a' + b')


evalDo :: Expr -> Maybe Double
evalDo (Num a) = if a<0 then Nothing else return a
evalDo (Add a b) = do
                a' <- evalDo a
                b' <- evalDo b
                return (a'+b')


evalBd :: Expr -> Maybe Double
evalBd (Num a) = if a<0 then Nothing else return a
evalBd (Add a b) = evalBd a >>= \ a' -> 
                   evalBd b >>= \ b' ->
                   return (a' + b')


evalBd (Sub a b) = evalBd a
            >>= \a' -> evalBd b
            >>= \b' -> if a'-b'<0
            then Nothing
            else return ( a' - b')