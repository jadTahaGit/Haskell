laenge :: (Num a) => [a] -> a
laenge = sum . map (\_ -> 1) 


-- foldr (+) 0 [1,2,3]
-- map (\x -> x+1) [0,1]      