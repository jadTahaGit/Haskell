reverse :: (Foldable t, Applicative t, Monoid (t a)) => t a -> t a
reverse ls = foldr (\l r -> r `mappend ` pure l) mempty ls


reverse' :: (Foldable t, Applicative t, Monoid (t a)) => t a -> t a
reverse' = foldr (flip mappend . pure) mempty


