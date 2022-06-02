data BB a = L | K a (BB a) (BB a) deriving(Show)

b0 = L
b1 = K 1 L L
b2 = K 1 (K 2 L L) L
b3 = K 1 (K 2 L L) (K 3 L L)
b4 = K 1 (K 2 L L) (K 3 (K 4 L L) L)

b = K 'a' (K 'b' L L) (K 'c' (K 'd' L L) L)


        --         a
        --        /  \
        --     b      c
        --    / \    / \
        --   L   L   d   L
        --          / \ 
        --         L   L