
f = \x -> x + f(x+1)

-- Mit Verzoegerte Auswertung..




-- zipWith (+) [1,3,5,7,9] [1,1..]
--  zipWith (+) [1,3,5,6,9] [1,1,1,1,1]
--  zipWith (+) [1,3,5,6,9] [1]
-- zipWith (+) [1,3,5,6,9] [1,0,1,0,1]


-- take 20 [1,1..]

-- Just as A note
-- [1,3,5,6,9] ++ [1,0,1,0,1]