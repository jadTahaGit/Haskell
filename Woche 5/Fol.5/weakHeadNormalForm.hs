-- ###############################
-- #### Weak Head Normalform: ####
-- ###############################

-- (1, 1+1)

-- 'a' : "bc"
-- 'a' : ("bc" ++ "cd")

-- (\x -> x*x)
-- (\x -> 1+1)
-- (\x -> x + (1+1)) 

-- (+) 1
-- (*) 2 
-- (++)

-- 0:[1..]
-- [0..]

--    Verzoegerte Auswertung mit Konstruktoren:
-- head [0..]
-- head (tail (tail [0..]))
-- take 4 [0..]

--Quiz 2:
-- 1:[2..]                WKNF
-- [1..]                  nicht
-- head [1..]             WKNF