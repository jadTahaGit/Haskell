natZahlen :: [Integer] --lazy evaluation
natZahlen = [0..]


ungZa :: [Integer]
ungZa = [x | x <- natZahlen, odd x] -- x`mod`2/ is replaced by odd.

-- command:  " take 10 ungZa "
 

f n =   n `mod` 2 /= 0 &&
        n `mod` 3 /= 0 &&
        n `mod` 5 /= 0 

l = [ n | n <- [1..10], f n ] 


-- command: any odd l