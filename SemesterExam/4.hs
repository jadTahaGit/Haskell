data BB a = L | K (BB a) a (BB a) deriving(Show)


prefixCollect:: BB a -> [a]
prefixCollect L = []
prefixCollect (K links w rechts) = [w] ++ prefixCollect links ++ prefixCollect rechts


-- ["<*>","<$>","(*)","[3]","[2]"]


w = K (
        K (K L "(*)" L) "<$> " (K L "[3]" L))
             "<*>" (K L "[2]" L)


infixCollect :: BB a -> [a]
infixCollect L = []
infixCollect (K l w r) = infixCollect l ++ [w] ++ infixCollect r


l = ["(*)","<$> ","[3]","<*>","[2]"]

-- ghci> infixCollect w
-- ["(*)","<$> ","[3]","<*>","[2]"]