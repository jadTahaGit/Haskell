-- 9-2.hs
op :: Integer -> Integer -> Integer
op 0 0 = 0
op 0 1 = 1
op 1 0 = 1
op 1 1 = 0

-- deshalb ist o assoziativ 
-- a | b | c | (aob)oc | ao(boc)
-- 0 | 0 | 0 |     0   |    0
-- 0 | 0 | 1 |     1   |    1
-- 0 | 1 | 0 |     1   |    1
-- 0 | 1 | 1 |     0   |    0
-- 1 | 0 | 0 |     1   |    1
-- 1 | 0 | 1 |     0   |    0
-- 1 | 1 | 0 |     0   |    0
-- 1 | 1 | 1 |     1   |    1


-- (0 o 0 = 0) & (0 o 1 = 1) & (1 o 0 = 1) deswegen ist 0 das neutrale Element
-- Damit hat der Zahlenraum bezueglich o die Eigenschaften des Monoid erfuellt

instance Semigroup Integer where
    (<>) = op

instance Monoid Integer where
    mempty = 0




-- in GHCI
-- mappend 0 0 == op 1 1
-- (<>) 0 0