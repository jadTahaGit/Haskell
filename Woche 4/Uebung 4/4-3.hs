quadrat = \x -> x*x
summe_quadrat = \x y -> quadrat x + quadrat y

--summe_quadrat (5-2) (quadrat (3-1))
-- inside out (applicative)
-- summe_quadrat (5-2) (quadrat (3-1))
-- summe_quadrat (5-2) (quadrat (2))
-- summe_quadrat (5-2) ( (\x -> x*x) (2) )
-- summe_quadrat (5-2) (2*2)
-- summe_quadrat (3) (4)
-- (\x y -> quadrat x + quadrat y) (3) (4)
-- quadrat(3)+quadrat(4)
-- (\x -> x*x)(3) + (\x -> x*x)(4)
-- 3*3 + 4*4 
-- 9 + 16
-- 25


-- outside-IN (normal)
-- summe_quadrat (5-2) (quadrat (3-1))
-- (\x y -> quadrat x + quadrat y) (5-2) (quadrat (3-1))
-- quadrat(5-2) + quadrat(quadrat (3-1))
-- (\x -> x*x)(5-2) + quadrat(quadrat (3-1))
-- (\x -> x*x)(5-2) + (\x -> x*x)(quadrat (3-1))
-- ((5-2)*(5-2)) + (\x -> x*x)(quadrat (3-1))
-- ((5-2)*(5-2)) + ((quadrat (3-1))*(quadrat (3-1)))
-- ((5-2)*(5-2)) + (((\x -> x*x) (3-1))*((\x -> x*x) (3-1)))
-- ((5-2)*(5-2)) + ( ((3-1)*(3-1)) * ((3-1)*(3-1)) )
-- (3*(5-2)) + ( ((3-1)*(3-1)) * ((3-1)*(3-1)) )
-- (3*3) + ( ((3-1)*(3-1)) * ((3-1)*(3-1)) ) 
-- 9 + ( ((3-1)*(3-1)) * ((3-1)*(3-1)) ) 
-- 9 + ( (2*(3-1)) * ((3-1)*(3-1)) ) 
-- 9 + ( (2*2) * ((3-1)*(3-1)) ) 
-- 9 + ( 4 * ((3-1)*(3-1)) ) 
-- 9 + ( 4 * (2*(3-1)) ) 
-- 9 + ( 4 * (2*2) ) 
-- 9 + ( 4 * 4 ) 
-- 9 + 16
-- 25


