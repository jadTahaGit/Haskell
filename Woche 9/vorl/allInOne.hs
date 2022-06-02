(\x-> 1) 2
(\x-> 1) [1,2,3]
fmap (\x-> 1) [1,2,3]

(fmap (\x-> )) [1,2,3] <*> [0]  -- Das doch nicht 
[\x->1,\x->2,\x->3] <*> [0]     -- Das Funktioniert

