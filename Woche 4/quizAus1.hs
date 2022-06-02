f = \x -> x + f(x+1)



--aplikativer Reihenfolge:
--Inside-Out-Auswertung

-- f 0 
-- (\x -> x + f(x+1)) 0
-- (0 + f(0+1))
-- (0 + f(1))
-- (0 + (\x -> x + f(x+1)) 1)
-- ... 