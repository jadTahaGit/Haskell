
data BB a = L | K (BB a) a (BB a) deriving(Show)

w = K (
    K   (K L " 2 " L) " * " (K L " 3 " L)   -- left
    ) " /= "  (K L "5" L)  -- right

prefixCollect:: BB a -> [a]
prefixCollect L = []
prefixCollect (K links w rechts) = [w] ++ prefixCollect links ++ prefixCollect rechts


infixCollect :: BB a -> [a]
infixCollect L = []
infixCollect (K l w r) = infixCollect l ++ [w] ++ infixCollect r






-- l = [" ", " ", "3", " ", " "]
