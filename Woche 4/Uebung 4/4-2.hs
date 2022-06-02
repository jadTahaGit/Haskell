quadrat = \x -> x*x

-- let a = let a = 2 in quadrat a                       Umgebung
--                                                       []                                                                 
-- a = let a = 2                                         
--     in quadrat a                                     [(a, let a = 2 in quadrat a)]
-- Auswertung des Funktionalen Ausdruckes:
-- a                                                    [(a, let a = 2 in quadrat a)]
-- let a =2 in quadrat a                                [(a,2),(a, let a = 2 in quadrat a)]    
--              quadrat a                               [(a,2),(a, let a = 2 in quadrat a)] 
--              quadrat 2                               [(a,2),(a, let a = 2 in quadrat a)] 
--              2*2                                     [(a,2),(a, let a = 2 in quadrat a)] 
--              4                                       [(a,2),(a, let a = 2 in quadrat a)] 
-- 4                                                    [(a, let a = 2 in quadrat a)] 