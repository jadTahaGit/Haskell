data BB a = L | K a (BB a) (BB a) deriving(Show)

tief :: b -> (a -> b -> b -> b) -> BB a -> b
tief fL fK L = fL
tief fL fK (K w l r) = fK w (tief fL fK l) (tief fL fK r)

infixCollect = tief [] (\ w l1 l2 -> l1 ++ [w] ++ l2)
prefixCollect = tief [] (\ w l1 l2 -> [w] ++ l1 ++ l2)
postCollect = tief [] (\ w l1 l2 -> l1 ++ l2 ++ [w])
