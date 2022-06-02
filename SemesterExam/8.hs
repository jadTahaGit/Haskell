data Expr = Num Double
            | Add Expr Expr
            | Var Char deriving Show

type Env = [(Char , Double)]

evalDo :: Env -> Expr -> Maybe Double
evalDo _ (Num a) = return a
evalDo e (Add a b) = do
                        a' <- evalDo e a
                        b' <- evalDo e b
                        Just (a'+b')

d1 = Add (Num 2) (Num 3)
-- d2 = Var (Num 3) (Num 2)


getvar :: Env -> Char -> Maybe Double
getvar =  evalDo [(char, 2.2)] (Var char)  


evalDo :: Env -> Expr -> Maybe Double
evalDo e (_____ ______) = getvar _______ c



data Expr = Num Double
| Add Expr Expr
| Var Char deriving Show
|
evalDo e (Sqrt ) = do
a' <- a
if <0 then else (sqrt )


-- evalDo :: Expr -> Maybe Double
-- evalDo (Num a) = if a<0 then Nothing else return a
-- evalDo (Add a b) = do
--                 a' <- evalDo a
--                 b' <- evalDo b
--                 return (a'+b')


-- evalBd :: Expr -> Maybe Double
-- evalBd (Num a) = if a<0 then Nothing else return a
-- evalBd (Add a b) = evalBd a >>= \ a' -> 
--                    evalBd b >>= \ b' ->
--                    return (a' + b')


-- evalBd (Sub a b) = evalBd a
--             >>= \a' -> evalBd b
--             >>= \b' -> if a'-b'<0
--             then Nothing
--             else return ( a' - b')