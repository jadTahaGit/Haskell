-- fmap f action = do 
--         result <- action
--         return (f return)

-- fmap toUpper getChar
-- fmap reverse getLine
-- fmap (++"?") getLine


(<*>) :: Applicative f => f (a-> b) -> f a -> f b
-- ff <*> fw = ff >>= \f -> fw >>= \w -> return (f w)
ff <*> fw = do 
            f <- ff
            w <- fw 
            return (f w)