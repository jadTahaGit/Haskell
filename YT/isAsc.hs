isAsc :: [Int] -> Bool
isAsc [] = True 
isAsc [x] = True 
isAsc (x:y:xs) = 
    (x < y) && isAsc (y:xs) 


    --eftel check kel wa7ad ma3 el kel le 8ayro