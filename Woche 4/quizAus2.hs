f = \x -> x + f(x+1)

-- Normaler Reihenfolge!
-- Outside-In-Auswertung
-- f 0
-- (\x -> x + f(x+1)) 0
-- ( 0 + f(0+1)) 
-- ( 0 + (\x -> x + f(x+1)) (0+1)) 
-- ( 0 + 0+1  (\x -> x + f(x+1)) (0+1+1))
-- .... 


