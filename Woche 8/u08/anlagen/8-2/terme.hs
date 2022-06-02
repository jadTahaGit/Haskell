

-- 8-2 a) Datentyp Term für binäre Operationen +, -, *, /
data Operator = Plus | Minus | Times | Devision deriving(Show)

data Term a = C a | BinaryTerm Operator (Term a) (Term a) | UnaryTerm Operator (Term a) deriving(Show)

b1 = BinaryTerm Times (BinaryTerm PLus (C 5) (UnaryTerm Minus (C 3))) (BinaryTerm Minus (C 3) (C 1))


-- (5+6)*(3-1)

-- b2 = BinaryTerm Times 
--          ( BinaryTerm Plus  (C 5) (C 6) )
--          ( BinaryTerm Minus (C 3) (C 1) ) 

-- 8-2 b) Term auswerten
eval :: Integral a => Term a => a
eval (C wert)     = wert
eval (BinaryTerm Plus t1 t2) = eval t1 + eval t2
eval (BinaryTerm Times t1 t2) = eval t1 * eval t2
eval (BinaryTerm Minus t1 t2) = eval t1 - eval t2
eval (BinaryTerm Devision t1 t2) = eval t1 `div` eval t2
-- 8-2 c) Negation einer Zahl
eval (UnaryTerm Minus t ) =  - (eval t)

-- 8-2 d) Termvereinfacher
simplify :: Integral a => Term a -> Term a
simplify (UnaryTerm Minus (UnaryTerm Minus t)) = simplify t
simplify (BinaryTerm Plus (t1) (UnaryTerm Minus t2)) = BinaryTerm Minus (simplify t1) (simplify t2)
simplify (BinaryTerm Minus (t1) (UnaryTerm Minus t2)) = BinaryTerm Plus (simplify t1) (simplify t2)

simplify (BinaryTerm Operator t1 t2)           = BinaryTerm Operator (simplify t1) (simplify t2)
simplify (UnaryTerm t)                         = UnaryTerm Operator (simplify t) 
simplify (C wert)                              = C wert

