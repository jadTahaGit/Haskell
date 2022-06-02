-- --vordefiniert
-- instance Functor IO where
--     fmap f action = do 
--         result <- action
--         return (f result)



-- ################################
-- ############# GHCI #############
-- ################################
--  fmap toUpper getChar
--  fmap (map toUpper) getLine
--  fmap (toUpper . head) getLine

--  import Data.List
--  fmap (intersperse '_' . map toUpper) getLine

--   fmap (intersperse "b " . map toUpper) getLine

