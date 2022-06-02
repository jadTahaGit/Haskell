data BB a = L | K (BB a) a (BB a)



fmapBB :: (a -> b) -> BB a -> BB b
fmapBB f L = L
fmapBB f (K l a r) =
                  K (fmapBB f l) (f a) ( fmapBB f r)



instance Functor BB where
    fmap = fmapBB 


konvertiere :: Functor t => t Int -> t String
konvertiere = fmap show
showBB :: BB String
showBB = let b = K (K L 2 L) 1 (K (K L 4 L) 3 L) in konvertiere b



-- foldrBB :: (a -> b -> b) -> b -> BB a -> b
-- foldrBB f b L = b
-- foldrBB f b (K l a r) = 
--     foldrBB f (f a (foldrBB f b r)) l