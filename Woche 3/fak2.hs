import Debug.Trace
fak :: Integer -> Integer
fak x | trace ("call: fak " ++ show x) False = x 
fak 0 = 1
fak n = n * fak (n-1)


 