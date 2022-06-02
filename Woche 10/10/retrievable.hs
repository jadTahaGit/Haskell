data Retrievable x = NotAvailable | Present x  deriving(Show)

--GHCI
-- a = Present 'a'
-- a

-- Data.Functor fuer Retrievable
instance Functor Retrievable where
    -- fmap :: (a->b) -> Present a -> Present b
    fmap f (Present a) = Present (f a)  

-- fmap (\x->'a') Present 'b'
-- fmap (\x->1) Present 2

-- type Maybe :: * -> *
-- data Maybe a = Nothing | Just a
-- fmap :: (a -> b) -> Maybe a -> Maybe b
-- (<$) :: a -> Maybe b -> Maybe a


instance Applicative Retrievable where
    pure = Present
    NotAvailable <*> _ = NotAvailable
    _ <*> NotAvailable = NotAvailable
    (Present f) <*> something = fmap f something

-- vordefiniert 
-- instance Applicative Maybe where
--     pure = Just
--     Nothing <*> _ = Nothing
--     (Just f) <*> something = fmap f something


instance Monad Retrievable where
    -- (>>=)  :: m a -> (a -> m b) -> m b
    -- ... >>= ... = 
    NotAvailable >>= _ = NotAvailable
    Present x    >>= f = f x 
  