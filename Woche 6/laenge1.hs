-- nicht endrekursiv
laenge :: [a] -> Int
laenge [] = 0
laenge (_:t) = 1 + laenge (t)