-- vordefiniert
instance Functor IO where
    fmap f action = do
        result <- action
        return (f result)

-- Gelten ohne weiteres die Functor-Gesetze
-- fmap id ist gleich id
-- fmap (p . q) ist gleich (fmap p) . (fmap q)
-- für die obige Funktion fmap?