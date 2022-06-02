append2 :: (Applicative f, Monoid (f a)) => f a -> f a -> f a
append2 x m = x `mappend` x `mappend` m



-- twice :: (Foldable t, Applicative t, Monoid (t a)) => t a -> t a
-- twice ls = foldr (\l r -> append2 (pure l) r )  mempty ls



twice :: (Foldable t, Applicative t, Monoid (t a)) => t a -> t a
twice = foldr (append2 . pure) mempty

-- summiere = foldr (+) 0 