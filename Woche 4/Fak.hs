fak = \n -> if n == 0       -- Pass auf das ist nur ein Beispiel. Die Fib haben noch ein Fall else if 1 then 1 ... 
            then 1
            else n * fak (n-1)
--Mit GHC 
-- fak 0
-- (\n -> if n == 0 then 1 else n* fak (n-1) ) 0 
--  if 0 == 0 then 1 else 0* fak (0-1)
-- if True then 1 else 0 * fak (0-1)
-- 1


