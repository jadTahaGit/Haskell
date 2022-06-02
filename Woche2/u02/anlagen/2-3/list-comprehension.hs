-- Aufgabe 2-3 --

--a) ungeraden Elemente einer Liste -- 
-- prtUng :: [Integer] -> [Integer]
x = [1..10]
prtUng x =  [ x | x <- x,  x `mod` 2 == 1 ]


--b) gerade Elemente und zweifaches der ungeraden Elemente einer Liste --
ge2fach x = [x | x <- x, mod x 2  == 0] ++ [2*x | x <-x, mod x 2 ==1] 

--  ge2fach x (x:xs) = if (mod x 2 == 0) then [x| x<-x] else if (mod x 2 ==1) -- Not Done yet


--c) natürlichen Zahlen mit Rest 5 bei der Division durch 7 -- 



--c) Länge einer Liste -- 



--e) dreifach -- 


      
--f) nur Großbuchstaben ausgeben eines Strings -- 



--g) Faktorzerlegung eines Integers -- 



-- h) groesster gemeinsamer Teiler zweier Integers --



--i) Pythagoras Trippel --


   
