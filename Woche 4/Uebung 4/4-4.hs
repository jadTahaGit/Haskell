quadrat = \x -> x*x
summe_quadrat = \x y -> quadrat x + quadrat y


--                                                                   Umgebung
--                                                                   [] 
-- quadrat = \x -> x*x                                               [(quadrat, \x -> x*x)] 
-- summe_quadrat = \x y -> quadrat x + quadrat y                     [(summe_quadrat, \x y -> quadrat x + quadrat y), (quadrat, \x -> x*x)]                               
-- summe_quadrat (5-2) (quadrat (3-1))                               [(x,(5-2)), (y,quadrat(3-1)),(summe_quadrat, \x y -> quadrat x + quadrat y), (quadrat, \x -> x*x)]  
-- summe_quadrat (x) (y)                               
-- (\x y -> quadrat x + quadrat y) (x) (y)             
-- quadrat (x) + quadrat(y)                            
-- (\x -> x*x)(x) + (\x -> x*x)(y)                     
--  (x)*(x)  + (\x -> x*x)(y)                   
--  (x)*(x)  + (y)*(y)
--  (x)*(x)  + (quadrat(3-1))*(quadrat(3-1))  
--  x*x  + ((\x -> x*x) (3-1))*((\x -> x*x) (3-1))               
--  x*x  + (((3-1)*(3-1))*((3-1)*(3-1)))
--  x*x  + (3-1)*(3-1)*(3-1)*(3-1)
--  (5-2)*(5-2)  + (3-1)*(3-1)*(3-1)*(3-1)
-- 3*3 + 2*2*2*2
-- 9 + 16
-- 25 
