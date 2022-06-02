data Fehler = F1 | F2 deriving (Show)

summe :: Either String Int -> Either String Int
                           -> Either String Int
summe e1 e2 = do
    n1 <- e1
    n2 <- e2
    return (n1 + n2) 


-- summe (Right 1) (Right 2)
-- summe (Left "Fehler1") (Right 2)
-- summe (Right 2) (Left "Fehler1")
-- summe (Left "Fehler1") (Left "Fehler1")