

-- Aufgabe 1-5 --
substantive = ["Student", "Professor", "Tutor"]
adjektive = ["fauler", "fleissiger", "hilfreicher"]


tuppel sub adj
    | length sub  == length adj =  [(x,y)| x <- sub, y <- adj]

    -- ghc:
    -- [(sub,adj)|sub <- substantive, adj <-adjektive] 


--Generating a list
--1:2:3:4:6:[]
asc :: Int -> Int -> [Int]
asc n m
   | m < n = []
   | m == n = [m]
   | m > n = n : asc (n+1) m


--Make From these funktions that reads the x and y from the user
-- GHCI 
-- [2*x | x <- [1,2,3]]
-- [2*x | x <- [1,2,3], x>1] 
-- [(x,y) | x <- [1,2,3], y<-['a', 'b']]
